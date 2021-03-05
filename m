Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDE132F468
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 21:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0C46EC45;
	Fri,  5 Mar 2021 20:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2246EC45
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 20:05:03 +0000 (UTC)
IronPort-SDR: hQS9JRU0tdFvTCgQzJv9KUdTJjkEW66xkV9NicPcU7Y/HmEKwD+bnFFtArBpPbfAnXQApnIqQg
 daN++j8nHVpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="184349578"
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="184349578"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 12:05:03 -0800
IronPort-SDR: Y13ViZNX2EFIy4Svyx0AlpTZaRuYhRL/7XUvKlzGeKr3y2VaLteB6lG/GO+eo7qwAwYa07PZtZ
 XSKjoOtceL9w==
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="408478102"
Received: from srobinso-mobl.ger.corp.intel.com (HELO helsinki.intel.com)
 ([10.214.242.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 12:05:01 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 22:04:50 +0200
Message-Id: <20210305200451.397875-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305200451.397875-1-gwan-gyeong.mun@intel.com>
References: <20210305200451.397875-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/display: Remove a redundant
 function argument from intel_psr_enable_source()
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

SXQgcmVtb3ZlcyBpbnRlbF9jcnRjX3N0YXRlIGZyb20gZnVuY3Rpb24gYXJndW1lbnQgb2YKaW50
ZWxfcHNyX2VuYWJsZV9zb3VyY2UoKSBpbiBvcmRlciB0byB1c2UgaW50ZWxfcHNyX2VuYWJsZV9z
b3VyY2UoKQp3aXRob3V0IGludGVsX2NydGNfc3RhdGUgb24gb3RoZXIgcHNyIGludGVybmFsIGZ1
bmN0aW9ucy4KQW5kIHdlIGNhbiBnZXQgY3B1X3RyYW5jb2RlciBmcm9tIGludGVsX3BzciwgdGhl
cmVmb3JlIHdlIGRvbid0IG5lZWQgdG8KcGFzcyBpbnRlbF9jcnRjX3N0YXRlIHRvIHRoaXMgZnVu
Y3Rpb24uCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggOWMyNWE3MDE5NDNh
Li5jZTdjZTgyZDZmMWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YwpAQCAtODk2LDExICs4OTYsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2FjdGl2YXRlKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaW50ZWxfZHAtPnBzci5hY3RpdmUgPSB0cnVlOwog
fQogCi1zdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAotCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKK3N0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBf
dG9faTkxNShpbnRlbF9kcCk7Ci0JZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0
Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7CisJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVy
ID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOwogCXUzMiBtYXNrOwogCiAJLyogT25seSBIU1cg
YW5kIEJEVyBoYXZlIFBTUiBBVVggcmVnaXN0ZXJzIHRoYXQgbmVlZCB0byBiZSBzZXR1cC4gU0tM
KwpAQCAtMTAwOCw3ICsxMDA3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2Nr
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCQkgICAgICZpbnRlbF9kcC0+cHNyLnZz
Yyk7CiAJaW50ZWxfd3JpdGVfZHBfdnNjX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlLCAmaW50ZWxf
ZHAtPnBzci52c2MpOwogCWludGVsX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCk7Ci0JaW50ZWxf
cHNyX2VuYWJsZV9zb3VyY2UoaW50ZWxfZHAsIGNydGNfc3RhdGUpOworCWludGVsX3Bzcl9lbmFi
bGVfc291cmNlKGludGVsX2RwKTsKIAlpbnRlbF9kcC0+cHNyLmVuYWJsZWQgPSB0cnVlOwogCiAJ
aW50ZWxfcHNyX2FjdGl2YXRlKGludGVsX2RwKTsKLS0gCjIuMzAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
