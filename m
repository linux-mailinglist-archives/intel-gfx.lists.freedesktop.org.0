Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4855C0D7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 18:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10ED089B9A;
	Mon,  1 Jul 2019 16:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 279FD89B9F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 16:05:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 09:05:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="154129865"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 01 Jul 2019 09:05:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Jul 2019 19:05:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 19:05:46 +0300
Message-Id: <20190701160550.24205-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701160550.24205-1-ville.syrjala@linux.intel.com>
References: <20190701160550.24205-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Simplify
 modeset_get_crtc_power_domains() arguments
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
c3MganVzdCB0aGUgY3J0YyBzdGF0ZSB0byBtb2Rlc2V0X2dldF9jcnRjX3Bvd2VyX2RvbWFpbnMo
KS4gV2UKY2FuIGdldCB0aGUgY3J0YyBmcm9tIHRoZXJlaW4uCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjEgKysrKysrKysrKy0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDkx
OWY1YWM4NDRjOC4uMTA3NGZkZTQ3NDEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjc0MSwxMSArNjc0MSwxMCBAQCBpbnRlbF9hdXhfcG93
ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCX0KIH0KIAot
c3RhdGljIHU2NCBnZXRfY3J0Y19wb3dlcl9kb21haW5zKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAotCQkJCSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCitzdGF0aWMgdTY0
IGdldF9jcnRjX3Bvd2VyX2RvbWFpbnMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCiB7Ci0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2OwotCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKIAlzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXI7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRj
LT5waXBlOwogCXU2NCBtYXNrOwpAQCAtNjc2MCw3ICs2NzU5LDggQEAgc3RhdGljIHU2NCBnZXRf
Y3J0Y19wb3dlcl9kb21haW5zKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCSAgICBjcnRjX3N0
YXRlLT5wY2hfcGZpdC5mb3JjZV90aHJ1KQogCQltYXNrIHw9IEJJVF9VTEwoUE9XRVJfRE9NQUlO
X1BJUEVfUEFORUxfRklUVEVSKHBpcGUpKTsKIAotCWRybV9mb3JfZWFjaF9lbmNvZGVyX21hc2so
ZW5jb2RlciwgZGV2LCBjcnRjX3N0YXRlLT5iYXNlLmVuY29kZXJfbWFzaykgeworCWRybV9mb3Jf
ZWFjaF9lbmNvZGVyX21hc2soZW5jb2RlciwgJmRldl9wcml2LT5kcm0sCisJCQkJICBjcnRjX3N0
YXRlLT5iYXNlLmVuY29kZXJfbWFzaykgewogCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxf
ZW5jb2RlciA9IHRvX2ludGVsX2VuY29kZXIoZW5jb2Rlcik7CiAKIAkJbWFzayB8PSBCSVRfVUxM
KGludGVsX2VuY29kZXItPnBvd2VyX2RvbWFpbik7CkBAIC02Nzc2LDE2ICs2Nzc2LDE2IEBAIHN0
YXRpYyB1NjQgZ2V0X2NydGNfcG93ZXJfZG9tYWlucyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywK
IH0KIAogc3RhdGljIHU2NAotbW9kZXNldF9nZXRfY3J0Y19wb3dlcl9kb21haW5zKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAotCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQorbW9kZXNldF9nZXRfY3J0Y19wb3dlcl9kb21haW5zKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogeworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCWVudW0gaW50ZWxfZGlzcGxh
eV9wb3dlcl9kb21haW4gZG9tYWluOwogCXU2NCBkb21haW5zLCBuZXdfZG9tYWlucywgb2xkX2Rv
bWFpbnM7CiAKIAlvbGRfZG9tYWlucyA9IGNydGMtPmVuYWJsZWRfcG93ZXJfZG9tYWluczsKIAlj
cnRjLT5lbmFibGVkX3Bvd2VyX2RvbWFpbnMgPSBuZXdfZG9tYWlucyA9Ci0JCWdldF9jcnRjX3Bv
d2VyX2RvbWFpbnMoY3J0YywgY3J0Y19zdGF0ZSk7CisJCWdldF9jcnRjX3Bvd2VyX2RvbWFpbnMo
Y3J0Y19zdGF0ZSk7CiAKIAlkb21haW5zID0gbmV3X2RvbWFpbnMgJiB+b2xkX2RvbWFpbnM7CiAK
QEAgLTEzODc2LDggKzEzODc2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90
YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQkgICAgbmV3X2NydGNfc3Rh
dGUtPnVwZGF0ZV9waXBlKSB7CiAKIAkJCXB1dF9kb21haW5zW2NydGMtPnBpcGVdID0KLQkJCQlt
b2Rlc2V0X2dldF9jcnRjX3Bvd2VyX2RvbWFpbnMoY3J0YywKLQkJCQkJbmV3X2NydGNfc3RhdGUp
OworCQkJCW1vZGVzZXRfZ2V0X2NydGNfcG93ZXJfZG9tYWlucyhuZXdfY3J0Y19zdGF0ZSk7CiAJ
CX0KIAogCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKQpAQCAtMTY5NzEsNyAr
MTY5NzAsNyBAQCBpbnRlbF9tb2Rlc2V0X3NldHVwX2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiAJCXU2NCBwdXRfZG9tYWluczsKIAogCQljcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0
Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKLQkJcHV0X2RvbWFpbnMgPSBtb2Rlc2V0X2dldF9j
cnRjX3Bvd2VyX2RvbWFpbnMoY3J0YywgY3J0Y19zdGF0ZSk7CisJCXB1dF9kb21haW5zID0gbW9k
ZXNldF9nZXRfY3J0Y19wb3dlcl9kb21haW5zKGNydGNfc3RhdGUpOwogCQlpZiAoV0FSTl9PTihw
dXRfZG9tYWlucykpCiAJCQltb2Rlc2V0X3B1dF9wb3dlcl9kb21haW5zKGRldl9wcml2LCBwdXRf
ZG9tYWlucyk7CiAJfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
