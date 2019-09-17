Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 829EEB4E9E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0916EC52;
	Tue, 17 Sep 2019 12:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDEE6EC52
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:58:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 05:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="216556557"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2019 05:58:24 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 18:18:43 +0530
Message-Id: <1568724525-19275-2-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
References: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v2][PATCH 1/3] drm/i915/display: Fix formatting issues
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxNSArKysrKyst
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDMxODMw
OGQuLmIxZjBmN2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMKQEAgLTgwNywxMSArODA3LDExIEBAIHN0YXRpYyB1MzIgaWxrX2x1dF8xMnA0X2xkdyhjb25z
dCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqY29sb3IpCiAJdTMyIGk7CiAKIAkvKgotCSAqIEV2ZXJ5
IGVudHJ5IGluIHRoZSBtdWx0aS1zZWdtZW50IExVVCBpcyBjb3JyZXNwb25kaW5nIHRvIGEgc3Vw
ZXJmaW5lCi0JICogc2VnbWVudCBzdGVwIHdoaWNoIGlzIDEvKDggKiAxMjggKiAyNTYpLgorCSAq
IFByb2dyYW0gU3VwZXIgRmluZSBzZWdtZW50IChsZXQncyBjYWxsIGl0IHNlZzEpLi4uCiAJICoK
LQkgKiBTdXBlcmZpbmUgc2VnbWVudCBoYXMgOSBlbnRyaWVzLCBjb3JyZXNwb25kaW5nIHRvIHZh
bHVlcwotCSAqIDAsIDEvKDggKiAxMjggKiAyNTYpLCAyLyg4ICogMTI4ICogMjU2KSAuLi4uIDgv
KDggKiAxMjggKiAyNTYpLgorCSAqIFN1cGVyIEZpbmUgc2VnbWVudCdzIHN0ZXAgaXMgMS8oOCAq
IDEyOCAqIDI1NikgYW5kIGl0IGhhcworCSAqIDkgZW50cmllcywgY29ycmVzcG9uZGluZyB0byB2
YWx1ZXMgMCwgMS8oOCAqIDEyOCAqIDI1NiksCisJICogMi8oOCAqIDEyOCAqIDI1NikgLi4uIDgv
KDggKiAxMjggKiAyNTYpLgogCSAqLwogCUk5MTVfV1JJVEUoUFJFQ19QQUxfTVVMVElfU0VHX0lO
REVYKHBpcGUpLCBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVOVCk7CiAKQEAgLTgzNywxMCArODM3LDkg
QEAgc3RhdGljIHUzMiBpbGtfbHV0XzEycDRfbGR3KGNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0
ICpjb2xvcikKIAl1MzIgaTsKIAogCS8qCi0JICoKIAkgKiBQcm9ncmFtIEZpbmUgc2VnbWVudCAo
bGV0J3MgY2FsbCBpdCBzZWcyKS4uLgogCSAqCi0JICogRmluZSBzZWdtZW50J3Mgc3RlcCBpcyAx
LygxMjggKiAyNTYpIGllIDEvKDEyOCAqIDI1NiksICAyLygxMjgqMjU2KQorCSAqIEZpbmUgc2Vn
bWVudCdzIHN0ZXAgaXMgMS8oMTI4ICogMjU2KSBpLmUuIDEvKDEyOCAqIDI1NiksICAyLygxMjgq
MjU2KQogCSAqIC4uLiAyNTYvKDEyOCoyNTYpLiBTbyBpbiBvcmRlciB0byBwcm9ncmFtIGZpbmUg
c2VnbWVudCBvZiBMVVQgd2UKIAkgKiBuZWVkIHRvIHBpY2sgZXZlcnkgOCd0aCBlbnRyeSBpbiBM
VVQsIGFuZCBwcm9ncmFtIDI1NiBpbmRleGVzLgogCSAqCkBAIC04NTgsNyArODU3LDcgQEAgc3Rh
dGljIHUzMiBpbGtfbHV0XzEycDRfbGR3KGNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpjb2xv
cikKIAkgKiBQcm9ncmFtIENvYXJzZSBzZWdtZW50IChsZXQncyBjYWxsIGl0IHNlZzMpLi4uCiAJ
ICoKIAkgKiBDb2Fyc2Ugc2VnbWVudCdzIHN0YXJ0cyBmcm9tIGluZGV4IDAgYW5kIGl0J3Mgc3Rl
cCBpcyAxLzI1NiBpZSAwLAotCSAqIDEvMjU2LCAyLzI1NiAuLi4yNTYvMjU2LiBBcyBwZXIgdGhl
IGRlc2NyaXB0aW9uIG9mIGVhY2ggZW50cnkgaW4gTFVUCisJICogMS8yNTYsIDIvMjU2IC4uLiAy
NTYvMjU2LiBBcyBwZXIgdGhlIGRlc2NyaXB0aW9uIG9mIGVhY2ggZW50cnkgaW4gTFVUCiAJICog
YWJvdmUsIHdlIG5lZWQgdG8gcGljayBldmVyeSAoOCAqIDEyOCl0aCBlbnRyeSBpbiBMVVQsIGFu
ZAogCSAqIHByb2dyYW0gMjU2IG9mIHRob3NlLgogCSAqCkBAIC04OTAsMTIgKzg4OSwxMCBAQCBz
dGF0aWMgdm9pZCBpY2xfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQogCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6CiAJCWk5eHhfbG9hZF9sdXRz
KGNydGNfc3RhdGUpOwogCQlicmVhazsKLQogCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01V
TFRJX1NFR01FTlRFRDoKIAkJaWNsX3Byb2dyYW1fZ2FtbWFfc3VwZXJmaW5lX3NlZ21lbnQoY3J0
Y19zdGF0ZSk7CiAJCWljbF9wcm9ncmFtX2dhbW1hX211bHRpX3NlZ21lbnQoY3J0Y19zdGF0ZSk7
CiAJCWJyZWFrOwotCiAJZGVmYXVsdDoKIAkJYmR3X2xvYWRfbHV0XzEwKGNydGMsIGdhbW1hX2x1
dCwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwogCQlpdmJfbG9hZF9sdXRfZXh0X21heChjcnRj
KTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
