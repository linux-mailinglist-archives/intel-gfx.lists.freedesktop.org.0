Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC681A0425
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 03:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BBC89BF4;
	Tue,  7 Apr 2020 01:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE1689BF4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 01:10:22 +0000 (UTC)
IronPort-SDR: pi8QNN06IW5671nnhcTFyufG58uuEvktqyIQOiFjBMKjlKlN4kn3S91Rl0yoFVd/5lsZEX06yn
 y3kOzYjcDQkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 18:10:21 -0700
IronPort-SDR: RZghl4xmcqIzJ0b3urTpAU1AupAqC3+qQTBTCXSA4ypGN7B18wRNfefAogg2Qo0quFG4wKhtZq
 6DeThk+4AX4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254295634"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2020 18:10:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 18:11:57 -0700
Message-Id: <20200407011157.362092-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407011157.362092-1-jose.souza@intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 8/8] drm/i915/tc: Do not warn when aux power
 well of static TC ports timeout
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

VGhpcyBpcyBhIGV4cGVjdGVkIHRpbWVvdXQgb2Ygc3RhdGljIFRDIHBvcnRzIG5vdCBjb25uZWNl
dGVkLCBzbwpub3QgdGhyb3dpbmcgd2FybmluZ3MgdGhhdCB3b3VsZCB0YWludCBDSS4KClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8IDM3ICsr
KysrKysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jCmluZGV4IDVkMzM5MjlmMzcyNC4uNTBhZjU4NTQ2NThlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpA
QCAtMjg0LDYgKzI4NCwyMSBAQCBzdGF0aWMgdm9pZCBoc3dfcG93ZXJfd2VsbF9wcmVfZGlzYWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWdlbjhfaXJxX3Bvd2VyX3dl
bGxfcHJlX2Rpc2FibGUoZGV2X3ByaXYsIGlycV9waXBlX21hc2spOwogfQogCisjZGVmaW5lIElD
TF9BVVhfUFdfVE9fQ0gocHdfaWR4KQlcCisJKChwd19pZHgpIC0gSUNMX1BXX0NUTF9JRFhfQVVY
X0EgKyBBVVhfQ0hfQSkKKworI2RlZmluZSBJQ0xfVEJUX0FVWF9QV19UT19DSChwd19pZHgpCVwK
KwkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9BVVhfVEJUMSArIEFVWF9DSF9DKQorCitzdGF0
aWMgZW51bSBhdXhfY2ggaWNsX3RjX3BoeV9hdXhfY2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAorCQkJCSAgICAgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkK
K3sKKwlpbnQgcHdfaWR4ID0gcG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeDsKKworCXJldHVybiBw
b3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0ID8gSUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdf
aWR4KSA6CisJCQkJCQkgSUNMX0FVWF9QV19UT19DSChwd19pZHgpOworfQorCiBzdGF0aWMgc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqCiBhdXhfY2hfdG9fZGlnaXRhbF9wb3J0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJICAgICAgIGVudW0gYXV4X2NoIGF1eF9jaCkK
QEAgLTMyMCwxMSArMzM1LDE2IEBAIHN0YXRpYyB2b2lkIGhzd193YWl0X2Zvcl9wb3dlcl93ZWxs
X2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJLyogVGltZW91dCBm
b3IgUFcxOjEwIHVzLCBBVVg6bm90IHNwZWNpZmllZCwgb3RoZXIgUFdzOjIwIHVzLiAqLwogCWlm
IChpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3ByaXYsIHJlZ3MtPmRyaXZlciwKIAkJCQkgIEhT
V19QV1JfV0VMTF9DVExfU1RBVEUocHdfaWR4KSwgMSkpIHsKKwkJZW51bSBhdXhfY2ggYXV4X2No
ID0gaWNsX3RjX3BoeV9hdXhfY2goZGV2X3ByaXYsIHBvd2VyX3dlbGwpOworCQlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGF1eF9jaF90b19kaWdpdGFsX3BvcnQoZGV2X3By
aXYsIGF1eF9jaCk7CisKIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICIlcyBwb3dlciB3
ZWxsIGVuYWJsZSB0aW1lb3V0XG4iLAogCQkJICAgIHBvd2VyX3dlbGwtPmRlc2MtPm5hbWUpOwog
CiAJCS8qIEFuIEFVWCB0aW1lb3V0IGlzIGV4cGVjdGVkIGlmIHRoZSBUQlQgRFAgdHVubmVsIGlz
IGRvd24uICovCi0JCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcG93ZXJfd2VsbC0+ZGVz
Yy0+aHN3LmlzX3RjX3RidCk7CisJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcG93ZXJf
d2VsbC0+ZGVzYy0+aHN3LmlzX3RjX3RidCAmJgorCQkJICAgICEoSU5URUxfR0VOKGRldl9wcml2
KSA9PSAxMSAmJiBkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQpKTsKKwogCX0KIH0KIApAQCAtNTIw
LDIxICs1NDAsNiBAQCBpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX2Rpc2FibGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWhzd193YWl0X2Zvcl9wb3dlcl93ZWxsX2Rp
c2FibGUoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOwogfQogCi0jZGVmaW5lIElDTF9BVVhfUFdfVE9f
Q0gocHdfaWR4KQlcCi0JKChwd19pZHgpIC0gSUNMX1BXX0NUTF9JRFhfQVVYX0EgKyBBVVhfQ0hf
QSkKLQotI2RlZmluZSBJQ0xfVEJUX0FVWF9QV19UT19DSChwd19pZHgpCVwKLQkoKHB3X2lkeCkg
LSBJQ0xfUFdfQ1RMX0lEWF9BVVhfVEJUMSArIEFVWF9DSF9DKQotCi1zdGF0aWMgZW51bSBhdXhf
Y2ggaWNsX3RjX3BoeV9hdXhfY2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAot
CQkJCSAgICAgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkKLXsKLQlpbnQgcHdf
aWR4ID0gcG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeDsKLQotCXJldHVybiBwb3dlcl93ZWxsLT5k
ZXNjLT5oc3cuaXNfdGNfdGJ0ID8gSUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdfaWR4KSA6Ci0JCQkJ
CQkgSUNMX0FVWF9QV19UT19DSChwd19pZHgpOwotfQotCiAjaWYgSVNfRU5BQkxFRChDT05GSUdf
RFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTSkKIAogc3RhdGljIHU2NCBhc3luY19wdXRfZG9tYWlu
c19tYXNrKHN0cnVjdCBpOTE1X3Bvd2VyX2RvbWFpbnMgKnBvd2VyX2RvbWFpbnMpOwotLSAKMi4y
Ni4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
