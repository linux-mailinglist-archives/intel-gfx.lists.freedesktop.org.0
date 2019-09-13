Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4DB2876
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867556F494;
	Fri, 13 Sep 2019 22:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A5F6F489
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:32:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="337037991"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 13 Sep 2019 15:32:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 15:32:48 -0700
Message-Id: <20190913223251.354877-12-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190913223251.354877-1-jose.souza@intel.com>
References: <20190913223251.354877-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/14] drm/i915/tgl: Check the UC health of tc
 controllers after power on
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

TmV3IHN0ZXAgYWRkZWQgZm9yIFRHTCwgcmVxdWlyaW5nIGZvciB1cyB0byBjaGVjayB0aGUgVEMK
bWljcm9jb250cm9sbGVyIGhlYWx0aCBhZnRlciBwb3dlciBvbiBUQyBhdXguCgpCU3BlYzogNDky
OTQKClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMgICB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYwppbmRleCBjZTg4YTI3MjI5ZWYuLjE0ZTRhYzZlZTU0ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTU2Miw2
ICs1NjIsOCBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcG9ydF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAjZW5kaWYKIAorI2RlZmluZSBUR0xfQVVY
X1BXX1RPX1RDX1BPUlQocHdfaWR4KQkoKHB3X2lkeCkgLSBUR0xfUFdfQ1RMX0lEWF9BVVhfVEMx
KQorCiBzdGF0aWMgdm9pZAogaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxs
ICpwb3dlcl93ZWxsKQpAQCAtNTc4LDYgKzU4MCwyMCBAQCBpY2xfdGNfcGh5X2F1eF9wb3dlcl93
ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJSTkxNV9XUklU
RShEUF9BVVhfQ0hfQ1RMKGF1eF9jaCksIHZhbCk7CiAKIAloc3dfcG93ZXJfd2VsbF9lbmFibGUo
ZGV2X3ByaXYsIHBvd2VyX3dlbGwpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIg
JiYgIXBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQpIHsKKwkJZW51bSB0Y19wb3J0IHRj
X3BvcnQ7CisKKwkJdGNfcG9ydCA9IFRHTF9BVVhfUFdfVE9fVENfUE9SVChwb3dlcl93ZWxsLT5k
ZXNjLT5oc3cuaWR4KTsKKwkJdmFsID0gSTkxNV9SRUFEKEhJUF9JTkRFWF9SRUcodGNfcG9ydCkp
OworCQl2YWwgJj0gfkhJUF9JTkRFWF9NQVNLKHRjX3BvcnQpOworCQl2YWwgfD0gSElQX0lOREVY
X0lOREVYX1ZBTCh0Y19wb3J0LCAweDIpOworCQlJOTE1X1dSSVRFKEhJUF9JTkRFWF9SRUcodGNf
cG9ydCksIHZhbCk7CisKKwkJaWYgKGludGVsX2RlX3dhaXRfZm9yX3NldChkZXZfcHJpdiwgREtM
X0NNTl9VQ19EV18yNyh0Y19wb3J0KSwKKwkJCQkJICBES0xfQ01OX1VDX0RXMjdfVUNfSEVBTFRI
LCAxKSkKKwkJCURSTV9XQVJOKCJUaW1lb3V0IHdhaXRpbmcgVEMgdUMgaGVhbHRoXG4iKTsKKwl9
CiB9CiAKIHN0YXRpYyB2b2lkCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
