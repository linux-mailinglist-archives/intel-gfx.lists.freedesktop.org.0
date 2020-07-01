Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B87CA2116F1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4037C6EA2A;
	Wed,  1 Jul 2020 23:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D196E1E5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:51 +0000 (UTC)
IronPort-SDR: Fhb1XsJTWChr+aE2ZuCRNuRZpHpJ5z2QsVZzj91zn5l/VELBWo91FGdfCo2uxi8AuAFO435tOI
 i3XxFHSb5ytw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164785957"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="164785957"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:50 -0700
IronPort-SDR: QVuQ8qe05GpijsMyay6diG+kE2MTcyCnJdLZ3skaZzvupw2ImCIEPqpLvdjf0PewjIan390GkQ
 BHdMpWyYnlqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276346"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:14 -0700
Message-Id: <20200701235339.32608-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/28] drm/i915/dg1: Add DG1 PCI IDs
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
QWRkIHRoZSBQQ0kgSUQgZm9yIERHMSwgYnV0IGtlZXAgaXQgb3V0IG9mIHRoZSB0YWJsZSB3ZSB1
c2UgdG8gcmVnaXN0ZXIKdGhlIGRyaXZlci4gQXQgdGhpcyBwb2ludCB3ZSBjYW4ndCBjb25zaWRl
ciB0aGUgZHJpdmVyIHJlYWR5IHRvIGJpbmQgdG8KdGhlIGRldmljZSBzaW5jZSB3ZSBiYXNpY2Fs
bHkgbWlzcyBzdXBwb3J0IGZvciBldmVyeXRoaW5nLiBXaGVuIG1vcmUKc3VwcG9ydCBpcyBtZXJn
ZWQgd2UgY2FuIGVuYWJsZSBpdCB0byB3b3JrIHBhcnRpYWxseSBmb3IgZXhhbXBsZSBhcyBhCmRp
c3BsYXktb25seSBkcml2ZXIuCgp2MjogcmVtb3ZlIERHMSBmcm9tIHRoZSBwY2kgdGFibGUgYW5k
IHJld29yZCBjb21taXQgbWVzc2FnZSAoTHVjYXMpCgpCc3BlYzogNDQ0NjMKCkNjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1
c211c0BpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+ICMgdjEKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMiAr
LQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCAgICAgICB8IDQgKysrKwogMiBmaWxlcyBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YwppbmRleCA1OGNjZWVhYTBmZmEuLjhjYWU2NGFkYmIyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCkBAIC05MDAsNyArOTAwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2Vf
aW5mbyBya2xfaW5mbyA9IHsKIAkuaGFzX21hc3Rlcl91bml0X2lycSA9IDEsIFwKIAkuaXNfZGdm
eCA9IDEKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9kZzFf
aW5mbyA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gZGcxX2luZm8g
PSB7CiAJR0VOMTJfREdGWF9GRUFUVVJFUywKIAlQTEFURk9STShJTlRFTF9ERzEpLAogCS5waXBl
X21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQykgfCBCSVQoUElQ
RV9EKSwKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2Ry
bS9pOTE1X3BjaWlkcy5oCmluZGV4IGJjOTg5ZGUyYWFjMi4uZjQ0ZmU4MjI4ODBkIDEwMDY0NAot
LS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmgKQEAgLTYxNCw0ICs2MTQsOCBAQAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0QzkwLCBpbmZv
KSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0QzlBLCBpbmZvKQogCisvKiBERzEgKi8KKyNkZWZp
bmUgSU5URUxfREcxX0lEUyhpbmZvKSBcCisJSU5URUxfVkdBX0RFVklDRSgweDQ5MDUsIGluZm8p
CisKICNlbmRpZiAvKiBfSTkxNV9QQ0lJRFNfSCAqLwotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
