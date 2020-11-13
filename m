Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D1D2B27C9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040456E870;
	Fri, 13 Nov 2020 22:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C806E871
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:05:03 +0000 (UTC)
IronPort-SDR: Uivy0x6HDhVyPZ/1S/wxefxr0vErISgbQCP4eraJoCurfm0q71nseZnfWIflhNwNDhHxXBQ3xt
 AWL2QxUvUQSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="255248301"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="255248301"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:05:03 -0800
IronPort-SDR: ZgJcK1Xdy7mtGupbbo8RZFwpRxnyDE+dzCwN0zL/yhN6oom8ToJrP/SIh6zZNEH2wW2DZ4VKgP
 BmD0yB7fexQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="429625849"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 Nov 2020 14:05:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:05:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:56 +0200
Message-Id: <20201113220358.24794-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/23] drm/i915: Fix cursor src/dst rectangle
 with bigjoiner
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGNhbid0IGNhbGwgZHJtX3BsYW5lX3N0YXRlX3NyYygpIHRoaXMgbGF0ZSBmb3IgdGhlIHNsYXZl
IHBsYW5lIHNpbmNlCml0IHdvdWxkIGNvbnN1bHQgdGhlIHdyb25nIHVhcGkgc3RhdGUuIFdlJ3Zl
IGFscmVheWQgZG9uZSB0aGUgY29ycmVjdAp1YXBpLT5odyBjb3B5IGVhcmxpZXIsIHNvIGxldCdz
IGp1c3QgcHJlc2VydmUgdGhlIHVuY2xpcHBlZCBzcmMvZHN0CnJlY3RzIHVzaW5nIGEgdGVtcCBj
b3B5IGFjcm9zcyB0aGUgaW50ZWxfYXRvbWljX3BsYW5lX2NoZWNrX2NsaXBwaW5nKCkKY2FsbC4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDE5ZTljMzc5NTI2NS4uNzYwN2JjZDliN2ZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE2NTEsNiArMTE2NTEsOCBAQCBzdGF0aWMgaW50
IGludGVsX2NoZWNrX2N1cnNvcihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
IHsKIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5m
YjsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUocGxhbmVfc3RhdGUt
PnVhcGkucGxhbmUtPmRldik7CisJY29uc3Qgc3RydWN0IGRybV9yZWN0IHNyYyA9IHBsYW5lX3N0
YXRlLT51YXBpLnNyYzsKKwljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgZHN0ID0gcGxhbmVfc3RhdGUt
PnVhcGkuZHN0OwogCWludCByZXQ7CiAKIAlpZiAoZmIgJiYgZmItPm1vZGlmaWVyICE9IERSTV9G
T1JNQVRfTU9EX0xJTkVBUikgewpAQCAtMTE2NjYsOCArMTE2NjgsOCBAQCBzdGF0aWMgaW50IGlu
dGVsX2NoZWNrX2N1cnNvcihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJ
cmV0dXJuIHJldDsKIAogCS8qIFVzZSB0aGUgdW5jbGlwcGVkIHNyYy9kc3QgcmVjdGFuZ2xlcywg
d2hpY2ggd2UgcHJvZ3JhbSB0byBodyAqLwotCXBsYW5lX3N0YXRlLT51YXBpLnNyYyA9IGRybV9w
bGFuZV9zdGF0ZV9zcmMoJnBsYW5lX3N0YXRlLT51YXBpKTsKLQlwbGFuZV9zdGF0ZS0+dWFwaS5k
c3QgPSBkcm1fcGxhbmVfc3RhdGVfZGVzdCgmcGxhbmVfc3RhdGUtPnVhcGkpOworCXBsYW5lX3N0
YXRlLT51YXBpLnNyYyA9IHNyYzsKKwlwbGFuZV9zdGF0ZS0+dWFwaS5kc3QgPSBkc3Q7CiAKIAly
ZXQgPSBpbnRlbF9jdXJzb3JfY2hlY2tfc3VyZmFjZShwbGFuZV9zdGF0ZSk7CiAJaWYgKHJldCkK
LS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
