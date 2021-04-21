Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8E8366B73
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 15:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B26B6E998;
	Wed, 21 Apr 2021 13:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 450D06E998
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 13:01:31 +0000 (UTC)
IronPort-SDR: xNu0cpA8CM6rB2KXh/0BqFG+d6fCPc0GZtlapSQWa1dfpt5/vLORNKF9ji5trgwDCnvCvyjPrG
 UZ3IP6JyUMZg==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="259645476"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="259645476"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:01:30 -0700
IronPort-SDR: ZheuamxxWSnfrH/DthqWUr5uxR9lLYOv8KgXQ03k5uptr/smX3eD7LvKaJlJaDHCM0C370jsDZ
 OqweuUKlw8Xw==
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="427504288"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:01:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210414022309.30898-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
 <20210414022309.30898-2-ville.syrjala@linux.intel.com>
Date: Wed, 21 Apr 2021 16:01:25 +0300
Message-ID: <87fszj94gq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Add frontbuffer tracking
 tracepoints
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gV2VkLCAxNCBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBBZGQgc29tZSB0cmFjcG9pbnRzIGZvciBmcm9udGJ1ZmZlciB0
cmFja2luZyBzbyB3ZSBjYW4KPiB0cnkgdG8gZmlndXJlIG91dCB3aGF0J3MgZ29pbmcgb24uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgoKQWNrZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+
IC0tLQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYyAgfCAg
NSArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90cmFjZS5oICAgICAgICAgICAgIHwg
MzggKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMo
KykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zy
b250YnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVm
ZmVyLmMKPiBpbmRleCA2ZmM2OTY1YjYxMzMuLjgxNjFkNDllNzhiYSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMKPiBAQCAtNTgs
NiArNTgsNyBAQAo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kcC5oIgo+ICAKPiAgI2luY2x1
ZGUgImk5MTVfZHJ2LmgiCj4gKyNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCj4gICNpbmNsdWRlICJp
bnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gICNpbmNsdWRlICJpbnRlbF9mYmMuaCIKPiAgI2luY2x1
ZGUgImludGVsX2Zyb250YnVmZmVyLmgiCj4gQEAgLTg3LDYgKzg4LDggQEAgc3RhdGljIHZvaWQg
ZnJvbnRidWZmZXJfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gIAlpZiAo
IWZyb250YnVmZmVyX2JpdHMpCj4gIAkJcmV0dXJuOwo+ICAKPiArCXRyYWNlX2ludGVsX2Zyb250
YnVmZmVyX2ZsdXNoKGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbik7Cj4gKwo+ICAJbWlnaHRfc2xl
ZXAoKTsKPiAgCWludGVsX2VkcF9kcnJzX2ZsdXNoKGk5MTUsIGZyb250YnVmZmVyX2JpdHMpOwo+
ICAJaW50ZWxfcHNyX2ZsdXNoKGk5MTUsIGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbik7Cj4gQEAg
LTE3Myw2ICsxNzYsOCBAQCB2b2lkIF9faW50ZWxfZmJfaW52YWxpZGF0ZShzdHJ1Y3QgaW50ZWxf
ZnJvbnRidWZmZXIgKmZyb250LAo+ICAJCXNwaW5fdW5sb2NrKCZpOTE1LT5mYl90cmFja2luZy5s
b2NrKTsKPiAgCX0KPiAgCj4gKwl0cmFjZV9pbnRlbF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRlKGZy
b250YnVmZmVyX2JpdHMsIG9yaWdpbik7Cj4gKwo+ICAJbWlnaHRfc2xlZXAoKTsKPiAgCWludGVs
X3Bzcl9pbnZhbGlkYXRlKGk5MTUsIGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbik7Cj4gIAlpbnRl
bF9lZHBfZHJyc19pbnZhbGlkYXRlKGk5MTUsIGZyb250YnVmZmVyX2JpdHMpOwo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RyYWNlLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3RyYWNlLmgKPiBpbmRleCBhNGFkZGNjNjQ5NzguLjgxZjVlMTcyMTE4MCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RyYWNlLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RyYWNlLmgKPiBAQCAtNDc0LDYgKzQ3NCw0NCBAQCBUUkFD
RV9FVkVOVChpbnRlbF9waXBlX3VwZGF0ZV9lbmQsCj4gIAkJICAgICAgX19lbnRyeS0+c2Nhbmxp
bmUpCj4gICk7Cj4gIAo+ICsvKiBmcm9udGJ1ZmZlciB0cmFja2luZyAqLwo+ICsKPiArVFJBQ0Vf
RVZFTlQoaW50ZWxfZnJvbnRidWZmZXJfaW52YWxpZGF0ZSwKPiArCSAgICBUUF9QUk9UTyh1bnNp
Z25lZCBpbnQgZnJvbnRidWZmZXJfYml0cywgdW5zaWduZWQgaW50IG9yaWdpbiksCj4gKwkgICAg
VFBfQVJHUyhmcm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pLAo+ICsKPiArCSAgICBUUF9TVFJVQ1Rf
X2VudHJ5KAo+ICsJCQkgICAgIF9fZmllbGQodW5zaWduZWQgaW50LCBmcm9udGJ1ZmZlcl9iaXRz
KQo+ICsJCQkgICAgIF9fZmllbGQodW5zaWduZWQgaW50LCBvcmlnaW4pCj4gKwkJCSAgICAgKSwK
PiArCj4gKwkgICAgVFBfZmFzdF9hc3NpZ24oCj4gKwkJCSAgIF9fZW50cnktPmZyb250YnVmZmVy
X2JpdHMgPSBmcm9udGJ1ZmZlcl9iaXRzOwo+ICsJCQkgICBfX2VudHJ5LT5vcmlnaW4gPSBvcmln
aW47Cj4gKwkJCSAgICksCj4gKwo+ICsJICAgIFRQX3ByaW50aygiZnJvbnRidWZmZXJfYml0cz0w
eCUwOHgsIG9yaWdpbj0ldSIsCj4gKwkJICAgICAgX19lbnRyeS0+ZnJvbnRidWZmZXJfYml0cywg
X19lbnRyeS0+b3JpZ2luKQo+ICspOwo+ICsKPiArVFJBQ0VfRVZFTlQoaW50ZWxfZnJvbnRidWZm
ZXJfZmx1c2gsCj4gKwkgICAgVFBfUFJPVE8odW5zaWduZWQgaW50IGZyb250YnVmZmVyX2JpdHMs
IHVuc2lnbmVkIGludCBvcmlnaW4pLAo+ICsJICAgIFRQX0FSR1MoZnJvbnRidWZmZXJfYml0cywg
b3JpZ2luKSwKPiArCj4gKwkgICAgVFBfU1RSVUNUX19lbnRyeSgKPiArCQkJICAgICBfX2ZpZWxk
KHVuc2lnbmVkIGludCwgZnJvbnRidWZmZXJfYml0cykKPiArCQkJICAgICBfX2ZpZWxkKHVuc2ln
bmVkIGludCwgb3JpZ2luKQo+ICsJCQkgICAgICksCj4gKwo+ICsJICAgIFRQX2Zhc3RfYXNzaWdu
KAo+ICsJCQkgICBfX2VudHJ5LT5mcm9udGJ1ZmZlcl9iaXRzID0gZnJvbnRidWZmZXJfYml0czsK
PiArCQkJICAgX19lbnRyeS0+b3JpZ2luID0gb3JpZ2luOwo+ICsJCQkgICApLAo+ICsKPiArCSAg
ICBUUF9wcmludGsoImZyb250YnVmZmVyX2JpdHM9MHglMDh4LCBvcmlnaW49JXUiLAo+ICsJCSAg
ICAgIF9fZW50cnktPmZyb250YnVmZmVyX2JpdHMsIF9fZW50cnktPm9yaWdpbikKPiArKTsKPiAr
Cj4gIC8qIG9iamVjdCB0cmFja2luZyAqLwo+ICAKPiAgVFJBQ0VfRVZFTlQoaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZSwKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
