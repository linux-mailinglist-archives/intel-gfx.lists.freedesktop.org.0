Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E31176670
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 22:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B736E85B;
	Mon,  2 Mar 2020 21:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C733D6E85B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 21:51:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 13:51:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,508,1574150400"; d="scan'208";a="412469508"
Received: from unknown (HELO
 genxfsim-Shark-Bay-Client-platform.iind.intel.com) ([10.223.74.73])
 by orsmga005.jf.intel.com with ESMTP; 02 Mar 2020 13:51:52 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 03:08:07 +0530
Message-Id: <20200302213807.6488-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Decrease log level
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29udmVydGluZyBlcnJvciB0byBkZWJ1ZyBwcmludCBpZiBzaW5rIGZhaWxzIHRvIGNvbmZpZ3Vy
ZSBzY3JhbWJsaW5nIG9yClRNRFMgYml0IGNsb2NrIHJhdGlvLiBJbiB0aGlzIGNhc2UsIHdlIGFy
ZSB0aW1pbmcgb3V0IHdoaWxlIGRpc2FibGluZwp0aGUgc2NyYW1ibGluZyBhbmQgc2V0dGluZyB0
aGUgU0NEQyByYXRpbywgYXMgdGhlcmUgaXMgbm8gcmVzcG9uc2UKdG8gdGhlIEkyQyBTQ0RDIHdy
aXRlIGZyb20gdGhlIHNpbmsgZGV2aWNlLiBFcnJvciBpc24ndCBkdWUgdG8gc29tZXRoaW5nCndy
b25nIGRvbmUgZnJvbSBkcml2ZXIgc2lkZS4KClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8
c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+ClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwppbmRleCAyODQyMTlkYTdkZjguLjQ1N2NhODhjZDI3NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNTY0LDggKzM1NjQsOSBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9lbmFibGVfZGRpX2hkbWkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
aWYgKCFpbnRlbF9oZG1pX2hhbmRsZV9zaW5rX3NjcmFtYmxpbmcoZW5jb2RlciwgY29ubmVjdG9y
LAogCQkJCQkgICAgICAgY3J0Y19zdGF0ZS0+aGRtaV9oaWdoX3RtZHNfY2xvY2tfcmF0aW8sCiAJ
CQkJCSAgICAgICBjcnRjX3N0YXRlLT5oZG1pX3NjcmFtYmxpbmcpKQotCQlEUk1fRVJST1IoIltD
T05ORUNUT1I6JWQ6JXNdIEZhaWxlZCB0byBjb25maWd1cmUgc2luayBzY3JhbWJsaW5nL1RNRFMg
Yml0IGNsb2NrIHJhdGlvXG4iLAotCQkJICBjb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+
bmFtZSk7CisJCURSTV9ERUJVR19LTVMoIltDT05ORUNUT1I6JWQ6JXNdIEZhaWxlZCB0byBjb25m
aWd1cmUgc2luayAiCisJCQkgICAgICAic2NyYW1ibGluZy9UTURTIGJpdCBjbG9jayByYXRpb1xu
IiwKKwkJCSAgICAgICBjb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+bmFtZSk7CiAKIAkv
KiBEaXNwbGF5IFdBICMxMTQzOiBza2wsa2JsLGNmbCAqLwogCWlmIChJU19HRU45X0JDKGRldl9w
cml2KSkgewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
