Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F39E16FD6F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 12:25:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6986E270;
	Wed, 26 Feb 2020 11:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246DD6E270
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 11:25:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 03:25:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="241638405"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 26 Feb 2020 03:25:32 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 13:22:33 +0200
Message-Id: <20200226112233.9066-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915: Use intel_plane_data_rate for
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
dGVzCgp2NDogLSBSZW5hbWVkIHNrbF9wbGFuZV9yYXRpbyBmdW5jdGlvbiBiYWNrKFZpbGxlIFN5
cmrDpGzDpCkKClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5s
aXNvdnNraXlAaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYyB8IDI4ICsrKysrKysrKysrKysrKysrKy0KIC4uLi9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAzICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgfCAxNSArKy0tLS0tLS0tCiAzIGZpbGVzIGNoYW5n
ZWQsIDMyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IGM4NmQ3YTM1Yzgx
Ni4uZjc5NmJhZTIxNzJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMKQEAgLTEzMywxMSArMTMzLDM3IEBAIGludGVsX3BsYW5lX2Rl
c3Ryb3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJa2ZyZWUocGxhbmVfc3RhdGUp
OwogfQogCit1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICAgY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKK3sKKwl1bnNpZ25lZCBpbnQgc3JjX3csIHNyY19o
LCBkc3RfdywgZHN0X2g7CisJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVsX3Bs
YW5lKHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lKTsKKworCWlmIChwbGFuZS0+aWQgPT0gUExBTkVf
Q1VSU09SKQorCQlyZXR1cm4gY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZTsKKworCXNyY193ID0gZHJt
X3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7CisJc3JjX2ggPSBkcm1f
cmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7CisJZHN0X3cgPSBkcm1f
cmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsKKwlkc3RfaCA9IGRybV9yZWN0X2hl
aWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsKKworCS8qIERvd25zY2FsaW5nIGxpbWl0cyB0
aGUgbWF4aW11bSBwaXhlbCByYXRlICovCisJZHN0X3cgPSBtaW4oc3JjX3csIGRzdF93KTsKKwlk
c3RfaCA9IG1pbihzcmNfaCwgZHN0X2gpOworCisJV0FSTl9PTighZHN0X3cgfHwgIWRzdF9oKTsK
KworCXJldHVybiBESVZfUk9VTkRfVVBfVUxMKG11bF91MzJfdTMyKGNydGNfc3RhdGUtPnBpeGVs
X3JhdGUsCisJCQkJc3JjX3cgKiBzcmNfaCksCisJCQkJZHN0X3cgKiBkc3RfaCk7Cit9CisKIHVu
c2lnbmVkIGludCBpbnRlbF9wbGFuZV9kYXRhX3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSkKIHsKIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBs
YW5lX3N0YXRlLT5ody5mYjsKIAl1bnNpZ25lZCBpbnQgY3BwOworCXVuc2lnbmVkIGludCBwaXhl
bF9yYXRlID0gaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7
CiAKIAlpZiAoIXBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpCiAJCXJldHVybiAwOwpAQCAtMTUz
LDcgKzE3OSw3IEBAIHVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9kYXRhX3JhdGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJaWYgKGZiLT5mb3JtYXQtPmlzX3l1
diAmJiBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzID4gMSkKIAkJY3BwICo9IDQ7CiAKLQlyZXR1cm4g
Y3BwICogY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZTsKKwlyZXR1cm4gcGl4ZWxfcmF0ZSAqIGNwcDsK
IH0KIAogaW50IGludGVsX3BsYW5lX2NhbGNfbWluX2NkY2xrKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljX3BsYW5lLmgKaW5kZXggMmJjZjE1ZTM0NzI4Li5hNmJiZjQyYmFlMWYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaApAQCAt
MTgsNiArMTgsOSBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGU7CiAKIGV4dGVybiBjb25zdCBz
dHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBpbnRlbF9wbGFuZV9oZWxwZXJfZnVuY3M7CiAK
K3Vuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9waXhlbF9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKTsKKwogdW5zaWduZWQgaW50IGludGVsX3BsYW5lX2RhdGFfcmF0
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgICBjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKIHZvaWQgaW50ZWxfcGxh
bmVfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRl
eCA3YWJlZWZlOGRjZTUuLmQxNmUxN2JlMjZiMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0zNTUsOSArMzU1LDggQEAgc3RhdGljIGludCBza2xf
cGxhbmVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAogCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZV9z
dGF0ZS0+dWFwaS5wbGFuZS0+ZGV2KTsKLQl1bnNpZ25lZCBpbnQgcGl4ZWxfcmF0ZSA9IGNydGNf
c3RhdGUtPnBpeGVsX3JhdGU7Ci0JdW5zaWduZWQgaW50IHNyY193LCBzcmNfaCwgZHN0X3csIGRz
dF9oOwogCXVuc2lnbmVkIGludCBudW0sIGRlbjsKKwlpbnQgcGl4ZWxfcmF0ZSA9IGludGVsX3Bs
YW5lX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOwogCiAJc2tsX3BsYW5lX3Jh
dGlvKGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLCAmbnVtLCAmZGVuKTsKIApAQCAtMzY1LDE3ICsz
NjQsNyBAQCBzdGF0aWMgaW50IHNrbF9wbGFuZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAg
fHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCiAJCWRlbiAqPSAyOwogCi0Jc3JjX3cgPSBkcm1f
cmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKLQlzcmNfaCA9IGRybV9y
ZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKLQlkc3RfdyA9IGRybV9y
ZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QpOwotCWRzdF9oID0gZHJtX3JlY3RfaGVp
Z2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QpOwotCi0JLyogRG93bnNjYWxpbmcgbGltaXRzIHRo
ZSBtYXhpbXVtIHBpeGVsIHJhdGUgKi8KLQlkc3RfdyA9IG1pbihzcmNfdywgZHN0X3cpOwotCWRz
dF9oID0gbWluKHNyY19oLCBkc3RfaCk7Ci0KLQlyZXR1cm4gRElWNjRfVTY0X1JPVU5EX1VQKG11
bF91MzJfdTMyKHBpeGVsX3JhdGUgKiBudW0sIHNyY193ICogc3JjX2gpLAotCQkJCSAgbXVsX3Uz
Ml91MzIoZGVuLCBkc3RfdyAqIGRzdF9oKSk7CisJcmV0dXJuIERJVl9ST1VORF9VUChwaXhlbF9y
YXRlICogbnVtLCBkZW4pOwogfQogCiBzdGF0aWMgdW5zaWduZWQgaW50Ci0tIAoyLjI0LjEuNDg1
LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
