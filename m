Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4AF184CD7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 17:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D8E6EC27;
	Fri, 13 Mar 2020 16:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB49E6EC2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 16:48:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 09:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="290071784"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 13 Mar 2020 09:48:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 18:48:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 18:48:23 +0200
Message-Id: <20200313164831.5980-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/13] drm/i915: Use REG_FIELD_PREP() & co. for
 TRANS_DDI_FUNC_CTL2
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNs
ZWFuIHVwIHRoZSBUUkFOU19ERElfRlVOQ19DVEwyIHByb2dyYW1taW5nL3JlYWRvdXQgYnkKdXNp
bmcgUkVHX0ZJRUxEX1BSRVAoKSAmIGNvLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDYgKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgIHwgMTAgKysrKy0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCmluZGV4IDM5ZjNlOTQ1MmFhZC4uOGJiNmM1ODNhYmI4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE1NzMsOSArMTU3Myw3IEBAIHZv
aWQgaW50ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCQkJbWFzdGVyX3NlbGVjdCA9IG1hc3Rlcl90cmFuc2Nv
ZGVyICsgMTsKIAogCQkJY3RsMiB8PSBQT1JUX1NZTkNfTU9ERV9FTkFCTEUgfAotCQkJCShQT1JU
X1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUKG1hc3Rlcl9zZWxlY3QpICYKLQkJCQkgUE9SVF9TWU5D
X01PREVfTUFTVEVSX1NFTEVDVF9NQVNLKSA8PAotCQkJCVBPUlRfU1lOQ19NT0RFX01BU1RFUl9T
RUxFQ1RfU0hJRlQ7CisJCQkJUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVChtYXN0ZXJfc2Vs
ZWN0KTsKIAkJfQogCiAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LApAQCAtMzg1NCw3ICszODUy
LDcgQEAgc3RhdGljIGVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVyX21hc3Rlcl9yZWFkb3V0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHIKIAlpZiAoKGN0bDIgJiBQT1JUX1NZTkNfTU9E
RV9FTkFCTEUpID09IDApCiAJCXJldHVybiBJTlZBTElEX1RSQU5TQ09ERVI7CiAKLQltYXN0ZXJf
c2VsZWN0ID0gY3RsMiAmIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSzsKKwltYXN0
ZXJfc2VsZWN0ID0gUkVHX0ZJRUxEX0dFVChQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01B
U0ssIGN0bDIpOwogCiAJaWYgKG1hc3Rlcl9zZWxlY3QgPT0gMCkKIAkJcmV0dXJuIFRSQU5TQ09E
RVJfRURQOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMzA5Y2I3ZDk2YjM1Li5mYzVjMDBi
ZmVkODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTcyNiwxMiArOTcyNiwxMCBAQCBl
bnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgX1RSQU5TX0RESV9GVU5DX0NUTDJfRURQCTB4
NmY0MDQKICNkZWZpbmUgX1RSQU5TX0RESV9GVU5DX0NUTDJfRFNJMAkweDZiNDA0CiAjZGVmaW5l
IF9UUkFOU19ERElfRlVOQ19DVEwyX0RTSTEJMHg2YmMwNAotI2RlZmluZSBUUkFOU19ERElfRlVO
Q19DVEwyKHRyYW4pCV9NTUlPX1RSQU5TMih0cmFuLCBcCi0JCQkJCQkgICAgIF9UUkFOU19ERElf
RlVOQ19DVEwyX0EpCi0jZGVmaW5lICBQT1JUX1NZTkNfTU9ERV9FTkFCTEUJCQkoMSA8PCA0KQot
I2RlZmluZSAgUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVCh4KQkoKHgpIDw8IDApCi0jZGVm
aW5lICBQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0sJKDB4NyA8PCAwKQotI2RlZmlu
ZSAgUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9TSElGVAkwCisjZGVmaW5lIFRSQU5TX0RE
SV9GVU5DX0NUTDIodHJhbikJX01NSU9fVFJBTlMyKHRyYW4sIF9UUkFOU19ERElfRlVOQ19DVEwy
X0EpCisjZGVmaW5lICBQT1JUX1NZTkNfTU9ERV9FTkFCTEUJCQlSRUdfQklUKDQpCisjZGVmaW5l
ICBQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX01BU0sJUkVHX0dFTk1BU0soMiwgMCkKKyNk
ZWZpbmUgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1QoeCkJUkVHX0ZJRUxEX1BSRVAoUE9S
VF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLLCAoeCkpCiAKIC8qIERpc3BsYXlQb3J0IFRy
YW5zcG9ydCBDb250cm9sICovCiAjZGVmaW5lIF9EUF9UUF9DVExfQQkJCTB4NjQwNDAKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
