Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C7B14AC4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 15:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B17089919;
	Mon,  6 May 2019 13:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589F189919
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 13:19:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:19:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="171262756"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 May 2019 06:18:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
 <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
Date: Mon, 06 May 2019 16:21:07 +0300
Message-ID: <87pnovn2gs.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v5][PATCH 01/11] drm/i915: Introduce vfunc
 read_luts() to create hw lut
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAwNCBNYXkgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gSW4gdGhpcyBwYXRjaCwgYSB2ZnVuYyByZWFkX2x1dHMoKSBpcyBpbnRyb2R1
Y2VkIHRvIGNyZWF0ZSBhIGh3IGx1dAo+IGkuZS4gbHV0IGhhdmluZyB2YWx1ZXMgcmVhZCBmcm9t
IGdhbW1hL2RlZ2FtbWEgcmVnaXN0ZXJzIHdoaWNoIHdpbGwKPiBsYXRlciBiZSB1c2VkIHRvIGNv
bXBhcmUgd2l0aCBzdyBsdXQgdG8gdmFsaWRhdGUgZ2FtbWEvZGVnYW1tYSBsdXQgdmFsdWVzLgo+
Cj4gdjM6IC1SZWJhc2UKPiB2NDogLVJlbmFtZWQgaW50ZWxfZ2V0X2NvbG9yX2NvbmZpZyB0byBp
bnRlbF9jb2xvcl9nZXRfY29uZmlnIFtKYW5pXQo+ICAgICAtV3JhcHBlZCBnZXRfY29sb3JfY29u
ZmlnKCkgW0phbmldCj4gdjU6IC1SZW5hbWVkIGludGVsX2NvbG9yX2dldF9jb25maWcoKSB0byBp
bnRlbF9jb2xvcl9yZWFkX2x1dHMoKQoKVmlsbGUsIGRpZCB5b3UgcmVhbGx5IHdhbnQgdGhpcyBj
aGFnZT8gSSBzdXJlIGRpZG4ndC4KCkJSLApKYW5pLgoKCj4gICAgIC1SZW5hbWVkIGdldF9jb2xv
cl9jb25maWcgdG8gcmVhZF9sdXRzCj4KPiBTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3
YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgfCA4
ICsrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmggfCAxICsKPiAg
MyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKPiBpbmRleCAxY2VhOThmLi4xYjZkODkxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
Cj4gQEAgLTM0Miw2ICszNDIsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfZGlzcGxheV9mdW5jcyB7Cj4g
IAkgKiBpbnZvbHZlZCB3aXRoIHRoZSBzYW1lIGNvbW1pdC4KPiAgCSAqLwo+ICAJdm9pZCAoKmxv
YWRfbHV0cykoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+ICsJ
dm9pZCAoKnJlYWRfbHV0cykoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+
ICB9Owo+ICAKPiAgI2RlZmluZSBDU1JfVkVSU0lPTihtYWpvciwgbWlub3IpCSgobWFqb3IpIDw8
IDE2IHwgKG1pbm9yKSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPiBpbmRleCA5NjJk
YjEyLi4wMDQ4ZDhhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nv
bG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4gQEAgLTg3
OSw2ICs4NzksMTQgQEAgaW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQo+ICAJcmV0dXJuIGRldl9wcml2LT5kaXNwbGF5LmNvbG9yX2NoZWNr
KGNydGNfc3RhdGUpOwo+ICB9Cj4gIAo+ICt2b2lkIGludGVsX2NvbG9yX3JlYWRfbHV0cyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtPmRldik7
Cj4gKwo+ICsJaWYgKGRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cykKPiArCQlkZXZfcHJpdi0+
ZGlzcGxheS5yZWFkX2x1dHMoY3J0Y19zdGF0ZSk7Cj4gK30KPiArCj4gIHN0YXRpYyBib29sIG5l
ZWRfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gIAkJCSAgICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jb2xvci5oCj4gaW5kZXggYjhhM2NlNi4uZmM1M2RlOSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY29sb3IuaAo+IEBAIC0xMyw1ICsxMyw2IEBACj4gIGludCBpbnRlbF9j
b2xvcl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQg
aW50ZWxfY29sb3JfY29tbWl0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKPiAgdm9pZCBpbnRlbF9jb2xvcl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+ICt2b2lkIGludGVsX2NvbG9yX3JlYWRfbHV0cyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIAo+ICAjZW5kaWYgLyogX19JTlRF
TF9DT0xPUl9IX18gKi8KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
