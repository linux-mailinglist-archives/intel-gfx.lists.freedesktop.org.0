Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7763D3F05
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4796FBA6;
	Fri, 23 Jul 2021 17:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426336FB9B
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:42:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="275742939"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="275742939"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229046"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:13 -0700
Message-Id: <20210723174239.1551352-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 04/30] drm/i915/xehp: Extra media engines -
 Part 3 (reset)
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KClhlX0hQIGNh
biBoYXZlIGEgbG90IG9mIGV4dHJhIG1lZGlhIGVuZ2luZXMuIFRoaXMgcGF0Y2ggYWRkcyB0aGUg
cmVzZXQKc3VwcG9ydCBmb3IgdGhlbS4KClNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpv
aG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3
LnMuYXR3b29kQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZXNldC5jIHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
fCA4ICsrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwppbmRleCA3MjI1MTYzOGQ0ZWEuLjk1ODY2MTNlZTM5
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCkBAIC01MTUsOCArNTE1LDE0
IEBAIHN0YXRpYyBpbnQgZ2VuMTFfcmVzZXRfZW5naW5lcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAog
CQlbVkNTMV0gID0gR0VOMTFfR1JET01fTUVESUEyLAogCQlbVkNTMl0gID0gR0VOMTFfR1JET01f
TUVESUEzLAogCQlbVkNTM10gID0gR0VOMTFfR1JET01fTUVESUE0LAorCQlbVkNTNF0gID0gR0VO
MTFfR1JET01fTUVESUE1LAorCQlbVkNTNV0gID0gR0VOMTFfR1JET01fTUVESUE2LAorCQlbVkNT
Nl0gID0gR0VOMTFfR1JET01fTUVESUE3LAorCQlbVkNTN10gID0gR0VOMTFfR1JET01fTUVESUE4
LAogCQlbVkVDUzBdID0gR0VOMTFfR1JET01fVkVDUywKIAkJW1ZFQ1MxXSA9IEdFTjExX0dSRE9N
X1ZFQ1MyLAorCQlbVkVDUzJdID0gR0VOMTFfR1JET01fVkVDUzMsCisJCVtWRUNTM10gPSBHRU4x
MV9HUkRPTV9WRUNTNCwKIAl9OwogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKIAlp
bnRlbF9lbmdpbmVfbWFza190IHRtcDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGMyZmNh
ODk3YWM4Mi4uMTY2OWFhOGUxY2ZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTM5NSwx
MCArMzk1LDE4IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVf
cmVnX3QgcmVnKQogI2RlZmluZSAgR0VOMTFfR1JET01fTUVESUEyCQkoMSA8PCA2KQogI2RlZmlu
ZSAgR0VOMTFfR1JET01fTUVESUEzCQkoMSA8PCA3KQogI2RlZmluZSAgR0VOMTFfR1JET01fTUVE
SUE0CQkoMSA8PCA4KQorI2RlZmluZSAgR0VOMTFfR1JET01fTUVESUE1CQkoMSA8PCA5KQorI2Rl
ZmluZSAgR0VOMTFfR1JET01fTUVESUE2CQkoMSA8PCAxMCkKKyNkZWZpbmUgIEdFTjExX0dSRE9N
X01FRElBNwkJKDEgPDwgMTEpCisjZGVmaW5lICBHRU4xMV9HUkRPTV9NRURJQTgJCSgxIDw8IDEy
KQogI2RlZmluZSAgR0VOMTFfR1JET01fVkVDUwkJKDEgPDwgMTMpCiAjZGVmaW5lICBHRU4xMV9H
UkRPTV9WRUNTMgkJKDEgPDwgMTQpCisjZGVmaW5lICBHRU4xMV9HUkRPTV9WRUNTMwkJKDEgPDwg
MTUpCisjZGVmaW5lICBHRU4xMV9HUkRPTV9WRUNTNAkJKDEgPDwgMTYpCiAjZGVmaW5lICBHRU4x
MV9HUkRPTV9TRkMwCQkoMSA8PCAxNykKICNkZWZpbmUgIEdFTjExX0dSRE9NX1NGQzEJCSgxIDw8
IDE4KQorI2RlZmluZSAgR0VOMTFfR1JET01fU0ZDMgkJKDEgPDwgMTkpCisjZGVmaW5lICBHRU4x
MV9HUkRPTV9TRkMzCQkoMSA8PCAyMCkKIAogI2RlZmluZSAgR0VOMTFfVkNTX1NGQ19SRVNFVF9C
SVQoaW5zdGFuY2UpCShHRU4xMV9HUkRPTV9TRkMwIDw8ICgoaW5zdGFuY2UpID4+IDEpKQogI2Rl
ZmluZSAgR0VOMTFfVkVDU19TRkNfUkVTRVRfQklUKGluc3RhbmNlKQkoR0VOMTFfR1JET01fU0ZD
MCA8PCAoaW5zdGFuY2UpKQotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
