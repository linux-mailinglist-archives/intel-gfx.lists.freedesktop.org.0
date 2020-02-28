Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CAD174110
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 21:36:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6700A6F4C9;
	Fri, 28 Feb 2020 20:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A214F6F4CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 20:36:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 12:36:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="318225067"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 28 Feb 2020 12:36:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 22:36:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 22:35:52 +0200
Message-Id: <20200228203552.30273-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Implement display w/a 1140 for
 glk/cnl
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRp
c3BsYXkgdy9hICMxMTQwIHRlbGxzIHVzIHdlIGhhdmUgdG8gcHJvZ3JhbSB0aGUgdHJhbnNpdGlv
bgp3YXRlcm1hcmsgdG8gdGhlIG1pbmltdW0gdmFsdWUgb24gZ2xrL2NubC4gTGV0J3MgZG8gdGhh
dC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDEzICsrKysrKysrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKaW5kZXggZjdjMTFiOWYyYzI5Li4wNDAxM2FmMWVhZjEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNTExNiw4ICs1MTE2LDcgQEAgc3RhdGljIHZvaWQgc2ts
X2NvbXB1dGVfdHJhbnNpdGlvbl93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKIHsKIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjLT5kZXY7CiAJY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShkZXYpOwotCXUxNiB0cmFuc19taW4sIHRyYW5zX3lfdGlsZV9taW47Ci0JY29uc3QgdTE2
IHRyYW5zX2Ftb3VudCA9IDEwOyAvKiBUaGlzIGlzIGNvbmZpZ3VyYWJsZSBhbW91bnQgKi8KKwl1
MTYgdHJhbnNfbWluLCB0cmFuc19hbW91bnQsIHRyYW5zX3lfdGlsZV9taW47CiAJdTE2IHdtMF9z
ZWxfcmVzX2IsIHRyYW5zX29mZnNldF9iLCByZXNfYmxvY2tzOwogCiAJLyogVHJhbnNpdGlvbiBX
TSBkb24ndCBtYWtlIGFueSBzZW5zZSBpZiBpcGMgaXMgZGlzYWJsZWQgKi8KQEAgLTUxMzEsOSAr
NTEzMCwxNiBAQCBzdGF0aWMgdm9pZCBza2xfY29tcHV0ZV90cmFuc2l0aW9uX3dtKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWlmIChJU19HRU45X0JDKGRldl9w
cml2KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KSkKIAkJcmV0dXJuOwogCi0JdHJhbnNfbWluID0g
MTQ7CiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCiAJCXRyYW5zX21pbiA9IDQ7CisJ
ZWxzZQorCQl0cmFuc19taW4gPSAxNDsKKworCS8qIERpc3BsYXkgV0EgIzExNDA6IGdsayxjbmwg
Ki8KKwlpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpCisJCXRyYW5zX2Ftb3VudCA9IDA7CisJZWxzZQorCQl0cmFuc19hbW91bnQgPSAxMDsgLyog
VGhpcyBpcyBjb25maWd1cmFibGUgYW1vdW50ICovCiAKIAl0cmFuc19vZmZzZXRfYiA9IHRyYW5z
X21pbiArIHRyYW5zX2Ftb3VudDsKIApAQCAtNTE2MCw3ICs1MTY2LDYgQEAgc3RhdGljIHZvaWQg
c2tsX2NvbXB1dGVfdHJhbnNpdGlvbl93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKIAkJLyogV0EgQlVHOjE5Mzg0NjYgYWRkIG9uZSBibG9jayBmb3Igbm9uIHkt
dGlsZSBwbGFuZXMgKi8KIAkJaWYgKElTX0NOTF9SRVZJRChkZXZfcHJpdiwgQ05MX1JFVklEX0Ew
LCBDTkxfUkVWSURfQTApKQogCQkJcmVzX2Jsb2NrcyArPSAxOwotCiAJfQogCiAJLyoKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
