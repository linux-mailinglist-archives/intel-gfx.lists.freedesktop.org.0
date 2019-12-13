Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A02311E7E8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 17:17:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8124A6EB05;
	Fri, 13 Dec 2019 16:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6F66EB05
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 16:17:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 08:17:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="246178888"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2019 08:17:18 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 21:15:15 +0530
Message-Id: <20191213154515.12121-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix WARN_ON condition for cursor
 plane ddb allocation
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gc29tZSBjYXNlcyBtaW5fZGRiX2FsbG9jIGNhbiBiZSBVMTZfTUFYLCBleGNsdWRlIGl0CmZy
b20gdGhlIFdBUk5fT04uCgpGaXhlczogMTBhN2UwN2I2OGI5ICgiZHJtL2k5MTU6IE1ha2Ugc3Vy
ZSBjdXJzb3IgaGFzIGVub3VnaCBkZGIgZm9yIHRoZSBzZWxlY3RlZCB3bSBsZXZlbCIpClN1Z2dl
c3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDYgKysrKy0tCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCmluZGV4IGNjYmJkZjRhNmFhYi4uY2VjNGZhNzk0MjJjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKQEAgLTQzMTIsOCArNDMxMiwxMCBAQCBza2xfYWxsb2NhdGVfcGlwZV9kZGIo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJJmNydGNfc3RhdGUtPndt
LnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07CiAKIAkJCWlmIChwbGFuZV9pZCA9PSBQTEFO
RV9DVVJTT1IpIHsKLQkJCQlpZiAoV0FSTl9PTih3bS0+d21bbGV2ZWxdLm1pbl9kZGJfYWxsb2Mg
PgotCQkJCQkgICAgdG90YWxbUExBTkVfQ1VSU09SXSkpIHsKKwkJCQlpZiAod20tPndtW2xldmVs
XS5taW5fZGRiX2FsbG9jID4KKwkJCQkgICAgdG90YWxbUExBTkVfQ1VSU09SXSkgeworCQkJCQlX
QVJOX09OKHdtLT53bVtsZXZlbF0ubWluX2RkYl9hbGxvYyAhPQorCQkJCQkJVTE2X01BWCk7CiAJ
CQkJCWJsb2NrcyA9IFUzMl9NQVg7CiAJCQkJCWJyZWFrOwogCQkJCX0KLS0gCjIuMjEuMC41Lmdh
ZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
