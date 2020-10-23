Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD2C2970AC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5A96F87F;
	Fri, 23 Oct 2020 13:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255C86F87F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:35:06 +0000 (UTC)
IronPort-SDR: jpwJFwgSGZW5I+qmmWHEgs7YHhDc/XnmfgSYioEsp3CkmADQUa0wSr/hTNd1v63XSCctHp31EP
 G/6bsIyuQl2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="146966690"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="146966690"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:35:05 -0700
IronPort-SDR: 0TB9PQ7w078xndwSzyguN8lpIP9pFZN2BY15Z3WSezraAz90gP094KxbWEZFQKNfFbvDrrQxL1
 aD5CPOzXqVFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="349209956"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 23 Oct 2020 06:35:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:35:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:13 +0300
Message-Id: <20201023133420.12039-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/19] drm/i915: Relocate intel_hpd_{enabled,
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
cS5jCmluZGV4IGZmNjk1ZmYyM2NlNS4uNjhlOWQyODEzZDMyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKQEAgLTExOTMsNiArMTE5MywzMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9nZXRfaHBkX3Bp
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
YWl0X3F1ZXVlKTsKQEAgLTMxMzAsMzEgKzMxNTUsNiBAQCBzdGF0aWMgdm9pZCBjaGVycnl2aWV3
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
