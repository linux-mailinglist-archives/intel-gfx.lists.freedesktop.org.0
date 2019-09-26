Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600DBEF81
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D841D89471;
	Thu, 26 Sep 2019 10:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE6F8938C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:24:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18624739-1500050 for multiple; Thu, 26 Sep 2019 11:24:38 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926100635.9416-5-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
 <20190926100635.9416-5-michal.winiarski@intel.com>
Message-ID: <156949347527.4979.7717512491168660113@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 11:24:35 +0100
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozNCkKPiBXZSdyZSBj
dXJyZW50bHkgZG9pbmcgb25lIHdvcmthcm91bmQgd2hlcmUgd2UncmUgdXNpbmcgc2NyYXRjaCBh
cyBhCj4gdGVtcG9yYXJ5IHN0b3JhZ2UgcGxhY2UsIHdoaWxlIHdlJ3JlIG92ZXJ3cml0aW5nIHRo
ZSB2YWx1ZSBvZiBvbmUKPiByZWdpc3RlciB3aXRoIHNvbWUga25vd24gY29uc3RhbnQgdmFsdWUg
aW4gb3JkZXIgdG8gcGVyZm9ybSBhCj4gd29ya2Fyb3VuZC4KPiBXaGlsZSB3ZSBjb3VsZCBqdXN0
IGRvIHNpbWlsYXIgdGhpbmcgd2l0aCBDU19HUFIgcmVnaXN0ZXIKPiBhbmQgTUlfTE9BRF9SRUdJ
U1RFUl9SRUcgaW5zdGVhZCBvZiBzY3JhdGNoLCBzaW5jZSB3ZSB3b3VsZCB1c2UgQ1NfR1BSCj4g
YW55d2F5cywgbGV0J3MganVzdCBkcm9wIHRoZSBjb25zdGFudCB2YWx1ZXMgYW5kIGRvIHRoZSBi
aXRvcHMgdXNpbmcKPiBNSV9NQVRILgoKSSdkIGxpa2UgdG8gaGF2ZSB5b3VyIGNvbmZpcm1hdGlv
biB0aGF0IHRoZSB3L2EgYmF0Y2ggaXMgZXhlY3V0ZWQgYmVmb3JlCnRoZSBDU19HUFIgYXJlIHJl
c3RvcmVkIGZyb20gdGhlIGNvbnRleHQgaW1hZ2UsIGFuZCBJJ20gZ29pbmcgdG8gd2FpdApmb3Ig
Z2VtX2N0eF9pc29sYXRpb24gdmVyaWZpY2F0aW9uIDotcAotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
