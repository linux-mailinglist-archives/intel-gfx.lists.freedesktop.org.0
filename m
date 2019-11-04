Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDD0EE5A6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 18:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E4F66E785;
	Mon,  4 Nov 2019 17:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C8E6E785;
 Mon,  4 Nov 2019 17:14:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 09:14:00 -0800
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="204671207"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 09:13:57 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  4 Nov 2019 18:13:30 +0100
Message-Id: <20191104171330.24821-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191104171330.24821-1-janusz.krzysztofik@linux.intel.com>
References: <20191104171330.24821-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 4/4] tests/gem_ctx_shared: Align
 objects using minimum GTT alignment
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZXhlYy1zaGFyZWQtZ3R0LSogc3VidGVzdHMgdXNlIGhhcmRjb2RlZCB2YWx1ZXMgZm9yIG9iamVj
dCBzaXplIGFuZApzb2Z0cGluIG9mZnNldCwgYmFzZWQgb24gNGtCIEdUVCBhbGlnbm1lbnQgYXNz
dW1wdGlvbi4gIFRoYXQgbWF5IHJlc3VsdAppbiB0aG9zZSBzdWJ0ZXN0cyBmYWlsaW5nIHdoZW4g
cnVuIG9uIGZ1dHVyZSBiYWNraW5nIHN0b3JlcyB3aXRoCnBvc3NpYmx5IGxhcmdlciBtaW5pbXVt
IHBhZ2Ugc2l6ZXMuCgpSZXBsYWNlIGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCB2YWx1ZXMgY2Fs
Y3VsYXRlZCBmcm9tIG1pbmltdW0gR1RUCmFsaWdubWVudCBvZiBhY3R1YWwgYmFja2luZyBzdG9y
ZSB0aGUgdGVzdCBpcyBydW5uaW5nIG9uLgoKdjI6IFVwZGF0ZSBoZWxwZXIgbmFtZSwgdXNlICdt
aW5pbXVtIEdUVCBhbGlnbm1lbnQnIHRlcm0gYWNyb3NzIHRoZQogICAgY2hhbmdlLCBhZGp1c3Qg
dmFyaWFibGUgbmFtZS4KdjM6IE5hbWUgdGhlIHZhcmlhYmxlICdzdHJpZGUnLCBub3QgJ2FsaWdu
bWVudCcsIGl0IGJldHRlciByZWZsZWN0cwogICAgaXRzIHB1cnBvc2UgKENocmlzKS4KClNpZ25l
ZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4Lmlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYyB8IDcgKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMK
aW5kZXggZjc4NTI0ODIuLmNiNzI2YjRkIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhf
c2hhcmVkLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCkBAIC00MSw2ICs0MSw3
IEBACiAjaW5jbHVkZSAiaWd0X3JhbmQuaCIKICNpbmNsdWRlICJpZ3RfdmdlbS5oIgogI2luY2x1
ZGUgInN5bmNfZmlsZS5oIgorI2luY2x1ZGUgImk5MTUvZ2VtX2d0dF90b3BvbG9neS5jIgogCiAj
ZGVmaW5lIExPIDAKICNkZWZpbmUgSEkgMQpAQCAtMTk1LDYgKzE5Niw3IEBAIHN0YXRpYyB2b2lk
IGV4ZWNfc2hhcmVkX2d0dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCiAJdWludDMyX3Qg
c2NyYXRjaCwgKnM7CiAJdWludDMyX3QgYmF0Y2gsIGNzWzE2XTsKIAl1aW50NjRfdCBvZmZzZXQ7
CisJdWludDY0X3Qgc3RyaWRlOwogCWludCBpOwogCiAJZ2VtX3JlcXVpcmVfcmluZyhpOTE1LCBy
aW5nKTsKQEAgLTIwMyw3ICsyMDUsOCBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50
IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQogCWNsb25lID0gZ2VtX2NvbnRleHRfY2xvbmUoaTkx
NSwgMCwgSTkxNV9DT05URVhUX0NMT05FX1ZNLCAwKTsKIAogCS8qIEZpbmQgYSBob2xlIGJpZyBl
bm91Z2ggZm9yIGJvdGggb2JqZWN0cyBsYXRlciAqLwotCXNjcmF0Y2ggPSBnZW1fY3JlYXRlKGk5
MTUsIDE2Mzg0KTsKKwlzdHJpZGUgPSAyICogZ2VtX2d0dF9taW5fYWxpZ25tZW50KGk5MTUpOwor
CXNjcmF0Y2ggPSBnZW1fY3JlYXRlKGk5MTUsIDIgKiBzdHJpZGUpOwogCWdlbV93cml0ZShpOTE1
LCBzY3JhdGNoLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7CiAJb2JqLmhhbmRsZSA9IHNjcmF0Y2g7
CiAJZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNidWYpOwpAQCAtMjQ2LDcgKzI0OSw3IEBAIHN0YXRp
YyB2b2lkIGV4ZWNfc2hhcmVkX2d0dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCiAJZ2Vt
X3dyaXRlKGk5MTUsIGJhdGNoLCAwLCBjcywgc2l6ZW9mKGNzKSk7CiAKIAlvYmouaGFuZGxlID0g
YmF0Y2g7Ci0Jb2JqLm9mZnNldCArPSA4MTkyOyAvKiBtYWtlIHN1cmUgd2UgZG9uJ3QgY2F1c2Ug
YW4gZXZpY3Rpb24hICovCisJb2JqLm9mZnNldCArPSBzdHJpZGU7IC8qIG1ha2Ugc3VyZSB3ZSBk
b24ndCBjYXVzZSBhbiBldmljdGlvbiEgKi8KIAlleGVjYnVmLnJzdmQxID0gY2xvbmU7CiAJaWYg
KGdlbiA+IDMgJiYgZ2VuIDwgNikKIAkJZXhlY2J1Zi5mbGFncyB8PSBJOTE1X0VYRUNfU0VDVVJF
OwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
