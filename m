Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AE61651FE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 22:57:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9716E880;
	Wed, 19 Feb 2020 21:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0667F6E880
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 21:57:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 13:57:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="283223368"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2020 13:57:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 13:56:55 -0800
Message-Id: <20200219215655.2923650-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <838de8a5c95f31e021a87a60d36167281667aad3.camel@intel.com>
References: <838de8a5c95f31e021a87a60d36167281667aad3.camel@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add Wa_22010178259:tgl
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

V2UgbmVlZCB0byBleHBsaWNpdGx5IHNldCB0aGUgVExCIFJlcXVlc3QgVGltZXIgaW5pdGlhbCB2
YWx1ZSBpbiB0aGUKQldfQlVERFkgcmVnaXN0ZXJzIHRvIDB4OCByYXRoZXIgdGhhbiByZWx5aW5n
IG9uIHRoZSBoYXJkd2FyZSBkZWZhdWx0LgoKdjI6IEFwcGx5IG1pc3NpbmcgUkVHX0ZJRUxEX1BS
RVAgdG8gZW5zdXJlIDB4OCBpcyBwbGFjZWQgaW4gdGhlIGNvcnJlY3QKICAgIGJpdHMgZHVyaW5n
IHRoZSBybXcuICAoSm9zZSkKCkJzcGVjOiA1Mjg5MApCc3BlYzogNTAwNDQKQ2M6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA4ICsrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAgICB8IDEgKwogMiBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IDBkOTRmZTAxYmU3Zi4uOGJhNjhlYzZk
YzI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwpAQCAtNTAwMyw2ICs1MDAzLDE0IEBAIHN0YXRpYyB2b2lkIHRnbF9id19idWRk
eV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCSAgICAgICB0YWJs
ZVtpXS5wYWdlX21hc2spOwogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQldfQlVERFkyX1BB
R0VfTUFTSywKIAkJCSAgICAgICB0YWJsZVtpXS5wYWdlX21hc2spOworCisJCS8qIFdhXzIyMDEw
MTc4MjU5OnRnbCAqLworCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEJXX0JVRERZMV9DVEwsCisJ
CQkgICAgIEJXX0JVRERZX1RMQl9SRVFfVElNRVJfTUFTSywKKwkJCSAgICAgUkVHX0ZJRUxEX1BS
RVAoQldfQlVERFlfVExCX1JFUV9USU1FUl9NQVNLLCAweDgpKTsKKwkJaW50ZWxfZGVfcm13KGRl
dl9wcml2LCBCV19CVUREWTJfQ1RMLAorCQkJICAgICBCV19CVUREWV9UTEJfUkVRX1RJTUVSX01B
U0ssCisJCQkgICAgIFJFR19GSUVMRF9QUkVQKEJXX0JVRERZX1RMQl9SRVFfVElNRVJfTUFTSywg
MHg4KSk7CiAJfQogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBhNjg0N2YyNjY3OGMu
LmQ4MjliOWFlODQwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03NzY2LDYgKzc3NjYs
NyBAQCBlbnVtIHsKICNkZWZpbmUgQldfQlVERFkxX0NUTAkJCV9NTUlPKDB4NDUxNDApCiAjZGVm
aW5lIEJXX0JVRERZMl9DVEwJCQlfTU1JTygweDQ1MTUwKQogI2RlZmluZSAgIEJXX0JVRERZX0RJ
U0FCTEUJCVJFR19CSVQoMzEpCisjZGVmaW5lICAgQldfQlVERFlfVExCX1JFUV9USU1FUl9NQVNL
CVJFR19HRU5NQVNLKDIxLCAxNikKIAogI2RlZmluZSBCV19CVUREWTFfUEFHRV9NQVNLCQlfTU1J
TygweDQ1MTQ0KQogI2RlZmluZSBCV19CVUREWTJfUEFHRV9NQVNLCQlfTU1JTygweDQ1MTU0KQot
LSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
