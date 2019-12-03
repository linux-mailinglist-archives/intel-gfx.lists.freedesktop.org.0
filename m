Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A07D8110655
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 22:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9416E043;
	Tue,  3 Dec 2019 21:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38176E043
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 21:13:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 13:13:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; d="scan'208";a="410997078"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.67])
 by fmsmga005.fm.intel.com with ESMTP; 03 Dec 2019 13:13:13 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 13:13:08 -0800
Message-Id: <20191203211308.109703-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add new EHL/JSL PCI ids
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

QWRkaW5nIHRoZSByZWNlbnRseSBhZGRlZCBFSEwvSlNMIFBDSSBpZHMuCgpCU3BlYzogMjkxNTMK
Q2M6IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggfCA3ICsrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1
ZGUvZHJtL2k5MTVfcGNpaWRzLmgKaW5kZXggYjFmNjZiMTE3Yzc0Li4zZTI2YTkxNzhhYWYgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkx
NV9wY2lpZHMuaApAQCAtNTc5LDEyICs1NzksMTUgQEAKIAlJTlRFTF9WR0FfREVWSUNFKDB4OEE1
MSwgaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4OEE1RCwgaW5mbykKIAotLyogRUhMICov
CisvKiBFSEwvSlNMICovCiAjZGVmaW5lIElOVEVMX0VITF9JRFMoaW5mbykgXAogCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg0NTAwLCBpbmZvKSwJXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTcxLCBpbmZv
KSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTUxLCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0NTQxLCBpbmZvKQorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTQxLCBpbmZvKSwgXAorCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg0RTcxLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTYx
LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTUxLCBpbmZvKQogCiAvKiBUR0wgKi8K
ICNkZWZpbmUgSU5URUxfVEdMXzEyX0lEUyhpbmZvKSBcCi0tIAoyLjI0LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
