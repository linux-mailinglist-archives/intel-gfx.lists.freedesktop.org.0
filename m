Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B91E6310
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 15:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9701489C13;
	Sun, 27 Oct 2019 14:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C0589C13
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 14:31:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18982676-1500050 for multiple; Sun, 27 Oct 2019 14:31:32 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191027142228.15764-1-michal.wajdeczko@intel.com>
References: <20191027142228.15764-1-michal.wajdeczko@intel.com>
Message-ID: <157218669101.13056.6869352028158195472@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 27 Oct 2019 14:31:31 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Collect user engines at
 driver_register phase
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTEwLTI3IDE0OjIyOjI4KQo+IFRoZXJlIGlz
IG5vIG5lZWQgdG8gYWRkIGVuZ2luZXMgdG8gZWFybHkgdWFiaSBsaXN0IG9uZSBieSBvbmUKPiBk
dXJpbmcgZW5naW5lIHNldHVwLCB3ZSBjYW4gY29sbGVjdCBhbGwgZW5naW5lcyB3aGlsZSBkb2lu
ZyBmaW5hbAo+IHJlbmFtZXMgYXQgZHJpdmVyX3JlZ2lzdGVyIHBoYXNlLiBUaGlzIHdpbGwgYWxz
byB1bmJsb2NrIHVzIGluCj4gY2FzZSB3ZSB3b3VsZCBuZWVkIHRvIGRvIHNvbWUgbGF0ZSBtb2Rp
ZmljYXRpb25zIG9mIHRoZSBlbmdpbmUKPiBsaXN0IGFmdGVyIGVuZ2luZSBzZXR1cCBidXQgYmVm
b3JlIHN0YXJ0aW5nIHVhYmkgcmVnaXN0cmF0aW9uLgoKVGhlcmUgaXMgbm8gZWFybHkgYXJyYXkg
W2k5MTUtPmVuZ2luZVtdIGlzIGEgZmlnbWVudCBvZiB5b3VyCmltYWdpbmF0aW9uXS4gVGhleSBu
ZWVkIHRvIGJlIGFkZGVkIGFzIHNvb24gYXMgdGhlIGVuZ2luZSBpcyB2ZXR0ZWQuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
