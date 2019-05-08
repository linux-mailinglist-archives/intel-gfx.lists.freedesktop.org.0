Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9CE17386
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:18:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9077D8972C;
	Wed,  8 May 2019 08:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E318972D;
 Wed,  8 May 2019 08:18:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 01:18:11 -0700
X-ExtLoop1: 1
Received: from helsinki.fi.intel.com ([10.237.66.174])
 by fmsmga001.fm.intel.com with ESMTP; 08 May 2019 01:18:09 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 11:17:57 +0300
Message-Id: <20190508081757.28042-7-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190508081757.28042-1-gwan-gyeong.mun@intel.com>
References: <20190508081757.28042-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 6/6] drm/i915/dp: Support DP ports YUV 4:2:0
 output to GEN11
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QnNwZWMgZGVzY3JpYmVzIHRoYXQgR0VOMTAgb25seSBzdXBwb3J0cyBjYXBhYmlsaXR5IG9mIFlV
ViA0OjI6MCBvdXRwdXQgdG8KSERNSSBwb3J0IGFuZCBHRU4xMSBzdXBwb3J0cyBjYXBhYmlsaXR5
IG9mIFlVViA0OjI6MCBvdXRwdXQgdG8gYm90aCBEUCBhbmQKSERNSSBwb3J0cy4KCnYyOiBNaW5v
ciBzdHlsZSBmaXguCgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25n
Lm11bkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RwLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcC5jCmluZGV4IGM3NWUyYmJlNjEyYS4uOWIzNzI0Y2QzN2NkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RwLmMKQEAgLTczNzgsNiArNzM3OCw5IEBAIGludGVsX2RwX2luaXRfY29ubmVj
dG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCQljb25uZWN0
b3ItPmludGVybGFjZV9hbGxvd2VkID0gdHJ1ZTsKIAljb25uZWN0b3ItPmRvdWJsZXNjYW5fYWxs
b3dlZCA9IDA7CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwkJY29ubmVjdG9y
LT55Y2Jjcl80MjBfYWxsb3dlZCA9IHRydWU7CisKIAlpbnRlbF9lbmNvZGVyLT5ocGRfcGluID0g
aW50ZWxfaHBkX3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0KTsKIAogCWludGVsX2RwX2F1eF9p
bml0KGludGVsX2RwKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
