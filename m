Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F62E34A4D9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 10:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E616F39F;
	Fri, 26 Mar 2021 09:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8569D6E1A2;
 Fri, 26 Mar 2021 09:48:06 +0000 (UTC)
IronPort-SDR: 6CILfvesOmwOf7fq3uwBHKIibejdP+JznSr8f22LmNOJ1slqlQOWKqHtkXsNQkfwVmYeVtTROJ
 osD+lxNT8bdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="211274997"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="211274997"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 02:48:05 -0700
IronPort-SDR: s65aCUDOteoTauCDKkc14L7PXAvCHQs819QtXmhcPi8It9dXwxN22brykWw1lf0hZC/QGtUnUY
 Jonh9BABaUEA==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="416470788"
Received: from mpaulits-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 02:48:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210323112422.1211-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210323112422.1211-1-ankit.k.nautiyal@intel.com>
 <20210323112422.1211-2-ankit.k.nautiyal@intel.com>
Date: Fri, 26 Mar 2021 11:47:58 +0200
Message-ID: <87a6qq2qlt.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/dp_helper: Define options for
 FRL training for HDMI2.1 PCON
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMyBNYXIgMjAyMSwgQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50
ZWwuY29tPiB3cm90ZToKPiBDdXJyZW50bHkgdGhlIEZSTCB0cmFpbmluZyBtb2RlIChDb25jdXJy
ZW50LCBTZXF1ZW50aWFsKSBhbmQKPiB0cmFpbmluZyB0eXBlIChOb3JtYWwsIEV4dGVuZGVkKSBh
cmUgbm90IGRlZmluZWQgcHJvcGVybHkgYW5kCj4gYXJlIHBhc3NlZCBhcyBib29sIHZhbHVlcyBp
biBkcm1faGVscGVycyBmb3IgcGNvbgo+IGNvbmZpZ3VyYXRpb24gZm9yIEZSTCB0cmFpbmluZy4K
Pgo+IFRoaXMgcGF0Y2g6Cj4gLUFkZCByZWdpc3RlciBtYXNrcyBmb3IgU2VxdWVudGlhbCBhbmQg
Tm9ybWFsIEZSTCB0cmFpbmluZyBvcHRpb25zLgo+IC1GaXhlcyB0aGUgZHJtX2hlbHBlcnMgZm9y
IEZSTCBUcmFpbmluZyBjb25maWd1cmF0aW9uIHRvIHVzZSB0aGUKPiAgYXBwcm9wcmlhdGUgbWFz
a3MuCj4gLU1vZGlmaWVzIHRoZSBjYWxscyB0byB0aGUgYWJvdmUgZHJtX2hlbHBlcnMgaW4gaTkx
NS9pbnRlbF9kcCBhcyBwZXIKPiAgdGhlIGFib3ZlIGNoYW5nZS4KPgo+IHYyOiBSZS11c2VkIHRo
ZSByZWdpc3RlciBtYXNrcyBmb3IgdGhlc2Ugb3B0aW9ucywgaW5zdGVhZCBvZiBlbnVtLiAoVmls
bGUpCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBp
bnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CgpNYWFydGVuLCBNYXhpbWUsIFRob21hcyAtCgpDYW4gSSBnZXQgYW4g
YWNrIGZvciBtZXJnaW5nIHRoaXMgdmlhIGRybS1pbnRlbC1uZXh0LCBwbGVhc2U/CgpCUiwKSmFu
aS4KCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jICAgICAgICAgfCAy
NCArKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMTAgKysrKy0tLS0tLQo+ICBpbmNsdWRlL2RybS9kcm1fZHBfaGVscGVy
LmggICAgICAgICAgICAgfCAgNiArKysrLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRp
b25zKCspLCAxOCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2RwX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+IGluZGV4
IGVlZGJiNDg4MTViNy4uY2IyZjUzZTU2Njg1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZHBfaGVscGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5j
Cj4gQEAgLTI2MzUsMTQgKzI2MzUsMTYgQEAgRVhQT1JUX1NZTUJPTChkcm1fZHBfcGNvbl9pc19m
cmxfcmVhZHkpOwo+ICAgKiBkcm1fZHBfcGNvbl9mcmxfY29uZmlndXJlXzEoKSAtIFNldCBIRE1J
IExJTksgQ29uZmlndXJhdGlvbi1TdGVwMQo+ICAgKiBAYXV4OiBEaXNwbGF5UG9ydCBBVVggY2hh
bm5lbAo+ICAgKiBAbWF4X2ZybF9nYnBzOiBtYXhpbXVtIGZybCBidyB0byBiZSBjb25maWd1cmVk
IGJldHdlZW4gUENPTiBhbmQgSERNSSBzaW5rCj4gLSAqIEBjb25jdXJyZW50X21vZGU6IHRydWUg
aWYgY29uY3VycmVudCBtb2RlIG9yIG9wZXJhdGlvbiBpcyByZXF1aXJlZCwKPiAtICogZmFsc2Ug
b3RoZXJ3aXNlLgo+ICsgKiBAZnJsX21vZGU6IEZSTCBUcmFpbmluZyBtb2RlLCBpdCBjYW4gYmUg
ZWl0aGVyIENvbmN1cnJlbnQgb3IgU2VxdWVudGlhbC4KPiArICogSW4gQ29uY3VycmVudCBNb2Rl
LCB0aGUgRlJMIGxpbmsgYnJpbmcgdXAgY2FuIGJlIGRvbmUgYWxvbmcgd2l0aAo+ICsgKiBEUCBM
aW5rIHRyYWluaW5nLiBJbiBTZXF1ZW50aWFsIG1vZGUsIHRoZSBGUkwgbGluayBicmluZyB1cCBp
cyBkb25lIHByaW9yIHRvCj4gKyAqIHRoZSBEUCBMaW5rIHRyYWluaW5nLgo+ICAgKgo+ICAgKiBS
ZXR1cm5zIDAgaWYgc3VjY2VzcywgZWxzZSByZXR1cm5zIG5lZ2F0aXZlIGVycm9yIGNvZGUuCj4g
ICAqLwo+ICAKPiAgaW50IGRybV9kcF9wY29uX2ZybF9jb25maWd1cmVfMShzdHJ1Y3QgZHJtX2Rw
X2F1eCAqYXV4LCBpbnQgbWF4X2ZybF9nYnBzLAo+IC0JCQkJYm9vbCBjb25jdXJyZW50X21vZGUp
Cj4gKwkJCQl1OCBmcmxfbW9kZSkKPiAgewo+ICAJaW50IHJldDsKPiAgCXU4IGJ1ZjsKPiBAQCAt
MjY1MSw3ICsyNjUzLDcgQEAgaW50IGRybV9kcF9wY29uX2ZybF9jb25maWd1cmVfMShzdHJ1Y3Qg
ZHJtX2RwX2F1eCAqYXV4LCBpbnQgbWF4X2ZybF9nYnBzLAo+ICAJaWYgKHJldCA8IDApCj4gIAkJ
cmV0dXJuIHJldDsKPiAgCj4gLQlpZiAoY29uY3VycmVudF9tb2RlKQo+ICsJaWYgKGZybF9tb2Rl
ID09IERQX1BDT05fRU5BQkxFX0NPTkNVUlJFTlRfTElOSykKPiAgCQlidWYgfD0gRFBfUENPTl9F
TkFCTEVfQ09OQ1VSUkVOVF9MSU5LOwo+ICAJZWxzZQo+ICAJCWJ1ZiAmPSB+RFBfUENPTl9FTkFC
TEVfQ09OQ1VSUkVOVF9MSU5LOwo+IEBAIC0yNjk0LDIxICsyNjk2LDIzIEBAIEVYUE9SVF9TWU1C
T0woZHJtX2RwX3Bjb25fZnJsX2NvbmZpZ3VyZV8xKTsKPiAgICogZHJtX2RwX3Bjb25fZnJsX2Nv
bmZpZ3VyZV8yKCkgLSBTZXQgSERNSSBMaW5rIGNvbmZpZ3VyYXRpb24gU3RlcC0yCj4gICAqIEBh
dXg6IERpc3BsYXlQb3J0IEFVWCBjaGFubmVsCj4gICAqIEBtYXhfZnJsX21hc2sgOiBNYXggRlJM
IEJXIHRvIGJlIHRyaWVkIGJ5IHRoZSBQQ09OIHdpdGggSERNSSBTaW5rCj4gLSAqIEBleHRlbmRl
ZF90cmFpbl9tb2RlIDogdHJ1ZSBmb3IgRXh0ZW5kZWQgTW9kZSwgZmFsc2UgZm9yIE5vcm1hbCBN
b2RlLgo+IC0gKiBJbiBOb3JtYWwgbW9kZSwgdGhlIFBDT04gdHJpZXMgZWFjaCBmcmwgYncgZnJv
bSB0aGUgbWF4X2ZybF9tYXNrIHN0YXJ0aW5nCj4gLSAqIGZyb20gbWluLCBhbmQgc3RvcHMgd2hl
biBsaW5rIHRyYWluaW5nIGlzIHN1Y2Nlc3NmdWwuIEluIEV4dGVuZGVkIG1vZGUsIGFsbAo+IC0g
KiBmcmwgYncgc2VsZWN0ZWQgaW4gdGhlIG1hc2sgYXJlIHRyYWluZWQgYnkgdGhlIFBDT04uCj4g
KyAqIEBmcmxfdHlwZSA6IEZSTCB0cmFpbmluZyB0eXBlLCBjYW4gYmUgRXh0ZW5kZWQsIG9yIE5v
cm1hbC4KPiArICogSW4gTm9ybWFsIEZSTCB0cmFpbmluZywgdGhlIFBDT04gdHJpZXMgZWFjaCBm
cmwgYncgZnJvbSB0aGUgbWF4X2ZybF9tYXNrCj4gKyAqIHN0YXJ0aW5nIGZyb20gbWluLCBhbmQg
c3RvcHMgd2hlbiBsaW5rIHRyYWluaW5nIGlzIHN1Y2Nlc3NmdWwuIEluIEV4dGVuZGVkCj4gKyAq
IEZSTCB0cmFpbmluZywgYWxsIGZybCBidyBzZWxlY3RlZCBpbiB0aGUgbWFzayBhcmUgdHJhaW5l
ZCBieSB0aGUgUENPTi4KPiAgICoKPiAgICogUmV0dXJucyAwIGlmIHN1Y2Nlc3MsIGVsc2UgcmV0
dXJucyBuZWdhdGl2ZSBlcnJvciBjb2RlLgo+ICAgKi8KPiAgaW50IGRybV9kcF9wY29uX2ZybF9j
b25maWd1cmVfMihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBpbnQgbWF4X2ZybF9tYXNrLAo+IC0J
CQkJYm9vbCBleHRlbmRlZF90cmFpbl9tb2RlKQo+ICsJCQkJdTggZnJsX3R5cGUpCj4gIHsKPiAg
CWludCByZXQ7Cj4gIAl1OCBidWYgPSBtYXhfZnJsX21hc2s7Cj4gIAo+IC0JaWYgKGV4dGVuZGVk
X3RyYWluX21vZGUpCj4gKwlpZiAoZnJsX3R5cGUgPT0gRFBfUENPTl9GUkxfTElOS19UUkFJTl9F
WFRFTkRFRCkKPiAgCQlidWYgfD0gRFBfUENPTl9GUkxfTElOS19UUkFJTl9FWFRFTkRFRDsKPiAr
CWVsc2UKPiArCQlidWYgJj0gfkRQX1BDT05fRlJMX0xJTktfVFJBSU5fRVhURU5ERUQ7Cj4gIAo+
ICAJcmV0ID0gZHJtX2RwX2RwY2Rfd3JpdGViKGF1eCwgRFBfUENPTl9IRE1JX0xJTktfQ09ORklH
XzIsIGJ1Zik7Cj4gIAlpZiAocmV0IDwgMCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCj4gaW5kZXggMTQwMGM1YjQ0YzgzLi4xZjZmNGQwYzhlMmQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTIwNzMsMTAgKzIwNzMsNiBA
QCBzdGF0aWMgaW50IGludGVsX2RwX2hkbWlfc2lua19tYXhfZnJsKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCj4gIAo+ICBzdGF0aWMgaW50IGludGVsX2RwX3Bjb25fc3RhcnRfZnJsX3RyYWlu
aW5nKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHsKPiAtI2RlZmluZSBQQ09OX0VYVEVO
REVEX1RSQUlOX01PREUgKDEgPiAwKQo+IC0jZGVmaW5lIFBDT05fQ09OQ1VSUkVOVF9NT0RFICgx
ID4gMCkKPiAtI2RlZmluZSBQQ09OX1NFUVVFTlRJQUxfTU9ERSAhUENPTl9DT05DVVJSRU5UX01P
REUKPiAtI2RlZmluZSBQQ09OX05PUk1BTF9UUkFJTl9NT0RFICFQQ09OX0VYVEVOREVEX1RSQUlO
X01PREUKPiAgI2RlZmluZSBUSU1FT1VUX0ZSTF9SRUFEWV9NUyA1MDAKPiAgI2RlZmluZSBUSU1F
T1VUX0hETUlfTElOS19BQ1RJVkVfTVMgMTAwMAo+ICAKPiBAQCAtMjExMCwxMCArMjEwNiwxMiBA
QCBzdGF0aWMgaW50IGludGVsX2RwX3Bjb25fc3RhcnRfZnJsX3RyYWluaW5nKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApCj4gIAkJcmV0dXJuIC1FVElNRURPVVQ7Cj4gIAo+ICAJbWF4X2ZybF9i
d19tYXNrID0gaW50ZWxfZHBfcGNvbl9zZXRfZnJsX21hc2sobWF4X2ZybF9idyk7Cj4gLQlyZXQg
PSBkcm1fZHBfcGNvbl9mcmxfY29uZmlndXJlXzEoJmludGVsX2RwLT5hdXgsIG1heF9mcmxfYncs
IFBDT05fU0VRVUVOVElBTF9NT0RFKTsKPiArCXJldCA9IGRybV9kcF9wY29uX2ZybF9jb25maWd1
cmVfMSgmaW50ZWxfZHAtPmF1eCwgbWF4X2ZybF9idywKPiArCQkJCQkgIERQX1BDT05fRU5BQkxF
X1NFUVVFTlRJQUxfTElOSyk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlyZXR1cm4gcmV0Owo+IC0J
cmV0ID0gZHJtX2RwX3Bjb25fZnJsX2NvbmZpZ3VyZV8yKCZpbnRlbF9kcC0+YXV4LCBtYXhfZnJs
X2J3X21hc2ssIFBDT05fTk9STUFMX1RSQUlOX01PREUpOwo+ICsJcmV0ID0gZHJtX2RwX3Bjb25f
ZnJsX2NvbmZpZ3VyZV8yKCZpbnRlbF9kcC0+YXV4LCBtYXhfZnJsX2J3X21hc2ssCj4gKwkJCQkJ
ICBEUF9QQ09OX0ZSTF9MSU5LX1RSQUlOX05PUk1BTCk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQly
ZXR1cm4gcmV0Owo+ICAJcmV0ID0gZHJtX2RwX3Bjb25fZnJsX2VuYWJsZSgmaW50ZWxfZHAtPmF1
eCk7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCBiL2luY2x1ZGUv
ZHJtL2RybV9kcF9oZWxwZXIuaAo+IGluZGV4IDYzMmFkN2ZhYTAwNi4uODVkNzI4ZjRhYWQwIDEw
MDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ICsrKyBiL2luY2x1ZGUv
ZHJtL2RybV9kcF9oZWxwZXIuaAo+IEBAIC0xMTc2LDYgKzExNzYsNyBAQCBzdHJ1Y3QgZHJtX2Rl
dmljZTsKPiAgIyBkZWZpbmUgRFBfUENPTl9FTkFCTEVfTUFYX0JXXzQ4R0JQUwkgICAgICAgNgo+
ICAjIGRlZmluZSBEUF9QQ09OX0VOQUJMRV9TT1VSQ0VfQ1RMX01PREUgICAgICAgKDEgPDwgMykK
PiAgIyBkZWZpbmUgRFBfUENPTl9FTkFCTEVfQ09OQ1VSUkVOVF9MSU5LICAgICAgICgxIDw8IDQp
Cj4gKyMgZGVmaW5lIERQX1BDT05fRU5BQkxFX1NFUVVFTlRJQUxfTElOSyAgICAgICAoMCA8PCA0
KQo+ICAjIGRlZmluZSBEUF9QQ09OX0VOQUJMRV9MSU5LX0ZSTF9NT0RFICAgICAgICAgKDEgPDwg
NSkKPiAgIyBkZWZpbmUgRFBfUENPTl9FTkFCTEVfSFBEX1JFQURZCSAgICAgICgxIDw8IDYpCj4g
ICMgZGVmaW5lIERQX1BDT05fRU5BQkxFX0hETUlfTElOSyAgICAgICAgICAgICAoMSA8PCA3KQo+
IEBAIC0xMTkwLDYgKzExOTEsNyBAQCBzdHJ1Y3QgZHJtX2RldmljZTsKPiAgIyBkZWZpbmUgRFBf
UENPTl9GUkxfQldfTUFTS180MEdCUFMgICAgICAgICAgICgxIDw8IDQpCj4gICMgZGVmaW5lIERQ
X1BDT05fRlJMX0JXX01BU0tfNDhHQlBTICAgICAgICAgICAoMSA8PCA1KQo+ICAjIGRlZmluZSBE
UF9QQ09OX0ZSTF9MSU5LX1RSQUlOX0VYVEVOREVEICAgICAgKDEgPDwgNikKPiArIyBkZWZpbmUg
RFBfUENPTl9GUkxfTElOS19UUkFJTl9OT1JNQUwgICAgICAgICgwIDw8IDYpCj4gIAo+ICAvKiBQ
Q09OIEhETUkgTElOSyBTVEFUVVMgKi8KPiAgI2RlZmluZSBEUF9QQ09OX0hETUlfVFhfTElOS19T
VEFUVVMgICAgICAgICAgIDB4MzAzQgo+IEBAIC0yMTU0LDkgKzIxNTYsOSBAQCBpbnQgZHJtX2Rw
X2dldF9wY29uX21heF9mcmxfYncoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0s
Cj4gIGludCBkcm1fZHBfcGNvbl9mcmxfcHJlcGFyZShzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBi
b29sIGVuYWJsZV9mcmxfcmVhZHlfaHBkKTsKPiAgYm9vbCBkcm1fZHBfcGNvbl9pc19mcmxfcmVh
ZHkoc3RydWN0IGRybV9kcF9hdXggKmF1eCk7Cj4gIGludCBkcm1fZHBfcGNvbl9mcmxfY29uZmln
dXJlXzEoc3RydWN0IGRybV9kcF9hdXggKmF1eCwgaW50IG1heF9mcmxfZ2JwcywKPiAtCQkJCWJv
b2wgY29uY3VycmVudF9tb2RlKTsKPiArCQkJCXU4IGZybF9tb2RlKTsKPiAgaW50IGRybV9kcF9w
Y29uX2ZybF9jb25maWd1cmVfMihzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBpbnQgbWF4X2ZybF9t
YXNrLAo+IC0JCQkJYm9vbCBleHRlbmRlZF90cmFpbl9tb2RlKTsKPiArCQkJCXU4IGZybF90eXBl
KTsKPiAgaW50IGRybV9kcF9wY29uX3Jlc2V0X2ZybF9jb25maWcoc3RydWN0IGRybV9kcF9hdXgg
KmF1eCk7Cj4gIGludCBkcm1fZHBfcGNvbl9mcmxfZW5hYmxlKHN0cnVjdCBkcm1fZHBfYXV4ICph
dXgpOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
