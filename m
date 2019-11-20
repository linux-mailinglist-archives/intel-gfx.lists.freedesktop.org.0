Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8641C104223
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E216E9C1;
	Wed, 20 Nov 2019 17:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CB56E9BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:32:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="215870427"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Nov 2019 09:32:40 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 23:01:55 +0530
Message-Id: <20191120173155.20168-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120173155.20168-1-ramalingam.c@intel.com>
References: <20191120173155.20168-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Skip the Wa_1604555607
 verification
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

QXQgVEdMIEEwIHN0ZXBwaW5nLCBGRl9NT0RFMiByZWdpc3RlciByZWFkIGJhY2sgaXMgYnJva2Vu
LCBoZW5jZQpkaXNhYmxpbmcgdGhlIFdBIHZlcmlmaWNhdGlvbi4KCkhlbHBlciBmdW5jdGlvbiBj
YWxsZWQgd2Ffd3JpdGVfbWFza2VkX29yX25vX3ZlcmlmeSBpcyBkZWZpbmVkIGZvciB0aGUKc2Ft
ZSBwdXJwb3NlLgoKU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50
ZWwuY29tPgpjYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMjAg
KysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKaW5kZXggOTNlZmVmYTIwNWQ2Li4xNjk4MzMwYzZmMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTYwLDYgKzE2MCwyMCBAQCB3YV93cml0
ZV9tYXNrZWRfb3Ioc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMy
IG1hc2ssCiAJX3dhX2FkZCh3YWwsICZ3YSk7CiB9CiAKK3N0YXRpYyB2b2lkCit3YV93cml0ZV9t
YXNrZWRfb3Jfbm9fdmVyaWZ5KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCBy
ZWcsIHUzMiBtYXNrLAorCQkgICB1MzIgdmFsKQoreworCXN0cnVjdCBpOTE1X3dhIHdhID0gewor
CQkucmVnICA9IHJlZywKKwkJLm1hc2sgPSBtYXNrLAorCQkudmFsICA9IHZhbCwKKwkJLnJlYWQg
PSAwLAorCX07CisKKwlfd2FfYWRkKHdhbCwgJndhKTsKK30KKwogc3RhdGljIHZvaWQKIHdhX21h
c2tlZF9lbihzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFs
KQogewpAQCAtNTc4LDcgKzU5MiwxMSBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCXZhbCA9IGludGVsX3VuY29y
ZV9yZWFkKGVuZ2luZS0+dW5jb3JlLCBGRl9NT0RFMik7CiAJdmFsICY9IH5GRl9NT0RFMl9URFNf
VElNRVJfTUFTSzsKIAl2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKLQl3YV93cml0ZV9t
YXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7CisJ
aWYgKElTX1RHTF9SRVZJRChlbmdpbmUtPnVuY29yZS0+aTkxNSwgMCwgVEdMX1JFVklEX0EwKSkK
KwkJd2Ffd3JpdGVfbWFza2VkX29yX25vX3ZlcmlmeSh3YWwsIEZGX01PREUyLAorCQkJCQkgICAg
IEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWwpOworCWVsc2UKKwkJd2Ffd3JpdGVfbWFza2Vk
X29yKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWwpOwogfQogCiBz
dGF0aWMgdm9pZAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
