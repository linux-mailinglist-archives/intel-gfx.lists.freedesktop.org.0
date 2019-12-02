Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A27B10F2D5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 23:25:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730536E0FD;
	Mon,  2 Dec 2019 22:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4856E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 22:25:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 14:25:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="360972478"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.52])
 by orsmga004.jf.intel.com with ESMTP; 02 Dec 2019 14:25:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 14:25:11 -0800
Message-Id: <20191202222513.337777-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/3] drm/i915/display: Check the old state to
 find port sync slave
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

SWYgdGhlIENSVEMgaXMgZ29pbmcgZnJvbSBlbmFibGVkIHRvIGRpc2FibGVkIGFuZCBpdCBpcyBh
IHBvcnQgc3luYwpzbGF2ZSwgaXQgbmVlZHMgdG8gY2hlY2sgdG8gdGhlIG9sZCBzdGF0ZSB0byBi
ZSBkaXNhYmxlZCBiZWZvcmUgdGhlCnBvcnQgc3luYyBtYXN0ZXIuCgpDYzogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggMWYxY2Q3NTc4NzA2Li4zMDYyNTc4ZTJiZGIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDQ5Nyw4ICsxNDQ5Nyw4IEBA
IHN0YXRpYyB2b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKQogCQkgKiBzbGF2ZSBDUlRDcyBhcmUgZGlzYWJsZWQgZmlyc3Qg
YW5kIHRoZW4gbWFzdGVyIENSVEMgc2luY2UKIAkJICogU2xhdmUgdmJsYW5rcyBhcmUgbWFza2Vk
IHRpbGwgTWFzdGVyIFZibGFua3MuCiAJCSAqLwotCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21v
ZGUobmV3X2NydGNfc3RhdGUpKSB7Ci0JCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21hc3Rlcihu
ZXdfY3J0Y19zdGF0ZSkpCisJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbW9kZShvbGRfY3J0Y19z
dGF0ZSkpIHsKKwkJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbWFzdGVyKG9sZF9jcnRjX3N0YXRl
KSkKIAkJCQlpbnRlbF90cmFuc19wb3J0X3N5bmNfbW9kZXNldF9kaXNhYmxlcyhzdGF0ZSwKIAkJ
CQkJCQkJICAgICAgIGNydGMsCiAJCQkJCQkJCSAgICAgICBvbGRfY3J0Y19zdGF0ZSwKLS0gCjIu
MjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
