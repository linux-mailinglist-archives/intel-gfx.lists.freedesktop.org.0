Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C75DEBA7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 14:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845A86E027;
	Mon, 21 Oct 2019 12:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E086E027
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 12:10:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 05:10:09 -0700
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="191089181"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 05:10:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
Date: Mon, 21 Oct 2019 15:10:02 +0300
Message-ID: <87zhhufgf9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Restore full symmetry in
 i915_driver_modeset_probe/remove
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

T24gRnJpLCAxOCBPY3QgMjAxOSwgSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9m
aWtAbGludXguaW50ZWwuY29tPiB3cm90ZToKPiBDb21taXQgMmQ2ZjZmMzU5ZmQ4ICgiZHJtL2k5
MTU6IGFkZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZSgpIikKClBsZWFzZSBsb29rIGF0IHRo
YXQgY29tbWl0IGFuZCBleHBsYWluIHRvIG1lIGhvdyBpdCBpbXBhY3RzIGFueXRoaW5nCmFib3V0
IGludGVsX2lycV91bmluc3RhbGwoKS4KCkJSLApKYW5pLgoKCj4gY2xhaW1lZCByZW1vdmFsIG9m
IGFzeW1tZXRyeSBpbiBwcm9iZSgpIGFuZCByZW1vdmUoKSBjYWxscywgaG93ZXZlciwgaXQKPiBk
aWRuJ3QgdGFrZSBjYXJlIG9mIGNhbGxpbmcgaW50ZWxfaXJxX3VuaW5zdGFsbCgpIG9uIGRyaXZl
ciByZW1vdmUuCj4gVGhhdCBkb2Vzbid0IGh1cnQgYXMgbG9uZyBhcyB3ZSBzdGlsbCBjYWxsIGl0
IGZyb20KPiBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoKSBidXQgaW4gb3JkZXIgdG8gaGF2
ZSBmdWxsIHN5bW1ldHJ5IHdlCj4gc2hvdWxkIGNhbGwgaXQgYWdhaW4gZnJvbSBpOTE1X2RyaXZl
cl9tb2Rlc2V0X3JlbW92ZSgpLgo+Cj4gTm90ZSB0aGF0IGl0J3Mgc2FmZSB0byBjYWxsIGludGVs
X2lycV91bmluc3RhbGwoKSB0d2ljZSB0aGFua3MgdG8KPiBjb21taXQgYjMxOGI4MjQ1NWJkICgi
ZHJtL2k5MTU6IE51a2UgZHJtX2RyaXZlciBpcnEgdmZ1bmNzIikuICBXZSBtYXkKPiBvbmx5IHdh
bnQgdG8gbWVudGlvbiB0aGUgY2FzZSB3ZSBhcmUgYWRkaW5nIGluIGEgcmVsYXRlZCBGSVhNRSBj
b21tZW50Cj4gcHJvdmlkZWQgYnkgdGhhdCBjb21taXQuICBXaGlsZSBiZWluZyBhdCBpdCwgdXBk
YXRlIHRoZSBuYW1lIG9mCj4gZnVuY3Rpb24gbWVudGlvbmVkIGFzIGNhbGxpbmcgaXQgb3V0IG9m
IHNlcXVlbmNlIGFzIHRoYXQgbmFtZSBoYXMgYmVlbgo+IGNoYW5nZWQgbWVhbndoaWxlIGJ5IGNv
bW1pdCA3OGRhZTFhYzM1ZGQgKCJkcm0vaTkxNTogUHJvcGFnYXRlCj4gIl9yZW1vdmUiIGZ1bmN0
aW9uIG5hbWUgc3VmZml4IGRvd24iKS4KPgo+IFN1Z2dlc3RlZC1ieTogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEty
enlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+IENjOiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyB8IDggKysrKy0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCBkZDk2
MTNlNDU3MjMuLjRhZTliZmE5NjI5MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBA
IC00NTIsNiArNDUyLDggQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJaW50ZWxfbW9kZXNldF9kcml2
ZXJfcmVtb3ZlKGk5MTUpOwo+ICAKPiArCWludGVsX2lycV91bmluc3RhbGwoaTkxNSk7Cj4gKwo+
ICAJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+ICAKPiAgCXZnYV9zd2l0Y2hlcm9v
X3VucmVnaXN0ZXJfY2xpZW50KHBkZXYpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4
IGJjODNmMDk0MDY1YS4uMDE2MDI4Mzg2MGE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
Cj4gQEAgLTQ1MTUsMTAgKzQ1MTUsMTAgQEAgdm9pZCBpbnRlbF9pcnFfdW5pbnN0YWxsKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCWludCBpcnEgPSBkZXZfcHJpdi0+ZHJt
LnBkZXYtPmlycTsKPiAgCj4gIAkvKgo+IC0JICogRklYTUUgd2UgY2FuIGdldCBjYWxsZWQgdHdp
Y2UgZHVyaW5nIGRyaXZlciBsb2FkCj4gLQkgKiBlcnJvciBoYW5kbGluZyBkdWUgdG8gaW50ZWxf
bW9kZXNldF9jbGVhbnVwKCkKPiAtCSAqIGNhbGxpbmcgdXMgb3V0IG9mIHNlcXVlbmNlLiBXb3Vs
ZCBiZSBuaWNlIGlmCj4gLQkgKiBpdCBkaWRuJ3QgZG8gdGhhdC4uLgo+ICsJICogRklYTUUgd2Ug
Y2FuIGdldCBjYWxsZWQgdHdpY2UgZHVyaW5nIGRyaXZlciBwcm9iZQo+ICsJICogZXJyb3IgaGFu
ZGxpbmcgYXMgd2VsbCBhcyBkdXJpbmcgZHJpdmVyIHJlbW92ZSBkdWUgdG8KPiArCSAqIGludGVs
X21vZGVzZXRfZHJpdmVyX3JlbW92ZSgpIGNhbGxpbmcgdXMgb3V0IG9mIHNlcXVlbmNlLgo+ICsJ
ICogV291bGQgYmUgbmljZSBpZiBpdCBkaWRuJ3QgZG8gdGhhdC4uLgo+ICAJICovCj4gIAlpZiAo
IWRldl9wcml2LT5kcm0uaXJxX2VuYWJsZWQpCj4gIAkJcmV0dXJuOwoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
