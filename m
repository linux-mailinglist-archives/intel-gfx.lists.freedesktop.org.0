Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D8259A09
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 14:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBEB76E8EF;
	Fri, 28 Jun 2019 12:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EC86E8EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 12:07:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 05:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="153354894"
Received: from akamins1-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.35])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2019 05:07:24 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 15:07:19 +0300
Message-Id: <20190628120720.21682-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 2/3] drm/i915: whitelist
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
Cc: stable@vger.kernel.org
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
YW5kd2VybGluQGludGVsLmNvbT4KQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMTcgKysrKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggOTkzODA0
ZDA5NTE3Li5iMTE3NTgzZTM4YmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwpAQCAtMTA5MiwxMCArMTA5MiwyNSBAQCBzdGF0aWMgdm9pZCBnbGtfd2hp
dGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogc3RhdGljIHZv
aWQgY2ZsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7
CisJc3RydWN0IGk5MTVfd2FfbGlzdCAqdyA9ICZlbmdpbmUtPndoaXRlbGlzdDsKKwogCWlmIChl
bmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFTUykKIAkJcmV0dXJuOwogCi0JZ2VuOV93aGl0ZWxp
c3RfYnVpbGQoJmVuZ2luZS0+d2hpdGVsaXN0KTsKKwlnZW45X3doaXRlbGlzdF9idWlsZCh3KTsK
KworCS8qCisJICogV2FBbGxvd1BNRGVwdGhBbmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1E
OmNmbCx3aGwsY21sLGFtbAorCSAqCisJICogVGhpcyBjb3ZlcnMgNCByZWdpc3RlciB3aGljaCBh
cmUgbmV4dCB0byBvbmUgYW5vdGhlciA6CisJICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlQKKwkg
KiAgIC0gUFNfSU5WT0NBVElPTl9DT1VOVF9VRFcKKwkgKiAgIC0gUFNfREVQVEhfQ09VTlQKKwkg
KiAgIC0gUFNfREVQVEhfQ09VTlRfVURXCisJICovCisJd2hpdGVsaXN0X3JlZ19leHQodywgUFNf
SU5WT0NBVElPTl9DT1VOVCwKKwkJCSAgUklOR19GT1JDRV9UT19OT05QUklWX1JEIHwKKwkJCSAg
UklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzQpOwogfQogCiBzdGF0aWMgdm9pZCBjbmxfd2hp
dGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLS0gCjIuMjEuMC4z
OTIuZ2Y4ZjY3ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
