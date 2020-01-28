Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE4A14BD57
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497076E0DC;
	Tue, 28 Jan 2020 15:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419B66E0DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:56:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 07:52:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="222144272"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 Jan 2020 07:52:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2020 17:51:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 17:51:51 +0200
Message-Id: <20200128155152.21977-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
References: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: Drop WaDDIIOTimeout:glk
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldh
RERJSU9UaW1lb3V0IGlzIG9ubHkgZm9yIEExIChwcmUtcHJvZCkgZ2xrIHN0ZXBwaW5ncy4gTnVr
ZSBpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDEwIC0t
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYwppbmRleCAxY2Y5MDlkODM0N2IuLmU5NTAzYmJkNmYzMyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCkBAIC0xMjgsMTYgKzEyOCw2IEBAIHN0YXRpYyB2b2lkIGdsa19pbml0X2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJICovCiAJSTkxNV9X
UklURShHRU45X0NMS0dBVEVfRElTXzAsIEk5MTVfUkVBRChHRU45X0NMS0dBVEVfRElTXzApIHwK
IAkJICAgUFdNMV9HQVRJTkdfRElTIHwgUFdNMl9HQVRJTkdfRElTKTsKLQotCS8qIFdhRERJSU9U
aW1lb3V0OmdsayAqLwotCWlmIChJU19HTEtfUkVWSUQoZGV2X3ByaXYsIDAsIEdMS19SRVZJRF9B
MSkpIHsKLQkJdTMyIHZhbCA9IEk5MTVfUkVBRChDSElDS0VOX01JU0NfMik7Ci0JCXZhbCAmPSB+
KEdMS19DTDBfUFdSX0RPV04gfAotCQkJIEdMS19DTDFfUFdSX0RPV04gfAotCQkJIEdMS19DTDJf
UFdSX0RPV04pOwotCQlJOTE1X1dSSVRFKENISUNLRU5fTUlTQ18yLCB2YWwpOwotCX0KLQogfQog
CiBzdGF0aWMgdm9pZCBwbnZfZ2V0X21lbV9mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
