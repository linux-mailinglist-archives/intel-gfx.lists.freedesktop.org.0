Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7DA4C815
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECACE6E4E6;
	Thu, 20 Jun 2019 07:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34E86E3DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 07:16:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 00:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="182980481"
Received: from mtegowsk-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.175])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 00:16:11 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 10:15:45 +0300
Message-Id: <20190620071546.19852-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190620071546.19852-1-lionel.g.landwerlin@intel.com>
References: <20190620071546.19852-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: whitelist
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
ZXJfaW52b2NhdGlvbnMuKiAoVnVsa2FuKQoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCmluZGV4IDE2NWIwYTQ1ZTAwOS4uOTBkZjU4ZWQxNDg2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEwNjgsNiArMTA2OCwxMiBAQCBzdGF0
aWMgdm9pZCBnbGtfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKncpCiBzdGF0
aWMgdm9pZCBjZmxfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKncpCiB7CiAJ
Z2VuOV93aGl0ZWxpc3RfYnVpbGQodyk7CisKKwkvKiBXYUFsbG93UE1EZXB0aEFuZEludm9jYXRp
b25Db3VudEFjY2Vzc0Zyb21VTUQ6Y2ZsLHdobCxjbWwsYW1sICovCisJd2hpdGVsaXN0X3JlZyh3
LCBQU19ERVBUSF9DT1VOVCk7CisJd2hpdGVsaXN0X3JlZyh3LCBQU19ERVBUSF9DT1VOVF9VRFcp
OworCXdoaXRlbGlzdF9yZWcodywgUFNfSU5WT0NBVElPTl9DT1VOVCk7CisJd2hpdGVsaXN0X3Jl
Zyh3LCBQU19JTlZPQ0FUSU9OX0NPVU5UX1VEVyk7CiB9CiAKIHN0YXRpYyB2b2lkIGNubF93aGl0
ZWxpc3RfYnVpbGQoc3RydWN0IGk5MTVfd2FfbGlzdCAqdykKLS0gCjIuMjEuMC4zOTIuZ2Y4ZjY3
ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
