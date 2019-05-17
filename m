Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF5821B20
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:03:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2C6898F1;
	Fri, 17 May 2019 16:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7F9898CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:03:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:03:24 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2019 09:03:23 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:00:32 +0530
Message-Id: <1558110633-3723-3-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
References: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 2/3] drm/i915/icl: Fix Y pre-offset for Full Range
 YCbCr
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
