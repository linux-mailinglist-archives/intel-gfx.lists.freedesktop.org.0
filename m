Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40963290CAC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 22:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FAA56EE8D;
	Fri, 16 Oct 2020 20:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529236EE8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 20:19:34 +0000 (UTC)
IronPort-SDR: 90mrVjtN6ay/oYQVjtsHEz5TnrPRKyxUe6RlLgGL0qw0W58viYntRtHZ67JWSZI8I1UW4034Bm
 xw80Bd7PtWMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="146540873"
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="146540873"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 13:19:31 -0700
IronPort-SDR: LxgMLIhPqMD2ZZ3E0s8vODnokXOQCBv3dubgd+brtK/2msPeGFqbji+lnQ4Nq23W6sF0K0si8l
 7A+yk2BLzaRw==
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="346675134"
Received: from suneshru-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.166.191])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 13:19:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 13:18:37 -0700
Message-Id: <20201016201837.85845-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Program DBUF_CTL tracker
 state service
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

VGhpcyBzZXF1ZW5jZSBpcyBub3QgcGFydCBvZiAiU2VxdWVuY2VzIHRvIEluaXRpYWxpemUgRGlz
cGxheSIgYnV0CmFzIG5vdGVkIGluIHRoZSBNQnVzIHBhZ2UgdGhlIERCVUZfQ1RMLlRyYWNrZXJf
c3RhdGVfc2VydmljZSBuZWVkcwp0byBiZSBzZXQgdG8gOC4KCkJTcGVjOiA0OTIxMwpTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDEz
ICsrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAg
ICAgICAgICAgIHwgMTQgKysrKysrKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IDQ1ODA2Y2ZjNjc5YS4uZGIzNmFiMDJl
N2Q3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwpAQCAtNDc3MSw2ICs0NzcxLDE3IEBAIHN0YXRpYyB2b2lkIGdlbjlfZGJ1Zl9k
aXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlnZW45X2RidWZfc2xp
Y2VzX3VwZGF0ZShkZXZfcHJpdiwgMCk7CiB9CiAKK3N0YXRpYyB2b2lkIGdlbjEyX2RidWZfc2xp
Y2VzX2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJY29uc3Qg
aW50IG51bV9zbGljZXMgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+bnVtX3N1cHBvcnRlZF9kYnVm
X3NsaWNlczsKKwllbnVtIGRidWZfc2xpY2Ugc2xpY2U7CisKKwlmb3IgKHNsaWNlID0gREJVRl9T
MTsgc2xpY2UgPCBudW1fc2xpY2VzOyBzbGljZSsrKQorCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYs
IERCVUZfQ1RMX1Moc2xpY2UpLAorCQkJICAgICBEQlVGX1RSQUNLRVJfU1RBVEVfU0VSVklDRV9N
QVNLLAorCQkJICAgICBEQlVGX1RSQUNLRVJfU1RBVEVfU0VSVklDRSg4KSk7Cit9CisKIHN0YXRp
YyB2b2lkIGljbF9tYnVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
ewogCXVuc2lnbmVkIGxvbmcgYWJveF9yZWdzID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmFib3hf
bWFzazsKQEAgLTUzNDAsNiArNTM1MSw4IEBAIHN0YXRpYyB2b2lkIGljbF9kaXNwbGF5X2NvcmVf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJLyogNC4gRW5hYmxlIENE
Q0xLLiAqLwogCWludGVsX2NkY2xrX2luaXRfaHcoZGV2X3ByaXYpOwogCisJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTIpCisJCWdlbjEyX2RidWZfc2xpY2VzX2NvbmZpZyhkZXZfcHJpdik7
CiAJLyogNS4gRW5hYmxlIERCVUYuICovCiAJZ2VuOV9kYnVmX2VuYWJsZShkZXZfcHJpdik7CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDZkOTdlNjI4NmMyZC4uYzM4OTAxZTJmODFjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc5MjcsMTEgKzc5MjcsMTUgQEAgZW51bSB7CiAj
ZGVmaW5lIERJU1BfQVJCX0NUTDIJX01NSU8oMHg0NTAwNCkKICNkZWZpbmUgIERJU1BfREFUQV9Q
QVJUSVRJT05fNV82CSgxIDw8IDYpCiAjZGVmaW5lICBESVNQX0lQQ19FTkFCTEUJCSgxIDw8IDMp
Ci0jZGVmaW5lIF9EQlVGX0NUTF9TMQkJCTB4NDUwMDgKLSNkZWZpbmUgX0RCVUZfQ1RMX1MyCQkJ
MHg0NEZFOAotI2RlZmluZSBEQlVGX0NUTF9TKHNsaWNlKQkJX01NSU8oX1BJQ0tfRVZFTihzbGlj
ZSwgX0RCVUZfQ1RMX1MxLCBfREJVRl9DVExfUzIpKQotI2RlZmluZSAgREJVRl9QT1dFUl9SRVFV
RVNUCQkoMSA8PCAzMSkKLSNkZWZpbmUgIERCVUZfUE9XRVJfU1RBVEUJCSgxIDw8IDMwKQorCisj
ZGVmaW5lIF9EQlVGX0NUTF9TMQkJCQkweDQ1MDA4CisjZGVmaW5lIF9EQlVGX0NUTF9TMgkJCQkw
eDQ0RkU4CisjZGVmaW5lIERCVUZfQ1RMX1Moc2xpY2UpCQkJX01NSU8oX1BJQ0tfRVZFTihzbGlj
ZSwgX0RCVUZfQ1RMX1MxLCBfREJVRl9DVExfUzIpKQorI2RlZmluZSAgREJVRl9QT1dFUl9SRVFV
RVNUCQkJUkVHX0JJVCgzMSkKKyNkZWZpbmUgIERCVUZfUE9XRVJfU1RBVEUJCQlSRUdfQklUKDMw
KQorI2RlZmluZSAgREJVRl9UUkFDS0VSX1NUQVRFX1NFUlZJQ0VfTUFTSwlSRUdfR0VOTUFTSygy
MywgMTkpCisjZGVmaW5lICBEQlVGX1RSQUNLRVJfU1RBVEVfU0VSVklDRSh4KQkJUkVHX0ZJRUxE
X1BSRVAoREJVRl9UUkFDS0VSX1NUQVRFX1NFUlZJQ0VfTUFTSywgeCkKKwogI2RlZmluZSBHRU43
X01TR19DVEwJX01NSU8oMHg0NTAxMCkKICNkZWZpbmUgIFdBSVRfRk9SX1BDSF9SRVNFVF9BQ0sJ
CSgxIDw8IDEpCiAjZGVmaW5lICBXQUlUX0ZPUl9QQ0hfRkxSX0FDSwkJKDEgPDwgMCkKLS0gCjIu
MjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
