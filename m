Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CADD7A49
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE75D6E838;
	Tue, 15 Oct 2019 15:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23D16E837
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="199761321"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 15 Oct 2019 08:45:22 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 10E3D840796; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:46 +0300
Message-Id: <20191015154449.10338-8-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 08/11] drm/i915/tgl: Wa_1409600907
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

VG8gYXZvaWQgcG9zc2libGUgaGFuZywgd2UgbmVlZCB0byBhZGQgZGVwdGggc3RhbGwgaWYgd2Ug
Zmx1c2ggdGhlCmRlcHRoIGNhY2hlLgoKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDVlOTgxMTRhMDdhMS4uMWVmMjM3MzVj
MWY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMzIwNCw2ICszMjA0LDgg
QEAgc3RhdGljIGludCBnZW4xMl9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpyZXF1ZXN0LAogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfVElMRV9DQUNIRV9GTFVTSDsKIAkJ
ZmxhZ3MgfD0gUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVfRkxVU0g7CiAJCWZsYWdz
IHw9IFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSDsKKwkJLyogV2FfMTQwOTYwMDkwNzp0
Z2wgKi8KKwkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0RFUFRIX1NUQUxMOwogCQlmbGFncyB8PSBQ
SVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfRkxV
U0hfRU5BQkxFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIOwpA
QCAtMzQzNiw2ICszNDM4LDggQEAgZ2VuMTJfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNzKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCiAJCQkJICAgICAgUElQRV9DT05UUk9M
X1RJTEVfQ0FDSEVfRkxVU0ggfAogCQkJCSAgICAgIFBJUEVfQ09OVFJPTF9SRU5ERVJfVEFSR0VU
X0NBQ0hFX0ZMVVNIIHwKIAkJCQkgICAgICBQSVBFX0NPTlRST0xfREVQVEhfQ0FDSEVfRkxVU0gg
fAorCQkJCSAgICAgIC8qIFdhXzE0MDk2MDA5MDc6dGdsICovCisJCQkJICAgICAgUElQRV9DT05U
Uk9MX0RFUFRIX1NUQUxMIHwKIAkJCQkgICAgICBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxF
IHwKIAkJCQkgICAgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFIHwKIAkJCQkgICAgICBQSVBF
X0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
