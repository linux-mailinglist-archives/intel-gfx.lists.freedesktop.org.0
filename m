Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A00919072
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 20:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE4D89F03;
	Thu,  9 May 2019 18:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E55F89EF7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 18:44:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 11:44:56 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga004.fm.intel.com with ESMTP; 09 May 2019 11:44:54 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 00:41:47 +0530
Message-Id: <1557429108-8004-3-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
References: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/icl: Fix Y pre-offset for Full
 Range YCbCr
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4ZWQgWSBQcmUtb2Zmc2V0IGluIGNhc2Ugb2YgRnVsbCBSYW5nZSBZQ2JDci4KClJldmlld2Vk
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTdWdn
ZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgfCA3ICsrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9zcHJpdGUuYwppbmRleCA0ZjUxMzYwMC4uYzljOTcwZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfc3ByaXRlLmMKQEAgLTUwNSw4ICs1MDUsMTEgQEAgaW50IGludGVsX3BsYW5lX2NoZWNr
X3NyY19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQog
CiAJSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5lX2lkLCAw
KSwKIAkJICAgICAgUFJFT0ZGX1lVVl9UT19SR0JfSEkpOwotCUk5MTVfV1JJVEVfRlcoUExBTkVf
SU5QVVRfQ1NDX1BSRU9GRihwaXBlLCBwbGFuZV9pZCwgMSksCi0JCSAgICAgIFBSRU9GRl9ZVVZf
VE9fUkdCX01FKTsKKwlpZiAocGxhbmVfc3RhdGUtPmJhc2UuY29sb3JfcmFuZ2UgPT0gRFJNX0NP
TE9SX1lDQkNSX0ZVTExfUkFOR0UpCisJCUk5MTVfV1JJVEVfRlcoUExBTkVfSU5QVVRfQ1NDX1BS
RU9GRihwaXBlLCBwbGFuZV9pZCwgMSksIDApOworCWVsc2UKKwkJSTkxNV9XUklURV9GVyhQTEFO
RV9JTlBVVF9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5lX2lkLCAxKSwKKwkJCSAgICAgIFBSRU9GRl9Z
VVZfVE9fUkdCX01FKTsKIAlJOTE1X1dSSVRFX0ZXKFBMQU5FX0lOUFVUX0NTQ19QUkVPRkYocGlw
ZSwgcGxhbmVfaWQsIDIpLAogCQkgICAgICBQUkVPRkZfWVVWX1RPX1JHQl9MTyk7CiAJSTkxNV9X
UklURV9GVyhQTEFORV9JTlBVVF9DU0NfUE9TVE9GRihwaXBlLCBwbGFuZV9pZCwgMCksIDB4MCk7
Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
