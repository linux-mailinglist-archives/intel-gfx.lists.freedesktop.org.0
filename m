Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFE972F25
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 14:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24C1F6E4AE;
	Wed, 24 Jul 2019 12:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2E46E4AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 12:46:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 05:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="197487995"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2019 05:46:21 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6OCkKSk028922; Wed, 24 Jul 2019 13:46:21 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
 <20190724022153.8927-5-daniele.ceraolospurio@intel.com>
Date: Wed, 24 Jul 2019 14:46:20 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5fm3idxxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190724022153.8927-5-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915/uc: Move xfer rsa logic to
 common function
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNCBKdWwgMjAxOSAwNDoyMTo0OSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gVGhlIHdheSB3
ZSBjb3B5IHRoZSBSU0EgaXMgdGhlIHNhbWUgZm9yIEd1QyBhbmQgSHVDLCBzbyB3ZSBjYW4gbW92
ZSB0aGUKPiBsb2dpYyBpbiBhIGNvbW1vbiBmdW5jdGlvbi4gdGhpcyB3aWxsIGFsc28gbWFrZSBh
bnkgdXBkYXRlIG5lZWRlZCBmb3IKPiBsb2NhbCBtZW1vcnkgZWFzaWVyLgo+Cj4gdjI6IHJldHVy
biB0aGUgbnVtYmVyIG9mIGNvcGllZCBieXRlcyBhbmQgY2hlY2sgaXQgKENocmlzKQo+Cj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+ICN2MQoKUmV2aWV3ZWQtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgp3aXRoIHNtYWxsIG5pdCBiZWxvdwoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMgfCAgNyArKystLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jIHwgMTAgKysrKystLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jICB8IDE4ICsrKysrKysrKysrKysr
KysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oICB8ICAxICsK
PiAgNCBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jICAK
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jCj4gaW5kZXggMDg1
ZTc4NDJlZjhhLi4wOWIwZmYyYmQyNTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfZncuYwo+IEBAIC03NywxMyArNzcsMTIgQEAgc3RhdGljIHZvaWQgZ3VjX3By
ZXBhcmVfeGZlcihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gIHN0YXRpYyB2b2lkIGd1Y194ZmVy
X3JzYShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gIHsKPiAgCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9IGd1Y190b19ndChndWMpLT51bmNvcmU7Cj4gLQlzdHJ1Y3QgaW50ZWxfdWNfZncg
KmZ3ID0gJmd1Yy0+Znc7Cj4gLQlzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzID0gZnctPm9iai0+bW0u
cGFnZXM7Cj4gIAl1MzIgcnNhW1VPU19SU0FfU0NSQVRDSF9DT1VOVF07Cj4gKwlzaXplX3QgY29w
aWVkOwo+ICAJaW50IGk7Cj4gLQlzZ19wY29weV90b19idWZmZXIocGFnZXMtPnNnbCwgcGFnZXMt
Pm5lbnRzLAo+IC0JCQkgICByc2EsIHNpemVvZihyc2EpLCBmdy0+cnNhX29mZnNldCk7Cj4gKwlj
b3BpZWQgPSBpbnRlbF91Y19md19jb3B5X3JzYSgmZ3VjLT5mdywgcnNhLCBzaXplb2YocnNhKSk7
Cj4gKwlHRU1fQlVHX09OKGNvcGllZCA8IHNpemVvZihyc2EpKTsKPiAJZm9yIChpID0gMDsgaSA8
IFVPU19SU0FfU0NSQVRDSF9DT1VOVDsgaSsrKQo+ICAJCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsIFVPU19SU0FfU0NSQVRDSChpKSwgcnNhW2ldKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKPiBpbmRleCBmYTIxNTFmYTNhMTMuLjhmMTE5ZmYyOTFm
YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCj4gQEAg
LTM4LDE3ICszOCwxNyBAQCB2b2lkIGludGVsX2h1Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRl
bF9odWMgKmh1YykKPiBzdGF0aWMgdm9pZCBodWNfeGZlcl9yc2Eoc3RydWN0IGludGVsX2h1YyAq
aHVjKQo+ICB7Cj4gLQlzdHJ1Y3QgaW50ZWxfdWNfZncgKmZ3ID0gJmh1Yy0+Znc7Cj4gLQlzdHJ1
Y3Qgc2dfdGFibGUgKnBhZ2VzID0gZnctPm9iai0+bW0ucGFnZXM7Cj4gKwlzaXplX3QgY29waWVk
Owo+IAkvKgo+ICAJICogSHVDIGZpcm13YXJlIGltYWdlIGlzIG91dHNpZGUgR3VDIGFjY2Vzc2li
bGUgcmFuZ2UuCj4gIAkgKiBDb3B5IHRoZSBSU0Egc2lnbmF0dXJlIG91dCBvZiB0aGUgaW1hZ2Ug
aW50bwo+ICAJICogdGhlIHBlcm1hLXBpbm5lZCByZWdpb24gc2V0IGFzaWRlIGZvciBpdAo+ICAJ
ICovCj4gLQlzZ19wY29weV90b19idWZmZXIocGFnZXMtPnNnbCwgcGFnZXMtPm5lbnRzLAo+IC0J
CQkgICBodWMtPnJzYV9kYXRhX3ZhZGRyLCBmdy0+cnNhX3NpemUsCj4gLQkJCSAgIGZ3LT5yc2Ff
b2Zmc2V0KTsKPiArCUdFTV9CVUdfT04oaHVjLT5mdy5yc2Ffc2l6ZSA+IGh1Yy0+cnNhX2RhdGEt
PnNpemUpOwo+ICsJY29waWVkID0gaW50ZWxfdWNfZndfY29weV9yc2EoJmh1Yy0+ZncsIGh1Yy0+
cnNhX2RhdGFfdmFkZHIsCj4gKwkJCQkgICAgICBodWMtPnJzYV9kYXRhLT5zaXplKTsKPiArCUdF
TV9CVUdfT04oY29waWVkIDwgaHVjLT5mdy5yc2Ffc2l6ZSk7Cj4gIH0KPiBzdGF0aWMgaW50IGh1
Y194ZmVyX3Vjb2RlKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAgCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gaW5kZXggOWZjNzJjMmU1MGQxLi45MDlhODE5NmY5
ZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiBAQCAt
NDYyLDYgKzQ2MiwyNCBAQCB2b2lkIGludGVsX3VjX2Z3X2NsZWFudXBfZmV0Y2goc3RydWN0IGlu
dGVsX3VjX2Z3ICAKPiAqdWNfZncpCj4gIAl1Y19mdy0+c3RhdHVzID0gSU5URUxfVUNfRklSTVdB
UkVfU0VMRUNUSU9OX0RPTkU7Cj4gIH0KPiArLyoqCj4gKyAqIGludGVsX3VjX2Z3X2NvcHlfcnNh
IC0gY29weSBmdyBSU0EgdG8gYnVmZmVyCj4gKyAqCj4gKyAqIEB1Y19mdzogdUMgZmlybXdhcmUK
PiArICogQGRzdDogZHN0IGJ1ZmZlcgo+ICsgKiBAbWF4X2xlbjogbWF4IG51bWJlciBvZiBieXRl
cyB0byBjb3B5Cj4gKyAqCj4gKyAqIFJldHVybjogbnVtYmVyIG9mIGNvcGllZCBieXRlcy4KPiAr
ICovCj4gK3NpemVfdCBpbnRlbF91Y19md19jb3B5X3JzYShzdHJ1Y3QgaW50ZWxfdWNfZncgKnVj
X2Z3LCB2b2lkICpkc3QsIHUzMiAgCj4gbWF4X2xlbikKCmRpZCB5b3UgY2hlY2sgaWYgbWF5YmUg
aW5saW5lIHdvdWxkIGdlbmVyYXRlIGJldHRlciBjb2RlPwoKPiArewo+ICsJc3RydWN0IHNnX3Rh
YmxlICpwYWdlcyA9IHVjX2Z3LT5vYmotPm1tLnBhZ2VzOwo+ICsJdTMyIHNpemUgPSBtaW5fdCh1
MzIsIHVjX2Z3LT5yc2Ffc2l6ZSwgbWF4X2xlbik7Cj4gKwoKbml0OgoJR0VNX0JVR19PTighdWNf
ZndfaXNfYXZhaWxhYmxlKHVjX2Z3KSk7Cgo+ICsJcmV0dXJuIHNnX3Bjb3B5X3RvX2J1ZmZlcihw
YWdlcy0+c2dsLCBwYWdlcy0+bmVudHMsCj4gKwkJCQkgIGRzdCwgc2l6ZSwgdWNfZnctPnJzYV9v
ZmZzZXQpOwo+ICt9Cj4gKwo+ICAvKioKPiAgICogaW50ZWxfdWNfZndfZHVtcCAtIGR1bXAgaW5m
b3JtYXRpb24gYWJvdXQgdUMgZmlybXdhcmUKPiAgICogQHVjX2Z3OiB1QyBmaXJtd2FyZQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oICAKPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKPiBpbmRleCBlY2RlYzQz
MjAyNjAuLjU3MmI3ODczZmUxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuaAo+IEBAIC0xNzcsNiArMTc3LDcgQEAgaW50IGludGVsX3VjX2Z3X3VwbG9hZChz
dHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LAo+ICBpbnQgaW50ZWxfdWNfZndfaW5pdChzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3KTsKPiAgdm9pZCBpbnRlbF91Y19md19maW5pKHN0cnVjdCBpbnRl
bF91Y19mdyAqdWNfZncpOwo+ICB1MzIgaW50ZWxfdWNfZndfZ2d0dF9vZmZzZXQoc3RydWN0IGlu
dGVsX3VjX2Z3ICp1Y19mdyk7Cj4gK3NpemVfdCBpbnRlbF91Y19md19jb3B5X3JzYShzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LCB2b2lkICpkc3QsIHUzMiAgCj4gbWF4X2xlbik7Cj4gIHZvaWQg
aW50ZWxfdWNfZndfZHVtcChjb25zdCBzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3Qg
IAo+IGRybV9wcmludGVyICpwKTsKPiAjZW5kaWYKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
