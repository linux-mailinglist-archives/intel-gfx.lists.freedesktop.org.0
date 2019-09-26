Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D109EBF921
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 20:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F16889B30;
	Thu, 26 Sep 2019 18:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 345D289B30
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 18:25:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18631156-1500050 for multiple; Thu, 26 Sep 2019 19:25:01 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156949347527.4979.7717512491168660113@skylake-alporthouse-com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
 <20190926100635.9416-5-michal.winiarski@intel.com>
 <156949347527.4979.7717512491168660113@skylake-alporthouse-com>
Message-ID: <156952229852.26462.18322962548501423452@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 19:24:58 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Don't use scratch in WA batch.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjYgMTE6MjQ6MzUpCj4gUXVvdGluZyBNaWNo
YcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozNCkKPiA+IFdlJ3JlIGN1cnJlbnRseSBk
b2luZyBvbmUgd29ya2Fyb3VuZCB3aGVyZSB3ZSdyZSB1c2luZyBzY3JhdGNoIGFzIGEKPiA+IHRl
bXBvcmFyeSBzdG9yYWdlIHBsYWNlLCB3aGlsZSB3ZSdyZSBvdmVyd3JpdGluZyB0aGUgdmFsdWUg
b2Ygb25lCj4gPiByZWdpc3RlciB3aXRoIHNvbWUga25vd24gY29uc3RhbnQgdmFsdWUgaW4gb3Jk
ZXIgdG8gcGVyZm9ybSBhCj4gPiB3b3JrYXJvdW5kLgo+ID4gV2hpbGUgd2UgY291bGQganVzdCBk
byBzaW1pbGFyIHRoaW5nIHdpdGggQ1NfR1BSIHJlZ2lzdGVyCj4gPiBhbmQgTUlfTE9BRF9SRUdJ
U1RFUl9SRUcgaW5zdGVhZCBvZiBzY3JhdGNoLCBzaW5jZSB3ZSB3b3VsZCB1c2UgQ1NfR1BSCj4g
PiBhbnl3YXlzLCBsZXQncyBqdXN0IGRyb3AgdGhlIGNvbnN0YW50IHZhbHVlcyBhbmQgZG8gdGhl
IGJpdG9wcyB1c2luZwo+ID4gTUlfTUFUSC4KPiAKPiBJJ2QgbGlrZSB0byBoYXZlIHlvdXIgY29u
ZmlybWF0aW9uIHRoYXQgdGhlIHcvYSBiYXRjaCBpcyBleGVjdXRlZCBiZWZvcmUKPiB0aGUgQ1Nf
R1BSIGFyZSByZXN0b3JlZCBmcm9tIHRoZSBjb250ZXh0IGltYWdlLCBhbmQgSSdtIGdvaW5nIHRv
IHdhaXQKPiBmb3IgZ2VtX2N0eF9pc29sYXRpb24gdmVyaWZpY2F0aW9uIDotcAoKQmFkIG5ld3Mu
IEl0IGZhaWxlZCBhIGNoZWNrIHRoYXQgQ1NfR1BSIHdhcyBwcmVzZXJ2ZWQgYWNyb3NzIGEgY29u
dGV4dApzd2l0Y2ggb24gQnJvYWR3ZWxsLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
