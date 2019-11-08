Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 240DCF593F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 22:14:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56FAF6FA88;
	Fri,  8 Nov 2019 21:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95BE6FA88
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 21:14:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 13:14:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="213309410"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2019 13:14:37 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 13:13:52 -0800
Message-Id: <20191108211353.22288-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108211353.22288-1-lucas.demarchi@intel.com>
References: <20191108211353.22288-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/bios: make sure to check vbt size
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

V2hlbiB3ZSBjYWxsIGludGVsX2Jpb3NfaXNfdmFsaWRfdmJ0KCksIHNpemUgbWF5IG5vdCBhY3R1
YWxseSBiZSB0aGUKc2l6ZSBvZiB0aGUgVkJULCBidXQgcmF0aGVyIHRoZSBzaXplIG9mIHRoZSBi
bG9iIHRoZSBWQlQgaXMgY29udGFpbmVkCmluLiBGb3IgZXhhbXBsZSwgd2hlbiBtYXBwaW5nIHRo
ZSBQQ0kgb3Byb20sIHNpemUgd2lsbCBiZSB0aGUgZW50aXJlCm9wcm9tIHNpemUuIFdlIGRvbid0
IHdhbnQgdG8gcmVhZCBiZXlvbmQgd2hhdCBpcyByZXBvcnRlZCB0byBiZSB0aGUKVkJULiBTbyBt
YWtlIHN1cmUgd2UgdmJ0LT52YnRfc2l6ZSBtYWtlcyBzZW5zZSBhbmQgdXNlIHRoYXQgZm9yCnRo
ZSBsYXR0ZXIgY2hlY2tzLgoKdjI6IGNoZWNrIGZvciB2YnRfc2l6ZSBhZnRlciBjaGVja2luZyBm
b3IgdmJ0IHNpZ25hdHVyZSBhbmQgZ2l2ZSBpdCBhCm1vcmUgbWVhbmluZ2Z1bCBlcnJvciBtZXNz
YWdlIChmcm9tIEphbmkpCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDE5MTEwODAwMzYwMi4zMzUyNi0zLWx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbQotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgNyArKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYwppbmRleCAxZjgzNjE2Y2ZjMzIuLmM3OTc4MWUxY2NiZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTE3ODcsNiArMTc4NywxMyBAQCBi
b29sIGludGVsX2Jpb3NfaXNfdmFsaWRfdmJ0KGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IHNpemUp
CiAJCXJldHVybiBmYWxzZTsKIAl9CiAKKwlpZiAodmJ0LT52YnRfc2l6ZSA+IHNpemUpIHsKKwkJ
RFJNX0RFQlVHX0RSSVZFUigiVkJUIGluY29tcGxldGUgKHZidF9zaXplIG92ZXJmbG93cylcbiIp
OworCQlyZXR1cm4gZmFsc2U7CisJfQorCisJc2l6ZSA9IHZidC0+dmJ0X3NpemU7CisKIAlpZiAo
cmFuZ2Vfb3ZlcmZsb3dzX3Qoc2l6ZV90LAogCQkJICAgICAgdmJ0LT5iZGJfb2Zmc2V0LAogCQkJ
ICAgICAgc2l6ZW9mKHN0cnVjdCBiZGJfaGVhZGVyKSwKLS0gCjIuMjQuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
