Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E796D3ACAB3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EE76E9F5;
	Fri, 18 Jun 2021 12:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B06A6E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 12:19:08 +0000 (UTC)
IronPort-SDR: 4C7qFBDPUXPHgBYESc4rAPhrdovkH5TRtG+uzkzqr2AJHPqMYqjhuogAgDyJ+ob6jDoRzGyBRp
 zurI1dzr8uzQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="206495756"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="206495756"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:19:07 -0700
IronPort-SDR: tVYoK10Iu2DfGxYvh0tQ0gySJlbMI2NDnE8WkN2hAFhqjYLLRborihfHVJaFm/Aqm6d3I/yBPG
 8gvbNzC+edMA==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="485665019"
Received: from shoriyac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.148])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:19:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210608073603.2408-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
 <20210608073603.2408-10-ville.syrjala@linux.intel.com>
Date: Fri, 18 Jun 2021 15:19:02 +0300
Message-ID: <877dirwekp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 09/17] drm/i915: Introduce
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

T24gVHVlLCAwOCBKdW4gMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBDb252ZXJ0IHRoZSBnZXRfYnVmX3RyYW5zKCkgZnVuY3Rpb25z
IGludG8gYW4gZW5jb2RlciB2ZnVuYy4KPiBBbGxvd3MgdXMgdG8gZ2V0IHJpZCBvZiBidW5jaCBv
ZiBwbGF0Zm9ybSBpZi1sYWRkZXJzLgo+Cj4gdjI6IEhhbmRsZSBhZGwtcAo+Cj4gUmV2aWV3ZWQt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ICN2MQoKSG9sZHMgZm9yIHYy
LgoKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Ny
dC5jICAgICAgfCAgMyArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgICAgICB8IDYxICsrKy0tLS0tLS0tLS0tLQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGlfYnVmX3RyYW5zLmMgICAgfCA3NSArKysrKysrKysrKy0tLS0tLS0tCj4gIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaCAgICB8IDQ0ICstLS0tLS0tLS0tCj4g
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA0ICsKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mZGkuYyAgICAgIHwgIDMgKy0KPiAg
NiBmaWxlcyBjaGFuZ2VkLCA2NSBpbnNlcnRpb25zKCspLCAxMjUgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMKPiBpbmRleCA2NDhmMWMwZDNk
MzkuLjQwOGY4MmIwZGM3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NydC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jcnQuYwo+IEBAIC0zOCw2ICszOCw3IEBACj4gICNpbmNsdWRlICJpbnRlbF9jcnQuaCIKPiAg
I2luY2x1ZGUgImludGVsX2NydGMuaCIKPiAgI2luY2x1ZGUgImludGVsX2RkaS5oIgo+ICsjaW5j
bHVkZSAiaW50ZWxfZGRpX2J1Zl90cmFucy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCIKPiAg
I2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiAgI2luY2x1ZGUgImludGVsX2ZkaS5o
Igo+IEBAIC0xMDgxLDYgKzEwODIsOCBAQCB2b2lkIGludGVsX2NydF9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQljcnQtPmJhc2UuZW5hYmxlX2Nsb2NrID0gaHN3
X2RkaV9lbmFibGVfY2xvY2s7Cj4gIAkJY3J0LT5iYXNlLmRpc2FibGVfY2xvY2sgPSBoc3dfZGRp
X2Rpc2FibGVfY2xvY2s7Cj4gIAkJY3J0LT5iYXNlLmlzX2Nsb2NrX2VuYWJsZWQgPSBoc3dfZGRp
X2lzX2Nsb2NrX2VuYWJsZWQ7Cj4gKwo+ICsJCWludGVsX2RkaV9idWZfdHJhbnNfaW5pdCgmY3J0
LT5iYXNlKTsKPiAgCX0gZWxzZSB7Cj4gIAkJaWYgKEhBU19QQ0hfU1BMSVQoZGV2X3ByaXYpKSB7
Cj4gIAkJCWNydC0+YmFzZS5jb21wdXRlX2NvbmZpZyA9IHBjaF9jcnRfY29tcHV0ZV9jb25maWc7
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXggMzc0NDVj
ZWMwYzIzLi5kOGI0ZGI2MDJkMzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKPiBAQCAtMTA0LDggKzEwNCw3IEBAIHZvaWQgaHN3X3ByZXBhcmVfZHBfZGRp
X2J1ZmZlcnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAllbnVtIHBvcnQgcG9y
dCA9IGVuY29kZXItPnBvcnQ7Cj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAq
ZGRpX3RyYW5zbGF0aW9uczsKPiAgCj4gLQlkZGlfdHJhbnNsYXRpb25zID0gaHN3X2dldF9idWZf
dHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQo+ICsJZGRpX3RyYW5z
bGF0aW9ucyA9IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5f
ZW50cmllcyk7Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgIWRkaV90
cmFuc2xhdGlvbnMpKQo+ICAJCXJldHVybjsKPiAgCj4gQEAgLTEzNyw4ICsxMzYsNyBAQCBzdGF0
aWMgdm9pZCBoc3dfcHJlcGFyZV9oZG1pX2RkaV9idWZmZXJzKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAo+ICAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0Owo+ICAJY29uc3Qg
c3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKmRkaV90cmFuc2xhdGlvbnM7Cj4gIAo+IC0JZGRp
X3RyYW5zbGF0aW9ucyA9IGhzd19nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICAm
bl9lbnRyaWVzKTsKPiAtCj4gKwlkZGlfdHJhbnNsYXRpb25zID0gZW5jb2Rlci0+Z2V0X2J1Zl90
cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAgCWlmIChkcm1fV0FSTl9P
Tl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCAhZGRpX3RyYW5zbGF0aW9ucykpCj4gIAkJcmV0dXJuOwo+
ICAJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sIGxldmVsID49IG5fZW50cmll
cykpCj4gQEAgLTk0Nyw4ICs5NDUsNyBAQCBzdGF0aWMgdm9pZCBza2xfZGRpX3NldF9pYm9vc3Qo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJY29uc3Qgc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnMgKmRkaV90cmFuc2xhdGlvbnM7Cj4gIAkJaW50IG5fZW50cmllczsKPiAgCj4g
LQkJZGRpX3RyYW5zbGF0aW9ucyA9IGhzd19nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3Rh
dGUsICZuX2VudHJpZXMpOwo+IC0KPiArCQlkZGlfdHJhbnNsYXRpb25zID0gZW5jb2Rlci0+Z2V0
X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAgCQlpZiAoZHJt
X1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKQo+ICAJCQly
ZXR1cm47Cj4gIAkJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sIGxldmVsID49
IG5fZW50cmllcykpCj4gQEAgLTk3OCw3ICs5NzUsNyBAQCBzdGF0aWMgdm9pZCBieHRfZGRpX3Zz
d2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCWVudW0gcG9y
dCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKPiAgCWludCBuX2VudHJpZXM7Cj4gIAo+IC0JZGRpX3Ry
YW5zbGF0aW9ucyA9IGJ4dF9nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2Vu
dHJpZXMpOwo+ICsJZGRpX3RyYW5zbGF0aW9ucyA9IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5j
b2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgm
ZGV2X3ByaXYtPmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKQo+ICAJCXJldHVybjsKPiAgCWlmIChk
cm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZlbCA+PSBuX2VudHJpZXMpKQo+IEBA
IC05OTYsMzMgKzk5Myw5IEBAIHN0YXRpYyB1OCBpbnRlbF9kZGlfZHBfdm9sdGFnZV9tYXgoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgewo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIgPSAmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlOwo+ICAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gLQll
bnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7Cj4gLQllbnVtIHBoeSBwaHkgPSBpbnRlbF9w
b3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7Cj4gIAlpbnQgbl9lbnRyaWVzOwo+ICAKPiAtCWlm
IChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsKPiAtCQlpZiAoaW50ZWxfcGh5X2lzX2Nv
bWJvKGRldl9wcml2LCBwaHkpKQo+IC0JCQl0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVy
LCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCQllbHNlIGlmIChJU19BTERFUkxBS0VfUChk
ZXZfcHJpdikpCj4gLQkJCWFkbHBfZ2V0X2RrbF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0
ZSwgJm5fZW50cmllcyk7Cj4gLQkJZWxzZQo+IC0JCQl0Z2xfZ2V0X2RrbF9idWZfdHJhbnMoZW5j
b2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQl9IGVsc2UgaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA9PSAxMSkgewo+IC0JCWlmIChJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxf
SkFTUEVSTEFLRSkpCj4gLQkJCWpzbF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNf
c3RhdGUsICZuX2VudHJpZXMpOwo+IC0JCWVsc2UgaWYgKElTX1BMQVRGT1JNKGRldl9wcml2LCBJ
TlRFTF9FTEtIQVJUTEFLRSkpCj4gLQkJCWVobF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIs
IGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+IC0JCWVsc2UgaWYgKGludGVsX3BoeV9pc19jb21i
byhkZXZfcHJpdiwgcGh5KSkKPiAtCQkJaWNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQkJZWxzZQo+IC0JCQlpY2xfZ2V0X21nX2J1Zl90
cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCX0gZWxzZSBpZiAoSVNf
Q0FOTk9OTEFLRShkZXZfcHJpdikpIHsKPiAtCQljbmxfZ2V0X2J1Zl90cmFucyhlbmNvZGVyLCBj
cnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCX0gZWxzZSBpZiAoSVNfR0VNSU5JTEFLRShkZXZf
cHJpdikgfHwgSVNfQlJPWFRPTihkZXZfcHJpdikpIHsKPiAtCQlieHRfZ2V0X2J1Zl90cmFucyhl
bmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCX0gZWxzZSB7Cj4gLQkJaHN3X2dl
dF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQl9Cj4gKwll
bmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+
ICAKPiAgCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgbl9lbnRyaWVzIDwgMSkpCj4g
IAkJbl9lbnRyaWVzID0gMTsKPiBAQCAtMTA1NCw4ICsxMDI3LDcgQEAgc3RhdGljIHZvaWQgY25s
X2RkaV92c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCWlu
dCBuX2VudHJpZXMsIGxuOwo+ICAJdTMyIHZhbDsKPiAgCj4gLQlkZGlfdHJhbnNsYXRpb25zID0g
Y25sX2dldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQo+
ICsJZGRpX3RyYW5zbGF0aW9ucyA9IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0
Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYt
PmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKQo+ICAJCXJldHVybjsKPiAgCWlmIChkcm1fV0FSTl9P
Tl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZlbCA+PSBuX2VudHJpZXMpKQo+IEBAIC0xMTc1LDE1
ICsxMTQ3LDcgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCWludCBuX2VudHJpZXMsIGxuOwo+ICAJdTMy
IHZhbDsKPiAgCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQo+IC0JCWRkaV90
cmFuc2xhdGlvbnMgPSB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRl
LCAmbl9lbnRyaWVzKTsKPiAtCWVsc2UgaWYgKElTX1BMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9K
QVNQRVJMQUtFKSkKPiAtCQlkZGlfdHJhbnNsYXRpb25zID0ganNsX2dldF9jb21ib19idWZfdHJh
bnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQllbHNlIGlmIChJU19QTEFU
Rk9STShkZXZfcHJpdiwgSU5URUxfRUxLSEFSVExBS0UpKQo+IC0JCWRkaV90cmFuc2xhdGlvbnMg
PSBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVz
KTsKPiAtCWVsc2UKPiAtCQlkZGlfdHJhbnNsYXRpb25zID0gaWNsX2dldF9jb21ib19idWZfdHJh
bnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7Cj4gLQo+ICsJZGRpX3RyYW5zbGF0
aW9ucyA9IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50
cmllcyk7Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgIWRkaV90cmFu
c2xhdGlvbnMpKQo+ICAJCXJldHVybjsKPiAgCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJp
di0+ZHJtLCBsZXZlbCA+PSBuX2VudHJpZXMpKQo+IEBAIC0xMzEwLDggKzEyNzQsNyBAQCBzdGF0
aWMgdm9pZCBpY2xfbWdfcGh5X2RkaV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCj4gIAlpZiAoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpLT50Y19tb2RlID09
IFRDX1BPUlRfVEJUX0FMVCkKPiAgCQlyZXR1cm47Cj4gIAo+IC0JZGRpX3RyYW5zbGF0aW9ucyA9
IGljbF9nZXRfbWdfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+
IC0KPiArCWRkaV90cmFuc2xhdGlvbnMgPSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIs
IGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+ICAJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9w
cml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25zKSkKPiAgCQlyZXR1cm47Cj4gIAlpZiAoZHJtX1dB
Uk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgbGV2ZWwgPj0gbl9lbnRyaWVzKSkKPiBAQCAtMTQ0
OCwxMSArMTQxMSw3IEBAIHRnbF9ka2xfcGh5X2RkaV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlpZiAoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpLT50
Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkKPiAgCQlyZXR1cm47Cj4gIAo+IC0JaWYgKElTX0FM
REVSTEFLRV9QKGRldl9wcml2KSkKPiAtCQlkZGlfdHJhbnNsYXRpb25zID0gYWRscF9nZXRfZGts
X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRyaWVzKTsKPiAtCWVsc2UKPiAt
CQlkZGlfdHJhbnNsYXRpb25zID0gdGdsX2dldF9ka2xfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNf
c3RhdGUsICZuX2VudHJpZXMpOwo+IC0KPiArCWRkaV90cmFuc2xhdGlvbnMgPSBlbmNvZGVyLT5n
ZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+ICAJaWYgKGRy
bV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25zKSkKPiAgCQly
ZXR1cm47Cj4gIAlpZiAoZHJtX1dBUk5fT05fT05DRSgmZGV2X3ByaXYtPmRybSwgbGV2ZWwgPj0g
bl9lbnRyaWVzKSkKPiBAQCAtNDY2Miw2ICs0NjIxLDggQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQo+ICAJCWVu
Y29kZXItPmdldF9jb25maWcgPSBoc3dfZGRpX2dldF9jb25maWc7Cj4gIAl9Cj4gIAo+ICsJaW50
ZWxfZGRpX2J1Zl90cmFuc19pbml0KGVuY29kZXIpOwo+ICsKPiAgCWlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTMpCj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9IHhlbHBkX2hwZF9waW4oZGV2
X3ByaXYsIHBvcnQpOwo+ICAJZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSkKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYwo+IGluZGV4
IGZkMjIxNmRjOGMzMy4uZjg5MTVhOGM3OGQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMKPiBAQCAtMTI0Niw3ICsxMjQ2
LDcgQEAgaHN3X2dldF9idWZfdHJhbnNfaGRtaShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKPiAgCXJldHVybiBOVUxMOwo+ICB9Cj4gIAo+IC1jb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyAqCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4g
IGhzd19nZXRfYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCSAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJICBpbnQgKm5f
ZW50cmllcykKPiBAQCAtMTI4Niw3ICsxMjg2LDcgQEAgYnh0X2dldF9idWZfdHJhbnNfaGRtaShz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCj4gIAlyZXR1cm4g
aW50ZWxfZ2V0X2J1Zl90cmFucygmYnh0X2RkaV90cmFuc2xhdGlvbnNfaGRtaSwgbl9lbnRyaWVz
KTsKPiAgfQo+ICAKPiAtY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICBieHRfZ2V0X2J1Zl90cmFu
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCSAgaW50ICpuX2VudHJpZXMpCj4gQEAgLTEz
NjgsNyArMTM2OCw3IEBAIGNubF9nZXRfYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwgaW50ICpuX2VudHJpZXMpCj4gIAl9Cj4gIH0KPiAgCj4gLWNvbnN0IHN0cnVj
dCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlf
YnVmX3RyYW5zICoKPiAgY25sX2dldF9idWZfdHJhbnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCj4gIAkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
PiAgCQkgIGludCAqbl9lbnRyaWVzKQo+IEBAIC0xNDIyLDcgKzE0MjIsNyBAQCBpY2xfZ2V0X2Nv
bWJvX2J1Zl90cmFuc19lZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlyZXR1
cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRy
aWVzKTsKPiAgfQo+ICAKPiAtY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICBpY2xfZ2V0X2NvbWJv
X2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJCWludCAqbl9lbnRyaWVzKQo+
IEBAIC0xNDU4LDcgKzE0NTgsNyBAQCBpY2xfZ2V0X21nX2J1Zl90cmFuc19kcChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCX0KPiAgfQo+ICAKPiAtY29uc3Qgc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJh
bnMgKgo+ICBpY2xfZ2V0X21nX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKPiAgCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+
ICAJCSAgICAgaW50ICpuX2VudHJpZXMpCj4gQEAgLTE1MDIsNyArMTUwMiw3IEBAIGVobF9nZXRf
Y29tYm9fYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCXJl
dHVybiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFuc19kcChlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2Vu
dHJpZXMpOwo+ICB9Cj4gIAo+IC1jb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gIGVobF9nZXRfY29t
Ym9fYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCQljb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJaW50ICpuX2VudHJpZXMp
Cj4gQEAgLTE1NTMsNyArMTU1Myw3IEBAIGpzbF9nZXRfY29tYm9fYnVmX3RyYW5zX2VkcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCXJldHVybiBqc2xfZ2V0X2NvbWJvX2J1Zl90
cmFuc19kcChlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOwo+ICB9Cj4gIAo+IC1jb25z
dCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGRpX2J1Zl90cmFucyAqCj4gIGpzbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAo+ICAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiAgCQkJaW50ICpuX2VudHJpZXMpCj4gQEAgLTE2MjYsNyArMTYyNiw3IEBA
IHRnbF9nZXRfY29tYm9fYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKPiAgCXJldHVybiB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19kcChlbmNvZGVyLCBjcnRjX3N0
YXRlLCBuX2VudHJpZXMpOwo+ICB9Cj4gIAo+IC1jb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90
cmFucyAqCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gIHRn
bF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJ
CQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQkJaW50ICpu
X2VudHJpZXMpCj4gQEAgLTE2NjIsNyArMTY2Miw3IEBAIHRnbF9nZXRfZGtsX2J1Zl90cmFuc19k
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCX0KPiAgfQo+ICAKPiAtY29uc3Qg
c3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKgo+ICB0Z2xfZ2V0X2RrbF9idWZfdHJhbnMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCj4gIAkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsCj4gIAkJICAgICAgaW50ICpuX2VudHJpZXMpCj4gQEAgLTE2ODcsNyArMTY4
Nyw3IEBAIGFkbHBfZ2V0X2RrbF9idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCj4gIAl9Cj4gIH0KPiAgCj4gLWNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5z
ICoKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiAgYWRscF9n
ZXRfZGtsX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkgICAg
ICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJICAgICAg
IGludCAqbl9lbnRyaWVzKQo+IEBAIC0xNzAzLDI4ICsxNzAzLDEwIEBAIGludCBpbnRlbF9kZGlf
aGRtaV9udW1fZW50cmllcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJICAg
ICAgIGludCAqZGVmYXVsdF9lbnRyeSkKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gLQllbnVtIHBoeSBwaHkg
PSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7Cj4gLQljb25zdCBz
dHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9ucyA9IE5VTEw7Cj4gKwlj
b25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9uczsKPiAgCWlu
dCBuX2VudHJpZXM7Cj4gIAo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikgewo+
IC0JCWlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpCj4gLQkJCWRkaV90cmFu
c2xhdGlvbnMgPSB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19oZG1pKGVuY29kZXIsIGNydGNfc3Rh
dGUsICZuX2VudHJpZXMpOwo+IC0JCWVsc2UKPiAtCQkJZGRpX3RyYW5zbGF0aW9ucyA9IHRnbF9n
ZXRfZGtsX2J1Zl90cmFuc19oZG1pKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+
IC0JfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gMTEpIHsKPiAtCQlpZiAoaW50
ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKQo+IC0JCQlkZGlfdHJhbnNsYXRpb25zID0g
aWNsX2dldF9jb21ib19idWZfdHJhbnNfaGRtaShlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRy
aWVzKTsKPiAtCQllbHNlCj4gLQkJCWRkaV90cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X21nX2J1Zl90
cmFuc19oZG1pKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+IC0JfSBlbHNlIGlm
IChJU19DQU5OT05MQUtFKGRldl9wcml2KSkgewo+IC0JCWRkaV90cmFuc2xhdGlvbnMgPSBjbmxf
Z2V0X2J1Zl90cmFuc19oZG1pKGVuY29kZXIsICZuX2VudHJpZXMpOwo+IC0JfSBlbHNlIGlmIChJ
U19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KSkgewo+IC0JCWRk
aV90cmFuc2xhdGlvbnMgPSBieHRfZ2V0X2J1Zl90cmFuc19oZG1pKGVuY29kZXIsICZuX2VudHJp
ZXMpOwo+IC0JfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gOSB8fAo+IC0JCSAg
IElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsKPiAtCQlk
ZGlfdHJhbnNsYXRpb25zID0gaHN3X2dldF9idWZfdHJhbnNfaGRtaShlbmNvZGVyLCAmbl9lbnRy
aWVzKTsKPiAtCX0KPiArCWRkaV90cmFuc2xhdGlvbnMgPSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5z
KGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOwo+ICAKPiAgCWlmIChkcm1fV0FSTl9P
TigmZGV2X3ByaXYtPmRybSwgIWRkaV90cmFuc2xhdGlvbnMpKSB7Cj4gIAkJKmRlZmF1bHRfZW50
cnkgPSAwOwo+IEBAIC0xNzM1LDMgKzE3MTcsMzYgQEAgaW50IGludGVsX2RkaV9oZG1pX251bV9l
bnRyaWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAKPiAgCXJldHVybiBuX2Vu
dHJpZXM7Cj4gIH0KPiArCj4gK3ZvaWQgaW50ZWxfZGRpX2J1Zl90cmFuc19pbml0KHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+ICsJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7Cj4gKwo+ICsJaWYgKElTX0FMREVS
TEFLRV9QKGk5MTUpKSB7Cj4gKwkJaWYgKGludGVsX3BoeV9pc19jb21ibyhpOTE1LCBwaHkpKQo+
ICsJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gdGdsX2dldF9jb21ib19idWZfdHJhbnM7Cj4g
KwkJZWxzZQo+ICsJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gYWRscF9nZXRfZGtsX2J1Zl90
cmFuczsKPiArCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpIHsKPiArCQlpZiAo
aW50ZWxfcGh5X2lzX2NvbWJvKGk5MTUsIHBoeSkpCj4gKwkJCWVuY29kZXItPmdldF9idWZfdHJh
bnMgPSB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFuczsKPiArCQllbHNlCj4gKwkJCWVuY29kZXItPmdl
dF9idWZfdHJhbnMgPSB0Z2xfZ2V0X2RrbF9idWZfdHJhbnM7Cj4gKwl9IGVsc2UgaWYgKERJU1BM
QVlfVkVSKGk5MTUpID09IDExKSB7Cj4gKwkJaWYgKElTX1BMQVRGT1JNKGk5MTUsIElOVEVMX0pB
U1BFUkxBS0UpKQo+ICsJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0ganNsX2dldF9jb21ib19i
dWZfdHJhbnM7Cj4gKwkJZWxzZSBpZiAoSVNfUExBVEZPUk0oaTkxNSwgSU5URUxfRUxLSEFSVExB
S0UpKQo+ICsJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gZWhsX2dldF9jb21ib19idWZfdHJh
bnM7Cj4gKwkJZWxzZSBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGk5MTUsIHBoeSkpCj4gKwkJCWVu
Y29kZXItPmdldF9idWZfdHJhbnMgPSBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFuczsKPiArCQllbHNl
Cj4gKwkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBpY2xfZ2V0X21nX2J1Zl90cmFuczsKPiAr
CX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkgewo+ICsJCWVuY29kZXItPmdldF9idWZf
dHJhbnMgPSBjbmxfZ2V0X2J1Zl90cmFuczsKPiArCX0gZWxzZSBpZiAoSVNfR0VNSU5JTEFLRShp
OTE1KSB8fCBJU19CUk9YVE9OKGk5MTUpKSB7Cj4gKwkJZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyA9
IGJ4dF9nZXRfYnVmX3RyYW5zOwo+ICsJfSBlbHNlIHsKPiArCQllbmNvZGVyLT5nZXRfYnVmX3Ry
YW5zID0gaHN3X2dldF9idWZfdHJhbnM7Cj4gKwl9Cj4gK30KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaAo+IGluZGV4IDg3OWYxZGVl
YzNjOC4uMDUyMjZlYjQ2Y2Q2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgKPiBAQCAtNjUsNDggKzY1LDYgQEAgaW50IGlu
dGVsX2RkaV9oZG1pX251bV9lbnRyaWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
ICAJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4g
IAkJCSAgICAgICBpbnQgKmRlZmF1bHRfZW50cnkpOwo+ICAKPiAtY29uc3Qgc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKgo+IC1oc3dfZ2V0X2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKPiAtCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAo+IC0JCSAgaW50ICpuX2VudHJpZXMpOwo+IC0KPiAtY29uc3Qgc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnMgKgo+IC1ieHRfZ2V0X2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKPiAtCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAo+IC0JCSAgaW50ICpuX2VudHJpZXMpOwo+IC0KPiAtY29uc3Qgc3RydWN0IGludGVsX2RkaV9i
dWZfdHJhbnMgKgo+IC1hZGxwX2dldF9ka2xfYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAo+IC0JCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKPiAtCQkgICAgICAgaW50ICpuX2VudHJpZXMpOwo+IC1jb25zdCBzdHJ1Y3QgaW50
ZWxfZGRpX2J1Zl90cmFucyAqCj4gLXRnbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAo+IC0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiAtCQkJaW50ICpuX2VudHJpZXMpOwo+IC1jb25zdCBzdHJ1Y3QgaW50ZWxf
ZGRpX2J1Zl90cmFucyAqCj4gLXRnbF9nZXRfZGtsX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiAtCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiAtCQkgICAgICBpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVjdCBp
bnRlbF9kZGlfYnVmX3RyYW5zICoKPiAtanNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAo+IC0JCQlpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVjdCBpbnRl
bF9kZGlfYnVmX3RyYW5zICoKPiAtZWhsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAo+IC0JCQlpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVjdCBpbnRlbF9k
ZGlfYnVmX3RyYW5zICoKPiAtaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCj4gLQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAo+IC0JCQlpbnQgKm5fZW50cmllcyk7Cj4gLWNvbnN0IHN0cnVjdCBpbnRlbF9kZGlf
YnVmX3RyYW5zICoKPiAtaWNsX2dldF9tZ19idWZfdHJhbnMoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCj4gLQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKPiAtCQkgICAgIGludCAqbl9lbnRyaWVzKTsKPiAtCj4gLWNvbnN0IHN0cnVjdCBpbnRl
bF9kZGlfYnVmX3RyYW5zICoKPiAtY25sX2dldF9idWZfdHJhbnMoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCj4gLQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKPiAtCQkgIGludCAqbl9lbnRyaWVzKTsKPiArdm9pZCBpbnRlbF9kZGlfYnVmX3RyYW5z
X2luaXQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOwo+ICAKPiAgI2VuZGlmCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
PiBpbmRleCBiOGQxZjcwMmQ4MDguLmQ0YTA5OTRmODYxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gQEAgLTQ4LDYg
KzQ4LDcgQEAKPiAgCj4gIHN0cnVjdCBkcm1fcHJpbnRlcjsKPiAgc3RydWN0IF9faW50ZWxfZ2xv
YmFsX29ianNfc3RhdGU7Cj4gK3N0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zOwo+ICAKPiAgLyoK
PiAgICogRGlzcGxheSByZWxhdGVkIHN0dWZmCj4gQEAgLTI2Myw2ICsyNjQsOSBAQCBzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciB7Cj4gIAkgKiBSZXR1cm5zIHdoZXRoZXIgdGhlIHBvcnQgY2xvY2sgaXMg
ZW5hYmxlZCBvciBub3QuCj4gIAkgKi8KPiAgCWJvb2wgKCppc19jbG9ja19lbmFibGVkKShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7Cj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyAqKCpnZXRfYnVmX3RyYW5zKShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
PiArCQkJCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+
ICsJCQkJCQkJICAgaW50ICpuX2VudHJpZXMpOwo+ICAJZW51bSBocGRfcGluIGhwZF9waW47Cj4g
IAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIHBvd2VyX2RvbWFpbjsKPiAgCS8qIGZv
ciBjb21tdW5pY2F0aW9uIHdpdGggYXVkaW8gY29tcG9uZW50OyBwcm90ZWN0ZWQgYnkgYXZfbXV0
ZXggKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
ZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmRpLmMKPiBpbmRleCBj
NjAyZWQxN2M0ZmIuLjE1ZWEyODcyNmU3YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mZGkuYwo+IEBAIC00LDcgKzQsNiBAQAo+ICAgKi8KPiAgI2luY2x1ZGUgImlu
dGVsX2F0b21pYy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZGRpLmgiCj4gLSNpbmNsdWRlICJpbnRl
bF9kZGlfYnVmX3RyYW5zLmgiCj4gICNpbmNsdWRlICJpbnRlbF9kZS5oIgo+ICAjaW5jbHVkZSAi
aW50ZWxfZGlzcGxheV90eXBlcy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZmRpLmgiCj4gQEAgLTU2
OSw3ICs1NjgsNyBAQCB2b2lkIGhzd19mZGlfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKPiAgCXUzMiB0ZW1wLCBpLCByeF9jdGxfdmFsOwo+ICAJaW50IG5fZW50cmll
czsKPiAgCj4gLQloc3dfZ2V0X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCAmbl9lbnRy
aWVzKTsKPiArCWVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5f
ZW50cmllcyk7Cj4gIAo+ICAJaHN3X3ByZXBhcmVfZHBfZGRpX2J1ZmZlcnMoZW5jb2RlciwgY3J0
Y19zdGF0ZSk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
