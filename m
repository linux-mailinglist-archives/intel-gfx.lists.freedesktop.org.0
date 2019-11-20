Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D9F104102
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0516E8F1;
	Wed, 20 Nov 2019 16:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 361506E8EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:41:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="408178380"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2019 08:41:08 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 22:10:20 +0530
Message-Id: <20191120164020.21352-4-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120164020.21352-1-ramalingam.c@intel.com>
References: <20191120164020.21352-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Skip the Wa_1604555607
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
LCBoZW5jZQpkaXNhYmxpbmcgdGhlIFdBIHZlcmlmaWNhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KY2M6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwppbmRleCA4YzQ0MWJmMTBjYjEuLjBhMzAzNGU4NDFjNCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC01ODAsNyArNTgwLDEw
IEBAIHN0YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsCiAJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoZW5naW5lLT51bmNvcmUs
IEZGX01PREUyKTsKIAl2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOwogCXZhbCB8PSBG
Rl9NT0RFMl9URFNfVElNRVJfMTI4OwotCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIEZGX01PREUy
LCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsLCB0cnVlKTsKKwkvKiBBdCBUR0wgQTAgc2ls
aWNvbiBGRl9NT0RFMiByZWcgcmVhZCBpcyBub3QgZnVuY3Rpb25hbC4gKi8KKwl3YV93cml0ZV9t
YXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCwKKwkJ
CSAgICFJU19UR0xfUkVWSUQoZW5naW5lLT51bmNvcmUtPmk5MTUsIDAsCisJCQkJCSBUR0xfUkVW
SURfQTApKTsKIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
