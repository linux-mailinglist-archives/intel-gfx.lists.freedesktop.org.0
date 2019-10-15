Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEBDD804D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6989E6E887;
	Tue, 15 Oct 2019 19:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783ED6E888
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:30:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="279291263"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 15 Oct 2019 12:30:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:30:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:30:25 +0300
Message-Id: <20191015193035.25982-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/13] drm/i915: Move
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
ZGV4IGE4NDQ0ZDk4NDFjMS4uNDRiZDRkMTUwMTliIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM0NTYsMTEgKzEzNDU2LDYgQEAgc3RhdGlj
IGludCBpbnRlbF9tb2Rlc2V0X2NoZWNrcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlpbnQgcmV0LCBpOwogCi0JaWYgKCFjaGVj
a19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0YXRlKSkgewotCQlEUk1fREVCVUdfS01TKCJyZWpl
Y3RpbmcgY29uZmxpY3RpbmcgZGlnaXRhbCBwb3J0IGNvbmZpZ3VyYXRpb25cbiIpOwotCQlyZXR1
cm4gLUVJTlZBTDsKLQl9Ci0KIAkvKiBrZWVwIHRoZSBjdXJyZW50IHNldHRpbmcgKi8KIAlpZiAo
IXN0YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGtfY2hhbmdlZCkKIAkJc3RhdGUtPmNkY2xrLmZv
cmNlX21pbl9jZGNsayA9IGRldl9wcml2LT5jZGNsay5mb3JjZV9taW5fY2RjbGs7CkBAIC0xMzYy
Miw2ICsxMzYxNywxMiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LAogCQkJYW55X21zID0gdHJ1ZTsKIAl9CiAKKwlpZiAoYW55X21zICYmICFj
aGVja19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0YXRlKSkgeworCQlEUk1fREVCVUdfS01TKCJy
ZWplY3RpbmcgY29uZmxpY3RpbmcgZGlnaXRhbCBwb3J0IGNvbmZpZ3VyYXRpb25cbiIpOworCQly
ZXQgPSBFSU5WQUw7CisJCWdvdG8gZmFpbDsKKwl9CisKIAlyZXQgPSBkcm1fZHBfbXN0X2F0b21p
Y19jaGVjaygmc3RhdGUtPmJhc2UpOwogCWlmIChyZXQpCiAJCWdvdG8gZmFpbDsKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
