Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA5D38035C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 07:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915246EE1A;
	Fri, 14 May 2021 05:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FFD86E0E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 05:25:45 +0000 (UTC)
IronPort-SDR: 6hVdPoErxzVjk/M00x/88QlK7uR2aomR62o2mdT+naCRMgYu/HKUQAyyVxhHloaBHc9uNVNmRl
 Pou+rJgD0PWw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="179714751"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="179714751"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 22:25:43 -0700
IronPort-SDR: p33mBlTgMfZwUFhABCJCN6l2MR9JH5dyfxGTUSr3aMgKM+0jNP5QuwJYmfkYbgkglkDi9vPcjl
 gaJdvjfHO2Dw==
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="626679111"
Received: from thoang1-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.1.122])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 22:25:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 May 2021 22:28:41 -0700
Message-Id: <20210514052843.9456-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514052843.9456-1-jose.souza@intel.com>
References: <20210514052843.9456-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Replace
 intel_dp_set_infoframes() disable calls by dig_port->set_infoframes()
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

Qm90aCBkbyB0aGUgc2FtZSB0aGluZyBhbmQgdGhpcyBjaGFuZ2UgaGVscCB0b3dhcmRzIHRoZSBn
b2FsIG9mIG51a2UKaW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoKSBjb21wbGV0ZWx5LgoKQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgfCA1ICsrLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgNSArKystLQogMiBmaWxl
cyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggNWJjNTUyOGYzMDkxLi5iYTJmOTg4ODE2
MzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMjc2Miw3
ICsyNzYyLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJCWNvbm5fc3RhdGUpOwogCiAJCS8qIEZJWE1FIHBy
ZWNvbXB1dGUgZXZlcnl0aGluZyBwcm9wZXJseSAqLwotCQkvKiBGSVhNRSBob3cgZG8gd2UgdHVy
biBpbmZvZnJhbWVzIG9mZiBhZ2Fpbj8gKi8KIAkJaWYgKGRpZ19wb3J0LT5sc3Bjb24uYWN0aXZl
ICYmIGRpZ19wb3J0LT5kcC5oYXNfaGRtaV9zaW5rKQogCQkJZGlnX3BvcnQtPnNldF9pbmZvZnJh
bWVzKGVuY29kZXIsIHRydWUsIGNydGNfc3RhdGUsCiAJCQkJCQkgY29ubl9zdGF0ZSk7CkBAIC0y
ODExLDggKzI4MTAsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWVudW0gcGh5IHBoeSA9IGludGVsX3Bv
cnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKIAogCWlmICghaXNfbXN0KQotCQlp
bnRlbF9kcF9zZXRfaW5mb2ZyYW1lcyhlbmNvZGVyLCBmYWxzZSwgb2xkX2NydGNfc3RhdGUsCi0J
CQkJCW9sZF9jb25uX3N0YXRlKTsKKwkJZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVzKGVuY29kZXIs
IGZhbHNlLCBvbGRfY3J0Y19zdGF0ZSwKKwkJCQkJIG9sZF9jb25uX3N0YXRlKTsKIAogCS8qCiAJ
ICogUG93ZXIgZG93biBzaW5rIGJlZm9yZSBkaXNhYmxpbmcgdGhlIHBvcnQsIG90aGVyd2lzZSB3
ZSBlbmQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4
IDFlYjU0ZjhlZDUxYS4uMjg2NjMwMzI3OWVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTQzNSw4ICs0MzUsOSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9tc3RfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CSAqIHRoZSB0cmFuc2NvZGVyIGNsb2NrIHNlbGVjdCBpcyBzZXQgdG8gbm9uZS4KIAkgKi8KIAlp
ZiAobGFzdF9tc3Rfc3RyZWFtKQotCQlpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcygmZGlnX3BvcnQt
PmJhc2UsIGZhbHNlLCBvbGRfY3J0Y19zdGF0ZSwKLQkJCQkJb2xkX2Nvbm5fc3RhdGUpOworCQlk
aWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoJmRpZ19wb3J0LT5iYXNlLCBmYWxzZSwgb2xkX2NydGNf
c3RhdGUsCisJCQkJCSBvbGRfY29ubl9zdGF0ZSk7CisKIAkvKgogCSAqIEZyb20gVEdMIHNwZWM6
ICJJZiBtdWx0aS1zdHJlYW0gc2xhdmUgdHJhbnNjb2RlcjogQ29uZmlndXJlCiAJICogVHJhbnNj
b2RlciBDbG9jayBTZWxlY3QgdG8gZGlyZWN0IG5vIGNsb2NrIHRvIHRoZSB0cmFuc2NvZGVyIgot
LSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
