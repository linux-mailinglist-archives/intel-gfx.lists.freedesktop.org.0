Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84C176099
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 10:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540B26E873;
	Fri, 26 Jul 2019 08:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0F96E873
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 08:22:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17620394-1500050 for multiple; Fri, 26 Jul 2019 09:21:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190725205106.36148-1-michal.wajdeczko@intel.com>
 <156409104874.30723.3136641710682253705@skylake-alporthouse-com>
 <op.z5ip8pwoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z5ip8pwoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156412931748.30723.17647242551624294517@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 09:21:57 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't sanitize guc_log_level
 modparam
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI2IDA1OjQ3OjAzKQo+IE9uIFRodSwg
MjUgSnVsIDIwMTkgMjM6NDQ6MDggKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDctMjUgMjE6NTE6MDYpCj4gPj4gV2UgYXJlIGFscmVhZHkgc3RvcmluZyBydW50aW1lIHZh
bHVlIG9mIGxvZyBsZXZlbCBpbiBwcml2YXRlCj4gPj4gZmllbGQsIHNvIHRoZXJlIGlzIG5vIG5l
ZWQgdG8gbW9kaWZ5IG1vZHBhcmFtLgo+ID4KPiA+IFRoZXJlIGlzIGFuIGFzcGVjdCBvZiBjb21t
dW5pY2F0aW5nIHRoZSBjbGFtcGVkIHZhbHVlIGJhY2sgdG8gdGhlIHVzZXIuCj4gPiBEb2VzIHRo
YXQgaGF2ZSBhbnkgdmFsdWUgb3IgYWx0ZXJuYXRpdmU/Cj4gCj4gQWN0dWFsIChjbGFtcGVkIG9y
IGRlZmF1bHQpIHZhbHVlIG9mIHRoZSBHdUMgbG9nIGxldmVsIGlzIGV4cG9zZWQgaW4KPiBpOTE1
X2d1Y19sb2dfbGV2ZWwgZGVidWdmcyBlbnRyeS4gVXNlciBjYW4gbW9kaWZ5IGl0IGZyb20gdGhl
cmUgdG9vLgoKV2h5PyA6KSBJIGZhaWwgdG8gc2VlIHdoeSB3ZSBoYXZlIHR3byBtZXRob2RzIG9m
IHNldHRpbmcgYSB2YXJpYWJsZSwgaWYKd2Ugd2FudCBhIGNhbGxiYWNrIG9uIG1vZHBhcmFtIHdl
IGNhbiBzdXBwbHkgYSBwYXJhbV9vcHMuc2V0KCkuLi4KCkp1c3QgYmVpbmcgYSBudWlzYW5jZSwg
d2Ugc2hvdWxkIGJlIHBsYW5uaW5nIHN5c2ZzL2d0LyBjb250cm9scy4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
