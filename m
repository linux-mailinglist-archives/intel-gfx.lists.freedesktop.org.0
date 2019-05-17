Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AB021E45
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0778F8999C;
	Fri, 17 May 2019 19:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBAE08999A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:31:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:31:43 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 17 May 2019 12:31:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:31:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:22 +0300
Message-Id: <20190517193132.8140-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Use intel_ types in
 intel_modeset_clear_plls()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBh
c3MgYXJvdW5kIGludGVsX2F0b21pY19zdGF0ZSByYXRoZXIgdGhhbiBkcm1fYXRvbWljX3N0YXRl
LgpUaGlzIGF2b2lkcyBzb21lIGV4dHJhIGNhc3RzIGFuZCBhbm5vaW5nIGFsaWFzaW5nIHZhcmlh
Ymxlcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwg
MjMgKysrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25z
KCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5k
ZXggMTlmMDE5ODRjNTUwLi5jYTVlZjgzZmM5ZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMKQEAgLTEyNzY5LDMxICsxMjc2OSwzMCBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfc2Nh
bmxpbmVfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
CQljcnRjLT5zY2FubGluZV9vZmZzZXQgPSAxOwogfQogCi1zdGF0aWMgdm9pZCBpbnRlbF9tb2Rl
c2V0X2NsZWFyX3BsbHMoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQorc3RhdGljIHZv
aWQgaW50ZWxfbW9kZXNldF9jbGVhcl9wbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQogewotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+ZGV2OwotCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKLQlzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGM7Ci0Jc3RydWN0IGRybV9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwgKm5ld19j
cnRjX3N0YXRlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
c3RhdGUtPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsICpuZXdfY3J0Y19zdGF0ZTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlpbnQgaTsK
IAogCWlmICghZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19jb21wdXRlX2Nsb2NrKQogCQlyZXR1cm47
CiAKLQlmb3JfZWFjaF9vbGRuZXdfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNf
c3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7Ci0JCXN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9j
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCSAgICBuZXdfY3J0Y19z
dGF0ZSwgaSkgewogCQlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKm9sZF9kcGxsID0KLQkJCXRv
X2ludGVsX2NydGNfc3RhdGUob2xkX2NydGNfc3RhdGUpLT5zaGFyZWRfZHBsbDsKKwkJCW9sZF9j
cnRjX3N0YXRlLT5zaGFyZWRfZHBsbDsKIAotCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNf
c3RhdGUpKQorCQlpZiAoIW5lZWRzX21vZGVzZXQoJm5ld19jcnRjX3N0YXRlLT5iYXNlKSkKIAkJ
CWNvbnRpbnVlOwogCi0JCXRvX2ludGVsX2NydGNfc3RhdGUobmV3X2NydGNfc3RhdGUpLT5zaGFy
ZWRfZHBsbCA9IE5VTEw7CisJCW5ld19jcnRjX3N0YXRlLT5zaGFyZWRfZHBsbCA9IE5VTEw7CiAK
IAkJaWYgKCFvbGRfZHBsbCkKIAkJCWNvbnRpbnVlOwogCi0JCWludGVsX3JlbGVhc2Vfc2hhcmVk
X2RwbGwob2xkX2RwbGwsIGludGVsX2NydGMsIHN0YXRlKTsKKwkJaW50ZWxfcmVsZWFzZV9zaGFy
ZWRfZHBsbChvbGRfZHBsbCwgY3J0YywgJnN0YXRlLT5iYXNlKTsKIAl9CiB9CiAKQEAgLTEzMDEx
LDcgKzEzMDEwLDcgQEAgc3RhdGljIGludCBpbnRlbF9tb2Rlc2V0X2NoZWNrcyhzdHJ1Y3QgZHJt
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCQkgICAgICBpbnRlbF9zdGF0ZS0+Y2RjbGsuYWN0dWFs
LnZvbHRhZ2VfbGV2ZWwpOwogCX0KIAotCWludGVsX21vZGVzZXRfY2xlYXJfcGxscyhzdGF0ZSk7
CisJaW50ZWxfbW9kZXNldF9jbGVhcl9wbGxzKGludGVsX3N0YXRlKTsKIAogCWlmIChJU19IQVNX
RUxMKGRldl9wcml2KSkKIAkJcmV0dXJuIGhhc3dlbGxfbW9kZV9zZXRfcGxhbmVzX3dvcmthcm91
bmQoc3RhdGUpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
