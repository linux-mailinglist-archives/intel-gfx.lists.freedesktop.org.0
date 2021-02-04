Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A56C30FD1F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 20:44:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595196EE51;
	Thu,  4 Feb 2021 19:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5720E6EE4F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 19:44:31 +0000 (UTC)
IronPort-SDR: 8lHkRJ+mY4dz5ebp/9cHIFvkS+gGQyA+gSwUrNg8rC71Zp7iHH9gE3ECLG8+Nh7iKrd9yz6odI
 SXCsYZ3oF3Sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="160477190"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="160477190"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 11:44:23 -0800
IronPort-SDR: Odw3JYQIyIbA/lr2za0gHpny1tVIxe2QrBg9jPCYLwwiFycQNBkhxZQqf2AlZEiSPQXz35wJTI
 tcKyyD+HVV1w==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="357318731"
Received: from dbmayer-mobl.ger.corp.intel.com (HELO localhost) ([10.252.53.1])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 11:44:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 21:43:23 +0200
Message-Id: <5f5ff960eebdd83b0585fd7072be9468b7ff587f.1612467466.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1612467466.git.jani.nikula@intel.com>
References: <cover.1612467466.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 06/10] drm/i915: move is_ccs_modifier to an
 inline
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoZXJlIGlzIG5vIG5lZWQg
Zm9yIHRoaXMgdG8gYmUgb3V0IG9mIGxpbmUuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJs
aWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyAgICAgICB8IDkgLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA5ICsrKysrKysrKwogMyBmaWxlcyBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggODIxMWNiNDBiNWM2Li4zNzU4NjI3ZjBm
N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xODIzLDE1ICsxODIzLDYgQEAgaW50ZWxfZ2V0X2Zvcm1hdF9pbmZvKGNvbnN0IHN0cnVjdCBk
cm1fbW9kZV9mYl9jbWQyICpjbWQpCiAJfQogfQogCi1ib29sIGlzX2Njc19tb2RpZmllcih1NjQg
bW9kaWZpZXIpCi17Ci0JcmV0dXJuIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVE
X0dFTjEyX1JDX0NDUyB8fAotCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9HRU4xMl9SQ19DQ1NfQ0MgfHwKLQkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRf
TU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIHx8Ci0JICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0NDUyB8fAotCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9N
T0RfWWZfVElMRURfQ0NTOwotfQotCiBzdGF0aWMgaW50IGdlbjEyX2Njc19hdXhfc3RyaWRlKHN0
cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY2NzX3BsYW5lKQogewogCXJldHVybiBESVZf
Uk9VTkRfVVAoZmItPnBpdGNoZXNbc2tsX2Njc190b19tYWluX3BsYW5lKGZiLCBjY3NfcGxhbmUp
XSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKaW5kZXgg
MjUxMzk4MTI4MzQ5Li5jMTc2YzMxYzNlYzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC01MDgsNyArNTA4LDYgQEAgdm9pZCBpbnRlbF9saW5r
X2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCiAJCQkgICAgaW50IHBpeGVsX2Nsb2Nr
LCBpbnQgbGlua19jbG9jaywKIAkJCSAgICBzdHJ1Y3QgaW50ZWxfbGlua19tX24gKm1fbiwKIAkJ
CSAgICBib29sIGNvbnN0YW50X24sIGJvb2wgZmVjX2VuYWJsZSk7Ci1ib29sIGlzX2Njc19tb2Rp
Zmllcih1NjQgbW9kaWZpZXIpOwogdm9pZCBscHRfZGlzYWJsZV9jbGtvdXRfZHAoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHUzMiBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICAgIHUzMiBwaXhlbF9m
b3JtYXQsIHU2NCBtb2RpZmllcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDIzYTc0NDk2YzE3Mi4uOTIyMmU0ZjkzNDhm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaApAQCAtMTg5NSw2ICsxODk1LDE1IEBAIHN0YXRpYyBpbmxpbmUgdTMyIGludGVsX2Zk
aV9saW5rX2ZyZXEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlyZXR1cm4g
ZGV2X3ByaXYtPmZkaV9wbGxfZnJlcTsKIH0KIAorc3RhdGljIGlubGluZSBib29sIGlzX2Njc19t
b2RpZmllcih1NjQgbW9kaWZpZXIpCit7CisJcmV0dXJuIG1vZGlmaWVyID09IEk5MTVfRk9STUFU
X01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUyB8fAorCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZP
Uk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgfHwKKwkgICAgICAgbW9kaWZpZXIgPT0g
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIHx8CisJICAgICAgIG1vZGlmaWVy
ID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUyB8fAorCSAgICAgICBtb2RpZmllciA9PSBJ
OTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOworfQorCiBzdGF0aWMgaW5saW5lIGJvb2wgaXNf
Y2NzX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgcGxhbmUpCiB7
CiAJaWYgKCFpc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSkKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
