Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F453FC851
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 15:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836076E32E;
	Thu, 14 Nov 2019 14:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235ED6E32E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 14:02:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 06:02:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="406327352"
Received: from pstacey-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.43.170])
 by fmsmga006.fm.intel.com with ESMTP; 14 Nov 2019 06:02:17 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 16:02:24 +0200
Message-Id: <20191114140224.21818-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Add preemption check while
 waiting for OA
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

V2hpbGUgd2UncmUgd2FpdGluZyBmb3IgdGhlIE9BIGNvbmZpZ3VyYXRpb24gdG8gYXBwbHksIGxl
dCdzIGdpdmUgYQpjaGFuY2UgdG8gb3RoZXIgY29udGV4dHMgdGhhdCBtaWdodCBuZWVkIHRvIHJ1
biBvdGhlciB3b3JrbG9hZHMuCgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlv
bmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+ClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYwppbmRleCAzMWU0N2VlMjMzNTcuLjYwOGU2YzNmM2MxYSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE3NzcsNiArMTc3Nyw4IEBAIHN0YXRpYyBpbnQgYWxsb2Nf
bm9hX3dhaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIAkqY3MrKyA9IE1JX01B
VEhfQUREOwogCSpjcysrID0gTUlfTUFUSF9TVE9SRUlOVihNSV9NQVRIX1JFRyhKVU1QX1BSRURJ
Q0FURSksIE1JX01BVEhfUkVHX0NGKTsKIAorCSpjcysrID0gTUlfQVJCX0NIRUNLOworCiAJLyoK
IAkgKiBUcmFuc2ZlciB0aGUgcmVzdWx0IGludG8gdGhlIHByZWRpY2F0ZSByZWdpc3RlciB0byBi
ZSB1c2VkIGZvciB0aGUKIAkgKiBwcmVkaWNhdGVkIGp1bXAuCi0tIAoyLjI0LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
