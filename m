Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4F310A7BA
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 02:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F006E223;
	Wed, 27 Nov 2019 01:01:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B775A6E223
 for <Intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 01:01:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 17:01:18 -0800
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="199011369"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.38])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 17:01:18 -0800
Date: Tue, 26 Nov 2019 17:01:10 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <20191127010110.tavne2ruxwnthpne@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191120234020.29887-1-clinton.a.taylor@intel.com>
 <20191121201455.2558-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121201455.2558-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Disable display interrupts
 during display IRQ handler
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMTI6MTQ6NTVQTSAtMDgwMCwgQ2xpbnQgVGF5bG9yIHdy
b3RlOgo+RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPgo+
RHVyaW5nIHRoZSBEaXNwbGF5IEludGVycnVwdCBTZXJ2aWNlIHJvdXRpbmUgdGhlIERpc3BsYXkg
SW50ZXJydXB0Cj5FbmFibGUgYml0IG11c3QgYmUgZGlzYWJsZWQsIFRoZSBpbnRlcnJ1cHRzIGhh
bmRsZWQsIHRoZW4gdGhlCj5EaXNwbGF5IEludGVycnVwdCBFbmFibGUgYml0IG11c3QgYmUgc2V0
IHRvIHByZXZlbnQgcG9zc2libGUgbWlzc2VkCj5pbnRlcnJ1cHRzLgo+Cj5Cc3BlYzogNDkyMTIK
PlYyOiBDaGFuZ2UgVGl0bGUgdG8gcmVtb3ZlIFNERSByZWZlcmVuY2UuCj5WMzogRml4IFRBQiBz
cGFjaW5nLgo+Cj5DYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj5DYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Cj4KPlJldmlld2Vk
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1i
eTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCgpSZXZpZXdlZC1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgphbmQgcHVzaGVk
LCB0aGFua3MuCgpMdWNhcyBEZSBNYXJjaGkKCj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIHwgNCArKysrCj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKPmluZGV4IGRhZTAwZjdkZDdkZi4uOGIzMzg3NDRlZGRmIDEw
MDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+KysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+QEAgLTI0ODQsNyArMjQ4NCwxMSBAQCBfX2dlbjEx
X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29uc3QgaTkxNSwKPiAJCSAq
IEdFTjExX0RJU1BMQVlfSU5UX0NUTCBoYXMgc2FtZSBmb3JtYXQgYXMgR0VOOF9NQVNURVJfSVJR
Cj4gCQkgKiBmb3IgdGhlIGRpc3BsYXkgcmVsYXRlZCBiaXRzLgo+IAkJICovCj4rCQlyYXdfcmVn
X3dyaXRlKHJlZ3MsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCwgMHgwKTsKPiAJCWdlbjhfZGVfaXJx
X2hhbmRsZXIoaTkxNSwgZGlzcF9jdGwpOwo+KwkJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4xMV9E
SVNQTEFZX0lOVF9DVEwsCj4rCQkJICAgICAgR0VOMTFfRElTUExBWV9JUlFfRU5BQkxFKTsKPisK
PiAJCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKPiAJfQo+
Cj4tLSAKPjIuMTkuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
