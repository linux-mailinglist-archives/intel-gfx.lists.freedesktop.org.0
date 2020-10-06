Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B366C284E03
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2E16E4AA;
	Tue,  6 Oct 2020 14:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 536496E4AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:31 +0000 (UTC)
IronPort-SDR: dEzGMC57beLowcCg2ktOrLi9fURgA8xLi8X9ma+kRFqQm02bC5kEIyU4MLXLYkNf1TDpTVhPK2
 jn+dfeBCrhDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="163745370"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="163745370"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:28 -0700
IronPort-SDR: UMuiCu/7iFN6iwZUlMyCmUy3fwQPSRdaz8wTVsEs+ba5SRodeVM0f6HNo6GJA2l31CXyahA2w+
 C+u+ckJei10Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="315675290"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 06 Oct 2020 07:34:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:42 +0300
Message-Id: <20201006143349.5561-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/20] drm/i915: Relocate intel_hpd_{enabled,
 hotplug}_irqs()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgaW50ZWxfaHBkX3tlbmFibGVkLGhvdHBsdWd9X2lycXMoKSBjbG9zZXMgdG8gdGhlIGJlZ2lu
bmluZyBvZgp0aGUgZmlsZSBzbyB3ZSBjYW4gdXNlIHRoZW0gaW4gbW9yZSBwbGFjZXMuIE5vIGZ1
bmN0aW9uYWwgY2hhbmdlcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYyB8IDUwICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDI1IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCmluZGV4IDYzMzIyMTYwZTI0OC4uODdjY2M4MmJmMjFkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKQEAgLTExOTYsNiArMTE5NiwzMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9nZXRfaHBkX3Bp
bnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiB9CiAKK3N0YXRpYyB1MzIg
aW50ZWxfaHBkX2VuYWJsZWRfaXJxcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CisJCQkJICBjb25zdCB1MzIgaHBkW0hQRF9OVU1fUElOU10pCit7CisJc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXI7CisJdTMyIGVuYWJsZWRfaXJxcyA9IDA7CisKKwlmb3JfZWFjaF9pbnRl
bF9lbmNvZGVyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKQorCQlpZiAoZGV2X3ByaXYtPmhvdHBs
dWcuc3RhdHNbZW5jb2Rlci0+aHBkX3Bpbl0uc3RhdGUgPT0gSFBEX0VOQUJMRUQpCisJCQllbmFi
bGVkX2lycXMgfD0gaHBkW2VuY29kZXItPmhwZF9waW5dOworCisJcmV0dXJuIGVuYWJsZWRfaXJx
czsKK30KKworc3RhdGljIHUzMiBpbnRlbF9ocGRfaG90cGx1Z19pcnFzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgIGNvbnN0IHUzMiBocGRbSFBEX05VTV9QSU5TXSkK
K3sKKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKKwl1MzIgaG90cGx1Z19pcnFzID0g
MDsKKworCWZvcl9lYWNoX2ludGVsX2VuY29kZXIoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpCisJ
CWhvdHBsdWdfaXJxcyB8PSBocGRbZW5jb2Rlci0+aHBkX3Bpbl07CisKKwlyZXR1cm4gaG90cGx1
Z19pcnFzOworfQorCiBzdGF0aWMgdm9pZCBnbWJ1c19pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJd2FrZV91cF9hbGwoJmRldl9wcml2LT5nbWJ1c193
YWl0X3F1ZXVlKTsKQEAgLTMxMzEsMzEgKzMxNTYsNiBAQCBzdGF0aWMgdm9pZCBjaGVycnl2aWV3
X2lycV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3Bpbl91bmxv
Y2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwogfQogCi1zdGF0aWMgdTMyIGludGVsX2hwZF9l
bmFibGVkX2lycXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCSAgY29u
c3QgdTMyIGhwZFtIUERfTlVNX1BJTlNdKQotewotCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyOwotCXUzMiBlbmFibGVkX2lycXMgPSAwOwotCi0JZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcigm
ZGV2X3ByaXYtPmRybSwgZW5jb2RlcikKLQkJaWYgKGRldl9wcml2LT5ob3RwbHVnLnN0YXRzW2Vu
Y29kZXItPmhwZF9waW5dLnN0YXRlID09IEhQRF9FTkFCTEVEKQotCQkJZW5hYmxlZF9pcnFzIHw9
IGhwZFtlbmNvZGVyLT5ocGRfcGluXTsKLQotCXJldHVybiBlbmFibGVkX2lycXM7Ci19Ci0KLXN0
YXRpYyB1MzIgaW50ZWxfaHBkX2hvdHBsdWdfaXJxcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCi0JCQkJICBjb25zdCB1MzIgaHBkW0hQRF9OVU1fUElOU10pCi17Ci0Jc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXI7Ci0JdTMyIGhvdHBsdWdfaXJxcyA9IDA7Ci0KLQlmb3Jf
ZWFjaF9pbnRlbF9lbmNvZGVyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKQotCQlob3RwbHVnX2ly
cXMgfD0gaHBkW2VuY29kZXItPmhwZF9waW5dOwotCi0JcmV0dXJuIGhvdHBsdWdfaXJxczsKLX0K
LQogc3RhdGljIHZvaWQgaWJ4X2hwZF9kZXRlY3Rpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogewogCXUzMiBob3RwbHVnOwotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
