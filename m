Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E35627DCB9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9C76E418;
	Tue, 29 Sep 2020 23:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3886E408
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:35:00 +0000 (UTC)
IronPort-SDR: kVysjN3rApoC8UgE2AyPT+xxQmCgX9Hm6FdJ0xs0u1trk1ODb4J6MDFuyBfhiweLWrA3ffpydT
 fcU6LOoCIm0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142334491"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="142334491"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:35:00 -0700
IronPort-SDR: QDK/0xorv5MVre25Av3O+/NcMEjSlXdst7I1NAqRkzppqAf6C56QHQ1zIYSeG+yRTYuNX154B4
 c4mupmLx92wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="324849351"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 29 Sep 2020 16:34:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:34:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:41 +0300
Message-Id: <20200929233449.32323-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/11] drm/i915: Make
 intel_dp_process_phy_request() static
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX2RwX3Byb2Nlc3NfcGh5X3JlcXVlc3QoKSBoYXMgbm8gYnVzaW5lc3MgYmVpbmcgZXh0ZXJu
YWxseQp2aXNpYmxlLiBNYWtlIGl0IHN0YXRpYy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oIHwgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRl
eCAzNTg2ZDc5ZjU1OTkuLjVjNjczMDgwZWNiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwpAQCAtNTU2Miw3ICs1NTYyLDcgQEAgaW50ZWxfZHBfYXV0b3Rlc3RfcGh5
X2RkaV9lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdWludDhfdCBsYW5lX2NudCkK
IAkJICAgICAgIHRyYW5zX2RkaV9mdW5jX2N0bF92YWx1ZSk7CiB9CiAKLXZvaWQgaW50ZWxfZHBf
cHJvY2Vzc19waHlfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQorc3RhdGljIHZv
aWQgaW50ZWxfZHBfcHJvY2Vzc19waHlfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQogewogCXN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zICpkYXRhID0KIAkJJmludGVsX2Rw
LT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5oCmluZGV4IGE5NTgwZDFkZjM1Yi4uNjBmNDRmNDFmZDA4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCkBAIC0xMjMsNyArMTIzLDYgQEAgdm9pZCBp
bnRlbF9yZWFkX2RwX3NkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJICAgICAg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkgICAgICAgdW5zaWduZWQg
aW50IHR5cGUpOwogYm9vbCBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKTsKLXZvaWQgaW50ZWxfZHBfcHJvY2Vzc19waHlfcmVxdWVzdChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIAogc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQg
aW50ZWxfZHBfdW51c2VkX2xhbmVfbWFzayhpbnQgbGFuZV9jb3VudCkKIHsKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
