Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B19EC67B52
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 18:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD5589C1F;
	Sat, 13 Jul 2019 16:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04BE689C1F
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 16:51:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17270373-1500050 for multiple; Sat, 13 Jul 2019 17:50:47 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <fc0e5390-1d80-9469-b7f5-3b2563553df1@intel.com>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <fc0e5390-1d80-9469-b7f5-3b2563553df1@intel.com>
Message-ID: <156303664498.9436.1455978742449591507@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 13 Jul 2019 17:50:45 +0100
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/guc: Use system workqueue
 for log capture
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTEzIDE3OjQ0OjMyKQo+IAo+
IAo+IE9uIDcvMTMvMjAxOSAzOjAwIEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBvbmx5
IGVtcGxveSBhIHNpbmdsZSB0YXNrIGZvciBsb2cgY2FwdHVyZSwgYW5kIGNyZWF0ZWQgYSB3b3Jr
cXVldWUKPiA+IGZvciB0aGUgcHVycG9zZSBvZiBlbnN1cmluZyB3ZSBoYWQgYSBoaWdoIHByaW9y
aXR5IHF1ZXVlIGZvciBsb3cKPiA+IGxhdGVuY3kuIFdlIGNhbiBzaW1wbHkgdXNlIHRoZSBzeXN0
ZW1faGlnaHByaV93cSBhbmQgYXZvaWQgdGhlCj4gPiBjb21wbGljYXRpb24gd2l0aCBjcmVhdGlu
ZyBvdXIgb3duIGFkbWlzdCB0aGUgbWF6ZSBvZiBtdXRleGVzLgo+ID4gKEN1cnJlbnRseSB3ZSBj
cmVhdGUgdGhlIHdxIGVhcmx5IGJlZm9yZSB3ZSBldmVuIGtub3cgd2UgbmVlZCBpdCBpbgo+ID4g
b3JkZXIgdG8gYXZvaWQgdHJ5aW5nIHRvIGNyZWF0ZSBpdCBvbiBkZW1hbmQgd2hpbGUgd2UgaG9s
ZCB0aGUgbG9nZ2luZwo+ID4gbXV0ZXguKQo+IAo+IE1pY2hhbCBoYWQgc3VnZ2VzdGVkIHRoZSBz
YW1lLCBidXQgSSB3YXNuJ3Qgc3VyZSBhYm91dCBpdCBzaW5jZSBJIGhhdmUgYSAKPiB2ZXJ5IHZh
Z3VlIHJlY29sbGVjdGlvbiB0aGF0IG9uIGEgdmVyeSBidXN5IHN5c3RlbSB0aGUgc3lzdGVtX3dx
IHdhc24ndCAKPiBsb3ctbGF0ZW5jeSBlbm91Z2ggYXQgaGlnaCB2ZXJib3NpdHkgbGV2ZWxzIHdp
dGggc21hbGxlciBidWZmZXIgc2l6ZXMuIAo+IEhvd2V2ZXIsIHRoZSBzYW1lIGNvdWxkIGFwcGx5
IHRvIGEgZGVkaWNhdGVkIHdxIGFuZCB3ZSBjYW4gbm93IGVuYWJsZSAKPiBiaWdnZXIgbG9nIGJ1
ZmZlcnMgdGhhdCBzaG91bGQgc2lnbmlmaWNhbnRseSByZWR1Y2UgdGhlIGFtb3VudCBvZiAKPiBm
bHVzaGVzIChhbmQgdGh1cyB0aGUgbGF0ZW5jeSByZXF1aXJlbWVudHMpLCBzbzoKCldlIHVzZSB0
aGUgc3lzdGVtX2hpZ2hwcmlfd3Egd2hpY2ggc2hvdWxkIGJlIG5vIGRpZmZlcmVudCBmcm9tIHRo
ZQp3cSB3ZSBhbGxvY2F0ZWQgZm9yIG91cnNlbHZlcy4gSWYgd2UgbmVlZCBsb3dlciBsYXRlbmN5
IHRoYW4gdGhhdCwgd2UKcnVuIGludG8gdHJvdWJsZSA6KQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
