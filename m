Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A80990FB5
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1ECD89701;
	Sat, 17 Aug 2019 09:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D42D6E284
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950574"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:25 -0700
Message-Id: <20190817093902.2171-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/40] drm/i915/tgl: Move transcoders to
 pipes' powerwells
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpXaGVu
IHRyeWluZyB0byByZWFkIHJlZ2lzdGVycyBmcm9tIHRyYW5zY29kZXIgQyBhbmQgRCB3aGlsZSBQ
RzMgaXMgT04gaXQKY2F1c2VzIHVuY2xhaW1lZCBhY2Nlc3Mgd2FybmluZ3MuIEFkZGluZyB0aGUg
cG93ZXJ3ZWxscyBmb3IgdGhlIHBpcGVzCmZpeGVzIHRoZSBpc3N1ZSwgYnV0IGRvZXNuJ3QgbWF0
Y2ggdGhlIHNwZWMuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAwMmY4YzM5MTFjNTkuLjQ4NTA1YzRiNmQ1MCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKQEAgLTI1NDQsMTIgKzI1NDQsMTQgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKICNkZWZpbmUgVEdMX1BXXzVf
UE9XRVJfRE9NQUlOUyAoCQkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BJUEVfRCkgfAkJCVwK
KwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0QpIHwJCVwKIAlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9QSVBFX0RfUEFORUxfRklUVEVSKSB8ICAgICBcCiAJQklUX1VMTChQT1dFUl9ET01B
SU5fSU5JVCkpCiAKICNkZWZpbmUgVEdMX1BXXzRfUE9XRVJfRE9NQUlOUyAoCQkJXAogCVRHTF9Q
V181X1BPV0VSX0RPTUFJTlMgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0MpIHwJ
CQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9DKSB8CQlcCiAJQklUX1VMTChQ
T1dFUl9ET01BSU5fUElQRV9DX1BBTkVMX0ZJVFRFUikgfAlcCiAJQklUX1VMTChQT1dFUl9ET01B
SU5fSU5JVCkpCiAKQEAgLTI1NTcsOCArMjU1OSw2IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dl
cl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCVRHTF9QV180X1BPV0VS
X0RPTUFJTlMgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0IpIHwJCQlcCiAJQklU
X1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9CKSB8CQlcCi0JQklUX1VMTChQT1dFUl9ET01B
SU5fVFJBTlNDT0RFUl9DKSB8CQlcCi0JQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9E
KSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9CX1BBTkVMX0ZJVFRFUikgfAlcCiAJ
QklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfVEMxX0xBTkVTKSB8CVwKIAlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9QT1JUX0RESV9UQzJfTEFORVMpIHwJXAotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
