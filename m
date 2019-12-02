Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E20A10ECC5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910816E093;
	Mon,  2 Dec 2019 16:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F756E093
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 16:01:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:24 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="200658150"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 18:00:50 +0200
Message-Id: <2ab5b752aaf954678a4171d61be7277cf6693e0c.1575302334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575302334.git.jani.nikula@intel.com>
References: <cover.1575302334.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/debugfs: use intel uncore
 functions for forcewake register access
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSBhd2F5IGZyb20gSTkxNV9SRUFEX0ZXKCkgYW5kIEk5MTVfV1JJVEVfRlcoKSBhbmQgc3dp
dGNoIHRvIHVzaW5nCmludGVsX3VuY29yZV9yZWFkX2Z3KCkgYW5kIGludGVsX3VuY29yZV93cml0
ZV9mdygpLCByZXNwZWN0aXZlbHkuCgpObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMgfCAxNCArKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmlu
ZGV4IGNhYjYzMjc5MWY3My4uNDI3MDlhNTdiNDc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwpAQCAtMTEyOCw3ICsxMTI4LDggQEAgc3RhdGljIGludCBnZW42X2RycGNfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0pCiAJdTMyIGd0X2NvcmVfc3RhdHVzLCByY2N0bDEsIHJjNnZpZHMg
PSAwOwogCXUzMiBnZW45X3Bvd2VyZ2F0ZV9lbmFibGUgPSAwLCBnZW45X3Bvd2VyZ2F0ZV9zdGF0
dXMgPSAwOwogCi0JZ3RfY29yZV9zdGF0dXMgPSBJOTE1X1JFQURfRlcoR0VONl9HVF9DT1JFX1NU
QVRVUyk7CisJZ3RfY29yZV9zdGF0dXMgPSBpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2X3ByaXYt
PnVuY29yZSwKKwkJCQkJICAgICAgR0VONl9HVF9DT1JFX1NUQVRVUyk7CiAJdHJhY2VfaTkxNV9y
ZWdfcncoZmFsc2UsIEdFTjZfR1RfQ09SRV9TVEFUVVMsIGd0X2NvcmVfc3RhdHVzLCA0LCB0cnVl
KTsKIAogCXJjY3RsMSA9IEk5MTVfUkVBRChHRU42X1JDX0NPTlRST0wpOwpAQCAtMTY3NCwxMCAr
MTY3NSwxMyBAQCBzdGF0aWMgaW50IGk5MTVfcnBzX2Jvb3N0X2luZm8oc3RydWN0IHNlcV9maWxl
ICptLCB2b2lkICpkYXRhKQogCQl1MzIgcnBkb3duLCBycGRvd25laTsKIAogCQlpbnRlbF91bmNv
cmVfZm9yY2V3YWtlX2dldCgmZGV2X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Ci0JCXJw
dXAgPSBJOTE1X1JFQURfRlcoR0VONl9SUF9DVVJfVVApICYgR0VONl9SUF9FSV9NQVNLOwotCQly
cHVwZWkgPSBJOTE1X1JFQURfRlcoR0VONl9SUF9DVVJfVVBfRUkpICYgR0VONl9SUF9FSV9NQVNL
OwotCQlycGRvd24gPSBJOTE1X1JFQURfRlcoR0VONl9SUF9DVVJfRE9XTikgJiBHRU42X1JQX0VJ
X01BU0s7Ci0JCXJwZG93bmVpID0gSTkxNV9SRUFEX0ZXKEdFTjZfUlBfQ1VSX0RPV05fRUkpICYg
R0VONl9SUF9FSV9NQVNLOworCQlycHVwID0gaW50ZWxfdW5jb3JlX3JlYWRfZncoJmRldl9wcml2
LT51bmNvcmUsIEdFTjZfUlBfQ1VSX1VQKSAmIEdFTjZfUlBfRUlfTUFTSzsKKwkJcnB1cGVpID0g
aW50ZWxfdW5jb3JlX3JlYWRfZncoJmRldl9wcml2LT51bmNvcmUsCisJCQkJCSAgICAgIEdFTjZf
UlBfQ1VSX1VQX0VJKSAmIEdFTjZfUlBfRUlfTUFTSzsKKwkJcnBkb3duID0gaW50ZWxfdW5jb3Jl
X3JlYWRfZncoJmRldl9wcml2LT51bmNvcmUsCisJCQkJCSAgICAgIEdFTjZfUlBfQ1VSX0RPV04p
ICYgR0VONl9SUF9FSV9NQVNLOworCQlycGRvd25laSA9IGludGVsX3VuY29yZV9yZWFkX2Z3KCZk
ZXZfcHJpdi0+dW5jb3JlLAorCQkJCQkJR0VONl9SUF9DVVJfRE9XTl9FSSkgJiBHRU42X1JQX0VJ
X01BU0s7CiAJCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZkZXZfcHJpdi0+dW5jb3JlLCBG
T1JDRVdBS0VfQUxMKTsKIAogCQlzZXFfcHJpbnRmKG0sICJcblJQUyBBdXRvdHVuaW5nIChjdXJy
ZW50IFwiJXNcIiB3aW5kb3cpOlxuIiwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
