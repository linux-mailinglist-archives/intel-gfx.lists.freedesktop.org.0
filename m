Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CC520FFAB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D736E4F3;
	Tue, 30 Jun 2020 21:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA1AB6E4F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:17 +0000 (UTC)
IronPort-SDR: /vUYcjOUj/ozxDNx65SnkdibqxheqosSZoRaYeHqidGY9hyYHETN5XKO2X889oWreZmR5pdXCg
 iHVoi6PVvZ9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="145459915"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="145459915"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:17 -0700
IronPort-SDR: J57kmPGdGf3BNHwrby7+WfqtwXQL2N76RGV0g+A0VLfR8qFHtSI0EeSPIMz2SSrCOZDUCW1b5s
 2HDcLVr9X2NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="312491901"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 30 Jun 2020 14:56:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:53 +0300
Message-Id: <20200630215601.28557-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Add VBT DVO ports H and I
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClZC
VCBoYXMgcG9ydHMgSCBhbmQgSSBzaW5jZSB2ZXJzaW9uIDIxNy4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMiArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgOCArKysrKystLQogMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCA2NTkzZTJjMzgwNDMuLjJiZjBiYzBk
ZWVlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTE2
NTMsNiArMTY1Myw4IEBAIHN0YXRpYyBlbnVtIHBvcnQgZHZvX3BvcnRfdG9fcG9ydChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCVtQT1JUX0VdID0geyBEVk9fUE9SVF9IRE1J
RSwgRFZPX1BPUlRfRFBFLCBEVk9fUE9SVF9DUlQgfSwKIAkJW1BPUlRfRl0gPSB7IERWT19QT1JU
X0hETUlGLCBEVk9fUE9SVF9EUEYsIC0xIH0sCiAJCVtQT1JUX0ddID0geyBEVk9fUE9SVF9IRE1J
RywgRFZPX1BPUlRfRFBHLCAtMSB9LAorCQlbUE9SVF9IXSA9IHsgRFZPX1BPUlRfSERNSUgsIERW
T19QT1JUX0RQSCwgLTEgfSwKKwkJW1BPUlRfSV0gPSB7IERWT19QT1JUX0hETUlJLCBEVk9fUE9S
VF9EUEksIC0xIH0sCiAJfTsKIAkvKgogCSAqIEJzcGVjIGxpc3RzIHRoZSBwb3J0cyBhcyBBLCBC
LCBDLCBEIC0gaG93ZXZlciBpbnRlcm5hbGx5IGluIG91cgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCmluZGV4IGFlZjdmZTkzMmQxYS4uZTUwMmQ2NTMw
MGZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5o
CkBAIC0yOTMsOCArMjkzLDEyIEBAIHN0cnVjdCBiZGJfZ2VuZXJhbF9mZWF0dXJlcyB7CiAjZGVm
aW5lIERWT19QT1JUX0hETUlFCQkxMgkJCQkvKiAxOTMgKi8KICNkZWZpbmUgRFZPX1BPUlRfRFBG
CQkxMwkJCQkvKiBOL0EgKi8KICNkZWZpbmUgRFZPX1BPUlRfSERNSUYJCTE0CQkJCS8qIE4vQSAq
LwotI2RlZmluZSBEVk9fUE9SVF9EUEcJCTE1Ci0jZGVmaW5lIERWT19QT1JUX0hETUlHCQkxNgor
I2RlZmluZSBEVk9fUE9SVF9EUEcJCTE1CQkJCS8qIDIxNyAqLworI2RlZmluZSBEVk9fUE9SVF9I
RE1JRwkJMTYJCQkJLyogMjE3ICovCisjZGVmaW5lIERWT19QT1JUX0RQSAkJMTcJCQkJLyogMjE3
ICovCisjZGVmaW5lIERWT19QT1JUX0hETUlICQkxOAkJCQkvKiAyMTcgKi8KKyNkZWZpbmUgRFZP
X1BPUlRfRFBJCQkxOQkJCQkvKiAyMTcgKi8KKyNkZWZpbmUgRFZPX1BPUlRfSERNSUkJCTIwCQkJ
CS8qIDIxNyAqLwogI2RlZmluZSBEVk9fUE9SVF9NSVBJQQkJMjEJCQkJLyogMTcxICovCiAjZGVm
aW5lIERWT19QT1JUX01JUElCCQkyMgkJCQkvKiAxNzEgKi8KICNkZWZpbmUgRFZPX1BPUlRfTUlQ
SUMJCTIzCQkJCS8qIDE3MSAqLwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
