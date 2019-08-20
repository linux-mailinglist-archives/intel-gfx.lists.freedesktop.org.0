Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7745796A12
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 22:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D586E87F;
	Tue, 20 Aug 2019 20:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66EEF6E87F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 20:20:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 13:20:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="207493791"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.29])
 by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2019 13:19:59 -0700
Date: Tue, 20 Aug 2019 13:19:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190820201959.2fm2gooruxhawhsa@ldmartin-desk1>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817093902.2171-7-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 06/40] drm/i915: Add transcoder
 restriction to PSR2
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMTcsIDIwMTkgYXQgMDI6Mzg6MjhBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Cj4KPkFjY29yZGluZyB0byBQU1IyX0NUTCBkZWZpbml0aW9uIGluIEJTcGVjIHRoZXJlIGlz
IG9ubHkgb25lIGluc3RhbmNlIG9mCj5QU1IyX0NUTC4gUGxhdGZvcm1zIGdlbiA8IDEyIHdpdGgg
RURQIHRyYW5zY29kZXIgb25seSBzdXBwb3J0IFBTUjIgb24KPlRSQU5TQ09ERVJfRURQIHdoaWxl
IG9uIFRHTCBQU1IyIGlzIG9ubHkgc3VwcG9ydGVkIGJ5IFRSQU5TQ09ERVJfQS4KPgo+U2luY2Ug
QkRXIFBTUiBpcyBhbGxvd2VkIG9uIGFueSBwb3J0LCBidXQgd2UgbmVlZCB0byByZXN0cmljdCBi
eSB0cmFuc2NvZGVyLgo+Cj5CU3BlYzogNzcxMwo+QlNwZWM6IDIwNTg0Cj5DYzogRGhpbmFrYXJh
biBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Cj5DYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNiArKysrKysrKysrKysrKysrCj4gMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj5pbmRleCA3NzIzMmY2YmNhMTcuLjQzNTMyNzBiZDY1YyAxMDA2NDQKPi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPkBAIC01MzQsNiArNTM0LDE2IEBA
IHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Cj4gCUk5MTVfV1JJVEUoRURQX1BTUjJfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciksIHZh
bCk7Cj4gfQo+Cj4rc3RhdGljIGJvb2wKPitfcHNyMl9zdXBwb3J0ZWRfaW5fdHJhbnMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAoKd2h5IHRoZSBmaXJzdCB1bmRlcnNjb3JlPyBJ
J2QgbmFtZSB0aGlzIHBzcjJfc3VwcG9ydGVkKCkgLSB0aGUgZmFjdCB0aGF0Cml0IGlzICJpbiB0
cmFuc2NvZGVyIiBpcyBhbHJlYWR5IGV4cGxpY2l0IGJ5IHRoZSBhcmd1bWVudHMuCgpXaXRoIHRo
YXQKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgoKTHVjYXMgRGUgTWFyY2hpCgo+KwkJCSBlbnVtIHRyYW5zY29kZXIgdHJhbnMpCj4rewo+Kwlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPisJCXJldHVybiB0cmFucyA9PSBUUkFOU0NP
REVSX0E7Cj4rCWVsc2UKPisJCXJldHVybiB0cmFucyA9PSBUUkFOU0NPREVSX0VEUDsKPit9Cj4r
Cj4gc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKPiAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+
IHsKPkBAIC01NDUsNiArNTU1LDEyIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3Zh
bGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gCWlmICghZGV2X3ByaXYtPnBzci5zaW5r
X3BzcjJfc3VwcG9ydCkKPiAJCXJldHVybiBmYWxzZTsKPgo+KwlpZiAoIV9wc3IyX3N1cHBvcnRl
ZF9pbl90cmFucyhkZXZfcHJpdiwgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKSB7Cj4rCQlE
Uk1fREVCVUdfS01TKCJQU1IyIG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNjb2RlciAlc1xuIiwKPisJ
CQkgICAgICB0cmFuc2NvZGVyX25hbWUoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsKPisJ
CXJldHVybiBmYWxzZTsKPisJfQo+Kwo+IAkvKgo+IAkgKiBEU0MgYW5kIFBTUjIgY2Fubm90IGJl
IGVuYWJsZWQgc2ltdWx0YW5lb3VzbHkuIElmIGEgcmVxdWVzdGVkCj4gCSAqIHJlc29sdXRpb24g
cmVxdWlyZXMgRFNDIHRvIGJlIGVuYWJsZWQsIHByaW9yaXR5IGlzIGdpdmVuIHRvIERTQwo+LS0g
Cj4yLjIxLjAKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
