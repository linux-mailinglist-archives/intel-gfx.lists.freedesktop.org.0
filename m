Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B11413ACABA
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1808E6E9F5;
	Fri, 18 Jun 2021 12:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEEF6E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 12:22:14 +0000 (UTC)
IronPort-SDR: 1mT5Mrrow+rTJ2s7jVrWs1vd9x49SSVjKpzwmEKJsVObVGduahxRKvuG7m5JedxWVnVHJqIV+M
 LW84iVbX16MQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="206363082"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="206363082"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:22:13 -0700
IronPort-SDR: VcNvKk+vG1Jt0IKosEfJJTslT8BHD3EAUbSVXg6U8zI94294qU0a8SIbkHWPW+9Ykn/xIvCtqz
 fwMqa1EbHCSg==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="485665944"
Received: from shoriyac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.148])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:22:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210608073603.2408-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
 <20210608073603.2408-12-ville.syrjala@linux.intel.com>
Date: Fri, 18 Jun 2021 15:22:09 +0300
Message-ID: <874kdvwefi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 11/17] drm/i915: Introduce
 rkl_get_combo_buf_trans()
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
aW51eC5pbnRlbC5jb20+Cj4KPiBHaXZlIFJLTCBpdHMgb3duIGdldF9idWZfdHJhbnMoKSBmdW5j
Lgo+Cj4gdjI6IERyb3AgdGhlIEZJWE1FIHNpbmNlIHRoZSBzcGVjIHdhcyBjbGFyaWZpZWQgdG8K
PiAgICAgaW5kaWNhdGUgdGhhdCBUR0wgdmFsdWVzIGFyZSB1c2VkIGZvciB0aGUgSERNSS9lRFAg
Y2FzZXMuCj4KPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4gI3YxCgpIb2xkcyBmb3IgdjIuCgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYyAgICB8IDYyICsrKysrKysrKysrKysrKy0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFu
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMK
PiBpbmRleCBlZjk2MjJlY2YzOTAuLmZjYjY3ZGViNDZkZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jCj4gQEAgLTE0OTcs
MTAgKzE0OTcsNyBAQCB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFuc19kcChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+ICAKPiAgCWlmIChjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrID4gMjcwMDAwKSB7Cj4gLQkJaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKSB7Cj4gLQkJ
CXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZya2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlv
bnNfZHBfaGJyMl9oYnIzLAo+IC0JCQkJCQkgICBuX2VudHJpZXMpOwo+IC0JCX0gZWxzZSBpZiAo
SVNfVEdMX1UoZGV2X3ByaXYpIHx8IElTX1RHTF9ZKGRldl9wcml2KSkgewo+ICsJCWlmIChJU19U
R0xfVShkZXZfcHJpdikgfHwgSVNfVEdMX1koZGV2X3ByaXYpKSB7Cj4gIAkJCXJldHVybiBpbnRl
bF9nZXRfYnVmX3RyYW5zKCZ0Z2xfdXlfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJy
MiwKPiAgCQkJCQkJICAgbl9lbnRyaWVzKTsKPiAgCQl9IGVsc2Ugewo+IEBAIC0xNTA4LDEzICsx
NTA1LDggQEAgdGdsX2dldF9jb21ib19idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCj4gIAkJCQkJCSAgIG5fZW50cmllcyk7Cj4gIAkJfQo+ICAJfSBlbHNlIHsKPiAt
CQlpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpIHsKPiAtCQkJcmV0dXJuIGludGVsX2dldF9i
dWZfdHJhbnMoJnJrbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIsCj4gLQkJCQkJ
CSAgIG5fZW50cmllcyk7Cj4gLQkJfSBlbHNlIHsKPiAtCQkJcmV0dXJuIGludGVsX2dldF9idWZf
dHJhbnMoJnRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIsCj4gLQkJCQkJCSAg
IG5fZW50cmllcyk7Cj4gLQkJfQo+ICsJCXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZ0Z2xf
Y29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyLAo+ICsJCQkJCSAgIG5fZW50cmllcyk7
Cj4gIAl9Cj4gIH0KPiAgCj4gQEAgLTE1NTMsNiArMTU0NSw1MiBAQCB0Z2xfZ2V0X2NvbWJvX2J1
Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQlyZXR1cm4gdGdsX2dl
dF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRyaWVzKTsKPiAg
fQo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKPiArcmts
X2dldF9jb21ib19idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4g
KwkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICsJCQkg
ICBpbnQgKm5fZW50cmllcykKPiArewo+ICsJaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPiAy
NzAwMDApCj4gKwkJcmV0dXJuIGludGVsX2dldF9idWZfdHJhbnMoJnJrbF9jb21ib19waHlfZGRp
X3RyYW5zbGF0aW9uc19kcF9oYnIyX2hicjMsIG5fZW50cmllcyk7Cj4gKwllbHNlCj4gKwkJcmV0
dXJuIGludGVsX2dldF9idWZfdHJhbnMoJnJrbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19k
cF9oYnIsIG5fZW50cmllcyk7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
ZGRpX2J1Zl90cmFucyAqCj4gK3JrbF9nZXRfY29tYm9fYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKPiArCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAo+ICsJCQkgICAgaW50ICpuX2VudHJpZXMpCj4gK3sKPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
Owo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVy
KTsKPiArCj4gKwlpZiAoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+IDU0MDAwMCkgewo+ICsJCXJl
dHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNf
ZWRwX2hicjMsCj4gKwkJCQkJICAgbl9lbnRyaWVzKTsKPiArCX0gZWxzZSBpZiAoZGV2X3ByaXYt
PnZidC5lZHAuaG9ibCAmJiAhaW50ZWxfZHAtPmhvYmxfZmFpbGVkKSB7Cj4gKwkJcmV0dXJuIGlu
dGVsX2dldF9idWZfdHJhbnMoJnRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJy
Ml9ob2JsLAo+ICsJCQkJCSAgIG5fZW50cmllcyk7Cj4gKwl9IGVsc2UgaWYgKGRldl9wcml2LT52
YnQuZWRwLmxvd192c3dpbmcpIHsKPiArCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmaWNs
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyLAo+ICsJCQkJCSAgIG5fZW50cmll
cyk7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIHJrbF9nZXRfY29tYm9fYnVmX3RyYW5zX2RwKGVuY29k
ZXIsIGNydGNfc3RhdGUsIG5fZW50cmllcyk7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gK3JrbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICsJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKPiArCQkJaW50ICpuX2VudHJpZXMpCj4gK3sKPiArCWlmIChpbnRl
bF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9IRE1JKSkKPiArCQlyZXR1
cm4gdGdsX2dldF9jb21ib19idWZfdHJhbnNfaGRtaShlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2Vu
dHJpZXMpOwo+ICsJZWxzZSBpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRF
TF9PVVRQVVRfRURQKSkKPiArCQlyZXR1cm4gcmtsX2dldF9jb21ib19idWZfdHJhbnNfZWRwKGVu
Y29kZXIsIGNydGNfc3RhdGUsIG5fZW50cmllcyk7Cj4gKwllbHNlCj4gKwkJcmV0dXJuIHJrbF9n
ZXRfY29tYm9fYnVmX3RyYW5zX2RwKGVuY29kZXIsIGNydGNfc3RhdGUsIG5fZW50cmllcyk7Cj4g
K30KPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCj4gIHRn
bF9nZXRfZGtsX2J1Zl90cmFuc19oZG1pKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+
ICAJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiBAQCAt
MTY0Miw2ICsxNjgwLDggQEAgdm9pZCBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpCj4gIAkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSB0Z2xf
Z2V0X2NvbWJvX2J1Zl90cmFuczsKPiAgCQllbHNlCj4gIAkJCWVuY29kZXItPmdldF9idWZfdHJh
bnMgPSBhZGxwX2dldF9ka2xfYnVmX3RyYW5zOwo+ICsJfSBlbHNlIGlmIChJU19ST0NLRVRMQUtF
KGk5MTUpKSB7Cj4gKwkJZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyA9IHJrbF9nZXRfY29tYm9fYnVm
X3RyYW5zOwo+ICAJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikgewo+ICAJCWlm
IChpbnRlbF9waHlfaXNfY29tYm8oaTkxNSwgcGh5KSkKPiAgCQkJZW5jb2Rlci0+Z2V0X2J1Zl90
cmFucyA9IHRnbF9nZXRfY29tYm9fYnVmX3RyYW5zOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
