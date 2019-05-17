Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D28621E43
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C866A89996;
	Fri, 17 May 2019 19:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3363F89996
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:31:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:31:37 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 17 May 2019 12:31:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:31:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:20 +0300
Message-Id: <20190517193132.8140-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/14] drm/i915: Clean up cdclk vfunc assignments
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
YW5rcyB0byB1c2luZyB0aGUgc2hvcnQgbmFtZXMgZm9yIHBsYXRvZm9ybXMgYWxsIHRoZSBjZGNs
awp2ZnVuYyBhc3NpZ25lbXRucyBub3cgZml0IHdpdGhpbiA4MCBjb2xzLiBSZW1vdmUgdGhlIGV4
dHJhCmxpbmUgd3JhcHMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nk
Y2xrLmMgfCAxOCArKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jCmluZGV4
IDZlNzEyZmVjOTI1Zi4uNjk4OGM2Y2JjMzYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xr
LmMKQEAgLTI4MDEsMjggKzI4MDEsMjIgQEAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9k
ZXNldF9jYWxjX2NkY2xrID0gaWNsX21vZGVzZXRfY2FsY19jZGNsazsKIAl9IGVsc2UgaWYgKElT
X0NBTk5PTkxBS0UoZGV2X3ByaXYpKSB7CiAJCWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayA9
IGNubF9zZXRfY2RjbGs7Ci0JCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9
Ci0JCQljbmxfbW9kZXNldF9jYWxjX2NkY2xrOworCQlkZXZfcHJpdi0+ZGlzcGxheS5tb2Rlc2V0
X2NhbGNfY2RjbGsgPSBjbmxfbW9kZXNldF9jYWxjX2NkY2xrOwogCX0gZWxzZSBpZiAoSVNfR0VO
OV9MUChkZXZfcHJpdikpIHsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYnh0X3Nl
dF9jZGNsazsKLQkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0KLQkJCWJ4
dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19j
ZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJfSBlbHNlIGlmIChJU19HRU45X0JDKGRl
dl9wcml2KSkgewogCQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBza2xfc2V0X2NkY2xr
OwotCQlkZXZfcHJpdi0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPQotCQkJc2tsX21vZGVz
ZXRfY2FsY19jZGNsazsKKwkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0g
c2tsX21vZGVzZXRfY2FsY19jZGNsazsKIAl9IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJp
dikpIHsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0gYmR3X3NldF9jZGNsazsKLQkJ
ZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0KLQkJCWJkd19tb2Rlc2V0X2Nh
bGNfY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJkd19t
b2Rlc2V0X2NhbGNfY2RjbGs7CiAJfSBlbHNlIGlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkg
ewogCQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBjaHZfc2V0X2NkY2xrOwotCQlkZXZf
cHJpdi0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPQotCQkJdmx2X21vZGVzZXRfY2FsY19j
ZGNsazsKKwkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gdmx2X21vZGVz
ZXRfY2FsY19jZGNsazsKIAl9IGVsc2UgaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKSB7CiAJ
CWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayA9IHZsdl9zZXRfY2RjbGs7Ci0JCWRldl9wcml2
LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9Ci0JCQl2bHZfbW9kZXNldF9jYWxjX2NkY2xr
OworCQlkZXZfcHJpdi0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPSB2bHZfbW9kZXNldF9j
YWxjX2NkY2xrOwogCX0KIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
