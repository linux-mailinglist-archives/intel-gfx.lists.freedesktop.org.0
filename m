Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C825028D6B9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 00:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834BE6E980;
	Tue, 13 Oct 2020 22:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3FE6E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 22:58:03 +0000 (UTC)
IronPort-SDR: rHZX94sHniLqjhpG3qMlINQR6SNf2MB9qtz7WWX4dhf7P/JJWGJqjctVDcPp+0cXuZmQZrv2cQ
 MQTIitr+lOqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="145315614"
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="145315614"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 15:58:02 -0700
IronPort-SDR: 1CeH4i0djI0/NSrNtq7tGARb413W6OXxWBIzwlukA8sJRR0IDgm64k6SogaMKKtSN0lTJT9KEG
 C4IswZ6MSrhQ==
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="313976718"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 15:58:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 16:01:20 -0700
Message-Id: <20201013230121.331595-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013230121.331595-1-jose.souza@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] RFC/WIP: drm/i915/display/psr: Consider
 tiling when doing the plane offset calculation
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

RG8gdGhlIGNhbGN1bGF0aW9uIG9mIHggYW5kIHkgb2Zmc2V0cyB1c2luZwpza2xfY2FsY19tYWlu
X3N1cmZhY2Vfb2Zmc2V0KCkuCgpSRkMvV0lQOiBUaGlzIGNhdXNlcyB0aGUgdmFsdWUgb2YgdGhl
IGNhbGN1bGF0ZWQgeCB0byBiZSBkaWZmZXJlbnQgdGhhbgpwbGFuZV9zdGF0ZS0+Y29sb3JfcGxh
bmVbY29sb3JfcGxhbmVdLngsIG5vdCBzdXJlIGlmIHRoYXQgaXMgZXhwZWN0ZWQuCgpDYzogR3dh
bi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE0ICsrKysrKysrKystLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA5MWJhOTdiZjYwOWIuLmMzMGQ3MDY5Y2Jh
YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0xMTc0LDcg
KzExNzQsOCBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSwKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7CiAJZW51bSBwaXBlIHBpcGUgPSBwbGFuZS0+cGlw
ZTsKIAljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmNsaXA7Ci0JdTMyIHZhbDsKKwl1MzIgdmFsLCBv
ZmZzZXQ7CisJaW50IHJldCwgeCwgeTsKIAogCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJf
c2VsX2ZldGNoKQogCQlyZXR1cm47CkBAIC0xMTkxLDkgKzExOTIsMTQgQEAgdm9pZCBpbnRlbF9w
c3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJ
dmFsIHw9IHBsYW5lX3N0YXRlLT51YXBpLmRzdC54MTsKIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZf
cHJpdiwgUExBTkVfU0VMX0ZFVENIX1BPUyhwaXBlLCBwbGFuZS0+aWQpLCB2YWwpOwogCi0JLyog
VE9ETzogY29uc2lkZXIgdGlsaW5nIGFuZCBhdXhpbGlhcnkgc3VyZmFjZXMgKi8KLQl2YWwgPSAo
Y2xpcC0+eTEgKyBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnkpIDw8IDE2
OwotCXZhbCB8PSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLng7CisJLyog
VE9ETzogY29uc2lkZXIgYXV4aWxpYXJ5IHN1cmZhY2VzICovCisJeCA9IHBsYW5lX3N0YXRlLT51
YXBpLnNyYy54MSA+PiAxNjsKKwl5ID0gKHBsYW5lX3N0YXRlLT51YXBpLnNyYy55MSA+PiAxNikg
KyBjbGlwLT55MTsKKwlyZXQgPSBza2xfY2FsY19tYWluX3N1cmZhY2Vfb2Zmc2V0KHBsYW5lX3N0
YXRlLCAmeCwgJnksICZvZmZzZXQpOworCWlmIChyZXQpCisJCWRybV93YXJuX29uY2UoJmRldl9w
cml2LT5kcm0sICJza2xfY2FsY19tYWluX3N1cmZhY2Vfb2Zmc2V0KCkgcmV0dXJuZWQgJWlcbiIs
CisJCQkgICAgICByZXQpOworCXZhbCA9IHkgPDwgMTYgfCB4OwogCWludGVsX2RlX3dyaXRlX2Z3
KGRldl9wcml2LCBQTEFORV9TRUxfRkVUQ0hfT0ZGU0VUKHBpcGUsIHBsYW5lLT5pZCksCiAJCQkg
IHZhbCk7CiAKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
