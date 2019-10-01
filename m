Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC891C2D91
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 08:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0ED89F6D;
	Tue,  1 Oct 2019 06:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C589589F6D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 06:40:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 23:40:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="194435315"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga003.jf.intel.com with ESMTP; 30 Sep 2019 23:40:37 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 12:01:28 +0530
Message-Id: <20191001063128.10566-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlbWF0dXJlIGdhbW1hIGx1dCBwcmVwcmF0aW9uIGFuZCBsb2FkaW5nIHdoaWNoIHdhcyBnZXR0
aW5nCnJlZmxlY3RlZCBpbiBmaXJzdCBtb2Rlc2V0IGNhdXNpbmcgZGlmZmVyZW50IGNvbG9ycyBv
bgpzY3JlZW4gZHVyaW5nIGJvb3QuCgpJc3N1ZTogSW4gQklPUywgZ2FtbWEgaXMgZGlzYWJsZWQg
YnkgZGVmYXVsdC4gSG93ZXZlciwKbGVnYWN5X3JlYWRfbHV0cygpIHdhcyBnZXR0aW5nIGNhbGxl
ZCBldmVuIGJlZm9yZSB0aGUgbGVnYWN5X2xvYWRfbHV0cygpCndoaWNoIHdhcyBzZXR0aW5nIGNy
dGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0IGFuZCBnYW1tYV9sdXQgd2FzCnByb2dyYW1tZWQgd2l0
aCBqdW5rIHZhbHVlcyB3aGljaCBsZWQgdG8gdmlzdWFsIGFydGlmYWN0cyAoZGlmZmVyZW50CmNv
bG9yZWQgc2NyZWVucyBpbnN0ZWFkIG9mIHVzdWFsIGJsYWNrIGR1cmluZyBib290KS4KCkZpeDog
Q2FsbGluZyByZWFkX2x1dHMoKSBvbmx5IHdoZW4gZ2FtbWEgaXMgZW5hYmxlZCB3aGljaCB3aWxs
IGhhcHBlbgphZnRlciBmaXJzdCBtb2Rlc2V0LgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgwOQpTaWduZWQtb2ZmLWJ5OiBTd2F0aSBT
aGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCBmMTMyOGMwOGY0YWQuLmY4OWFhNGJiOWY0MiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEwNTI4LDcg
KzEwNTI4LDkgQEAgc3RhdGljIGJvb2wgaGFzd2VsbF9nZXRfcGlwZV9jb25maWcoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsCiAJCWk5eHhfZ2V0X3BpcGVfY29sb3JfY29uZmlnKHBpcGVfY29uZmln
KTsKIAl9CiAKLQlpbnRlbF9jb2xvcl9nZXRfY29uZmlnKHBpcGVfY29uZmlnKTsKKwlpZiAoKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgKHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlICYgUE9T
VF9DU0NfR0FNTUFfRU5BQkxFKSkgfHwKKwkgICAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5ICYm
IChwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxlKSkpCisJCQlpbnRlbF9jb2xvcl9nZXRfY29uZmln
KHBpcGVfY29uZmlnKTsKIAogCXBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QSVBFX1BBTkVM
X0ZJVFRFUihjcnRjLT5waXBlKTsKIAlXQVJOX09OKHBvd2VyX2RvbWFpbl9tYXNrICYgQklUX1VM
TChwb3dlcl9kb21haW4pKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
