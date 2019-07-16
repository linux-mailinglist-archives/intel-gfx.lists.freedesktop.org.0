Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 651EC6ABE7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 17:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2931C6E146;
	Tue, 16 Jul 2019 15:37:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6B46E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 15:37:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17346045-1500050 for multiple; Tue, 16 Jul 2019 16:37:04 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
Message-ID: <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 16 Jul 2019 16:37:02 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNiAxNjoyNToyMikKPiAKPiBPbiAxNi8w
Ny8yMDE5IDEzOjQ5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGb2xsb3dpbmcgYSB0cnlfdG9f
dW5tYXAoKSB3ZSBtYXkgd2FudCB0byByZW1vdmUgdGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPiA+
IHB1dF9wYWdlcygpLiBIb3dldmVyLCB0cnlfdG9fdW5tYXAoKSBhY3F1aXJlcyB0aGUgcGFnZSBs
b2NrIGFuZCBzbyB3ZQo+ID4gbXVzdCBhdm9pZCByZWN1cnNpdmVseSBsb2NraW5nIHRoZSBwYWdl
cyBvdXJzZWx2ZXMgLS0gd2hpY2ggbWVhbnMgdGhhdAo+ID4gd2UgY2Fubm90IHNhZmVseSBhY3F1
aXJlIHRoZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+ID4gY2FuJ3Qg
YmUgc3VyZSBvZiB0aGUgbG9jaywgd2UgaGF2ZSB0byByaXNrIHNraXAgZGlydHlpbmcgdGhlIHBh
Z2UsIG9yCj4gPiBlbHNlIHJpc2sgY2FsbGluZyBzZXRfcGFnZV9kaXJ0eSgpIHdpdGhvdXQgYSBs
b2NrIGFuZCBzbyByaXNrIGZzCj4gPiBjb3JydXB0aW9uLgo+IAo+IFNvIGlmIHRyeWxvY2sgcmFu
ZG9tbHkgZmFpbCB3ZSBnZXQgZGF0YSBjb3JydXB0aW9uIGluIHdoYXRldmVyIGRhdGEgc2V0IAo+
IGFwcGxpY2F0aW9uIGlzIHdvcmtpbmcgb24sIHdoaWNoIGlzIHdoYXQgdGhlIG9yaWdpbmFsIHBh
dGNoIHdhcyB0cnlpbmcgCj4gdG8gYXZvaWQ/IEFyZSB3ZSBhYmxlIHRvIGRldGVjdCB0aGUgYmFj
a2luZyBzdG9yZSB0eXBlIHNvIGF0IGxlYXN0IHdlIAo+IGRvbid0IHJpc2sgc2tpcHBpbmcgc2V0
X3BhZ2VfZGlydHkgd2l0aCBhbm9ueW1vdXMvc2htZW1mcz8KCnBhZ2UtPm1hcHBpbmc/Pz8KCldl
IHN0aWxsIGhhdmUgdGhlIGlzc3VlIHRoYXQgaWYgdGhlcmUgaXMgYSBtYXBwaW5nIHdlIHNob3Vs
ZCBiZSB0YWtpbmcKdGhlIGxvY2ssIGFuZCB3ZSBtYXkgaGF2ZSBib3RoIGEgbWFwcGluZyBhbmQg
YmUgaW5zaWRlIHRyeV90b191bm1hcCgpLgoKSSB0aGluayBpdCdzIGxvc2UtbG9zZS4gVGhlIG9u
bHkgd2F5IHRvIHdpbiBpcyBub3QgdG8gdXNlcnB0ciA6KQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
