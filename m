Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F9A1ED7F2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 23:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4629789F01;
	Wed,  3 Jun 2020 21:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0164889EBB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 21:15:48 +0000 (UTC)
IronPort-SDR: QZ1zNbUksaUXgix5Qke0dgC0jFYrzJ1Lv9/vJRl95Se+vCctv+JOAFFuRS0yJaQjIXtZQ8gCxq
 8mKnzR3uvXWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:15:48 -0700
IronPort-SDR: ILlbJK3W4MAcNeaWeOeDdUWx4fS5sDypNoD478OtTGn2yE7kZzFIFrorvxxVN3Y91rsoIb+uex
 kjEqkyJJQVgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="258715093"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 14:15:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 14:15:21 -0700
Message-Id: <20200603211529.3005059-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/15] drm/i915/rkl: Update TGP's pin mapping
 when paired with RKL
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

V2hlbiBUR1AgaXMgcGFpcmVkIHdpdGggUktMIGl0IHVzZXMgYSBkaWZmZXJlbnQgSFBEIHBpbiBt
YXBwaW5nIHRoYW4Kd2hlbiBwYWlyZWQgd2l0aCBUR0wuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jIHwgMTUgKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDQ5MDU3NDY2
OWVhYS4uZjNlYTgxYTE3MzUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTE2Nyw2ICsx
NjcsMTcgQEAgc3RhdGljIGNvbnN0IHUzMiBocGRfdGdwW0hQRF9OVU1fUElOU10gPSB7CiAJW0hQ
RF9QT1JUX0ldID0gU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEM2KSwKIH07CiAKKy8qCisgKiBU
R1Agd2hlbiBwYWlyZWQgd2l0aCBSS0wgaGFzIGRpZmZlcmVudCBwaW4gbWFwcGluZ3MgdGhhbiB3
aGVuIHBhaXJlZAorICogd2l0aCBUR0wuCisgKi8KK3N0YXRpYyBjb25zdCB1MzIgaHBkX3JrbF90
Z3BbSFBEX05VTV9QSU5TXSA9IHsKKwlbSFBEX1BPUlRfQV0gPSBTREVfRERJX0hPVFBMVUdfSUNQ
KFBPUlRfQSksCisJW0hQRF9QT1JUX0JdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0IpLAor
CVtIUERfUE9SVF9DXSA9IFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RDMSksCisJW0hQRF9QT1JU
X0RdID0gU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMyKSwKK307CisKIHN0YXRpYyB2b2lkIGlu
dGVsX2hwZF9pbml0X3BpbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewog
CXN0cnVjdCBpOTE1X2hvdHBsdWcgKmhwZCA9ICZkZXZfcHJpdi0+aG90cGx1ZzsKQEAgLTE5Niw3
ICsyMDcsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9ocGRfaW5pdF9waW5zKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoIUhBU19QQ0hfU1BMSVQoZGV2X3ByaXYpIHx8IEhB
U19QQ0hfTk9QKGRldl9wcml2KSkKIAkJcmV0dXJuOwogCi0JaWYgKEhBU19QQ0hfVEdQKGRldl9w
cml2KSB8fCBIQVNfUENIX0pTUChkZXZfcHJpdikpCisJaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2
KSAmJiBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKKwkJaHBkLT5wY2hfaHBkID0gaHBkX3JrbF90
Z3A7CisJZWxzZSBpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpIHx8IEhBU19QQ0hfSlNQKGRldl9w
cml2KSkKIAkJaHBkLT5wY2hfaHBkID0gaHBkX3RncDsKIAllbHNlIGlmIChIQVNfUENIX0lDUChk
ZXZfcHJpdikgfHwgSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQogCQlocGQtPnBjaF9ocGQgPSBocGRf
aWNwOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
