Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01859100972
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4779A6E621;
	Mon, 18 Nov 2019 16:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD4D6E621
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:44:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:44:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="289310079"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Nov 2019 08:44:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 18:44:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:44:25 +0200
Message-Id: <20191118164430.27265-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
References: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/10] drm/i915: Pass intel_crtc to
 ironlake_fdi_disable()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN3
aXRjaCB0byBpbnRlbF9jcnRjIGZyb20gZHJtX2NydGMuCgpSZXZpZXdlZC1ieTogTWFuYXNpIE5h
dmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEwICsrKystLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwODRmOTRlYzc5YTQuLmM4NzNj
ODVhNjlhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTUwNjEsMTIgKzUwNjEsMTAgQEAgc3RhdGljIHZvaWQgaXJvbmxha2VfZmRpX3BsbF9k
aXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjKQogCXVkZWxheSgxMDApOwogfQog
Ci1zdGF0aWMgdm9pZCBpcm9ubGFrZV9mZGlfZGlzYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMp
CitzdGF0aWMgdm9pZCBpcm9ubGFrZV9mZGlfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykKIHsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+ZGV2OwotCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqaW50ZWxfY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Yyk7Ci0JZW51bSBwaXBlIHBpcGUgPSBp
bnRlbF9jcnRjLT5waXBlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAlp
OTE1X3JlZ190IHJlZzsKIAl1MzIgdGVtcDsKIApAQCAtNjc3Miw3ICs2NzcwLDcgQEAgc3RhdGlj
IHZvaWQgaXJvbmxha2VfY3J0Y19kaXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSwKIAlpcm9ubGFrZV9wZml0X2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOwogCiAJ
aWYgKG9sZF9jcnRjX3N0YXRlLT5oYXNfcGNoX2VuY29kZXIpCi0JCWlyb25sYWtlX2ZkaV9kaXNh
YmxlKGNydGMpOworCQlpcm9ubGFrZV9mZGlfZGlzYWJsZShpbnRlbF9jcnRjKTsKIAogCWludGVs
X2VuY29kZXJzX3Bvc3RfZGlzYWJsZShzdGF0ZSwgaW50ZWxfY3J0Yyk7CiAKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
