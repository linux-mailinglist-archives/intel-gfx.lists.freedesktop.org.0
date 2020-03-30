Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9808198853
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 01:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE576E4E3;
	Mon, 30 Mar 2020 23:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CAE6E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 23:31:46 +0000 (UTC)
IronPort-SDR: C0TP2MzZLZnc+asKPLebvgk3oqFGfUq1PIoG8f9zruZ2RTJku82eu16dBbYWxKIy1CrER9kl0h
 sNbSdFFDIrdw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 16:31:42 -0700
IronPort-SDR: WF0z2zp0MvjjlACsnVwaS6HnkRppetxxRFatmbrX7lGMFemjmUyliaOeEigMluWpnwGiKF0Q3j
 lj1RXaidvjpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="242190314"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 16:31:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 16:33:04 -0700
Message-Id: <20200330233304.406215-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330233304.406215-1-jose.souza@intel.com>
References: <20200330233304.406215-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/fbc: Apply WA 529 to all GEN9
 platforms
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

SXQgd2FzIG1pc3NpbmcgR0xLIGFuZCBjYXVzaW5nIHNvbWUgQ1JDIG1pc21hdGNoZXMuCgpCU3Bl
YzogMjE2NjQKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2
ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA1NmJjZDZjNTJh
MDIuLjQ3YThiN2ExODcwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jCkBAIC0yODMsOCArMjgzLDggQEAgc3RhdGljIHZvaWQgZ2VuN19mYmNfYWN0aXZhdGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXUzMiBkcGZjX2N0bDsKIAlpbnQgdGhy
ZXNob2xkID0gZGV2X3ByaXYtPmZiYy50aHJlc2hvbGQ7CiAKLQkvKiBEaXNwbGF5IFdBICMwNTI5
OiBza2wsIGtibCwgYnh0LiAqLwotCWlmIChJU19HRU45X0JDKGRldl9wcml2KSB8fCBJU19CUk9Y
VE9OKGRldl9wcml2KSkgeworCS8qIERpc3BsYXkgV0EgIzA1Mjk6IEdFTjkgKi8KKwlpZiAoSVNf
R0VOKGRldl9wcml2LCA5KSkgewogCQl1MzIgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwg
Q0hJQ0tFTl9NSVNDXzQpOwogCiAJCXZhbCAmPSB+KEZCQ19TVFJJREVfT1ZFUlJJREUgfCBGQkNf
U1RSSURFX01BU0spOwpAQCAtMTIxMiw3ICsxMjEyLDcgQEAgdm9pZCBpbnRlbF9mYmNfZW5hYmxl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQlnb3RvIG91dDsKIAl9CiAKLQlp
ZiAoKElTX0dFTjlfQkMoZGV2X3ByaXYpIHx8IElTX0JST1hUT04oZGV2X3ByaXYpKSAmJgorCWlm
IChJU19HRU4oZGV2X3ByaXYsIDkpICYmCiAJICAgIHBsYW5lX3N0YXRlLT5ody5mYi0+bW9kaWZp
ZXIgIT0gSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQpCiAJCWNhY2hlLT5nZW45X3dhX2NmYl9zdHJp
ZGUgPQogCQkJRElWX1JPVU5EX1VQKGNhY2hlLT5wbGFuZS5zcmNfdywgMzIgKiBmYmMtPnRocmVz
aG9sZCkgKiA4OwotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
