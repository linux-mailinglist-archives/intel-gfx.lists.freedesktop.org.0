Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BB0336AFF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 05:11:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681A46EA7F;
	Thu, 11 Mar 2021 04:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C256EA7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 04:11:42 +0000 (UTC)
IronPort-SDR: MZ4eJaoGX3Ia/Tz8XSRbaIb5JWkP8EB+0nxfaOdxhLtKGGBUW/0o/cfFCzqu6wdG0hi3PMnORE
 JNLQPJWU3LuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="186230766"
X-IronPort-AV: E=Sophos;i="5.81,239,1610438400"; d="scan'208";a="186230766"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 20:11:37 -0800
IronPort-SDR: qtCNuDxH+FNGTOEhyB6l4m/KqLCm6v2XsrvZN8O0VVdA4Y3GlW6RMPr/Dsrr9np6A2UjZj+cU9
 ++JShEYL2NKg==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403940403"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.251.68.59])
 ([10.251.68.59])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 20:11:36 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210310194351.6233-1-ville.syrjala@linux.intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <fa8e5ea0-2d0e-5337-faef-89f1d64a3d75@intel.com>
Date: Thu, 11 Mar 2021 09:41:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210310194351.6233-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tolerate bogus DPLL selection
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMy8xMS8yMDIxIDE6MTMgQU0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IExldCdzIGNoZWNr
IHRoYXQgd2UgYWN0dWFsbHkgZm91bmQgdGhlIFBMTCBiZWZvcmUgZG9pbmcgdGhlCj4gcG9ydF9j
bG9jayByZWFkb3V0LCBqdXN0IGluIGNhc2UgdGhlIGhhcmR3YXJlIGlzIHNldmVybHkKPiBtaXNw
cm9ncmFtbWluZyBieSB0aGUgcHJldmlvdXMgZ3V5LiBOb3Qgc3VyZSB0aGUgaHcgd291bGQKPiBl
dmVuIHN1cnZpdmUgc3VjaCBtaXNwcm9ncmFtbWluZyB3aXRob3V0IGhhbmdpbmcgYnV0IG5vCj4g
cmVhbCBoYXJtIGluIGNoZWNraW5nIGFueXdheS4KPgo+IENjOiBLYXJ0aGlrIEIgUyA8a2FydGhp
ay5iLnNAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3ZWQtYnk6
IEthcnRoaWsgQiBTIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDE3ICsrKysrKysrKysrKystLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4IGJhODM2ODJlMWQz
ZS4uNjRhOTUyZGI4NTI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCj4gQEAgLTM3MTYsNiArMzcxNiw5IEBAIHZvaWQgaW50ZWxfZGRpX2dldF9jbG9jayhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgIAlzdHJ1Y3QgaWNsX3BvcnRfZHBsbCAq
cG9ydF9kcGxsID0gJmNydGNfc3RhdGUtPmljbF9wb3J0X2RwbGxzW3BvcnRfZHBsbF9pZF07Cj4g
ICAJYm9vbCBwbGxfYWN0aXZlOwo+ICAgCj4gKwlpZiAoZHJtX1dBUk5fT04oJmk5MTUtPmRybSwg
IXBsbCkpCj4gKwkJcmV0dXJuOwo+ICsKPiAgIAlwb3J0X2RwbGwtPnBsbCA9IHBsbDsKPiAgIAlw
bGxfYWN0aXZlID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoaTkxNSwgcGxsLCAmcG9ydF9kcGxs
LT5od19zdGF0ZSk7Cj4gICAJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIXBsbF9hY3RpdmUpOwo+
IEBAIC0zNzU0LDE2ICszNzU3LDE3IEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fZ2V0X2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgIAlpbnRlbF9kZGlfZ2V0X2Nv
bmZpZyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgdm9pZCBpY2xf
ZGRpX3RjX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCQkg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICtzdGF0aWMgdm9pZCBpY2xf
ZGRpX3RjX2dldF9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiArCQkJCSBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiArCQkJCSBzdHJ1Y3QgaW50ZWxf
c2hhcmVkX2RwbGwgKnBsbCkKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+ICAgCWVudW0gaWNsX3BvcnRfZHBsbF9p
ZCBwb3J0X2RwbGxfaWQ7Cj4gICAJc3RydWN0IGljbF9wb3J0X2RwbGwgKnBvcnRfZHBsbDsKPiAt
CXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsOwo+ICAgCWJvb2wgcGxsX2FjdGl2ZTsKPiAg
IAo+IC0JcGxsID0gaWNsX2RkaV90Y19nZXRfcGxsKGVuY29kZXIpOwo+ICsJaWYgKGRybV9XQVJO
X09OKCZpOTE1LT5kcm0sICFwbGwpKQo+ICsJCXJldHVybjsKPiAgIAo+ICAgCWlmIChpbnRlbF9n
ZXRfc2hhcmVkX2RwbGxfaWQoaTkxNSwgcGxsKSA9PSBEUExMX0lEX0lDTF9UQlRQTEwpCj4gICAJ
CXBvcnRfZHBsbF9pZCA9IElDTF9QT1JUX0RQTExfREVGQVVMVDsKPiBAQCAtMzc4Myw3ICszNzg3
LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfdGNfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiAgIAllbHNlCj4gICAJCWNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPSBp
bnRlbF9kcGxsX2dldF9mcmVxKGk5MTUsIGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsLAo+ICAgCQkJ
CQkJCSAgICAgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUpOwo+ICt9Cj4gICAKPiArc3RhdGlj
IHZvaWQgaWNsX2RkaV90Y19nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAo+ICsJCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJ
aWNsX2RkaV90Y19nZXRfY2xvY2soZW5jb2RlciwgY3J0Y19zdGF0ZSwgaWNsX2RkaV90Y19nZXRf
cGxsKGVuY29kZXIpKTsKPiAgIAlpbnRlbF9kZGlfZ2V0X2NvbmZpZyhlbmNvZGVyLCBjcnRjX3N0
YXRlKTsKPiAgIH0KPiAgIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
