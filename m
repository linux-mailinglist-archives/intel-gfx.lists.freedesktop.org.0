Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ACE5C882
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 06:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AED0189B98;
	Tue,  2 Jul 2019 04:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B010689B98
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 04:44:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 21:44:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="157506406"
Received: from vandita-desktop.iind.intel.com ([10.223.74.126])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2019 21:44:23 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 09:48:49 +0530
Message-Id: <20190702041850.4293-4-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190702041850.4293-1-vandita.kulkarni@intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/tgl/dsi: Do not override TA_SURE
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

RG8gbm90IG92ZXJyaWRlIFRBX1NVUkUgdGltaW5nIHBhcmFtZXRlciB0bwp6ZXJvIGZvciBEU0kg
OFggZnJlcXVlbmN5IDgwME1IeiBvciBiZWxvdyBvbgpUR0wuCgpTaWduZWQtb2ZmLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDI2ICsrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCBlMzk4MDY3NmJjZWYuLmQx
YzUwYTQxODZmMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKQEAgLTUz
MCwxOCArNTMwLDIwIEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9zZXR1cF9kcGh5X3RpbWluZ3Mo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJICogYSB2YWx1ZSAnMCcgaW5zaWRlIFRB
X1BBUkFNX1JFR0lTVEVSUyBvdGhlcndpc2UKIAkgKiBsZWF2ZSBhbGwgZmllbGRzIGF0IEhXIGRl
ZmF1bHQgdmFsdWVzLgogCSAqLwotCWlmIChpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIDw9
IDgwMDAwMCkgewotCQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7
Ci0JCQl0bXAgPSBJOTE1X1JFQUQoRFBIWV9UQV9USU1JTkdfUEFSQU0ocG9ydCkpOwotCQkJdG1w
ICY9IH5UQV9TVVJFX01BU0s7Ci0JCQl0bXAgfD0gVEFfU1VSRV9PVkVSUklERSB8IFRBX1NVUkUo
MCk7Ci0JCQlJOTE1X1dSSVRFKERQSFlfVEFfVElNSU5HX1BBUkFNKHBvcnQpLCB0bXApOwotCi0J
CQkvKiBzaGFkb3cgcmVnaXN0ZXIgaW5zaWRlIGRpc3BsYXkgY29yZSAqLwotCQkJdG1wID0gSTkx
NV9SRUFEKERTSV9UQV9USU1JTkdfUEFSQU0ocG9ydCkpOwotCQkJdG1wICY9IH5UQV9TVVJFX01B
U0s7Ci0JCQl0bXAgfD0gVEFfU1VSRV9PVkVSUklERSB8IFRBX1NVUkUoMCk7Ci0JCQlJOTE1X1dS
SVRFKERTSV9UQV9USU1JTkdfUEFSQU0ocG9ydCksIHRtcCk7CisJaWYgKElTX0dFTihkZXZfcHJp
diwgMTEpKSB7CisJCWlmIChpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIDw9IDgwMDAwMCkg
eworCQkJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgeworCQkJCXRt
cCA9IEk5MTVfUkVBRChEUEhZX1RBX1RJTUlOR19QQVJBTShwb3J0KSk7CisJCQkJdG1wICY9IH5U
QV9TVVJFX01BU0s7CisJCQkJdG1wIHw9IFRBX1NVUkVfT1ZFUlJJREUgfCBUQV9TVVJFKDApOwor
CQkJCUk5MTVfV1JJVEUoRFBIWV9UQV9USU1JTkdfUEFSQU0ocG9ydCksIHRtcCk7CisKKwkJCQkv
KiBzaGFkb3cgcmVnaXN0ZXIgaW5zaWRlIGRpc3BsYXkgY29yZSAqLworCQkJCXRtcCA9IEk5MTVf
UkVBRChEU0lfVEFfVElNSU5HX1BBUkFNKHBvcnQpKTsKKwkJCQl0bXAgJj0gflRBX1NVUkVfTUFT
SzsKKwkJCQl0bXAgfD0gVEFfU1VSRV9PVkVSUklERSB8IFRBX1NVUkUoMCk7CisJCQkJSTkxNV9X
UklURShEU0lfVEFfVElNSU5HX1BBUkFNKHBvcnQpLCB0bXApOworCQkJfQogCQl9CiAJfQogCi0t
IAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
