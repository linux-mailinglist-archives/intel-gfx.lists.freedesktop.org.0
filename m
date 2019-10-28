Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9AAE76B8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 17:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA2B26E0C5;
	Mon, 28 Oct 2019 16:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325526E0C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 16:40:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 09:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="198117114"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by fmsmga008.fm.intel.com with ESMTP; 28 Oct 2019 09:39:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 16:39:50 +0000
Message-Id: <20191028163950.9429-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/blt: fixup block_size rounding
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

VGhlcmUgaXMgbm90aGluZyB0byBzYXkgdGhhdCB0aGUgb2JqLT5iYXNlLnNpemUgaXMgYWN0dWFs
bHkgYSBtdWx0aXBsZQpvZiB0aGUgYmxvY2tfc2l6ZS4KClJlcG9ydGVkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dF9ibHQuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9i
bHQuYwppbmRleCA1MTZlNjFlOTkyMTIuLjU1OTdmMTM0NWE2MyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCkBAIC0zMCw3ICszMCw3IEBAIHN0
cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfZmlsbF9ibHQoc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLAogCUdFTV9CVUdfT04oaW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoY2UtPmVuZ2luZSkp
OwogCWludGVsX2VuZ2luZV9wbV9nZXQoY2UtPmVuZ2luZSk7CiAKLQljb3VudCA9IGRpdl91NjQo
dm1hLT5zaXplLCBibG9ja19zaXplKTsKKwljb3VudCA9IERJVjY0X1U2NF9ST1VORF9VUCh2bWEt
PnNpemUsIGJsb2NrX3NpemUpOwogCXNpemUgPSAoMSArIDggKiBjb3VudCkgKiBzaXplb2YodTMy
KTsKIAlzaXplID0gcm91bmRfdXAoc2l6ZSwgUEFHRV9TSVpFKTsKIAlwb29sID0gaW50ZWxfZW5n
aW5lX2dldF9wb29sKGNlLT5lbmdpbmUsIHNpemUpOwpAQCAtMjE0LDcgKzIxNCw3IEBAIHN0cnVj
dCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfY29weV9ibHQoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlLAogCUdFTV9CVUdfT04oaW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoY2UtPmVuZ2luZSkpOwog
CWludGVsX2VuZ2luZV9wbV9nZXQoY2UtPmVuZ2luZSk7CiAKLQljb3VudCA9IGRpdl91NjQoZHN0
LT5zaXplLCBibG9ja19zaXplKTsKKwljb3VudCA9IERJVjY0X1U2NF9ST1VORF9VUChkc3QtPnNp
emUsIGJsb2NrX3NpemUpOwogCXNpemUgPSAoMSArIDExICogY291bnQpICogc2l6ZW9mKHUzMik7
CiAJc2l6ZSA9IHJvdW5kX3VwKHNpemUsIFBBR0VfU0laRSk7CiAJcG9vbCA9IGludGVsX2VuZ2lu
ZV9nZXRfcG9vbChjZS0+ZW5naW5lLCBzaXplKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
