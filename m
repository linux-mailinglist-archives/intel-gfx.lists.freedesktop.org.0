Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3784E285EAB
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 14:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9358A6E8CE;
	Wed,  7 Oct 2020 12:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5622D6E8CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 12:03:36 +0000 (UTC)
IronPort-SDR: VWjkDIzAw1p8lmkIuNUgueH2md5f5P1alvNGqREI8XZMPyKzkra70/Vya+OTyd6xTINK4/a4cw
 loTDIilYMfKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="161517532"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="161517532"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 05:03:35 -0700
IronPort-SDR: r9ag+Ktcr55seRsxmT+/w7QeHdOgZQRElZqUtzFWNCEVL6NL63CLY6nEaCbGIMUxIUm41oeti7
 SsH9X40Y2rJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="353954603"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 07 Oct 2020 05:03:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Oct 2020 15:03:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 15:03:28 +0300
Message-Id: <20201007120329.17076-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
References: <20201007120329.17076-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Fix MOCS PTE setting for gen9+
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCB1cCB0aGUgTU9DUyBQVEUgc2V0dGluZyB0byByZWFsbHkgZ2V0IHRoZSBMTEMgY2FjaGVhYmls
aXR5CmZyb20gdGhlIFBURSByYXRoZXIgdGhhbiBoYXJkb2NvZGluZyBpdCB0byBMTEMgb3IgTExD
K2VMTEMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8
IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKaW5kZXggNjMyZTA4YTQ1OTJiLi42Zjc3
MWE0ODI2MDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3Mu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKQEAgLTEyNCw3ICsx
MjQsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB7CiAJCSAgIExFXzFfVUMgfCBMRV9U
Q18yX0xMQ19FTExDLCBcCiAJCSAgIEwzXzFfVUMpLCBcCiAJTU9DU19FTlRSWShJOTE1X01PQ1Nf
UFRFLCBcCi0JCSAgIExFXzBfUEFHRVRBQkxFIHwgTEVfVENfMl9MTENfRUxMQyB8IExFX0xSVU0o
MyksIFwKKwkJICAgTEVfMF9QQUdFVEFCTEUgfCBMRV9UQ18wX1BBR0VUQUJMRSB8IExFX0xSVU0o
MyksIFwKIAkJICAgTDNfM19XQikKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9tb2Nz
X2VudHJ5IHNrbF9tb2NzX3RhYmxlW10gPSB7CkBAIC0yNzQsNyArMjc0LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9tb2NzX2VudHJ5IGljbF9tb2NzX3RhYmxlW10gPSB7CiAJCSAg
IEwzXzFfVUMpLAogCS8qIEJhc2UgLSBMMyArIExlQ0M6UEFUIChEZXByZWNhdGVkKSAqLwogCU1P
Q1NfRU5UUlkoSTkxNV9NT0NTX1BURSwKLQkJICAgTEVfMF9QQUdFVEFCTEUgfCBMRV9UQ18xX0xM
QywKKwkJICAgTEVfMF9QQUdFVEFCTEUgfCBMRV9UQ18wX1BBR0VUQUJMRSwKIAkJICAgTDNfM19X
QiksCiAKIAlHRU4xMV9NT0NTX0VOVFJJRVMKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
