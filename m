Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2B1FD08E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 22:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B936EF38;
	Thu, 14 Nov 2019 21:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960826EF38
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 21:48:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 13:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,305,1569308400"; d="scan'208";a="406468945"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga006.fm.intel.com with ESMTP; 14 Nov 2019 13:48:44 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 13:50:46 -0800
Message-Id: <20191114215046.25171-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113191840.23620-2-radhakrishna.sripada@intel.com>
References: <20191113191840.23620-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Add Wa_1408615072
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzYWJsZSBWUyBVbml0IENsb2NrZ2F0aW5nLgoKdjI6IEZpeCBWU1VOSVQgaW5zdGVhZCBvZiBW
RlVOSVQoVmlsbGUpCgpCU3BlYzogNTI4NTcKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhh
a3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNCArKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmlu
ZGV4IDQ3OGY1ZmY2YzU1NC4uOGZiM2QyMDgyODA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
QEAgLTQxNzgsNiArNDE3OCw3IEBAIGVudW0gewogCiAjZGVmaW5lIFVOU0xJQ0VfVU5JVF9MRVZF
TF9DTEtHQVRFCV9NTUlPKDB4OTQzNCkKICNkZWZpbmUgIFZGVU5JVF9DTEtHQVRFX0RJUwkJKDEg
PDwgMjApCisjZGVmaW5lICBWU1VOSVRfQ0xLR0FURV9ESVMJCSgxIDw8IDMpCiAKICNkZWZpbmUg
SU5GX1VOSVRfTEVWRUxfQ0xLR0FURQkJX01NSU8oMHg5NTYwKQogI2RlZmluZSAgIENHUFNGX0NM
S0dBVEVfRElTCQkoMSA8PCAzKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMDViYTllMWJk
MjQ3Li4zYWFhZDQ5NTc2NzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNjU4MCw2ICs2
NTgwLDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlJOTE1X1dSSVRFKFBPV0VSR0FURV9FTkFCTEUsCiAJ
CSAgIEk5MTVfUkVBRChQT1dFUkdBVEVfRU5BQkxFKSB8IHZkX3BnX2VuYWJsZSk7CisKKwkvKiBX
YV8xNDA4NjE1MDcyOnRnbCAqLworCUk5MTVfV1JJVEUoVU5TTElDRV9VTklUX0xFVkVMX0NMS0dB
VEUsCisJCSAgIEk5MTVfUkVBRChVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSkgfCBWU1VOSVRf
Q0xLR0FURV9ESVMpOwogfQogCiBzdGF0aWMgdm9pZCBjbnBfaW5pdF9jbG9ja19nYXRpbmcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
