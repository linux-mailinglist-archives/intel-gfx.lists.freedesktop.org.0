Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B79E313B9F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1906E97F;
	Mon,  8 Feb 2021 17:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F369F6E97F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:53:49 +0000 (UTC)
IronPort-SDR: G/ZW6YJ3c8OydsevkAurf4HDbzw573gBTZE7pENN9ps0Y6jLqYVgKtY4ImSS38RsVk76n39+pN
 obsTc0xAJYxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="169434523"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="169434523"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:53:49 -0800
IronPort-SDR: 95UUo/tth85uM333HCKFkqaA2cRJKMKJNaSB94myeCwaaiyOp5Gdf1i+aBGxCqA5yCm3q+g48j
 WuBM8QmnLJGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="377878453"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 08 Feb 2021 09:53:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Feb 2021 19:53:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: gregkh@linuxfoundation.org
Date: Mon,  8 Feb 2021 19:53:41 +0200
Message-Id: <20210208175341.8695-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210208175341.8695-1-ville.syrjala@linux.intel.com>
References: <16127808794868@kroah.com>
 <20210208175341.8695-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH stable-5.10 2/2] drm/i915: Skip vswing
 programming for TBT
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNv
bW1pdCBlYWY1YmZlMzdkYjg3MTAzMTIzMmQyYmYyNTM1YjZjYTkyYWZiYWQ4IHVwc3RyZWFtLgoK
SW4gdGh1bmRlcmJvbHQgbW9kZSB0aGUgUEhZIGlzIG93bmVkIGJ5IHRoZSB0aHVuZGVyYm9sdCBj
b250cm9sbGVyLgpXZSBhcmUgbm90IHN1cHBvc2VkIHRvIHRvdWNoIGl0LiBTbyBza2lwIHRoZSB2
c3dpbmcgcHJvZ3JhbW1pbmcKYXMgd2VsbCAod2UgYWxyZWFkeSBza2lwcGVkIHRoZSBvdGhlciBz
dGVwcyBub3QgYXBwbGljYWJsZSB0byBUQlQpLgoKVG91Y2hpbmcgdGhpcyBzdHVmZiBjb3VsZCBz
dXBwb3NlZGx5IGludGVyZmVyZSB3aXRoIHRoZSBQSFkKcHJvZ3JhbW1pbmcgZG9uZSBieSB0aGUg
dGh1bmRlcmJvbHQgY29udHJvbGxlci4KCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIx
MDEyODE1NTk0OC4xMzY3OC0xLXZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tClJldmlld2Vk
LWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CihjaGVycnkgcGlja2VkIGZyb20g
Y29tbWl0IGY4YzZiNjE1YjkyMWQ4YTFiY2Q3NDg3MGY5MTA1ZTYyYjBiY2VmZjMpClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CihjaGVycnkgcGlja2Vk
IGZyb20gY29tbWl0IGVhZjViZmUzN2RiODcxMDMxMjMyZDJiZjI1MzViNmNhOTJhZmJhZDgpCi0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDYgKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKaW5kZXggNTFmNGY0Mzc0ZGVhLi5jZGIxOWVjNjY4OTAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMjU5Nyw2ICsyNTk3LDkgQEAg
c3RhdGljIHZvaWQgaWNsX21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCXUzMiBuX2VudHJpZXMsIHZhbDsKIAlpbnQgbG4sIHJhdGUgPSAw
OwogCisJaWYgKGVuY190b19kaWdfcG9ydChlbmNvZGVyKS0+dGNfbW9kZSA9PSBUQ19QT1JUX1RC
VF9BTFQpCisJCXJldHVybjsKKwogCWlmICh0eXBlICE9IElOVEVMX09VVFBVVF9IRE1JKSB7CiAJ
CXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7CiAK
QEAgLTI3NDEsNiArMjc0NCw5IEBAIHRnbF9ka2xfcGh5X2RkaV92c3dpbmdfc2VxdWVuY2Uoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCBsaW5rX2Nsb2NrLAogCXUzMiBuX2VudHJp
ZXMsIHZhbCwgbG4sIGRwY250X21hc2ssIGRwY250X3ZhbDsKIAlpbnQgcmF0ZSA9IDA7CiAKKwlp
ZiAoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpLT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkK
KwkJcmV0dXJuOworCiAJaWYgKHR5cGUgIT0gSU5URUxfT1VUUFVUX0hETUkpIHsKIAkJc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKIAotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
