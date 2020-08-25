Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4725D251DD9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 19:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825B46E393;
	Tue, 25 Aug 2020 17:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EDD6E393
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 17:11:24 +0000 (UTC)
IronPort-SDR: KrCcrVrQQ0mZJ6pqfFBWJoz1+d/mlxVIIhJjGmtqYV/WQjtW4mMP7SFqAWBFasXbQzXGwAiiA+
 jCLA2fwnWpsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="143820947"
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="143820947"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 10:11:10 -0700
IronPort-SDR: vCePprSy/IMFSfTF4T2eu4Tert9aEeqcKqCLo4RRmYrb/iKO+WEF2J6/ZfvwG9pmDymK9yoRzY
 oAyUbke3/egg==
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="299162301"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 10:11:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Aug 2020 10:13:31 -0700
Message-Id: <20200825171331.17971-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825171331.17971-1-jose.souza@intel.com>
References: <20200825171331.17971-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display: Fix DRRS debugfs
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
Cc: Hariom Pandey <hariom.pandey@intel.com>, Srinivas K <srinivasx.k@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VwcG9ydGVkIGFuZCBlbmFibGVkIGFyZSBkaWZmZXJlbnQgdGhpbmdzIHNvIHByaW50aW5nIGJv
dGguCgp2MzogdXNpbmcgZHJycy0+dHlwZSBpbnN0ZWFkIG9mIHZidC5kcnJzX3R5cGUKCkNjOiBB
bnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgpDYzogU3Jpbml2YXMgSyA8
c3Jpbml2YXN4LmtAaW50ZWwuY29tPgpDYzogSGFyaW9tIFBhbmRleSA8aGFyaW9tLnBhbmRleUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZWJ1Z2ZzLmMgfCAxMiArKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCmluZGV4IGY1NDkzODEwNDhiMy4uNjVj
Y2Y1ZDZjZDM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKQEAgLTEwNjksMTAgKzEwNjksMTggQEAgc3RhdGljIHZvaWQg
ZHJyc19zdGF0dXNfcGVyX2NydGMoc3RydWN0IHNlcV9maWxlICptLAogCiAJZHJtX2Nvbm5lY3Rv
cl9saXN0X2l0ZXJfYmVnaW4oZGV2LCAmY29ubl9pdGVyKTsKIAlkcm1fZm9yX2VhY2hfY29ubmVj
dG9yX2l0ZXIoY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7CisJCWJvb2wgc3VwcG9ydGVkID0gZmFs
c2U7CisKIAkJaWYgKGNvbm5lY3Rvci0+c3RhdGUtPmNydGMgIT0gJmludGVsX2NydGMtPmJhc2Up
CiAJCQljb250aW51ZTsKIAogCQlzZXFfcHJpbnRmKG0sICIlczpcbiIsIGNvbm5lY3Rvci0+bmFt
ZSk7CisKKwkJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVD
VE9SX2VEUCAmJgorCQkgICAgZHJycy0+dHlwZSA9PSBTRUFNTEVTU19EUlJTX1NVUFBPUlQpCisJ
CQlzdXBwb3J0ZWQgPSB0cnVlOworCisJCXNlcV9wcmludGYobSwgIlx0RFJSUyBTdXBwb3J0ZWQ6
ICVzXG4iLCB5ZXNubyhzdXBwb3J0ZWQpKTsKIAl9CiAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJf
ZW5kKCZjb25uX2l0ZXIpOwogCkBAIC0xMDgzLDcgKzEwOTEsNyBAQCBzdGF0aWMgdm9pZCBkcnJz
X3N0YXR1c19wZXJfY3J0YyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiAKIAkJbXV0ZXhfbG9jaygmZHJy
cy0+bXV0ZXgpOwogCQkvKiBEUlJTIFN1cHBvcnRlZCAqLwotCQlzZXFfcHV0cyhtLCAiXHREUlJT
IFN1cHBvcnRlZDogWWVzXG4iKTsKKwkJc2VxX3B1dHMobSwgIlx0RFJSUyBFbmFibGVkOiBZZXNc
biIpOwogCiAJCS8qIGRpc2FibGVfZHJycygpIHdpbGwgbWFrZSBkcnJzLT5kcCBOVUxMICovCiAJ
CWlmICghZHJycy0+ZHApIHsKQEAgLTExMTgsNyArMTEyNiw3IEBAIHN0YXRpYyB2b2lkIGRycnNf
c3RhdHVzX3Blcl9jcnRjKHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJbXV0ZXhfdW5sb2NrKCZkcnJz
LT5tdXRleCk7CiAJfSBlbHNlIHsKIAkJLyogRFJSUyBub3Qgc3VwcG9ydGVkLiBQcmludCB0aGUg
VkJUIHBhcmFtZXRlciovCi0JCXNlcV9wdXRzKG0sICJcdERSUlMgU3VwcG9ydGVkIDogTm8iKTsK
KwkJc2VxX3B1dHMobSwgIlx0RFJSUyBFbmFibGVkIDogTm8iKTsKIAl9CiAJc2VxX3B1dHMobSwg
IlxuIik7CiB9Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
