Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD7B2E946A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70DD89DDF;
	Mon,  4 Jan 2021 11:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D753D899E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:59:13 +0000 (UTC)
IronPort-SDR: kmdLkRFPR9AuGbFGHX9xpuJHKOpcvY2E3XICrO3a/KR7CBF/rQcRGrhiadTK8JDbOTX6pzwC7E
 uP5ZQlxehIPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="177097760"
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="177097760"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 03:59:13 -0800
IronPort-SDR: qEHzqQsgQQvMtoRSuIzMU4L17un5YtXE2bVL/3ajLdLkIIK4ABkVStyQ3vvcJpej4f7n+0Khso
 D9dbtmDCyPKA==
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="378390096"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 03:59:12 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 13:58:43 +0200
Message-Id: <20210104115844.1068561-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210104115844.1068561-1-gwan-gyeong.mun@intel.com>
References: <20210104115844.1068561-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 4/5] drm/i915/display/psr: Program plane's
 calculated offset to plane SF register
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpJdCBw
cm9ncmFtcyBQbGFuZSdzIGNhbGN1bGF0ZWQgeCwgeSwgb2Zmc2V0IHRvIFBsYW5lIFNGIHJlZ2lz
dGVyLgpJdCBkb2VzIHRoZSBjYWxjdWxhdGlvbiBvZiB4IGFuZCB5IG9mZnNldHMgdXNpbmcKc2ts
X2NhbGNfbWFpbl9zdXJmYWNlX29mZnNldCgpLgoKdjM6IFVwZGF0ZSBjb21taXQgbWVzc2FnZQoK
Q2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpUZXN0ZWQtYnk6
IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTQgKysrKysrKysrKy0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGY1Yjk1MTliMzc1Ni4uYzI0YWU2
OTQyNmNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTEx
ODYsNyArMTE4Niw4IEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaChz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUocGxhbmUtPmJhc2UuZGV2KTsKIAllbnVtIHBpcGUgcGlwZSA9IHBsYW5l
LT5waXBlOwogCWNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqY2xpcDsKLQl1MzIgdmFsOworCXUzMiB2
YWwsIG9mZnNldDsKKwlpbnQgcmV0LCB4LCB5OwogCiAJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVf
cHNyMl9zZWxfZmV0Y2gpCiAJCXJldHVybjsKQEAgLTEyMDMsOSArMTIwNCwxNCBAQCB2b2lkIGlu
dGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwKIAl2YWwgfD0gcGxhbmVfc3RhdGUtPnVhcGkuZHN0LngxOwogCWludGVsX2RlX3dyaXRlX2Z3
KGRldl9wcml2LCBQTEFORV9TRUxfRkVUQ0hfUE9TKHBpcGUsIHBsYW5lLT5pZCksIHZhbCk7CiAK
LQkvKiBUT0RPOiBjb25zaWRlciB0aWxpbmcgYW5kIGF1eGlsaWFyeSBzdXJmYWNlcyAqLwotCXZh
bCA9IChjbGlwLT55MSArIHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueSkg
PDwgMTY7Ci0JdmFsIHw9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueDsK
KwkvKiBUT0RPOiBjb25zaWRlciBhdXhpbGlhcnkgc3VyZmFjZXMgKi8KKwl4ID0gcGxhbmVfc3Rh
dGUtPnVhcGkuc3JjLngxID4+IDE2OworCXkgPSAocGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+
IDE2KSArIGNsaXAtPnkxOworCXJldCA9IHNrbF9jYWxjX21haW5fc3VyZmFjZV9vZmZzZXQocGxh
bmVfc3RhdGUsICZ4LCAmeSwgJm9mZnNldCk7CisJaWYgKHJldCkKKwkJZHJtX3dhcm5fb25jZSgm
ZGV2X3ByaXYtPmRybSwgInNrbF9jYWxjX21haW5fc3VyZmFjZV9vZmZzZXQoKSByZXR1cm5lZCAl
aVxuIiwKKwkJCSAgICAgIHJldCk7CisJdmFsID0geSA8PCAxNiB8IHg7CiAJaW50ZWxfZGVfd3Jp
dGVfZncoZGV2X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9PRkZTRVQocGlwZSwgcGxhbmUtPmlkKSwK
IAkJCSAgdmFsKTsKIAotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
