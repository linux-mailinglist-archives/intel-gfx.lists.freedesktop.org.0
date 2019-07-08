Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A974361EEE
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 14:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC8889D7C;
	Mon,  8 Jul 2019 12:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACD289D7D;
 Mon,  8 Jul 2019 12:54:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 05:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="155860434"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 08 Jul 2019 05:54:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Jul 2019 15:54:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 15:53:18 +0300
Message-Id: <20190708125325.16576-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
References: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/19] drm/i915: Move
 check_digital_port_conflicts() earier
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNo
ZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoKSBpcyBkb25lIG5lZWRsZXNzbHkgbGF0ZS4gTW92
ZSBpdCBlYXJsaWVyLgpUaGlzIHdpbGwgYmUgbmVlZGVkIGFzIGxhdGVyIG9uIHdlIHdhbnQgdG8g
c2V0IGFueV9tcz10cnVlIGEgYml0IGxhdGVyCmZvciBub24tbW9kZXNldHMgdG9vIGFuZCB3ZSBj
YW4ndCBjYWxsIHRoaXMgZ3V5IHdpdGhvdXQgdGhlCmNvbm5lY3Rpb25fbXV0ZXggaGVsZC4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAx
MSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmlu
ZGV4IDViNjMwMGI4MmM1MC4uZWFlZDRhZWU0ZWU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTMzODAsMTEgKzEzMzgwLDYgQEAgc3RhdGlj
IGludCBpbnRlbF9tb2Rlc2V0X2NoZWNrcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlpbnQgcmV0LCBpOwogCi0JaWYgKCFjaGVj
a19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0YXRlKSkgewotCQlEUk1fREVCVUdfS01TKCJyZWpl
Y3RpbmcgY29uZmxpY3RpbmcgZGlnaXRhbCBwb3J0IGNvbmZpZ3VyYXRpb25cbiIpOwotCQlyZXR1
cm4gLUVJTlZBTDsKLQl9Ci0KIAkvKiBrZWVwIHRoZSBjdXJyZW50IHNldHRpbmcgKi8KIAlpZiAo
IXN0YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGtfY2hhbmdlZCkKIAkJc3RhdGUtPmNkY2xrLmZv
cmNlX21pbl9jZGNsayA9IGRldl9wcml2LT5jZGNsay5mb3JjZV9taW5fY2RjbGs7CkBAIC0xMzU0
Niw2ICsxMzU0MSwxMiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LAogCQkJYW55X21zID0gdHJ1ZTsKIAl9CiAKKwlpZiAoYW55X21zICYmICFj
aGVja19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0YXRlKSkgeworCQlEUk1fREVCVUdfS01TKCJy
ZWplY3RpbmcgY29uZmxpY3RpbmcgZGlnaXRhbCBwb3J0IGNvbmZpZ3VyYXRpb25cbiIpOworCQly
ZXQgPSBFSU5WQUw7CisJCWdvdG8gZmFpbDsKKwl9CisKIAlyZXQgPSBkcm1fZHBfbXN0X2F0b21p
Y19jaGVjaygmc3RhdGUtPmJhc2UpOwogCWlmIChyZXQpCiAJCWdvdG8gZmFpbDsKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
