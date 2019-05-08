Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ED51808F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 21:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3333C8989C;
	Wed,  8 May 2019 19:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CC28989C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 19:38:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 12:38:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,447,1549958400"; d="scan'208";a="169740426"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga002.fm.intel.com with ESMTP; 08 May 2019 12:38:05 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 01:05:23 +0530
Message-Id: <20190508193526.28374-2-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508193526.28374-1-shashank.sharma@intel.com>
References: <20190508193526.28374-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915: Change gamma/degamma_lut_size
 data type to u32
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

Q3VycmVudGx5LCBkYXRhIHR5cGUgb2YgZ2FtbWFfbHV0X3NpemUgJiBkZWdhbW1hX2x1dF9zaXpl
IGVsZW1lbnRzCmluIGludGVsX2RldmljZV9pbmZvIGlzIHUxNiwgd2hpY2ggbWVhbnMgaXQgY2Fu
IGFjY29tbW9kYXRlIG1heGltdW0KNjRrIHZhbHVlcy4gSW4gY2FzZSBvZiBJQ0wgbXVsdGlzZWdt
ZW50ZWQgZ2FtbWEsIHRoZSBzaXplIG9mIGdhbW1hCkxVVCBpcyAyNTZLLgoKVGhpcyBwYXRjaCBj
aGFuZ2VzIHRoZSBkYXRhIHR5cGUgb2YgYm90aCBvZiB0aGVzZSBlbGVtZW50cyB0byB1MzIuCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKVjQ6IEFkZGVkIFVtYSdzIHItYi4K
ClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDQgKystLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAppbmRleCA1YTJlMTdkNjE0NmIuLjY3Njc3YzM1Njcx
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCkBAIC0xNzksOCAr
MTc5LDggQEAgc3RydWN0IGludGVsX2RldmljZV9pbmZvIHsKIAlpbnQgY3Vyc29yX29mZnNldHNb
STkxNV9NQVhfUElQRVNdOwogCiAJc3RydWN0IGNvbG9yX2x1dHMgewotCQl1MTYgZGVnYW1tYV9s
dXRfc2l6ZTsKLQkJdTE2IGdhbW1hX2x1dF9zaXplOworCQl1MzIgZGVnYW1tYV9sdXRfc2l6ZTsK
KwkJdTMyIGdhbW1hX2x1dF9zaXplOwogCQl1MzIgZGVnYW1tYV9sdXRfdGVzdHM7CiAJCXUzMiBn
YW1tYV9sdXRfdGVzdHM7CiAJfSBjb2xvcjsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
