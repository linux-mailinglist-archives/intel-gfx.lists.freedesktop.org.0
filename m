Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 034E65F0E2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 03:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE936E231;
	Thu,  4 Jul 2019 01:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F286E231
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 01:07:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 18:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,449,1557212400"; d="scan'208";a="166133903"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2019 18:07:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 18:06:58 -0700
Message-Id: <20190704010658.32170-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190703233736.5816-3-matthew.d.roper@intel.com>
References: <20190703233736.5816-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/5] drm/i915/gen11: Program
 DPCLKA_CFGCR0_ICL according to PHY
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

QWx0aG91Z2ggdGhlIHJlZ2lzdGVyIG5hbWUgaW1wbGllcyB0aGF0IGl0IG9wZXJhdGVzIG9uIERE
SSdzLApEUENMS0FfQ0ZHQ1IwX0lDTCBhY3R1YWxseSBuZWVkcyB0byBiZSBwcm9ncmFtbWVkIGFj
Y29yZGluZyB0byB0aGUgUEhZCnRoYXQncyBpbiB1c2UuICBJLmUuLCB3aGVuIHVzaW5nIEVITCdz
IERESS1EIG9uIGNvbWJvIFBIWSBBLCB0aGUgYml0cwpkZXNjcmliZWQgYXMgInBvcnQgQSIgaW4g
dGhlIGJzcGVjIGFyZSB3aGF0IHdlIG5lZWQgdG8gc2V0LiAgVGhlIGJzcGVjCmNsYXJpZmllczoK
CiAgICAgICAgIltGb3IgRUhMXSBERElEIGNsb2NrIHRpZWQgdG8gRERJQSBjbG9jaywgc28gRFBD
TEtBX0NGR0NSMCBERElBCiAgICAgICAgQ2xvY2sgU2VsZWN0IGNob29zZXMgdGhlIFBMTCBmb3Ig
Ym90aCBERElBIGFuZCBERElEIGFuZCBkcml2ZXMKICAgICAgICBwb3J0IEEgaW4gYWxsIGNhc2Vz
LiIKCkFsc28sIHNpbmNlIHRoZSBDTkwgRFBDTEtBX0NGR0NSMCBiaXQgZGVmaW5lcyBhcmUgc3Rp
bGwgcG9ydC1iYXNlZCwgd2UKY3JlYXRlIHNlcGFyYXRlIElDTC1zcGVjaWZpYyBkZWZpbmVzIHRo
YXQgYWNjZXB0IHRoZSBQSFkgcmF0aGVyIHRoYW4KdHJ5aW5nIHRvIHNoYXJlIHRoZSBzYW1lIGJp
dCBkZWZpbml0aW9ucyBiZXR3ZWVuIENOTCBhbmQgSUNMLgoKdjU6IE1ha2UgaWNsX2RwY2xrYV9j
ZmdjcjBfY2xrX29mZigpIHRha2UgcGh5IHJhdGhlciB0aGFuIHBvcnQuICBXaGVuCiAgICBzcGxp
dHRpbmcgdGhlIG9yaWdpbmFsIHBhdGNoIHRoZSBodW5rIHRvIGhhbmRsZSB0aGlzIHdvdW5kIHVw
IHRvbwogICAgbGF0ZSBpbiB0aGUgc2VyaWVzLiAgKFNwYXJzZSkKCkJzcGVjOiAzMzE0OApDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgICB8IDE3ICsrKysrKy0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDQ3ICsrKysrKysrKysrKysrKy0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDEyICsrKyst
LQogMyBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IGI4NjczZGViZjkzMi4uZjU3
NGFmNjI4ODhjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtNTYw
LDExICs1NjAsMTMgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2dhdGVfY2xvY2tzKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQogCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVu
Y190b19pbnRlbF9kc2koJmVuY29kZXItPmJhc2UpOwogCXUzMiB0bXA7CiAJZW51bSBwb3J0IHBv
cnQ7CisJZW51bSBwaHkgcGh5OwogCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGxfbG9jayk7
CiAJdG1wID0gSTkxNV9SRUFEKERQQ0xLQV9DRkdDUjBfSUNMKTsKIAlmb3JfZWFjaF9kc2lfcG9y
dChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7Ci0JCXRtcCB8PSBEUENMS0FfQ0ZHQ1IwX0RESV9D
TEtfT0ZGKHBvcnQpOworCQlwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7
CisJCXRtcCB8PSBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOwogCX0KIAogCUk5
MTVfV1JJVEUoRFBDTEtBX0NGR0NSMF9JQ0wsIHRtcCk7CkBAIC01NzcsMTEgKzU3OSwxMyBAQCBz
dGF0aWMgdm9pZCBnZW4xMV9kc2lfdW5nYXRlX2Nsb2NrcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikKIAlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNp
KCZlbmNvZGVyLT5iYXNlKTsKIAl1MzIgdG1wOwogCWVudW0gcG9ydCBwb3J0OworCWVudW0gcGh5
IHBoeTsKIAogCW11dGV4X2xvY2soJmRldl9wcml2LT5kcGxsX2xvY2spOwogCXRtcCA9IEk5MTVf
UkVBRChEUENMS0FfQ0ZHQ1IwX0lDTCk7CiAJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxf
ZHNpLT5wb3J0cykgewotCQl0bXAgJj0gfkRQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCk7
CisJCXBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKKwkJdG1wICY9IH5J
Q0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOwogCX0KIAogCUk5MTVfV1JJVEUoRFBD
TEtBX0NGR0NSMF9JQ0wsIHRtcCk7CkBAIC01OTUsMTkgKzU5OSwyMiBAQCBzdGF0aWMgdm9pZCBn
ZW4xMV9kc2lfbWFwX3BsbChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1Y3Qg
aW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5iYXNlKTsK
IAlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxs
OwogCWVudW0gcG9ydCBwb3J0OworCWVudW0gcGh5IHBoeTsKIAl1MzIgdmFsOwogCiAJbXV0ZXhf
bG9jaygmZGV2X3ByaXYtPmRwbGxfbG9jayk7CiAKIAl2YWwgPSBJOTE1X1JFQUQoRFBDTEtBX0NG
R0NSMF9JQ0wpOwogCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsK
LQkJdmFsICY9IH5EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socG9ydCk7Ci0JCXZhbCB8
PSBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBsbC0+aW5mby0+aWQsIHBvcnQpOworCQlwaHkg
PSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7CisJCXZhbCAmPSB+SUNMX0RQQ0xL
QV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhwaHkpOworCQl2YWwgfD0gSUNMX0RQQ0xLQV9DRkdD
UjBfRERJX0NMS19TRUwocGxsLT5pbmZvLT5pZCwgcGh5KTsKIAl9CiAJSTkxNV9XUklURShEUENM
S0FfQ0ZHQ1IwX0lDTCwgdmFsKTsKIAogCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2Rz
aS0+cG9ydHMpIHsKLQkJdmFsICY9IH5EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpOwor
CQlwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7CisJCXZhbCAmPSB+SUNM
X0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KTsKIAl9CiAJSTkxNV9XUklURShEUENMS0Ff
Q0ZHQ1IwX0lDTCwgdmFsKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKaW5kZXggYTQxNzI1OTVjOGQ4Li4wNjVmZWI5MTdkYjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMjcyOSwxMiArMjcyOSwxMyBAQCB1MzIgZGRpX3Np
Z25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAogc3RhdGljIGlubGluZQog
dTMyIGljbF9kcGNsa2FfY2ZnY3IwX2Nsa19vZmYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAotCQkJICAgICAgZW51bSBwb3J0IHBvcnQpCisJCQkgICAgICBlbnVtIHBoeSBwaHkp
CiB7Ci0JaWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpKSB7Ci0JCXJl
dHVybiBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwb3J0KTsKLQl9IGVsc2UgaWYgKGlu
dGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpKSB7Ci0JCWVudW0gdGNfcG9ydCB0Y19wb3J0
ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCk7CisJaWYgKGludGVsX3BoeV9pc19j
b21ibyhkZXZfcHJpdiwgcGh5KSkgeworCQlyZXR1cm4gSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NM
S19PRkYocGh5KTsKKwl9IGVsc2UgaWYgKGludGVsX3BoeV9pc190YyhkZXZfcHJpdiwgcGh5KSkg
eworCQllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsCisJ
CQkJCQkJKGVudW0gcG9ydClwaHkpOwogCiAJCXJldHVybiBJQ0xfRFBDTEtBX0NGR0NSMF9UQ19D
TEtfT0ZGKHRjX3BvcnQpOwogCX0KQEAgLTI3NDcsMjIgKzI3NDgsMzIgQEAgc3RhdGljIHZvaWQg
aWNsX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogewog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFz
ZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsID0gY3J0Y19zdGF0ZS0+c2hh
cmVkX2RwbGw7Ci0JZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0OworCWVudW0gcGh5IHBo
eSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKIAl1MzIgdmFs
OwogCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGxfbG9jayk7CiAKIAl2YWwgPSBJOTE1X1JF
QUQoRFBDTEtBX0NGR0NSMF9JQ0wpOwotCVdBUk5fT04oKHZhbCAmIGljbF9kcGNsa2FfY2ZnY3Iw
X2Nsa19vZmYoZGV2X3ByaXYsIHBvcnQpKSA9PSAwKTsKKwlXQVJOX09OKCh2YWwgJiBpY2xfZHBj
bGthX2NmZ2NyMF9jbGtfb2ZmKGRldl9wcml2LCBwaHkpKSA9PSAwKTsKIAotCWlmIChpbnRlbF9w
b3J0X2lzX2NvbWJvcGh5KGRldl9wcml2LCBwb3J0KSkgewotCQl2YWwgJj0gfkRQQ0xLQV9DRkdD
UjBfRERJX0NMS19TRUxfTUFTSyhwb3J0KTsKLQkJdmFsIHw9IERQQ0xLQV9DRkdDUjBfRERJX0NM
S19TRUwocGxsLT5pbmZvLT5pZCwgcG9ydCk7CisJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZf
cHJpdiwgcGh5KSkgeworCQkvKgorCQkgKiBFdmVuIHRob3VnaCB0aGlzIHJlZ2lzdGVyIHJlZmVy
ZW5jZXMgRERJcywgbm90ZSB0aGF0IHdlCisJCSAqIHdhbnQgdG8gcGFzcyB0aGUgUEhZIHJhdGhl
ciB0aGFuIHRoZSBwb3J0IChEREkpLiAgRm9yCisJCSAqIElDTCwgcG9ydD1waHkgaW4gYWxsIGNh
c2VzIHNvIGl0IGRvZXNuJ3QgbWF0dGVyLCBidXQgZm9yCisJCSAqIEVITCB0aGUgYnNwZWMgbm90
ZXMgdGhlIGZvbGxvd2luZzoKKwkJICoKKwkJICogICAiRERJRCBjbG9jayB0aWVkIHRvIERESUEg
Y2xvY2ssIHNvIERQQ0xLQV9DRkdDUjAgRERJQQorCQkgKiAgIENsb2NrIFNlbGVjdCBjaG9vc2Vz
IHRoZSBQTEwgZm9yIGJvdGggRERJQSBhbmQgRERJRCBhbmQKKwkJICogICBkcml2ZXMgcG9ydCBB
IGluIGFsbCBjYXNlcy4iCisJCSAqLworCQl2YWwgJj0gfklDTF9EUENMS0FfQ0ZHQ1IwX0RESV9D
TEtfU0VMX01BU0socGh5KTsKKwkJdmFsIHw9IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VM
KHBsbC0+aW5mby0+aWQsIHBoeSk7CiAJCUk5MTVfV1JJVEUoRFBDTEtBX0NGR0NSMF9JQ0wsIHZh
bCk7CiAJCVBPU1RJTkdfUkVBRChEUENMS0FfQ0ZHQ1IwX0lDTCk7CiAJfQogCi0JdmFsICY9IH5p
Y2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKGRldl9wcml2LCBwb3J0KTsKKwl2YWwgJj0gfmljbF9k
cGNsa2FfY2ZnY3IwX2Nsa19vZmYoZGV2X3ByaXYsIHBoeSk7CiAJSTkxNV9XUklURShEUENMS0Ff
Q0ZHQ1IwX0lDTCwgdmFsKTsKIAogCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRwbGxfbG9jayk7
CkBAIC0yNzcxLDEzICsyNzgyLDEzIEBAIHN0YXRpYyB2b2lkIGljbF9tYXBfcGxsc190b19wb3J0
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIHN0YXRpYyB2b2lkIGljbF91bm1hcF9w
bGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogewogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwot
CWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9w
b3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7CiAJdTMyIHZhbDsKIAogCW11dGV4
X2xvY2soJmRldl9wcml2LT5kcGxsX2xvY2spOwogCiAJdmFsID0gSTkxNV9SRUFEKERQQ0xLQV9D
RkdDUjBfSUNMKTsKLQl2YWwgfD0gaWNsX2RwY2xrYV9jZmdjcjBfY2xrX29mZihkZXZfcHJpdiwg
cG9ydCk7CisJdmFsIHw9IGljbF9kcGNsa2FfY2ZnY3IwX2Nsa19vZmYoZGV2X3ByaXYsIHBoeSk7
CiAJSTkxNV9XUklURShEUENMS0FfQ0ZHQ1IwX0lDTCwgdmFsKTsKIAogCW11dGV4X3VubG9jaygm
ZGV2X3ByaXYtPmRwbGxfbG9jayk7CkBAIC0yODM4LDkgKzI4NDksMTEgQEAgdm9pZCBpY2xfc2Fu
aXRpemVfZW5jb2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikK
IAogCXZhbCA9IEk5MTVfUkVBRChEUENMS0FfQ0ZHQ1IwX0lDTCk7CiAJZm9yX2VhY2hfcG9ydF9t
YXNrZWQocG9ydCwgcG9ydF9tYXNrKSB7CisJCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9f
cGh5KGRldl9wcml2LCBwb3J0KTsKKwogCQlib29sIGRkaV9jbGtfdW5nYXRlZCA9ICEodmFsICYK
IAkJCQkJIGljbF9kcGNsa2FfY2ZnY3IwX2Nsa19vZmYoZGV2X3ByaXYsCi0JCQkJCQkJCSAgIHBv
cnQpKTsKKwkJCQkJCQkJICAgcGh5KSk7CiAKIAkJaWYgKGRkaV9jbGtfbmVlZGVkID09IGRkaV9j
bGtfdW5nYXRlZCkKIAkJCWNvbnRpbnVlOwpAQCAtMjg1Miw5ICsyODY1LDkgQEAgdm9pZCBpY2xf
c2FuaXRpemVfZW5jb2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
cikKIAkJaWYgKFdBUk5fT04oZGRpX2Nsa19uZWVkZWQpKQogCQkJY29udGludWU7CiAKLQkJRFJN
X05PVEUoIlBvcnQgJWMgaXMgZGlzYWJsZWQvaW4gRFNJIG1vZGUgd2l0aCBhbiB1bmdhdGVkIERE
SSBjbG9jaywgZ2F0ZSBpdFxuIiwKLQkJCSBwb3J0X25hbWUocG9ydCkpOwotCQl2YWwgfD0gaWNs
X2RwY2xrYV9jZmdjcjBfY2xrX29mZihkZXZfcHJpdiwgcG9ydCk7CisJCURSTV9OT1RFKCJQSFkg
JWMgaXMgZGlzYWJsZWQvaW4gRFNJIG1vZGUgd2l0aCBhbiB1bmdhdGVkIERESSBjbG9jaywgZ2F0
ZSBpdFxuIiwKKwkJCSBwaHlfbmFtZShwb3J0KSk7CisJCXZhbCB8PSBpY2xfZHBjbGthX2NmZ2Ny
MF9jbGtfb2ZmKGRldl9wcml2LCBwaHkpOwogCQlJOTE1X1dSSVRFKERQQ0xLQV9DRkdDUjBfSUNM
LCB2YWwpOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGM4MTRjYzFiM2FlNS4u
YzllMmUwOWI2ZjAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTk2ODAsMTcgKzk2ODAs
MjEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAgKiBDTkwgQ2xvY2tzCiAgKi8KICNkZWZpbmUg
RFBDTEtBX0NGR0NSMAkJCQlfTU1JTygweDZDMjAwKQotI2RlZmluZSBEUENMS0FfQ0ZHQ1IwX0lD
TAkJCV9NTUlPKDB4MTY0MjgwKQogI2RlZmluZSAgRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihw
b3J0KQkoMSA8PCAoKHBvcnQpID09ICBQT1JUX0YgPyAyMyA6IFwKIAkJCQkJCSAgICAgIChwb3J0
KSArIDEwKSkKLSNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpICAg
KDEgPDwgKChwb3J0KSArIDEwKSkKLSNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1IwX1RDX0NMS19P
RkYodGNfcG9ydCkgKDEgPDwgKCh0Y19wb3J0KSA9PSBQT1JUX1RDNCA/IFwKLQkJCQkJCSAgICAg
IDIxIDogKHRjX3BvcnQpICsgMTIpKQogI2RlZmluZSAgRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NF
TF9TSElGVChwb3J0KQkoKHBvcnQpID09IFBPUlRfRiA/IDIxIDogXAogCQkJCQkJKHBvcnQpICog
MikKICNkZWZpbmUgIERQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhwb3J0KQkoMyA8PCBE
UENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBvcnQpKQogI2RlZmluZSAgRFBDTEtBX0NG
R0NSMF9ERElfQ0xLX1NFTChwbGwsIHBvcnQpCSgocGxsKSA8PCBEUENMS0FfQ0ZHQ1IwX0RESV9D
TEtfU0VMX1NISUZUKHBvcnQpKQogCisjZGVmaW5lIERQQ0xLQV9DRkdDUjBfSUNMCQkJX01NSU8o
MHgxNjQyODApCisjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpCSgx
IDw8IF9QSUNLKHBoeSwgMTAsIDExLCAyNCkpCisjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9U
Q19DTEtfT0ZGKHRjX3BvcnQpICgxIDw8ICgodGNfcG9ydCkgPT0gUE9SVF9UQzQgPyBcCisJCQkJ
CQkgICAgICAyMSA6ICh0Y19wb3J0KSArIDEyKSkKKyNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1Iw
X0RESV9DTEtfU0VMX1NISUZUKHBoeSkJKChwaHkpICogMikKKyNkZWZpbmUgIElDTF9EUENMS0Ff
Q0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KQkoMyA8PCBJQ0xfRFBDTEtBX0NGR0NSMF9ERElf
Q0xLX1NFTF9TSElGVChwaHkpKQorI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19T
RUwocGxsLCBwaHkpCSgocGxsKSA8PCBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElG
VChwaHkpKQorCiAvKiBDTkwgUExMICovCiAjZGVmaW5lIERQTEwwX0VOQUJMRQkJMHg0NjAxMAog
I2RlZmluZSBEUExMMV9FTkFCTEUJCTB4NDYwMTQKLS0gCjIuMTcuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
