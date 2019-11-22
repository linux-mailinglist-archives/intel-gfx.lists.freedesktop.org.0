Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC73010738D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:46:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2EB6E31E;
	Fri, 22 Nov 2019 13:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD576E31D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:46:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 05:46:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="205403569"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga008.fm.intel.com with ESMTP; 22 Nov 2019 05:46:22 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Date: Fri, 22 Nov 2019 15:46:02 +0200
Message-Id: <20191122134603.11496-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: fix DP audio for PORT_A on
 gen12+
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RhcnRpbmcgd2l0aCBnZW4xMiwgUE9SVF9BIGNhbiBiZSBjb25uZWN0ZWQgdG8gYSB0cmFuc2Nv
ZGVyCndpdGggYXVkaW8gc3VwcG9ydC4gTW9kaWZ5IHRoZSBleGlzdGluZyBsb2dpYyB0aGF0IGRp
c2FibGVkCmF1ZGlvIG9uIFBPUlRfQSB1bmNvbmRpdGlvbmFsbHkuCgpTaWduZWQtb2ZmLWJ5OiBL
YWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCmluZGV4IDBhMDIzZjNlNjMzYi4uYzUwY2Y4MDliNDRjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yMzQxLDcgKzIzNDEsNyBAQCBpbnRlbF9k
cF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJcmV0dXJu
IHJldDsKIAogCXBpcGVfY29uZmlnLT5oYXNfZHJycyA9IGZhbHNlOwotCWlmIChJU19HNFgoZGV2
X3ByaXYpIHx8IHBvcnQgPT0gUE9SVF9BKQorCWlmIChJU19HNFgoZGV2X3ByaXYpIHx8IChJTlRF
TF9HRU4oZGV2X3ByaXYpIDwgMTIgJiYgcG9ydCA9PSBQT1JUX0EpKQogCQlwaXBlX2NvbmZpZy0+
aGFzX2F1ZGlvID0gZmFsc2U7CiAJZWxzZSBpZiAoaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVk
aW8gPT0gSERNSV9BVURJT19BVVRPKQogCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0gaW50ZWxf
ZHAtPmhhc19hdWRpbzsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
