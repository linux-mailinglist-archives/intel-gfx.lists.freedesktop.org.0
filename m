Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C27537A2BF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4092D6E443;
	Tue, 30 Jul 2019 08:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815E16E443
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702467"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:19 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:48 +0530
Message-Id: <20190730073648.5157-7-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 6/6] drm/i915/tgl/dsi: Enable blanking packets
 during BLLP for video mode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmxhbmtpbmcgcGFja2V0IGJpdCB3aWxsIGNvbnRyb2wgd2hldGhlciB0aGUgdHJhbnNjb2RlciBh
bGxvd3MgdGhlIGxpbmsKdG8gZW50ZXIgdGhlIExQIHN0YXRlIGR1cmluZyBCTExQIHJlZ2lvbnMg
KGFzc3VtaW5nIHRoZXJlIGlzIGVub3VnaCB0aW1lKSwKb3Igd2hldGhlciBpdCB3aWxsIGtlZXAg
dGhlIGxpbmsgaW4gdGhlIEhTIHN0YXRlIHdpdGggYSBCbGFua2luZyBQYWNrZXQKClNpZ25lZC1v
ZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwgNSArKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRl
eCBlYWYyNzc5Yjg5YjguLmFlMzM2MzlkNDhiYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMKQEAgLTY4NSw2ICs2ODUsMTEgQEAgZ2VuMTFfZHNpX2NvbmZpZ3VyZV90cmFu
c2NvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJYnJlYWs7CiAJCX0KIAor
CQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgeworCQkJaWYgKGlzX3ZpZF9tb2RlKGlu
dGVsX2RzaSkpCisJCQkJdG1wIHw9IEJMQU5LSU5HX1BBQ0tFVF9FTkFCTEU7CisJCX0KKwogCQkv
KiBwcm9ncmFtIERTSSBvcGVyYXRpb24gbW9kZSAqLwogCQlpZiAoaXNfdmlkX21vZGUoaW50ZWxf
ZHNpKSkgewogCQkJdG1wICY9IH5PUF9NT0RFX01BU0s7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApp
bmRleCBkMmI3NjEyMWQ4NjMuLjFhODQ3ZjQ0M2VmNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CkBAIC0xMDk3OSw2ICsxMDk3OSw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSAg
Q0FMSUJSQVRJT05fRElTQUJMRUQJCSgweDAgPDwgNCkKICNkZWZpbmUgIENBTElCUkFUSU9OX0VO
QUJMRURfSU5JVElBTF9PTkxZCSgweDIgPDwgNCkKICNkZWZpbmUgIENBTElCUkFUSU9OX0VOQUJM
RURfSU5JVElBTF9QRVJJT0RJQwkoMHgzIDw8IDQpCisjZGVmaW5lICBCTEFOS0lOR19QQUNLRVRf
RU5BQkxFCQkoMSA8PCAyKQogI2RlZmluZSAgUzNEX09SSUVOVEFUSU9OX0xBTkRTQ0FQRQkoMSA8
PCAxKQogI2RlZmluZSAgRU9UUF9ESVNBQkxFRAkJCSgxIDw8IDApCiAKLS0gCjIuMjEuMC41Lmdh
ZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
