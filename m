Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E452245AD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1516E233;
	Fri, 17 Jul 2020 21:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9578E6E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:25 +0000 (UTC)
IronPort-SDR: XMTOBSlKFze5n6JPr6YrQiavGgHpyd17YIAlRDDTl+rQr2dSI5tNrtb024ksV09pU16LpVgvPm
 HeX+VvuVaz7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="147652422"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="147652422"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:25 -0700
IronPort-SDR: R9lbweByiSRI8XlrC+p4GB1klBDe6FmtAVSvwm8kmJItO3pvafpPcMX0A/YEHU4iefnjDkH3RP
 goxaIQQk57wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="269624839"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 17 Jul 2020 14:14:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:38 +0300
Message-Id: <20200717211345.26851-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/20] drm/i915: Add gamma/degamm readout for
 ivb/hsw
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IG5vdyBoYXZlIGFsbCB0aGUgY29kZSBuZWNlc3NhcnkgZm9yIGdhbW1hL2RlZ2FtbWEgcmVhZG91
dCBvbgppdmIvaHN3LiBQbHVnIGl0IGFsbCBpbi4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggOWYwMWZiMzE2ZWZhLi44ODZmM2YwZDg3M2EgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE5OTksNiAr
MTk5OSwzNyBAQCBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICppdmJfcmVhZF9sdXRf
MTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJcmV0dXJuIGJsb2I7CiB9CiAKK3N0YXRpYyB2
b2lkIGl2Yl9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7
CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVh
cGkuY3J0Yyk7CisJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoqYmxvYiA9CisJCWNydGNfc3Rh
dGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSA/CisJCSZjcnRjX3N0YXRl
LT5ody5nYW1tYV9sdXQgOiAmY3J0Y19zdGF0ZS0+aHcuZGVnYW1tYV9sdXQ7CisKKwlpZiAoIWNy
dGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJuOworCisJc3dpdGNoIChjcnRjX3N0YXRl
LT5nYW1tYV9tb2RlKSB7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKKwkJKmJsb2IgPSBp
bGtfcmVhZF9sdXRfOChjcnRjKTsKKwkJYnJlYWs7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfU1BM
SVQ6CisJCWNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0ID0KKwkJCWl2Yl9yZWFkX2x1dF8xMChj
cnRjLCBQQUxfUFJFQ19TUExJVF9NT0RFIHwKKwkJCQkJUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkp
OworCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPQorCQkJaXZiX3JlYWRfbHV0XzEwKGNydGMs
IFBBTF9QUkVDX1NQTElUX01PREUgfAorCQkJCQlQQUxfUFJFQ19JTkRFWF9WQUxVRSg1MTIpKTsK
KwkJYnJlYWs7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6CisJCSpibG9iID0gaXZiX3Jl
YWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKKwkJYnJlYWs7CisJZGVm
YXVsdDoKKwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOworCQlicmVhazsK
Kwl9Cit9CisKIC8qIE9uIEJEVysgdGhlIGluZGV4IGF1dG8gaW5jcmVtZW50IG1vZGUgYWN0dWFs
bHkgd29ya3MgKi8KIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJkd19yZWFkX2x1
dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJCQkJCSB1MzIgcHJlY19pbmRleCkKQEAg
LTIyMzYsNiArMjI2Nyw3IEBAIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKIAkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGJkd19yZWFkX2x1dHM7
CiAJCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3KSB7CiAJCQlkZXZfcHJpdi0+
ZGlzcGxheS5sb2FkX2x1dHMgPSBpdmJfbG9hZF9sdXRzOworCQkJZGV2X3ByaXYtPmRpc3BsYXku
cmVhZF9sdXRzID0gaXZiX3JlYWRfbHV0czsKIAkJfSBlbHNlIHsKIAkJCWRldl9wcml2LT5kaXNw
bGF5LmxvYWRfbHV0cyA9IGlsa19sb2FkX2x1dHM7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFk
X2x1dHMgPSBpbGtfcmVhZF9sdXRzOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
