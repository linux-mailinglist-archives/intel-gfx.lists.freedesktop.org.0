Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DCA2E9F16
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 21:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85FBC6E051;
	Mon,  4 Jan 2021 20:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AA76E051
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 20:56:17 +0000 (UTC)
IronPort-SDR: xtOCV5kpZJbV+/28hDK1tLxw96Vr+HEVMVoE77d5ySBw23AvTGZuD5FwFijEiN1BhE+D9QL5mu
 mQUYrMKwke2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="177161477"
X-IronPort-AV: E=Sophos;i="5.78,474,1599548400"; d="scan'208";a="177161477"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 12:56:17 -0800
IronPort-SDR: 4Q5hpu2AbLYOQehrxCoHfGWSUARF9lM3xDLLlSB+HxP0hsNgRpwda6Z1WT86Xkmsr9/JTuBIW4
 mNUSqID0N3YQ==
X-IronPort-AV: E=Sophos;i="5.78,474,1599548400"; d="scan'208";a="421501169"
Received: from yche108-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.251.138.25])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 12:56:14 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 12:56:54 -0800
Message-Id: <20210104205654.238928-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210104205654.238928-1-jose.souza@intel.com>
References: <20210104205654.238928-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 4/4] drm/i915/display/psr: Program plane's
 calculated offset to plane SF register
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

SXQgcHJvZ3JhbXMgUGxhbmUncyBjYWxjdWxhdGVkIHgsIHksIG9mZnNldCB0byBQbGFuZSBTRiBy
ZWdpc3Rlci4KSXQgZG9lcyB0aGUgY2FsY3VsYXRpb24gb2YgeCBhbmQgeSBvZmZzZXRzIHVzaW5n
CnNrbF9jYWxjX21haW5fc3VyZmFjZV9vZmZzZXQoKS4KCnYzOiBVcGRhdGUgY29tbWl0IG1lc3Nh
Z2UKCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+CkNjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KVGVzdGVk
LWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE0ICsrKysrKysrKystLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCBmNWI5NTE5YjM3NTYuLmMy
NGFlNjk0MjZjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBA
IC0xMTg2LDcgKzExODYsOCBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0
Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7CiAJZW51bSBwaXBlIHBpcGUgPSBw
bGFuZS0+cGlwZTsKIAljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmNsaXA7Ci0JdTMyIHZhbDsKKwl1
MzIgdmFsLCBvZmZzZXQ7CisJaW50IHJldCwgeCwgeTsKIAogCWlmICghY3J0Y19zdGF0ZS0+ZW5h
YmxlX3BzcjJfc2VsX2ZldGNoKQogCQlyZXR1cm47CkBAIC0xMjAzLDkgKzEyMDQsMTQgQEAgdm9p
ZCBpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmUsCiAJdmFsIHw9IHBsYW5lX3N0YXRlLT51YXBpLmRzdC54MTsKIAlpbnRlbF9kZV93cml0
ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX1BPUyhwaXBlLCBwbGFuZS0+aWQpLCB2YWwp
OwogCi0JLyogVE9ETzogY29uc2lkZXIgdGlsaW5nIGFuZCBhdXhpbGlhcnkgc3VyZmFjZXMgKi8K
LQl2YWwgPSAoY2xpcC0+eTEgKyBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVd
LnkpIDw8IDE2OwotCXZhbCB8PSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVd
Lng7CisJLyogVE9ETzogY29uc2lkZXIgYXV4aWxpYXJ5IHN1cmZhY2VzICovCisJeCA9IHBsYW5l
X3N0YXRlLT51YXBpLnNyYy54MSA+PiAxNjsKKwl5ID0gKHBsYW5lX3N0YXRlLT51YXBpLnNyYy55
MSA+PiAxNikgKyBjbGlwLT55MTsKKwlyZXQgPSBza2xfY2FsY19tYWluX3N1cmZhY2Vfb2Zmc2V0
KHBsYW5lX3N0YXRlLCAmeCwgJnksICZvZmZzZXQpOworCWlmIChyZXQpCisJCWRybV93YXJuX29u
Y2UoJmRldl9wcml2LT5kcm0sICJza2xfY2FsY19tYWluX3N1cmZhY2Vfb2Zmc2V0KCkgcmV0dXJu
ZWQgJWlcbiIsCisJCQkgICAgICByZXQpOworCXZhbCA9IHkgPDwgMTYgfCB4OwogCWludGVsX2Rl
X3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9TRUxfRkVUQ0hfT0ZGU0VUKHBpcGUsIHBsYW5lLT5p
ZCksCiAJCQkgIHZhbCk7CiAKLS0gCjIuMzAuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
