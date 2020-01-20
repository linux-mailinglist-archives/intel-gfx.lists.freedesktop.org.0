Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF015143104
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 18:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130026EAAE;
	Mon, 20 Jan 2020 17:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004466EAB0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 17:48:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 09:48:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="215295701"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 20 Jan 2020 09:48:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2020 19:48:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 19:47:22 +0200
Message-Id: <20200120174728.21095-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/17] drm/i915: Move intel_atomic_state_free()
 into intel_atomic.c
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
dmUgaW50ZWxfYXRvbWljX3N0YXRlX2ZyZWUoKSBuZXh0IHRvIGl0cyBjb3VudGVycGFydC4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyAgfCAx
MSArKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
aCAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDExIC0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5j
CmluZGV4IDEyNjlmNjNlYTAwNi4uMWMxMzQyM2Q0OTQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKQEAgLTQ5NSw2ICs0OTUsMTcgQEAgaW50ZWxfYXRv
bWljX3N0YXRlX2FsbG9jKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJcmV0dXJuICZzdGF0ZS0+
YmFzZTsKIH0KIAordm9pZCBpbnRlbF9hdG9taWNfc3RhdGVfZnJlZShzdHJ1Y3QgZHJtX2F0b21p
Y19zdGF0ZSAqX3N0YXRlKQoreworCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0g
dG9faW50ZWxfYXRvbWljX3N0YXRlKF9zdGF0ZSk7CisKKwlkcm1fYXRvbWljX3N0YXRlX2RlZmF1
bHRfcmVsZWFzZSgmc3RhdGUtPmJhc2UpOworCisJaTkxNV9zd19mZW5jZV9maW5pKCZzdGF0ZS0+
Y29tbWl0X3JlYWR5KTsKKworCWtmcmVlKHN0YXRlKTsKK30KKwogdm9pZCBpbnRlbF9hdG9taWNf
c3RhdGVfY2xlYXIoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnMpCiB7CiAJc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUocyk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaAppbmRleCA3NGM3NDlkYmZiNGYu
Ljg4MTMzZWVhMGExNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pYy5oCkBAIC00NSw2ICs0NSw3IEBAIHZvaWQgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywKIHZvaWQgaW50ZWxfY3J0Y19mcmVlX2h3X3N0YXRlKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfY3J0Y19jb3B5X2Nv
bG9yX2Jsb2JzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICppbnRlbF9hdG9taWNfc3RhdGVfYWxsb2Moc3RydWN0IGRybV9kZXZp
Y2UgKmRldik7Cit2b2lkIGludGVsX2F0b21pY19zdGF0ZV9mcmVlKHN0cnVjdCBkcm1fYXRvbWlj
X3N0YXRlICpzdGF0ZSk7CiB2b2lkIGludGVsX2F0b21pY19zdGF0ZV9jbGVhcihzdHJ1Y3QgZHJt
X2F0b21pY19zdGF0ZSAqc3RhdGUpOwogCiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDYzZWZiOGY5
YzY2OS4uM2I3MjU3NjRiZGNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwpAQCAtMTcxMTYsMTcgKzE3MTE2LDYgQEAgaW50ZWxfdXNlcl9mcmFtZWJ1
ZmZlcl9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlyZXR1cm4gZmI7CiB9CiAKLXN0
YXRpYyB2b2lkIGludGVsX2F0b21pY19zdGF0ZV9mcmVlKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRl
ICpzdGF0ZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICppbnRlbF9zdGF0ZSA9IHRv
X2ludGVsX2F0b21pY19zdGF0ZShzdGF0ZSk7Ci0KLQlkcm1fYXRvbWljX3N0YXRlX2RlZmF1bHRf
cmVsZWFzZShzdGF0ZSk7Ci0KLQlpOTE1X3N3X2ZlbmNlX2ZpbmkoJmludGVsX3N0YXRlLT5jb21t
aXRfcmVhZHkpOwotCi0Ja2ZyZWUoc3RhdGUpOwotfQotCiBzdGF0aWMgZW51bSBkcm1fbW9kZV9z
dGF0dXMKIGludGVsX21vZGVfdmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJIGNvbnN0
IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQotLSAKMi4yNC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
