Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E61985E4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 22:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7719F6E45E;
	Mon, 30 Mar 2020 20:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318BA6E49D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 20:59:19 +0000 (UTC)
IronPort-SDR: SQRx07nNdF1GTB3QaD8yEfaHvRfhTMquiuUaQKPgXCoMFJVXl/PdAowCS3Zmqwb+cUARO5/Ify
 TTmQJd6OMrEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 13:59:18 -0700
IronPort-SDR: BB/5dOFM0+bUGEnTlKjvcC3e3mHIPX/d8ZqtzSUQ1+r/v4ZzSLLGEefEOkoPr7P7MqKWikoTdO
 alNjYtPjygrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="241724824"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2020 13:59:18 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 14:00:43 -0700
Message-Id: <20200330210044.130510-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330210044.130510-1-jose.souza@intel.com>
References: <20200330210044.130510-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/dp/ehl: Update vswing table for
 HBR and RBR
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

RUhMIGhhcyBub3cgb25seSBvbmUgdGFibGUgZm9yIGFsbCBEUCByYXRlcy4KCkJTcGVjOiAyMTI1
NwpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgOSAr
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMDUzYjIxYzEx
YjBjLi5kZWRiODY3MTJhOTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwpAQCAtNTY4LDcgKzU2OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZf
dHJhbnMgaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWlbXSA9IHsKIAl7IDB4Niwg
MHg3RiwgMHgzNSwgMHgwMCwgMHgwQSB9LAkvKiA2MDAgICA4NTAgICAgICAzLjAgICAqLwogfTsK
IAotc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyBlaGxfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzW10gPSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IGNubF9k
ZGlfYnVmX3RyYW5zIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcFtdID0gewogCQkJ
CQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KIAl7IDB4QSwgMHgzMywgMHgzRiwgMHgwMCwg
MHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLwogCXsgMHhBLCAweDQ3LCAweDM2LCAw
eDAwLCAweDA5IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCkBAIC05NDcsMTAgKzk0Nyw5
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgKgogZWhsX2dldF9jb21i
b19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwg
aW50IHJhdGUsCiAJCQlpbnQgKm5fZW50cmllcykKIHsKLQlpZiAodHlwZSAhPSBJTlRFTF9PVVRQ
VVRfSERNSSAmJiB0eXBlICE9IElOVEVMX09VVFBVVF9FRFAgJiYKLQkgICAgcmF0ZSA+IDI3MDAw
MCkgewotCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xh
dGlvbnNfaGJyMl9oYnIzKTsKLQkJcmV0dXJuIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9u
c19oYnIyX2hicjM7CisJaWYgKHR5cGUgIT0gSU5URUxfT1VUUFVUX0hETUkgJiYgdHlwZSAhPSBJ
TlRFTF9PVVRQVVRfRURQKSB7CisJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGVobF9jb21ib19w
aHlfZGRpX3RyYW5zbGF0aW9uc19kcCk7CisJCXJldHVybiBlaGxfY29tYm9fcGh5X2RkaV90cmFu
c2xhdGlvbnNfZHA7CiAJfQogCiAJcmV0dXJuIGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9w
cml2LCB0eXBlLCByYXRlLCBuX2VudHJpZXMpOwotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
