Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCC657EDA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 11:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F776E838;
	Thu, 27 Jun 2019 09:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772A76E83A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 09:01:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 02:01:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="337518484"
Received: from lswidere-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.121])
 by orsmga005.jf.intel.com with ESMTP; 27 Jun 2019 02:01:21 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 12:01:15 +0300
Message-Id: <20190627090116.10847-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
References: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

Q0ZMOkMwKyBjaGFuZ2VkIHRoZSBzdGF0dXMgb2YgdGhvc2UgcmVnaXN0ZXJzIHdoaWNoIGFyZSBu
b3cKYmxhY2tsaXN0ZWQgYnkgZGVmYXVsdC4KClRoaXMgaXMgYnJlYWtpbmcgYSBudW1iZXIgb2Yg
Q1RTIHRlc3RzIG9uIEdMICYgVnVsa2FuIDoKCiAgS0hSLUdMNDUucGlwZWxpbmVfc3RhdGlzdGlj
c19xdWVyeV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMg
KEdMKQoKICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVyeS5mcmFnbWVudF9zaGFk
ZXJfaW52b2NhdGlvbnMuKiAoVnVsa2FuKQoKdjI6IE9ubHkgdXNlIG9uZSB3aGl0ZWxpc3QgZW50
cnkgKExpb25lbCkKClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5s
YW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgMTcgKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMKaW5kZXggOTkzODA0ZDA5NTE3Li5iMTE3NTgzZTM4YmIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTA5MiwxMCAr
MTA5MiwyNSBAQCBzdGF0aWMgdm9pZCBnbGtfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKIAogc3RhdGljIHZvaWQgY2ZsX3doaXRlbGlzdF9idWlsZChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CisJc3RydWN0IGk5MTVfd2FfbGlzdCAqdyA9
ICZlbmdpbmUtPndoaXRlbGlzdDsKKwogCWlmIChlbmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFT
UykKIAkJcmV0dXJuOwogCi0JZ2VuOV93aGl0ZWxpc3RfYnVpbGQoJmVuZ2luZS0+d2hpdGVsaXN0
KTsKKwlnZW45X3doaXRlbGlzdF9idWlsZCh3KTsKKworCS8qCisJICogV2FBbGxvd1BNRGVwdGhB
bmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EOmNmbCx3aGwsY21sLGFtbAorCSAqCisJICog
VGhpcyBjb3ZlcnMgNCByZWdpc3RlciB3aGljaCBhcmUgbmV4dCB0byBvbmUgYW5vdGhlciA6CisJ
ICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlQKKwkgKiAgIC0gUFNfSU5WT0NBVElPTl9DT1VOVF9V
RFcKKwkgKiAgIC0gUFNfREVQVEhfQ09VTlQKKwkgKiAgIC0gUFNfREVQVEhfQ09VTlRfVURXCisJ
ICovCisJd2hpdGVsaXN0X3JlZ19leHQodywgUFNfSU5WT0NBVElPTl9DT1VOVCwKKwkJCSAgUklO
R19GT1JDRV9UT19OT05QUklWX1JEIHwKKwkJCSAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdF
XzQpOwogfQogCiBzdGF0aWMgdm9pZCBjbmxfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKLS0gCjIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
