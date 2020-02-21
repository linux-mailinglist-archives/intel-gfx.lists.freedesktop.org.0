Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6792E16819F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72456F47F;
	Fri, 21 Feb 2020 15:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5823E6F47F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:29:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 07:29:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; d="scan'208";a="225244660"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga007.jf.intel.com with ESMTP; 21 Feb 2020 07:29:51 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 17:26:47 +0200
Message-Id: <20200221152647.3682-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Use intel_plane_data_rate for
 min_cdclk calculation
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgc2VlbXMgdG8gYmUgYSBiaXQgb2YgY29uZnVzaW5nIHJlZHVuZGFuY3kgaW4gYSB3YXks
IGhvdwpwbGFuZSBkYXRhIHJhdGUvbWluIGNkY2xrIGFyZSBjYWxjdWxhdGVkLgpJbiBmYWN0IGJv
dGggbWluIGNkY2xrLCBwaXhlbCByYXRlIGFuZCBwbGFuZSBkYXRhIHJhdGUgYXJlIGFsbApwYXJ0
IG9mIHRoZSBzYW1lIGZvcm11bGEgYXMgcGVyIEJTcGVjLgoKSG93ZXZlciBjdXJyZW50bHkgd2Ug
aGF2ZSBpbnRlbF9wbGFuZV9kYXRhX3JhdGUsIHdoaWNoIGlzIHVzZWQKdG8gY2FsY3VsYXRlIHBs
YW5lIGRhdGEgcmF0ZSBhbmQgd2hpY2ggaXMgYWxzbyB1c2VkIGluIGJhbmR3aWR0aApjYWxjdWxh
dGlvbnMuIEhvd2V2ZXIgZm9yIGNhbGN1bGF0aW5nIG1pbl9jZGNsayB3ZSBoYXZlIGFub3RoZXIK
cGllY2Ugb2YgY29kZSwgZG9pbmcgYWxtb3N0IHNhbWUgY2FsY3VsYXRpb24sIGJ1dCBhIGJpdCBk
aWZmZXJlbnRseQphbmQgaW4gYSBkaWZmZXJlbnQgcGxhY2UuIEhvd2V2ZXIgYXMgYm90aCBhcmUg
YWN0dWFsbHkgcGFydCBvZiBzYW1lCmZvcm11bGEsIHByb2JhYmx5IHdvdWxkIGJlIHdpc2UgdG8g
dXNlIHBsYW5lIGRhdGEgcmF0ZSBjYWxjdWxhdGlvbnMKYXMgYSBiYXNpcyBhbnl3YXksIHRodXMg
YXZvaWRpbmcgY29kZSBkdXBsaWNhdGlvbiBhbmQgcG9zc2libGUgYnVncwpyZWxhdGVkIHRvIHRo
aXMuCgpBbm90aGVyIHRoaW5nIGlzIHRoYXQgSSd2ZSBub3RpY2VkIHRoYXQgZHVyaW5nIG1pbl9j
ZGNsayBjYWxjdWxhdGlvbnMKd2UgYWNjb3VudCBmb3IgcGxhbmUgc2NhbGluZywgd2hpbGUgZm9y
IHBsYW5lIGRhdGEgcmF0ZSwgd2UgZG9uJ3QuCmNydGMtPnBpeGVsX3JhdGUgc2VlbXMgdG8gYWNj
b3VudCBvbmx5IGZvciBwaXBlIHJhdGlvLCBob3dldmVyIGl0IGlzCmNsZWFybHkgc3RhdGVkIGlu
IEJTcGVjIHRoYXQgcGxhbmUgZGF0YSByYXRlIGFsc28gbmVlZCB0byBhY2NvdW50CnBsYW5lIHJh
dGlvIGFzIHdlbGwuCgpTbyB3aGF0IHRoaXMgY29tbWl0IGRvZXMgaXM6Ci0gQWRkcyBhIHBsYW5l
IHJhdGlvIGNhbGN1bGF0aW9uIHRvIGludGVsX3BsYW5lX2RhdGFfcmF0ZQotIFJlbW92ZXMgcmVk
dW5kYW50IGNhbGN1bGF0aW9ucyBmcm9tIHNrbF9wbGFuZV9taW5fY2RjbGsgd2hpY2ggaXMKICB1
c2VkIGZvciBnZW45KyBhbmQgbm93IHVzZXMgaW50ZWxfcGxhbmVfZGF0YV9yYXRlIGFzIGEgYmFz
aXMgZnJvbQogIHRoZXJlIGFzIHdlbGwuCgp2MjogLSBEb24ndCB1c2UgNjQgZGl2aXNpb24gaWYg
bm90IG5lZWRlZChWaWxsZSBTeXJqw6Rsw6QpCiAgICAtIE5vdyB1c2UgaW50ZWxfcGxhbmVfcGl4
ZWxfcmF0ZSBhcyBhIGJhc2lzIGZvciBjYWxjdWxhdGlvbnMgYm90aAogICAgICBhdCBpbnRlbF9w
bGFuZV9kYXRhX3JhdGUgYW5kIHNrbF9wbGFuZV9taW5fY2RjbGsoVmlsbGUgU3lyasOkbMOkKQoK
djM6IC0gQWdhaW4gZml4IHRoZSBkaXZpc2lvbiBtYWNybwogICAgLSBGaXggcGxhbmVfcGl4ZWxf
cmF0ZSB0byBwaXhlbF9yYXRlIGF0IGludGVsX3BsYW5lX3BpeGVsX3JhdGUKICAgICAgY2FsbHNp
dGVzCgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zz
a2l5QGludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMgfCAyMiArKysrKysrKysrKysrKysrKy0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYyAgIHwgMjMgKysrKystLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBj
aGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwppbmRleCBjODZkN2Ez
NWM4MTYuLjVmNTZjZGM2MjhhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5jCkBAIC0xMzMsMTEgKzEzMywzMSBAQCBpbnRlbF9wbGFu
ZV9kZXN0cm95X3N0YXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAogCWtmcmVlKHBsYW5lX3N0
YXRlKTsKIH0KIAordW5zaWduZWQgaW50IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQkJICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCit7CisJdW5zaWduZWQgaW50IHNyY193LCBz
cmNfaCwgZHN0X3csIGRzdF9oOworCisJc3JjX3cgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3Rh
dGUtPnVhcGkuc3JjKSA+PiAxNjsKKwlzcmNfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3Rh
dGUtPnVhcGkuc3JjKSA+PiAxNjsKKwlkc3RfdyA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0
ZS0+dWFwaS5kc3QpOworCWRzdF9oID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFw
aS5kc3QpOworCisJLyogRG93bnNjYWxpbmcgbGltaXRzIHRoZSBtYXhpbXVtIHBpeGVsIHJhdGUg
Ki8KKwlkc3RfdyA9IG1pbihzcmNfdywgZHN0X3cpOworCWRzdF9oID0gbWluKHNyY19oLCBkc3Rf
aCk7CisKKwlyZXR1cm4gRElWX1JPVU5EX1VQX1VMTChtdWxfdTMyX3UzMihjcnRjX3N0YXRlLT5w
aXhlbF9yYXRlLAorCQkJCXNyY193ICogc3JjX2gpLAorCQkJCWRzdF93ICogZHN0X2gpOworfQor
CiB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUpCiB7CiAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIg
PSBwbGFuZV9zdGF0ZS0+aHcuZmI7CiAJdW5zaWduZWQgaW50IGNwcDsKKwl1bnNpZ25lZCBpbnQg
cGl4ZWxfcmF0ZSA9IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3Rh
dGUpOwogCiAJaWYgKCFwbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQogCQlyZXR1cm4gMDsKQEAg
LTE1Myw3ICsxNzMsNyBAQCB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfZGF0YV9yYXRlKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWlmIChmYi0+Zm9ybWF0LT5p
c195dXYgJiYgZmItPmZvcm1hdC0+bnVtX3BsYW5lcyA+IDEpCiAJCWNwcCAqPSA0OwogCi0JcmV0
dXJuIGNwcCAqIGNydGNfc3RhdGUtPnBpeGVsX3JhdGU7CisJcmV0dXJuIHBpeGVsX3JhdGUgKiBj
cHA7CiB9CiAKIGludCBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pY19wbGFuZS5oCmluZGV4IDJiY2YxNWUzNDcyOC4uYTZiYmY0MmJhZTFmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgK
QEAgLTE4LDYgKzE4LDkgQEAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlOwogCiBleHRlcm4gY29u
c3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgaW50ZWxfcGxhbmVfaGVscGVyX2Z1bmNz
OwogCit1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7CisKIHVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9kYXRh
X3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJICAg
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7CiB2b2lkIGludGVs
X3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBs
YW5lX3N0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMK
aW5kZXggN2FiZWVmZThkY2U1Li4yYzBhZmI4MDJmMTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtMzMwLDkgKzMzMCw5IEBAIGJvb2wgaWNsX2lz
X2hkcl9wbGFuZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGxhbmVf
aWQgcGxhbmVfaWQpCiB9CiAKIHN0YXRpYyB2b2lkCi1za2xfcGxhbmVfcmF0aW8oY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0JCWNvbnN0IHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCi0JCXVuc2lnbmVkIGludCAqbnVtLCB1bnNpZ25lZCBp
bnQgKmRlbikKK3NrbF9wbGFuZV9waXhlbF9yYXRlX2Rpdmlzb3JzKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKKwkJCSAgICAgIHVuc2lnbmVkIGludCAqbnVtLCB1bnNp
Z25lZCBpbnQgKmRlbikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLT5kZXYpOwogCWNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOwpAQCAtMzU1LDI3ICszNTUsMTYg
QEAgc3RhdGljIGludCBza2xfcGxhbmVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAogCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZS0+ZGV2KTsKLQl1bnNpZ25lZCBpbnQg
cGl4ZWxfcmF0ZSA9IGNydGNfc3RhdGUtPnBpeGVsX3JhdGU7Ci0JdW5zaWduZWQgaW50IHNyY193
LCBzcmNfaCwgZHN0X3csIGRzdF9oOwogCXVuc2lnbmVkIGludCBudW0sIGRlbjsKKwlpbnQgcGl4
ZWxfcmF0ZSA9IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUp
OwogCi0Jc2tsX3BsYW5lX3JhdGlvKGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLCAmbnVtLCAmZGVu
KTsKKwlza2xfcGxhbmVfcGl4ZWxfcmF0ZV9kaXZpc29ycyhjcnRjX3N0YXRlLCBwbGFuZV9zdGF0
ZSwgJm51bSwgJmRlbik7CiAKIAkvKiB0d28gcGl4ZWxzIHBlciBjbG9jayBvbiBnbGsrICovCiAJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikp
CiAJCWRlbiAqPSAyOwogCi0Jc3JjX3cgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVh
cGkuc3JjKSA+PiAxNjsKLQlzcmNfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVh
cGkuc3JjKSA+PiAxNjsKLQlkc3RfdyA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+dWFw
aS5kc3QpOwotCWRzdF9oID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3Qp
OwotCi0JLyogRG93bnNjYWxpbmcgbGltaXRzIHRoZSBtYXhpbXVtIHBpeGVsIHJhdGUgKi8KLQlk
c3RfdyA9IG1pbihzcmNfdywgZHN0X3cpOwotCWRzdF9oID0gbWluKHNyY19oLCBkc3RfaCk7Ci0K
LQlyZXR1cm4gRElWNjRfVTY0X1JPVU5EX1VQKG11bF91MzJfdTMyKHBpeGVsX3JhdGUgKiBudW0s
IHNyY193ICogc3JjX2gpLAotCQkJCSAgbXVsX3UzMl91MzIoZGVuLCBkc3RfdyAqIGRzdF9oKSk7
CisJcmV0dXJuIERJVl9ST1VORF9VUChwaXhlbF9yYXRlICogbnVtLCBkZW4pOwogfQogCiBzdGF0
aWMgdW5zaWduZWQgaW50Ci0tIAoyLjI0LjEuNDg1LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
