Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9368F12DC54
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 00:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63076E293;
	Tue, 31 Dec 2019 23:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C6B6E288
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 23:38:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 15:38:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,381,1571727600"; d="scan'208";a="221529977"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 31 Dec 2019 15:38:37 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jan 2020 01:37:53 +0200
Message-Id: <20191231233756.18753-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20191231233756.18753-1-imre.deak@intel.com>
References: <20191231233756.18753-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Make sure plane dims are correct
 for UV CCS planes
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgaW50ZWxfZmJfcGxhbmVfZ2V0X3N1YnNhbXBsaW5nKCkgcmV0dXJucyB0aGUgc3Vic2FtcGxp
bmcgZmFjdG9yIHdydC4KaXRzIG1haW4gcGxhbmUsIGZvciBhIENDUyBwbGFuZSB3ZSBuZWVkIHRv
IGFwcGx5IGJvdGggdGhlIG1haW4gYW5kIHRoZQpDQ1MgcGxhbmUncyBzdWJzYW1wbGluZyBmYWN0
b3Igb24gdGhlIEZCJ3MgZGltZW5zaW9ucyB0byBnZXQgdGhlIENDUwpwbGFuZSdzIGRpbWVuc2lv
bnMuCgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5j
b20+CkNjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgpDYzogUmFkaGFrcmlz
aG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCA4ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggMmMyNDUwZDM0NjliLi5kNTEyOGU5MDA2NjAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0yOTEzLDExICsyOTEzLDE1IEBA
IGludGVsX2ZiX2NoZWNrX2Njc194eShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNj
c19wbGFuZSwgaW50IHgsIGludCB5KQogc3RhdGljIHZvaWQKIGludGVsX2ZiX3BsYW5lX2RpbXMo
aW50ICp3LCBpbnQgKmgsIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxh
bmUpCiB7CisJaW50IG1haW5fcGxhbmUgPSBpc19jY3NfcGxhbmUoZmIsIGNvbG9yX3BsYW5lKSA/
CisJCQkgY2NzX3RvX21haW5fcGxhbmUoZmIsIGNvbG9yX3BsYW5lKSA6IDA7CisJaW50IG1haW5f
aHN1YiwgbWFpbl92c3ViOwogCWludCBoc3ViLCB2c3ViOwogCisJaW50ZWxfZmJfcGxhbmVfZ2V0
X3N1YnNhbXBsaW5nKCZtYWluX2hzdWIsICZtYWluX3ZzdWIsIGZiLCBtYWluX3BsYW5lKTsKIAlp
bnRlbF9mYl9wbGFuZV9nZXRfc3Vic2FtcGxpbmcoJmhzdWIsICZ2c3ViLCBmYiwgY29sb3JfcGxh
bmUpOwotCSp3ID0gZmItPndpZHRoIC8gaHN1YjsKLQkqaCA9IGZiLT5oZWlnaHQgLyB2c3ViOwor
CSp3ID0gZmItPndpZHRoIC8gbWFpbl9oc3ViIC8gaHN1YjsKKwkqaCA9IGZiLT5oZWlnaHQgLyBt
YWluX3ZzdWIgLyB2c3ViOwogfQogCiAvKgotLSAKMi4yMy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
