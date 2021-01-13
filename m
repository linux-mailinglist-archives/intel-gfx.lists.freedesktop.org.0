Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DCA2F4CCD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 15:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C426E9EF;
	Wed, 13 Jan 2021 14:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E826E9EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 14:12:08 +0000 (UTC)
IronPort-SDR: lSHPT4N3j27fTjNFbfJ/Zslzi1EzFBrMWe9IwT0A4TIAFcUyLqce0Q8TaC9vxW/d5lImOW4uCV
 5/7IhuDYDerA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157982227"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="157982227"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:12:06 -0800
IronPort-SDR: /hnf7n9N62UCRbhc2bKZ4fGRIc7VoCY0h2W6fNqYiIxX/cHlbjEEen8fCFx4+ivKo11yhkTOZM
 GvuXxd5vGFiA==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="353492802"
Received: from iklein-mobl.ger.corp.intel.com (HELO localhost) ([10.249.40.83])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:12:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 16:11:58 +0200
Message-Id: <20210113141158.25513-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: fix the uint*_t types that
 have crept in
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

QWx3YXlzIHByZWZlciB0aGUga2VybmVsIHR5cGVzIG92ZXIgc3RkaW50IHR5cGVzIGluIGk5MTUu
CgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmggICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICAgICAgIHwgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwMTg5ZDM3OWE1NWUuLmZjMzMzNzg1NDQ2NSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE5
NTQsNyArMTk1NCw3IEBAIGludCBpbnRlbF9tYWluX3RvX2F1eF9wbGFuZShjb25zdCBzdHJ1Y3Qg
ZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IG1haW5fcGxhbmUpCiAKIGJvb2wKIGludGVsX2Zvcm1h
dF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKmlu
Zm8sCi0JCQkJICAgIHVpbnQ2NF90IG1vZGlmaWVyKQorCQkJCSAgICB1NjQgbW9kaWZpZXIpCiB7
CiAJcmV0dXJuIGluZm8tPmlzX3l1diAmJgogCSAgICAgICBpbmZvLT5udW1fcGxhbmVzID09IChp
c19jY3NfbW9kaWZpZXIobW9kaWZpZXIpID8gNCA6IDIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAppbmRleCA3ZGRiYzAwYTBmNDEuLmQ2YzNmYTk1NDRl
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAg
LTY0Myw3ICs2NDMsNyBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcHJpbnRfZXJyb3Jfc3RhdGUoc3Ry
dWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqZSwKIAogYm9vbAogaW50ZWxfZm9ybWF0X2lu
Zm9faXNfeXV2X3NlbWlwbGFuYXIoY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbywK
LQkJCQkgICAgdWludDY0X3QgbW9kaWZpZXIpOworCQkJCSAgICB1NjQgbW9kaWZpZXIpOwogCiBp
bnQgaW50ZWxfcGxhbmVfY29tcHV0ZV9ndHQoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSk7CiB1MzIgaW50ZWxfcGxhbmVfY29tcHV0ZV9hbGlnbmVkX29mZnNldChpbnQgKngs
IGludCAqeSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKaW5kZXggMjQ3OTIxMDJiY2Y2Li41ODViYjFlZGVhMDQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC01
NDUsNyArNTQ1LDcgQEAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIHsKIAkJc3RydWN0IGRybV9m
cmFtZWJ1ZmZlciAqZmI7CiAKIAkJdTE2IGFscGhhOwotCQl1aW50MTZfdCBwaXhlbF9ibGVuZF9t
b2RlOworCQl1MTYgcGl4ZWxfYmxlbmRfbW9kZTsKIAkJdW5zaWduZWQgaW50IHJvdGF0aW9uOwog
CQllbnVtIGRybV9jb2xvcl9lbmNvZGluZyBjb2xvcl9lbmNvZGluZzsKIAkJZW51bSBkcm1fY29s
b3JfcmFuZ2UgY29sb3JfcmFuZ2U7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYwppbmRleCAzMzIwMGI1Y2ZhZDAuLjVmZDRmYTQ4MDVlZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC02NzYsNyArNjc2LDcgQEAgc3RhdGljIGJvb2wg
aW50ZWxfZmJjX2h3X3RyYWNraW5nX2NvdmVyc19zY3JlZW4oc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCiB9CiAKIHN0YXRpYyBib29sIHRpbGluZ19pc192YWxpZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCi0JCQkgICAgdWludDY0X3QgbW9kaWZpZXIpCisJCQkgICAgdTY0IG1v
ZGlmaWVyKQogewogCXN3aXRjaCAobW9kaWZpZXIpIHsKIAljYXNlIERSTV9GT1JNQVRfTU9EX0xJ
TkVBUjoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
