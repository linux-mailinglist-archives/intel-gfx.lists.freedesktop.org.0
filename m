Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748ED7A2BE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C65D6E442;
	Tue, 30 Jul 2019 08:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663646E442
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702452"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:15 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:46 +0530
Message-Id: <20190730073648.5157-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 4/6] drm/i915/tgl/dsi: Gate the ddi clocks after
 pll mapping
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

Rm9yIFRHTCwgdGhlcmUgaXMgbm8gbmVlZCB0byBrZWVwIERESSBjbG9jayBvbiB0aWxsIElPIGVu
YWJsaW5nCmZvciBtaXBpIGRzaS4KClNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYyB8IDEwICsrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCBj
NmNkYTUyOWM1YmIuLmVhZjI3NzliODliOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMKQEAgLTYwNyw3ICs2MDcsMTAgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX21hcF9w
bGwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJSTkxNV9XUklURShJQ0xfRFBDTEtB
X0NGR0NSMCwgdmFsKTsKIAogCWZvcl9lYWNoX2RzaV9waHkocGh5LCBpbnRlbF9kc2ktPnBoeXMp
IHsKLQkJdmFsICY9IH5JQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpOworCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJCXZhbCB8PSBJQ0xfRFBDTEtBX0NGR0NSMF9E
RElfQ0xLX09GRihwaHkpOworCQllbHNlCisJCQl2YWwgJj0gfklDTF9EUENMS0FfQ0ZHQ1IwX0RE
SV9DTEtfT0ZGKHBoeSk7CiAJfQogCUk5MTVfV1JJVEUoSUNMX0RQQ0xLQV9DRkdDUjAsIHZhbCk7
CiAKQEAgLTk1MSw2ICs5NTQsOCBAQCBzdGF0aWMgdm9pZAogZ2VuMTFfZHNpX2VuYWJsZV9wb3J0
X2FuZF9waHkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgICAgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7CisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisKIAkvKiBz
dGVwIDRhOiBwb3dlciB1cCBhbGwgbGFuZXMgb2YgdGhlIERESSB1c2VkIGJ5IERTSSAqLwogCWdl
bjExX2RzaV9wb3dlcl91cF9sYW5lcyhlbmNvZGVyKTsKIApAQCAtOTczLDcgKzk3OCw4IEBAIGdl
bjExX2RzaV9lbmFibGVfcG9ydF9hbmRfcGh5KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCWdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihlbmNvZGVyLCBwaXBlX2NvbmZpZyk7
CiAKIAkvKiBTdGVwIDRsOiBHYXRlIERESSBjbG9ja3MgKi8KLQlnZW4xMV9kc2lfZ2F0ZV9jbG9j
a3MoZW5jb2Rlcik7CisJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQorCQlnZW4xMV9kc2lfZ2F0
ZV9jbG9ja3MoZW5jb2Rlcik7CiB9CiAKIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9wb3dlcnVwX3Bh
bmVsKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQotLSAKMi4yMS4wLjUuZ2FlYjU4MmEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
