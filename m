Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4BE2970AF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 15:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633126F881;
	Fri, 23 Oct 2020 13:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246C56F883
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 13:35:17 +0000 (UTC)
IronPort-SDR: gO6pqdcVUtE/3d4OHb3GVauYnE/0qxmTRTyfx+LaBn9yo7bRENLnzZ4Kh5wPZ4rX0/IneTmX3z
 pMuGNqv8sLkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="252373861"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="252373861"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 06:35:14 -0700
IronPort-SDR: PHd+2/reB19fzBSUX70dMj+cQDb6qXbaDUKBHu5ioKCDe3cp8/ijXMXa8bdBMMlzt4W55+oSwO
 pyxeMZuTb07Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="321740906"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 23 Oct 2020 06:35:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 16:35:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 16:34:16 +0300
Message-Id: <20201023133420.12039-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 15/19] drm/i915: Rename 'tmp_mask'
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhpcyBzaWxseSB0bXBfbWFzayB3aXRoIGhvdHBsdWdfdHJpZ2dlci90ZV90cmlnZ2Vy
CndoZXJlIGFwcHJvcHJpYXRlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jIHwgMjIgKysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4
IGIxZjIxNTAyYjc4Yi4uYmU2OWMxMjlkZDVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAg
LTIzNzEsNyArMjM3MSw2IEBAIGdlbjhfZGVfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCB1MzIgbWFzdGVyX2N0bCkKIAlpZiAobWFzdGVyX2N0bCAmIEdFTjhf
REVfUE9SVF9JUlEpIHsKIAkJaWlyID0gSTkxNV9SRUFEKEdFTjhfREVfUE9SVF9JSVIpOwogCQlp
ZiAoaWlyKSB7Ci0JCQl1MzIgdG1wX21hc2s7CiAJCQlib29sIGZvdW5kID0gZmFsc2U7CiAKIAkJ
CUk5MTVfV1JJVEUoR0VOOF9ERV9QT1JUX0lJUiwgaWlyKTsKQEAgLTIzODMsMTUgKzIzODIsMTcg
QEAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IHUzMiBtYXN0ZXJfY3RsKQogCQkJfQogCiAJCQlpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpIHsK
LQkJCQl0bXBfbWFzayA9IGlpciAmIEJYVF9ERV9QT1JUX0hPVFBMVUdfTUFTSzsKLQkJCQlpZiAo
dG1wX21hc2spIHsKLQkJCQkJYnh0X2hwZF9pcnFfaGFuZGxlcihkZXZfcHJpdiwgdG1wX21hc2sp
OworCQkJCXUzMiBob3RwbHVnX3RyaWdnZXIgPSBpaXIgJiBCWFRfREVfUE9SVF9IT1RQTFVHX01B
U0s7CisKKwkJCQlpZiAoaG90cGx1Z190cmlnZ2VyKSB7CisJCQkJCWJ4dF9ocGRfaXJxX2hhbmRs
ZXIoZGV2X3ByaXYsIGhvdHBsdWdfdHJpZ2dlcik7CiAJCQkJCWZvdW5kID0gdHJ1ZTsKIAkJCQl9
CiAJCQl9IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKLQkJCQl0bXBfbWFzayA9
IGlpciAmIEJEV19ERV9QT1JUX0hPVFBMVUdfTUFTSzsKLQkJCQlpZiAodG1wX21hc2spIHsKLQkJ
CQkJaWxrX2hwZF9pcnFfaGFuZGxlcihkZXZfcHJpdiwgdG1wX21hc2spOworCQkJCXUzMiBob3Rw
bHVnX3RyaWdnZXIgPSBpaXIgJiBCRFdfREVfUE9SVF9IT1RQTFVHX01BU0s7CisKKwkJCQlpZiAo
aG90cGx1Z190cmlnZ2VyKSB7CisJCQkJCWlsa19ocGRfaXJxX2hhbmRsZXIoZGV2X3ByaXYsIGhv
dHBsdWdfdHJpZ2dlcik7CiAJCQkJCWZvdW5kID0gdHJ1ZTsKIAkJCQl9CiAJCQl9CkBAIC0yNDAy
LDkgKzI0MDMsMTAgQEAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKQogCQkJfQogCiAJCQlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSkgewotCQkJCXRtcF9tYXNrID0gaWlyICYgKERTSTBfVEUgfCBEU0kxX1RF
KTsKLQkJCQlpZiAodG1wX21hc2spIHsKLQkJCQkJZ2VuMTFfZHNpX3RlX2ludGVycnVwdF9oYW5k
bGVyKGRldl9wcml2LCB0bXBfbWFzayk7CisJCQkJdTMyIHRlX3RyaWdnZXIgPSBpaXIgJiAoRFNJ
MF9URSB8IERTSTFfVEUpOworCisJCQkJaWYgKHRlX3RyaWdnZXIpIHsKKwkJCQkJZ2VuMTFfZHNp
X3RlX2ludGVycnVwdF9oYW5kbGVyKGRldl9wcml2LCB0ZV90cmlnZ2VyKTsKIAkJCQkJZm91bmQg
PSB0cnVlOwogCQkJCX0KIAkJCX0KLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
