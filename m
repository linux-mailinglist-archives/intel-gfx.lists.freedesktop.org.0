Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592552116F4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23DD6EA27;
	Wed,  1 Jul 2020 23:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B776EA21
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:52 +0000 (UTC)
IronPort-SDR: H+wIX8U0QD8BfyOF/P1YMH8UVD5cpIWtbsGtHvY8kRyp7NL13xBIiI3rfmeZleKeaT3sC0VFE1
 Nq2YrbK7Ip9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164785973"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="164785973"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:51 -0700
IronPort-SDR: tKBp35EsY5FCmpgAkQTAjeL8IQWSwN2x6SwS424/PvNSZI5Lw+VM89482qIhq2UEFKVeCBmhau
 Blu4T+2XMHTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276419"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:37 -0700
Message-Id: <20200701235339.32608-27-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 26/28] drm/i915/rkl: Add initial workarounds
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

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KClJLTCBhbmQgVEdM
IHNoYXJlIHNvbWUgZ2VuZXJhbCBnZW4xMiB3b3JrYXJvdW5kcywgYnV0IGVhY2ggcGxhdGZvcm0g
YWxzbwpoYXMgaXRzIG93biBwbGF0Zm9ybS1zcGVjaWZpYyB3b3JrYXJvdW5kcy4KCnYyOgogLSBB
ZGQgV2FfMTYwNDU1NTYwNyBmb3IgUktMLiAgVGhpcyBtYWtlcyBSS0wncyBjdHggV0EgbGlzdCBp
ZGVudGljYWwgdG8KICAgVEdMJ3MsIHNvIHdlJ2xsIGhhdmUgYm90aCBmdW5jdGlvbnMgY2FsbCB0
aGUgdGdsXyBmdW5jdGlvbiBmb3Igbm93OwogICB0aGlzIHdvcmthcm91bmQgaXNuJ3QgbGlzdGVk
IGZvciBERzEgc28gd2UgZG9uJ3Qgd2FudCB0byBhZGQgaXQgdG8KICAgdGhlIGdlbmVyYWwgZ2Vu
MTJfIGZ1bmN0aW9uLgoKQ2M6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCAgNSAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDg4ICsrKysr
KysrKysrKystLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspLCAzNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
YwppbmRleCBkMDM4NjBmZWYyZDcuLmMyNmNhMDI5ZmMwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0yODQzLDggKzI4NDMsOSBAQCBzdGF0aWMg
Ym9vbCBza2xfcGxhbmVfZm9ybWF0X21vZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3Bs
YW5lLAogc3RhdGljIGJvb2wgZ2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCkKIHsK
LQkvKiBXYV8xNDAxMDQ3NzAwODp0Z2xbYTAuLmMwXSAqLwotCWlmIChJU19UR0xfUkVWSUQoZGV2
X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0MwKSkKKwkvKiBXYV8xNDAxMDQ3NzAwODp0
Z2xbYTAuLmMwXSxya2xbYWxsXSAqLworCWlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSB8fAor
CSAgICBJU19UR0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0MwKSkK
IAkJcmV0dXJuIGZhbHNlOwogCiAJcmV0dXJuIHBsYW5lX2lkIDwgUExBTkVfU1BSSVRFNDsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDJkYTM2Njgy
MWRkYS4uNzQxNzEwY2EyYjlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKQEAgLTU5Niw4ICs1OTYsOCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmth
cm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCXdhX21hc2tlZF9l
bih3YWwsIEdFTjlfUk9XX0NISUNLRU40LCBHRU4xMV9ESVNfUElDS18yTkRfRVUpOwogfQogCi1z
dGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lLAotCQkJCSAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQorc3RhdGljIHZv
aWQgZ2VuMTJfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLAorCQkJCSAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CiAJLyoKIAkgKiBX
YV8xNDA5MTQyMjU5OnRnbApAQCAtNjA3LDEyICs2MDcsMjggQEAgc3RhdGljIHZvaWQgdGdsX2N0
eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkgKiBX
YV8xNDA5MjA3NzkzOnRnbAogCSAqIFdhXzE0MDkxNzgwNzY6dGdsCiAJICogV2FfMTQwODk3OTcy
NDp0Z2wKKwkgKiBXYV8xNDAxMDQ0MzE5OTpya2wKKwkgKiBXYV8xNDAxMDY5ODc3MDpya2wKIAkg
Ki8KIAlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsCiAJCQkg
IEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUpOwogCisJLyogV2FEaXNhYmxlR1BH
UFVNaWRUaHJlYWRQcmVlbXB0aW9uOmdlbjEyICovCisJV0FfU0VUX0ZJRUxEX01BU0tFRChHRU44
X0NTX0NISUNLRU4xLAorCQkJICAgIEdFTjlfUFJFRU1QVF9HUEdQVV9MRVZFTF9NQVNLLAorCQkJ
ICAgIEdFTjlfUFJFRU1QVF9HUEdQVV9USFJFQURfR1JPVVBfTEVWRUwpOworfQorCitzdGF0aWMg
dm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLAorCQkJCSAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQoreworCWdlbjEyX2N0eF93
b3JrYXJvdW5kc19pbml0KGVuZ2luZSwgd2FsKTsKKwogCS8qCi0JICogV2FfMTYwNDU1NTYwNzpn
ZW4xMiBhbmQgV2FfMTYwODAwODA4NDpnZW4xMgorCSAqIFdhXzE2MDQ1NTU2MDc6dGdsLHJrbAor
CSAqCisJICogTm90ZSB0aGF0IHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIHdvcmthcm91bmQg
aXMgZnVydGhlciBtb2RpZmllZAorCSAqIGFjY29yZGluZyB0byB0aGUgRkZfTU9ERTIgZ3VpZGFu
Y2UgZ2l2ZW4gYnkgV2FfMTYwODAwODA4NDpnZW4xMi4KIAkgKiBGRl9NT0RFMiByZWdpc3RlciB3
aWxsIHJldHVybiB0aGUgd3JvbmcgdmFsdWUgd2hlbiByZWFkLiBUaGUgZGVmYXVsdAogCSAqIHZh
bHVlIGZvciB0aGlzIHJlZ2lzdGVyIGlzIHplcm8gZm9yIGFsbCBmaWVsZHMgYW5kIHRoZXJlIGFy
ZSBubyBiaXQKIAkgKiBtYXNrcy4gU28gaW5zdGVhZCBvZiBkb2luZyBhIFJNVyB3ZSBzaG91bGQg
anVzdCB3cml0ZSB0aGUgR1MgVGltZXIKQEAgLTYyMywxMSArNjM5LDYgQEAgc3RhdGljIHZvaWQg
dGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwK
IAkgICAgICAgRkZfTU9ERTJfR1NfVElNRVJfTUFTSyB8IEZGX01PREUyX1REU19USU1FUl9NQVNL
LAogCSAgICAgICBGRl9NT0RFMl9HU19USU1FUl8yMjQgIHwgRkZfTU9ERTJfVERTX1RJTUVSXzEy
OCwKIAkgICAgICAgMCk7Ci0KLQkvKiBXYURpc2FibGVHUEdQVU1pZFRocmVhZFByZWVtcHRpb246
dGdsICovCi0JV0FfU0VUX0ZJRUxEX01BU0tFRChHRU44X0NTX0NISUNLRU4xLAotCQkJICAgIEdF
TjlfUFJFRU1QVF9HUEdQVV9MRVZFTF9NQVNLLAotCQkJICAgIEdFTjlfUFJFRU1QVF9HUEdQVV9U
SFJFQURfR1JPVVBfTEVWRUwpOwogfQogCiBzdGF0aWMgdm9pZApAQCAtNjQyLDggKzY1MywxMCBA
QCBfX2ludGVsX2VuZ2luZV9pbml0X2N0eF93YShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsCiAKIAl3YV9pbml0X3N0YXJ0KHdhbCwgbmFtZSwgZW5naW5lLT5uYW1lKTsKIAotCWlmIChJ
U19HRU4oaTkxNSwgMTIpKQorCWlmIChJU19ST0NLRVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFL
RShpOTE1KSkKIAkJdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KGVuZ2luZSwgd2FsKTsKKwllbHNl
IGlmIChJU19HRU4oaTkxNSwgMTIpKQorCQlnZW4xMl9jdHhfd29ya2Fyb3VuZHNfaW5pdChlbmdp
bmUsIHdhbCk7CiAJZWxzZSBpZiAoSVNfR0VOKGk5MTUsIDExKSkKIAkJaWNsX2N0eF93b3JrYXJv
dW5kc19pbml0KGVuZ2luZSwgd2FsKTsKIAllbHNlIGlmIChJU19DQU5OT05MQUtFKGk5MTUpKQpA
QCAtMTE3Niw5ICsxMTg5LDE2IEBAIGljbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB9CiAKIHN0YXRp
YyB2b2lkCi10Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQorZ2VuMTJfZ3Rfd29ya2Fyb3VuZHNfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCSAgc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsKQogewogCXdhX2luaXRfbWNyKGk5MTUsIHdhbCk7Cit9CisKK3N0YXRpYyB2b2lkCit0
Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsKQoreworCWdlbjEyX2d0X3dvcmthcm91bmRzX2luaXQoaTkx
NSwgd2FsKTsKIAogCS8qIFdhXzE0MDk0MjA2MDQ6dGdsICovCiAJaWYgKElTX1RHTF9SRVZJRChp
OTE1LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkpCkBAIC0xMTk2LDggKzEyMTYsMTAgQEAg
dGdsX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHN0YXRpYyB2b2lkCiBndF9pbml0X3dvcmthcm91bmRz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwp
CiB7Ci0JaWYgKElTX0dFTihpOTE1LCAxMikpCisJaWYgKElTX1RJR0VSTEFLRShpOTE1KSkKIAkJ
dGdsX2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2FsKTsKKwllbHNlIGlmIChJU19HRU4oaTkx
NSwgMTIpKQorCQlnZW4xMl9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7CiAJZWxzZSBp
ZiAoSVNfR0VOKGk5MTUsIDExKSkKIAkJaWNsX2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2Fs
KTsKIAllbHNlIGlmIChJU19DQU5OT05MQUtFKGk5MTUpKQpAQCAtMTYyOSwxOCArMTY1MSw2IEBA
IHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVj
dCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCSAgICBHRU45X0NUWF9QUkVFTVBUX1JFRywKIAkJCSAg
ICBHRU4xMl9ESVNBQkxFX1BPU0hfQlVTWV9GRl9ET1BfQ0cpOwogCi0JCS8qCi0JCSAqIFdhXzE2
MDcwMzAzMTc6dGdsCi0JCSAqIFdhXzE2MDcxODY1MDA6dGdsCi0JCSAqIFdhXzE2MDcyOTc2Mjc6
dGdsIHRoZXJlIGlzIDMgZW50cmllcyBmb3IgdGhpcyBXQSBvbiBCU3BlYywgMgotCQkgKiBvZiB0
aGVuIHNheXMgaXQgaXMgZml4ZWQgb24gQjAgdGhlIG90aGVyIG9uZSBzYXlzIGl0IGlzCi0JCSAq
IHBlcm1hbmVudAotCQkgKi8KLQkJd2FfbWFza2VkX2VuKHdhbCwKLQkJCSAgICAgR0VONl9SQ19T
TEVFUF9QU01JX0NPTlRST0wsCi0JCQkgICAgIEdFTjEyX1dBSVRfRk9SX0VWRU5UX1BPV0VSX0RP
V05fRElTQUJMRSB8Ci0JCQkgICAgIEdFTjhfUkNfU0VNQV9JRExFX01TR19ESVNBQkxFKTsKLQog
CQkvKgogCQkgKiBXYV8xNjA2Njc5MTAzOnRnbAogCQkgKiAoc2VlIGFsc28gV2FfMTYwNjY4MjE2
NjppY2wpCkBAIC0xNjU5LDI0ICsxNjY5LDM4IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCSAg
ICBWU1VOSVRfQ0xLR0FURV9ESVNfVEdMKTsKIAl9CiAKLQlpZiAoSVNfVElHRVJMQUtFKGk5MTUp
KSB7Ci0JCS8qIFdhXzE2MDY5MzE2MDE6dGdsICovCisJaWYgKElTX1JPQ0tFVExBS0UoaTkxNSkg
fHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7CisJCS8qIFdhXzE2MDY5MzE2MDE6dGdsLHJrbCAqLwog
CQl3YV9tYXNrZWRfZW4od2FsLCBHRU43X1JPV19DSElDS0VOMiwgR0VOMTJfRElTQUJMRV9FQVJM
WV9SRUFEKTsKIAotCQkvKiBXYV8xNDA5ODA0ODA4OnRnbCAqLworCQkvKiBXYV8xNDA5ODA0ODA4
OnRnbCxya2wgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJQ0tFTjIsCiAJCQkg
ICAgIEdFTjEyX1BVU0hfQ09OU1RfREVSRUZfSE9MRF9ESVMpOwogCi0JCS8qIFdhXzE2MDY3MDA2
MTc6dGdsICovCi0JCXdhX21hc2tlZF9lbih3YWwsCi0JCQkgICAgIEdFTjlfQ1NfREVCVUdfTU9E
RTEsCi0JCQkgICAgIEZGX0RPUF9DTE9DS19HQVRFX0RJU0FCTEUpOwotCiAJCS8qCiAJCSAqIFdh
XzE0MDkwODUyMjU6dGdsCi0JCSAqIFdhXzE0MDEwMjI5MjA2OnRnbAorCQkgKiBXYV8xNDAxMDIy
OTIwNjp0Z2wscmtsCiAJCSAqLwogCQl3YV9tYXNrZWRfZW4od2FsLCBHRU45X1JPV19DSElDS0VO
NCwgR0VOMTJfRElTQUJMRV9URExfUFVTSCk7CisKKwkJLyoKKwkJICogV2FfMTYwNzAzMDMxNzp0
Z2wKKwkJICogV2FfMTYwNzE4NjUwMDp0Z2wKKwkJICogV2FfMTYwNzI5NzYyNzp0Z2wscmtsIHRo
ZXJlIGFyZSBtdWx0aXBsZSBlbnRyaWVzIGZvciB0aGlzCisJCSAqIFdBIGluIHRoZSBCU3BlYzsg
c29tZSBpbmRpY2F0ZSB0aGlzIGlzIGFuIEEwLW9ubHkgV0EsCisJCSAqIG90aGVycyBpbmRpY2F0
ZSBpdCBhcHBsaWVzIHRvIGFsbCBzdGVwcGluZ3MuCisJCSAqLworCQl3YV9tYXNrZWRfZW4od2Fs
LAorCQkJICAgICBHRU42X1JDX1NMRUVQX1BTTUlfQ09OVFJPTCwKKwkJCSAgICAgR0VOMTJfV0FJ
VF9GT1JfRVZFTlRfUE9XRVJfRE9XTl9ESVNBQkxFIHwKKwkJCSAgICAgR0VOOF9SQ19TRU1BX0lE
TEVfTVNHX0RJU0FCTEUpOworCX0KKworCWlmIChJU19USUdFUkxBS0UoaTkxNSkpIHsKKwkJLyog
V2FfMTYwNjcwMDYxNzp0Z2wgKi8KKwkJd2FfbWFza2VkX2VuKHdhbCwKKwkJCSAgICAgR0VOOV9D
U19ERUJVR19NT0RFMSwKKwkJCSAgICAgRkZfRE9QX0NMT0NLX0dBVEVfRElTQUJMRSk7CiAJfQog
CiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
