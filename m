Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE7337AE83
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 20:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FE86EAB3;
	Tue, 11 May 2021 18:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87166EAB3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 18:31:56 +0000 (UTC)
IronPort-SDR: N9bI3UypxigRUB9BGNcAas0XKWLwdj2mqZtjlHrTEZsmeQxLReRecMiF1SPdNFIXyUtMX3sg5m
 mE9H05ZukQbQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="179782029"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="179782029"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 11:31:47 -0700
IronPort-SDR: zc337rhO/uZIFmMB6h9WD7fi+Lk1Ev4hxsw0aRTxiRafx2XeBLicj7ug1z125B/pVEdcmiYiwE
 Lvkh/0jlCobA==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="436790718"
Received: from ialvarez-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.32.67])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 11:31:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210421164849.12806-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
 <20210421164849.12806-10-ville.syrjala@linux.intel.com>
Date: Tue, 11 May 2021 21:31:42 +0300
Message-ID: <871radunox.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/17] drm/i915: Introduce
 encoder->get_buf_trans()
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

T24gV2VkLCAyMSBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBDb252ZXJ0IHRoZSBnZXRfYnVmX3RyYW5zKCkgZnVuY3Rpb25z
IGludG8gYW4gZW5jb2RlciB2ZnVuYy4KPiBBbGxvd3MgdXMgdG8gZ2V0IHJpZCBvZiBidW5jaCBv
ZiBwbGF0Zm9ybSBpZi1sYWRkZXJzLgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRoZSBzZXJpZXMgdXAgdG8gYW5kIGlu
Y2x1ZGluZyB0aGlzIHBhdGNoLAoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NydC5jICAgICAgfCAgMyArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgICAgICB8IDU2ICsrKy0tLS0tLS0tLS0tLQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCA2OCArKysrKysrKysrKy0tLS0tLS0tCj4gIC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaCAgICB8IDM5ICstLS0tLS0tLS0t
Cj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA0ICsr
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmRpLmMgICAgICB8ICAzICst
Cj4gIDYgZmlsZXMgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwgMTE0IGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCj4gaW5kZXggYzg1MDky
ZWFhNWMyLi40MmRhMmUzNWJjN2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jcnQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0LmMKPiBAQCAtMzcsNiArMzcsNyBAQAo+ICAjaW5jbHVkZSAiaW50ZWxfY29ubmVj
dG9yLmgiCj4gICNpbmNsdWRlICJpbnRlbF9jcnQuaCIKPiAgI2luY2x1ZGUgImludGVsX2RkaS5o
Igo+ICsjaW5jbHVkZSAiaW50ZWxfZGRpX2J1Zl90cmFucy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxf
ZGlzcGxheV90eXBlcy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZmRpLmgiCj4gICNpbmNsdWRlICJp
bnRlbF9maWZvX3VuZGVycnVuLmgiCj4gQEAgLTEwNzksNiArMTA4MCw4IEBAIHZvaWQgaW50ZWxf
Y3J0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJCWNydC0+YmFz
ZS5lbmFibGVfY2xvY2sgPSBoc3dfZGRpX2VuYWJsZV9jbG9jazsKPiAgCQljcnQtPmJhc2UuZGlz
YWJsZV9jbG9jayA9IGhzd19kZGlfZGlzYWJsZV9jbG9jazsKPiAgCQljcnQtPmJhc2UuaXNfY2xv
Y2tfZW5hYmxlZCA9IGhzd19kZGlfaXNfY2xvY2tfZW5hYmxlZDsKPiArCj4gKwkJaW50ZWxfZGRp
X2J1Zl90cmFuc19pbml0KCZjcnQtPmJhc2UpOwo+ICAJfSBlbHNlIHsKPiAgCQlpZiAoSEFTX1BD
SF9TUExJVChkZXZfcHJpdikpIHsKPiAgCQkJY3J0LT5iYXNlLmNvbXB1dGVfY29uZmlnID0gcGNo
X2NydF9jb21wdXRlX2NvbmZpZzsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKPiBpbmRleCA1YWMzMWJkMTNiM2UuLjkwNmZlYTI0OWVhZiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC0xMDIsOCArMTAyLDcgQEAgdm9p
ZCBoc3dfcHJlcGFyZV9kcF9kZGlfYnVmZmVycyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKPiAgCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKPiAgCWNvbnN0IHN0cnVjdCBp
bnRlbF9kZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zOwo+ICAKPiAtCWRkaV90cmFuc2xh
dGlvbnMgPSBoc3dfZ2V0X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVz
KTsKPiAtCj4gKwlkZGlfdHJhbnNsYXRpb25zID0gZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyhlbmNv
ZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAgCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZk
ZXZfcHJpdi0+ZHJtLCAhZGRpX3RyYW5zbGF0aW9ucykpCj4gIAkJcmV0dXJuOwo+ICAKPiBAQCAt
MTM1LDggKzEzNCw3IEBAIHN0YXRpYyB2b2lkIGhzd19wcmVwYXJlX2hkbWlfZGRpX2J1ZmZlcnMo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29k
ZXItPnBvcnQ7Cj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5z
bGF0aW9uczsKPiAgCj4gLQlkZGlfdHJhbnNsYXRpb25zID0gaHN3X2dldF9idWZfdHJhbnMoZW5j
b2RlciwgY3J0Y19zdGF0ZSwgICZuX2VudHJpZXMpOwo+IC0KPiArCWRkaV90cmFuc2xhdGlvbnMg
PSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMp
Owo+ICAJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRp
b25zKSkKPiAgCQlyZXR1cm47Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRy
bSwgbGV2ZWwgPj0gbl9lbnRyaWVzKSkKPiBAQCAtOTExLDggKzkwOSw3IEBAIHN0YXRpYyB2b2lk
IHNrbF9kZGlfc2V0X2lib29zdChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQlj
b25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9uczsKPiAgCQlp
bnQgbl9lbnRyaWVzOwo+ICAKPiAtCQlkZGlfdHJhbnNsYXRpb25zID0gaHN3X2dldF9idWZfdHJh
bnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQo+ICsJCWRkaV90cmFuc2xh
dGlvbnMgPSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2Vu
dHJpZXMpOwo+ICAJCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCAhZGRpX3Ry
YW5zbGF0aW9ucykpCj4gIAkJCXJldHVybjsKPiAgCQlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2
X3ByaXYtPmRybSwgbGV2ZWwgPj0gbl9lbnRyaWVzKSkKPiBAQCAtOTQyLDcgKzkzOSw3IEBAIHN0
YXRpYyB2b2lkIGJ4dF9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+ICAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0Owo+ICAJaW50IG5fZW50
cmllczsKPiAgCj4gLQlkZGlfdHJhbnNsYXRpb25zID0gYnh0X2dldF9idWZfdHJhbnMoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gKwlkZGlfdHJhbnNsYXRpb25zID0gZW5jb2Rl
ci0+Z2V0X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAgCWlm
IChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCAhZGRpX3RyYW5zbGF0aW9ucykpCj4g
IAkJcmV0dXJuOwo+ICAJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sIGxldmVs
ID49IG5fZW50cmllcykpCj4gQEAgLTk2MCwzMSArOTU3LDkgQEAgc3RhdGljIHU4IGludGVsX2Rk
aV9kcF92b2x0YWdlX21heChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICB7Cj4gIAlzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9ICZkcF90b19kaWdfcG9ydChpbnRlbF9kcCktPmJh
c2U7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29k
ZXItPmJhc2UuZGV2KTsKPiAtCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKPiAtCWVu
dW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKPiAgCWludCBu
X2VudHJpZXM7Cj4gIAo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikgewo+IC0J
CWlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpCj4gLQkJCXRnbF9nZXRfY29t
Ym9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+IC0JCWVsc2UK
PiAtCQkJdGdsX2dldF9ka2xfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJp
ZXMpOwo+IC0JfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gMTEpIHsKPiAtCQlp
ZiAoSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0pBU1BFUkxBS0UpKQo+IC0JCQlqc2xfZ2V0
X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCQll
bHNlIGlmIChJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfRUxLSEFSVExBS0UpKQo+IC0JCQll
aGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsK
PiAtCQllbHNlIGlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpCj4gLQkJCWlj
bF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+
IC0JCWVsc2UKPiAtCQkJaWNsX2dldF9tZ19idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwg
Jm5fZW50cmllcyk7Cj4gLQl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKSB7Cj4g
LQkJY25sX2dldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4g
LQl9IGVsc2UgaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpIHx8IElTX0JST1hUT04oZGV2X3By
aXYpKSB7Cj4gLQkJYnh0X2dldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50
cmllcyk7Cj4gLQl9IGVsc2Ugewo+IC0JCWhzd19nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNf
c3RhdGUsICZuX2VudHJpZXMpOwo+IC0JfQo+ICsJZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyhlbmNv
ZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAgCj4gIAlpZiAoZHJtX1dBUk5fT04oJmRl
dl9wcml2LT5kcm0sIG5fZW50cmllcyA8IDEpKQo+ICAJCW5fZW50cmllcyA9IDE7Cj4gQEAgLTEw
MTYsOCArOTkxLDcgQEAgc3RhdGljIHZvaWQgY25sX2RkaV92c3dpbmdfcHJvZ3JhbShzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCWludCBuX2VudHJpZXMsIGxuOwo+ICAJdTMyIHZh
bDsKPiAgCj4gLQlkZGlfdHJhbnNsYXRpb25zID0gY25sX2dldF9idWZfdHJhbnMoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQo+ICsJZGRpX3RyYW5zbGF0aW9ucyA9IGVuY29k
ZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gIAlp
ZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKQo+
ICAJCXJldHVybjsKPiAgCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZl
bCA+PSBuX2VudHJpZXMpKQo+IEBAIC0xMTM3LDE1ICsxMTExLDcgQEAgc3RhdGljIHZvaWQgaWNs
X2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
PiAgCWludCBuX2VudHJpZXMsIGxuOwo+ICAJdTMyIHZhbDsKPiAgCj4gLQlpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID49IDEyKQo+IC0JCWRkaV90cmFuc2xhdGlvbnMgPSB0Z2xfZ2V0X2NvbWJv
X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCWVsc2UgaWYg
KElTX1BMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9KQVNQRVJMQUtFKSkKPiAtCQlkZGlfdHJhbnNs
YXRpb25zID0ganNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5f
ZW50cmllcyk7Cj4gLQllbHNlIGlmIChJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfRUxLSEFS
VExBS0UpKQo+IC0JCWRkaV90cmFuc2xhdGlvbnMgPSBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhl
bmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCWVsc2UKPiAtCQlkZGlfdHJhbnNs
YXRpb25zID0gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5f
ZW50cmllcyk7Cj4gLQo+ICsJZGRpX3RyYW5zbGF0aW9ucyA9IGVuY29kZXItPmdldF9idWZfdHJh
bnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gIAlpZiAoZHJtX1dBUk5fT05f
T05DRSgmZGV2X3ByaXYtPmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKQo+ICAJCXJldHVybjsKPiAg
CWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZlbCA+PSBuX2VudHJpZXMp
KQo+IEBAIC0xMjcyLDggKzEyMzgsNyBAQCBzdGF0aWMgdm9pZCBpY2xfbWdfcGh5X2RkaV92c3dp
bmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlpZiAoZW5jX3Rv
X2RpZ19wb3J0KGVuY29kZXIpLT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkKPiAgCQlyZXR1
cm47Cj4gIAo+IC0JZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9nZXRfbWdfYnVmX3RyYW5zKGVuY29k
ZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+IC0KPiArCWRkaV90cmFuc2xhdGlvbnMgPSBl
bmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+
ICAJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25z
KSkKPiAgCQlyZXR1cm47Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwg
bGV2ZWwgPj0gbl9lbnRyaWVzKSkKPiBAQCAtMTQxMCw4ICsxMzc1LDcgQEAgdGdsX2RrbF9waHlf
ZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCWlm
IChlbmNfdG9fZGlnX3BvcnQoZW5jb2RlciktPnRjX21vZGUgPT0gVENfUE9SVF9UQlRfQUxUKQo+
ICAJCXJldHVybjsKPiAgCj4gLQlkZGlfdHJhbnNsYXRpb25zID0gdGdsX2dldF9ka2xfYnVmX3Ry
YW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+IC0KPiArCWRkaV90cmFuc2xh
dGlvbnMgPSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2Vu
dHJpZXMpOwo+ICAJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJh
bnNsYXRpb25zKSkKPiAgCQlyZXR1cm47Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3By
aXYtPmRybSwgbGV2ZWwgPj0gbl9lbnRyaWVzKSkKPiBAQCAtNDU5MCw2ICs0NTU0LDggQEAgdm9p
ZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0g
cG9ydCBwb3J0KQo+ICAJCWVuY29kZXItPmdldF9jb25maWcgPSBoc3dfZGRpX2dldF9jb25maWc7
Cj4gIAl9Cj4gIAo+ICsJaW50ZWxfZGRpX2J1Zl90cmFuc19pbml0KGVuY29kZXIpOwo+ICsKPiAg
CWlmIChJU19ERzEoZGV2X3ByaXYpKQo+ICAJCWVuY29kZXItPmhwZF9waW4gPSBkZzFfaHBkX3Bp
bihkZXZfcHJpdiwgcG9ydCk7Cj4gIAllbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJh
bnMuYwo+IGluZGV4IDc1NzRkNjM5MGEzOS4uMzdhOWMzYjJjMDNjIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMKPiBAQCAt
MTIwNyw3ICsxMjA3LDcgQEAgaHN3X2dldF9idWZfdHJhbnNfaGRtaShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiAgCXJldHVybiBOVUxMOwo+ICB9Cj4gIAo+IC1jb25zdCBzdHJ1Y3Qg
aW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyAqCj4gIGhzd19nZXRfYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ICAJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4g
IAkJICBpbnQgKm5fZW50cmllcykKPiBAQCAtMTI0Nyw3ICsxMjQ3LDcgQEAgYnh0X2dldF9idWZf
dHJhbnNfaGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMp
Cj4gIAlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmYnh0X2RkaV90cmFuc2xhdGlvbnNfaGRt
aSwgbl9lbnRyaWVzKTsKPiAgfQo+ICAKPiAtY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJh
bnMgKgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICBieHRf
Z2V0X2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCSAgaW50ICpuX2VudHJp
ZXMpCj4gQEAgLTEzMjksNyArMTMyOSw3IEBAIGNubF9nZXRfYnVmX3RyYW5zX2VkcChzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCj4gIAl9Cj4gIH0KPiAgCj4g
LWNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiAgY25sX2dldF9idWZfdHJhbnMoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCj4gIAkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiAgCQkgIGludCAqbl9lbnRyaWVzKQo+IEBAIC0xMzgzLDcgKzEzODMsNyBA
QCBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19lZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCj4gIAlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2RlciwgY3J0Y19z
dGF0ZSwgbl9lbnRyaWVzKTsKPiAgfQo+ICAKPiAtY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZf
dHJhbnMgKgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICBp
Y2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAg
CQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJCWludCAq
bl9lbnRyaWVzKQo+IEBAIC0xNDE5LDcgKzE0MTksNyBAQCBpY2xfZ2V0X21nX2J1Zl90cmFuc19k
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCX0KPiAgfQo+ICAKPiAtY29uc3Qg
c3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKgo+ICBpY2xfZ2V0X21nX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiAgCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAo+ICAJCSAgICAgaW50ICpuX2VudHJpZXMpCj4gQEAgLTE0NjMsNyArMTQ2Myw3
IEBAIGVobF9nZXRfY29tYm9fYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKPiAgCXJldHVybiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFuc19kcChlbmNvZGVyLCBjcnRj
X3N0YXRlLCBuX2VudHJpZXMpOwo+ICB9Cj4gIAo+IC1jb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyAqCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4g
IGVobF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
ICAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJaW50
ICpuX2VudHJpZXMpCj4gQEAgLTE1MTQsNyArMTUxNCw3IEBAIGpzbF9nZXRfY29tYm9fYnVmX3Ry
YW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCXJldHVybiBqc2xfZ2V0
X2NvbWJvX2J1Zl90cmFuc19kcChlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOwo+ICB9
Cj4gIAo+IC1jb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gIGpzbF9nZXRfY29tYm9fYnVmX3RyYW5z
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCQljb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJaW50ICpuX2VudHJpZXMpCj4gQEAgLTE1ODcs
NyArMTU4Nyw3IEBAIHRnbF9nZXRfY29tYm9fYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiAgCXJldHVybiB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19kcChlbmNv
ZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOwo+ICB9Cj4gIAo+IC1jb25zdCBzdHJ1Y3QgaW50
ZWxfZGRpX2J1Zl90cmFucyAqCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90
cmFucyAqCj4gIHRnbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+ICAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
PiAgCQkJaW50ICpuX2VudHJpZXMpCj4gQEAgLTE2MjMsNyArMTYyMyw3IEBAIHRnbF9nZXRfZGts
X2J1Zl90cmFuc19kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCX0KPiAgfQo+
ICAKPiAtY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICB0Z2xfZ2V0X2RrbF9idWZfdHJhbnMoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJICAgICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJICAgICAgaW50ICpuX2VudHJpZXMpCj4gQEAg
LTE2MzksMjggKzE2MzksMTAgQEAgaW50IGludGVsX2RkaV9oZG1pX251bV9lbnRyaWVzKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCQkgICAgICAgaW50ICpkZWZhdWx0X2VudHJ5
KQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVu
Y29kZXItPmJhc2UuZGV2KTsKPiAtCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRl
dl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3Ry
YW5zICpkZGlfdHJhbnNsYXRpb25zID0gTlVMTDsKPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9kZGlf
YnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zOwo+ICAJaW50IG5fZW50cmllczsKPiAgCj4gLQlp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7Cj4gLQkJaWYgKGludGVsX3BoeV9pc19j
b21ibyhkZXZfcHJpdiwgcGh5KSkKPiAtCQkJZGRpX3RyYW5zbGF0aW9ucyA9IHRnbF9nZXRfY29t
Ym9fYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQkJ
ZWxzZQo+IC0JCQlkZGlfdHJhbnNsYXRpb25zID0gdGdsX2dldF9ka2xfYnVmX3RyYW5zX2hkbWko
ZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQl9IGVsc2UgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA9PSAxMSkgewo+IC0JCWlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3By
aXYsIHBoeSkpCj4gLQkJCWRkaV90cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFu
c19oZG1pKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+IC0JCWVsc2UKPiAtCQkJ
ZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9nZXRfbWdfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgY3J0
Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3By
aXYpKSB7Cj4gLQkJZGRpX3RyYW5zbGF0aW9ucyA9IGNubF9nZXRfYnVmX3RyYW5zX2hkbWkoZW5j
b2RlciwgJm5fZW50cmllcyk7Cj4gLQl9IGVsc2UgaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
IHx8IElTX0JST1hUT04oZGV2X3ByaXYpKSB7Cj4gLQkJZGRpX3RyYW5zbGF0aW9ucyA9IGJ4dF9n
ZXRfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgJm5fZW50cmllcyk7Cj4gLQl9IGVsc2UgaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA9PSA5IHx8Cj4gLQkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2
KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewo+IC0JCWRkaV90cmFuc2xhdGlvbnMgPSBoc3df
Z2V0X2J1Zl90cmFuc19oZG1pKGVuY29kZXIsICZuX2VudHJpZXMpOwo+IC0JfQo+ICsJZGRpX3Ry
YW5zbGF0aW9ucyA9IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwg
Jm5fZW50cmllcyk7Cj4gIAo+ICAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhZGRp
X3RyYW5zbGF0aW9ucykpIHsKPiAgCQkqZGVmYXVsdF9lbnRyeSA9IDA7Cj4gQEAgLTE2NzEsMyAr
MTY1MywzMSBAQCBpbnQgaW50ZWxfZGRpX2hkbWlfbnVtX2VudHJpZXMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCj4gIAo+ICAJcmV0dXJuIG5fZW50cmllczsKPiAgfQo+ICsKPiArdm9p
ZCBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
Cj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVy
LT5iYXNlLmRldik7Cj4gKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBl
bmNvZGVyLT5wb3J0KTsKPiArCj4gKwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpIHsKPiAr
CQlpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGk5MTUsIHBoeSkpCj4gKwkJCWVuY29kZXItPmdldF9i
dWZfdHJhbnMgPSB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFuczsKPiArCQllbHNlCj4gKwkJCWVuY29k
ZXItPmdldF9idWZfdHJhbnMgPSB0Z2xfZ2V0X2RrbF9idWZfdHJhbnM7Cj4gKwl9IGVsc2UgaWYg
KERJU1BMQVlfVkVSKGk5MTUpID09IDExKSB7Cj4gKwkJaWYgKElTX1BMQVRGT1JNKGk5MTUsIElO
VEVMX0pBU1BFUkxBS0UpKQo+ICsJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0ganNsX2dldF9j
b21ib19idWZfdHJhbnM7Cj4gKwkJZWxzZSBpZiAoSVNfUExBVEZPUk0oaTkxNSwgSU5URUxfRUxL
SEFSVExBS0UpKQo+ICsJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gZWhsX2dldF9jb21ib19i
dWZfdHJhbnM7Cj4gKwkJZWxzZSBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGk5MTUsIHBoeSkpCj4g
KwkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFuczsKPiAr
CQllbHNlCj4gKwkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBpY2xfZ2V0X21nX2J1Zl90cmFu
czsKPiArCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkgewo+ICsJCWVuY29kZXItPmdl
dF9idWZfdHJhbnMgPSBjbmxfZ2V0X2J1Zl90cmFuczsKPiArCX0gZWxzZSBpZiAoSVNfR0VNSU5J
TEFLRShpOTE1KSB8fCBJU19CUk9YVE9OKGk5MTUpKSB7Cj4gKwkJZW5jb2Rlci0+Z2V0X2J1Zl90
cmFucyA9IGJ4dF9nZXRfYnVmX3RyYW5zOwo+ICsJfSBlbHNlIHsKPiArCQllbmNvZGVyLT5nZXRf
YnVmX3RyYW5zID0gaHN3X2dldF9idWZfdHJhbnM7Cj4gKwl9Cj4gK30KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaAo+IGluZGV4IDk0
MDE0MGU2NGM3Ni4uNWY0NmFmMzY3OTRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgKPiBAQCAtNjUsNDQgKzY1LDcgQEAg
aW50IGludGVsX2RkaV9oZG1pX251bV9lbnRyaWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ICAJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCj4gIAkJCSAgICAgICBpbnQgKmRlZmF1bHRfZW50cnkpOwo+ICAKPiAtY29uc3Qgc3RydWN0
IGludGVsX2RkaV9idWZfdHJhbnMgKgo+IC1oc3dfZ2V0X2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKPiAtCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAo+IC0JCSAgaW50ICpuX2VudHJpZXMpOwo+ICt2b2lkIGludGVsX2RkaV9idWZf
dHJhbnNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7Cj4gIAo+IC1jb25zdCBz
dHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gLWJ4dF9nZXRfYnVmX3RyYW5zKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IC0JCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCj4gLQkJICBpbnQgKm5fZW50cmllcyk7Cj4gLQo+IC1jb25zdCBzdHJ1
Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gLXRnbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IC0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKPiAtCQkJaW50ICpuX2VudHJpZXMpOwo+IC1jb25zdCBzdHJ1Y3Qg
aW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gLXRnbF9nZXRfZGtsX2J1Zl90cmFucyhzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAtCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKPiAtCQkgICAgICBpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0
cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiAtanNsX2dldF9jb21ib19idWZfdHJhbnMoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAo+IC0JCQlpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVj
dCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiAtZWhsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAo+IC0JCQlpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVjdCBp
bnRlbF9kZGlfYnVmX3RyYW5zICoKPiAtaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAo+IC0JCQlpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVjdCBpbnRl
bF9kZGlfYnVmX3RyYW5zICoKPiAtaWNsX2dldF9tZ19idWZfdHJhbnMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCj4gLQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiAtCQkgICAgIGludCAqbl9lbnRyaWVzKTsKPiAtCj4gLWNvbnN0IHN0cnVj
dCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiAtY25sX2dldF9idWZfdHJhbnMoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCj4gLQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiAtCQkgIGludCAqbl9lbnRyaWVzKTsKPiAgCj4gICNlbmRpZgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4g
aW5kZXggZTJlNzA3YzRkZmY1Li4zNDUxZDdkNjU3MGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IEBAIC00OSw2ICs0
OSw3IEBACj4gIAo+ICBzdHJ1Y3QgZHJtX3ByaW50ZXI7Cj4gIHN0cnVjdCBfX2ludGVsX2dsb2Jh
bF9vYmpzX3N0YXRlOwo+ICtzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFuczsKPiAgCj4gIC8qCj4g
ICAqIERpc3BsYXkgcmVsYXRlZCBzdHVmZgo+IEBAIC0yNjAsNiArMjYxLDkgQEAgc3RydWN0IGlu
dGVsX2VuY29kZXIgewo+ICAJICogUmV0dXJucyB3aGV0aGVyIHRoZSBwb3J0IGNsb2NrIGlzIGVu
YWJsZWQgb3Igbm90Lgo+ICAJICovCj4gIAlib29sICgqaXNfY2xvY2tfZW5hYmxlZCkoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpOwo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZf
dHJhbnMgKigqZ2V0X2J1Zl90cmFucykoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4g
KwkJCQkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAr
CQkJCQkJCSAgIGludCAqbl9lbnRyaWVzKTsKPiAgCWVudW0gaHBkX3BpbiBocGRfcGluOwo+ICAJ
ZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBwb3dlcl9kb21haW47Cj4gIAkvKiBmb3Ig
Y29tbXVuaWNhdGlvbiB3aXRoIGF1ZGlvIGNvbXBvbmVudDsgcHJvdGVjdGVkIGJ5IGF2X211dGV4
ICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmRp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jCj4gaW5kZXggMjIz
NzYyMDIwYWZlLi5iNjFmNmI3NGY4MWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmRpLmMKPiBAQCAtNCw3ICs0LDYgQEAKPiAgICovCj4gICNpbmNsdWRlICJpbnRl
bF9hdG9taWMuaCIKPiAgI2luY2x1ZGUgImludGVsX2RkaS5oIgo+IC0jaW5jbHVkZSAiaW50ZWxf
ZGRpX2J1Zl90cmFucy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgo+ICAj
aW5jbHVkZSAiaW50ZWxfZmRpLmgiCj4gIAo+IEBAIC01NjgsNyArNTY3LDcgQEAgdm9pZCBoc3df
ZmRpX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAl1MzIgdGVt
cCwgaSwgcnhfY3RsX3ZhbDsKPiAgCWludCBuX2VudHJpZXM7Cj4gIAo+IC0JaHN3X2dldF9idWZf
dHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gKwllbmNvZGVyLT5nZXRf
YnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+ICAKPiAgCWhzd19w
cmVwYXJlX2RwX2RkaV9idWZmZXJzKGVuY29kZXIsIGNydGNfc3RhdGUpOwoKLS0gCkphbmkgTmlr
dWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
