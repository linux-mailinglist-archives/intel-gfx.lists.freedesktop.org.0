Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4BA294DA1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41CC66EB8E;
	Wed, 21 Oct 2020 13:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FF26EB24
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:42 +0000 (UTC)
IronPort-SDR: P38Gar+gCc/bnarVib2Ioa5NowM2v14wQ8d2qpddFJeNF4rQrD2rWU3cQN65/HzGrzKViJ+5Rx
 5X6VaaqPQn7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317801"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317801"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:42 -0700
IronPort-SDR: Q/4IFMsB+TSBYxh8zgyo4tCUsszitBAnQ0YGKdVgVF2g1zvMySKB+Z6/PUcUCd/7/wWQ2sv7tw
 7M8hrwfV5d0A==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372584"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:41 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:32:11 -0700
Message-Id: <20201021133213.328994-17-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/18] drm/i915/display: Add
 HAS_D12_PLANE_MINIMIZATION
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgotIEFz
IFJLTCBhbmQgQURMLVMgb25seSBoYXZlIDUgcGxhbmVzLCBwcmltYXJ5IGFuZCA0IHNwcml0ZXMg
YW5kCiAgdGhlIGN1cnNvciBwbGFuZSwgbGV0J3MgZ3JvdXAgdGhlIGhhbmRsaW5nIHRvZ2V0aGVy
IHVuZGVyCiAgSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04uCi0gQWxzbyB1c2UgbWFjcm8gdG8g
c2VsZWN0IHBpcGUgaXJxIGZhdWx0IGVycm9yIG1hc2suCgpCU3BlYzogNDkyNTEKQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
QWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgICAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYwppbmRleCBkNGI1ZmM5ZTI3MDQuLjAwZDk4MzZlNzdkZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0zNTEsNyArMzUxLDcgQEAgaW50
IGludGVsX3BsYW5lX2NoZWNrX3NyY19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlKQogCiBzdGF0aWMgdTggaWNsX252MTJfeV9wbGFuZV9tYXNrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewotCWlmIChJU19ST0NLRVRMQUtFKGk5MTUpKQor
CWlmIChIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihpOTE1KSkKIAkJcmV0dXJuIEJJVChQTEFO
RV9TUFJJVEUyKSB8IEJJVChQTEFORV9TUFJJVEUzKTsKIAllbHNlCiAJCXJldHVybiBCSVQoUExB
TkVfU1BSSVRFNCkgfCBCSVQoUExBTkVfU1BSSVRFNSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApp
bmRleCA0ZmVhM2Q1ZTAxZjQuLjc1OTU0YTJmNDkzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CkBAIC0xNzY1LDYgKzE3NjUsOSBAQCB0Z2xfcmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAjZGVmaW5lIElOVEVMX0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikg
XAogCShkcm1fV0FSTl9PTigmKGRldl9wcml2KS0+ZHJtLCAhSEFTX0RJU1BMQVkoZGV2X3ByaXYp
KSwgIShkZXZfcHJpdiktPnBhcmFtcy5kaXNhYmxlX2Rpc3BsYXkpCiAKKyNkZWZpbmUgSEFTX0Qx
Ml9QTEFORV9NSU5JTUlaQVRJT04oZGV2X3ByaXYpIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSB8
fCBcCisJCQkJCSAgICAgIElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkKKwogc3RhdGljIGlubGlu
ZSBib29sIGludGVsX3Z0ZF9hY3RpdmUodm9pZCkKIHsKICNpZmRlZiBDT05GSUdfSU5URUxfSU9N
TVUKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDMyY2IxMmM0YjZkZC4uYTg4OGI3YzE0YWQy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTIyMjAsNyArMjIyMCw3IEBAIHN0YXRpYyB1
MzIgZ2VuOF9kZV9wb3J0X2F1eF9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAogc3RhdGljIHUzMiBnZW44X2RlX3BpcGVfZmF1bHRfbWFzayhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQorCWlm
IChIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihkZXZfcHJpdikpCiAJCXJldHVybiBSS0xfREVf
UElQRV9JUlFfRkFVTFRfRVJST1JTOwogCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEpCiAJCXJldHVybiBHRU4xMV9ERV9QSVBFX0lSUV9GQVVMVF9FUlJPUlM7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCA0ZmZmYTgyOTVkMDYuLjg1MGY4MTQx
ZDgwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC00MDks
NyArNDA5LDcgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJQlVJTERfQlVHX09OKEJJVFNfUEVSX1RZUEUo
aW50ZWxfZW5naW5lX21hc2tfdCkgPCBJOTE1X05VTV9FTkdJTkVTKTsKIAotCWlmIChJU19ST0NL
RVRMQUtFKGRldl9wcml2KSkKKwlpZiAoSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04oZGV2X3By
aXYpKQogCQlmb3JfZWFjaF9waXBlKGRldl9wcml2LCBwaXBlKQogCQkJcnVudGltZS0+bnVtX3Nw
cml0ZXNbcGlwZV0gPSA0OwogCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCi0t
IAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
