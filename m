Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C46EC3ED
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 14:43:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA16A6F7DF;
	Fri,  1 Nov 2019 13:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0716F7DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 13:43:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 06:43:39 -0700
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="351956051"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 06:43:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 15:43:33 +0200
Message-Id: <20191101134333.11612-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: add for_each_port() and use it
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGFub3RoZXIgZm9yX2VhY2ggc3R5bGUgbWFjcm8gdG8gdGhlIHBpbGUgb2YgY3VzdG9tIGxv
b3BpbmcgbWFjcm9zLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAg
ICB8IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oIHwgNyArKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4
IDYzYzFiZDRjMjk1NC4uYTAzZjU2YjdiNGVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwpAQCAtMTI0Niw3ICsxMjQ2LDcgQEAgc3RhdGljIGVudW0gcG9ydCBn
ZXRfcG9ydF9ieV9kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OCBkZGNf
cGluKQogCWNvbnN0IHN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAqaW5mbzsKIAllbnVtIHBvcnQg
cG9ydDsKIAotCWZvciAocG9ydCA9IFBPUlRfQTsgcG9ydCA8IEk5MTVfTUFYX1BPUlRTOyBwb3J0
KyspIHsKKwlmb3JfZWFjaF9wb3J0KHBvcnQpIHsKIAkJaW5mbyA9ICZpOTE1LT52YnQuZGRpX3Bv
cnRfaW5mb1twb3J0XTsKIAogCQlpZiAoaW5mby0+Y2hpbGQgJiYgZGRjX3BpbiA9PSBpbmZvLT5h
bHRlcm5hdGVfZGRjX3BpbikKQEAgLTEyOTcsNyArMTI5Nyw3IEBAIHN0YXRpYyBlbnVtIHBvcnQg
Z2V0X3BvcnRfYnlfYXV4X2NoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OCBhdXhf
Y2gpCiAJY29uc3Qgc3RydWN0IGRkaV92YnRfcG9ydF9pbmZvICppbmZvOwogCWVudW0gcG9ydCBw
b3J0OwogCi0JZm9yIChwb3J0ID0gUE9SVF9BOyBwb3J0IDwgSTkxNV9NQVhfUE9SVFM7IHBvcnQr
KykgeworCWZvcl9lYWNoX3BvcnQocG9ydCkgewogCQlpbmZvID0gJmk5MTUtPnZidC5kZGlfcG9y
dF9pbmZvW3BvcnRdOwogCiAJCWlmIChpbmZvLT5jaGlsZCAmJiBhdXhfY2ggPT0gaW5mby0+YWx0
ZXJuYXRlX2F1eF9jaGFubmVsKQpAQCAtMTcyMiw3ICsxNzIyLDcgQEAgaW5pdF92YnRfZGVmYXVs
dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJIUhBU19QQ0hfU1BMSVQo
ZGV2X3ByaXYpKTsKIAlEUk1fREVCVUdfS01TKCJTZXQgZGVmYXVsdCB0byBTU0MgYXQgJWQga0h6
XG4iLCBkZXZfcHJpdi0+dmJ0Lmx2ZHNfc3NjX2ZyZXEpOwogCi0JZm9yIChwb3J0ID0gUE9SVF9B
OyBwb3J0IDwgSTkxNV9NQVhfUE9SVFM7IHBvcnQrKykgeworCWZvcl9lYWNoX3BvcnQocG9ydCkg
ewogCQlzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8gKmluZm8gPQogCQkJJmRldl9wcml2LT52YnQu
ZGRpX3BvcnRfaW5mb1twb3J0XTsKIApAQCAtMTczNiw3ICsxNzM2LDcgQEAgaW5pdF92YnRfbWlz
c2luZ19kZWZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJZW51
bSBwb3J0IHBvcnQ7CiAKLQlmb3IgKHBvcnQgPSBQT1JUX0E7IHBvcnQgPCBJOTE1X01BWF9QT1JU
UzsgcG9ydCsrKSB7CisJZm9yX2VhY2hfcG9ydChwb3J0KSB7CiAJCXN0cnVjdCBkZGlfdmJ0X3Bv
cnRfaW5mbyAqaW5mbyA9CiAJCQkmZGV2X3ByaXYtPnZidC5kZGlfcG9ydF9pbmZvW3BvcnRdOwog
CQllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IDM1NWM1MDA4
ODU4OS4uNDUyMmVmMTY3YTkxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaApAQCAtMzMzLDggKzMzMywxMSBAQCBlbnVtIHBoeV9maWEgewogCSAgICAg
KF9fcykgPCBSVU5USU1FX0lORk8oX19kZXZfcHJpdiktPm51bV9zcHJpdGVzWyhfX3ApXTsJXAog
CSAgICAgKF9fcykrKykKIAotI2RlZmluZSBmb3JfZWFjaF9wb3J0X21hc2tlZChfX3BvcnQsIF9f
cG9ydHNfbWFzaykgXAotCWZvciAoKF9fcG9ydCkgPSBQT1JUX0E7IChfX3BvcnQpIDwgSTkxNV9N
QVhfUE9SVFM7IChfX3BvcnQpKyspCVwKKyNkZWZpbmUgZm9yX2VhY2hfcG9ydChfX3BvcnQpIFwK
Kwlmb3IgKChfX3BvcnQpID0gUE9SVF9BOyAoX19wb3J0KSA8IEk5MTVfTUFYX1BPUlRTOyAoX19w
b3J0KSsrKQorCisjZGVmaW5lIGZvcl9lYWNoX3BvcnRfbWFza2VkKF9fcG9ydCwgX19wb3J0c19t
YXNrKQkJCVwKKwlmb3JfZWFjaF9wb3J0KF9fcG9ydCkJCQkJCQlcCiAJCWZvcl9lYWNoX2lmKChf
X3BvcnRzX21hc2spICYgQklUKF9fcG9ydCkpCiAKICNkZWZpbmUgZm9yX2VhY2hfcGh5X21hc2tl
ZChfX3BoeSwgX19waHlzX21hc2spIFwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
