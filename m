Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6A2306CF4
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:30:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2DB6E8CB;
	Thu, 28 Jan 2021 05:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB466E8D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:30:37 +0000 (UTC)
IronPort-SDR: buiEe5Tkd6rNCcIuif40CFK/N2+oZRQd8JjCKRY9FyJw09jCZ96SAqmxjnSPy4OhFZ6aWHqALB
 wDJ2F0tb6YDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167279159"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167279159"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:37 -0800
IronPort-SDR: 18vxLRITOhCwgOfvaASyN+4aY9jLaZu4ovNl0sqfGwOsS+aX8qaWBFoLgc79Haf67suVfzGgsV
 rbn4HdII+FOw==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430386081"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.24.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:37 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 21:30:20 -0800
Message-Id: <20210128053024.23540-6-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
References: <20210128053024.23540-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/display: Add
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
QWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgICAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYwppbmRleCBlODNjODc4YWM3YjAuLmQyMTZhODYzZDgxOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0zODIsNyArMzgyLDcgQEAgaW50
IGludGVsX3BsYW5lX2NoZWNrX3NyY19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlKQogCiBzdGF0aWMgdTggaWNsX252MTJfeV9wbGFuZV9tYXNrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewotCWlmIChJU19ST0NLRVRMQUtFKGk5MTUpKQor
CWlmIChIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihpOTE1KSkKIAkJcmV0dXJuIEJJVChQTEFO
RV9TUFJJVEUyKSB8IEJJVChQTEFORV9TUFJJVEUzKTsKIAllbHNlCiAJCXJldHVybiBCSVQoUExB
TkVfU1BSSVRFNCkgfCBCSVQoUExBTkVfU1BSSVRFNSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApp
bmRleCAzZWRjOWM0ZjJkMjEuLjk3MTNhYjk2MzEyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CkBAIC0xNzg1LDYgKzE3ODUsOSBAQCB0Z2xfc3RlcHBpbmdfZ2V0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKICNkZWZpbmUgSU5URUxfRElTUExBWV9FTkFCTEVEKGRldl9wcml2
KSBcCiAJKGRybV9XQVJOX09OKCYoZGV2X3ByaXYpLT5kcm0sICFIQVNfRElTUExBWShkZXZfcHJp
dikpLCAhKGRldl9wcml2KS0+cGFyYW1zLmRpc2FibGVfZGlzcGxheSkKIAorI2RlZmluZSBIQVNf
RDEyX1BMQU5FX01JTklNSVpBVElPTihkZXZfcHJpdikgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYp
IHx8IFwKKwkJCQkJICAgICAgSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQorCiBzdGF0aWMgaW5s
aW5lIGJvb2wgcnVuX2FzX2d1ZXN0KHZvaWQpCiB7CiAJcmV0dXJuICFoeXBlcnZpc29yX2lzX3R5
cGUoWDg2X0hZUEVSX05BVElWRSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCBhMzE5ODBm
NjkxMjAuLjA2OTM3YTJkMjcxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0yMjgwLDcg
KzIyODAsNyBAQCBzdGF0aWMgdTMyIGdlbjhfZGVfcG9ydF9hdXhfbWFzayhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB1MzIgZ2VuOF9kZV9waXBlX2ZhdWx0X21h
c2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCWlmIChJU19ST0NLRVRM
QUtFKGRldl9wcml2KSkKKwlpZiAoSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04oZGV2X3ByaXYp
KQogCQlyZXR1cm4gUktMX0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsKIAllbHNlIGlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKQogCQlyZXR1cm4gR0VOMTFfREVfUElQRV9JUlFfRkFVTFRf
RVJST1JTOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggN2Q5
OGE3MThhMDUxLi44NWQ2ODgzNzQ1ZDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uYwpAQCAtMjYxLDcgKzI2MSw3IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVu
dGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCUJVSUxEX0JV
R19PTihCSVRTX1BFUl9UWVBFKGludGVsX2VuZ2luZV9tYXNrX3QpIDwgSTkxNV9OVU1fRU5HSU5F
Uyk7CiAKLQlpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpCisJaWYgKEhBU19EMTJfUExBTkVf
TUlOSU1JWkFUSU9OKGRldl9wcml2KSkKIAkJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkK
IAkJCXJ1bnRpbWUtPm51bV9zcHJpdGVzW3BpcGVdID0gNDsKIAllbHNlIGlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
