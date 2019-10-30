Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9255CE948D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 02:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58856EC6A;
	Wed, 30 Oct 2019 01:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7CFD6E868
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 01:25:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 18:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="211945560"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2019 18:25:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:24:45 -0700
Message-Id: <20191030012448.14937-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030012448.14937-1-lucas.demarchi@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: add wrappers to get intel
 connector state
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

V3JhcCBkcm1fYXRvbWljX2dldF9vbGRfY29ubmVjdG9yX3N0YXRlIHNvIHdlIGNhbiBnZXQgdGhl
CmludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlIGFuZCBtYWtlIGl0IGVhc2llciB0byBtaWdy
YXRlIHRvIGludGVsCnR5cGVzLgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDQwMTg0ZTgyM2M4NC4uYTU1MGFiYjQ4YjNjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaApAQCAtMTUyNyw2ICsxNTI3LDI0IEBAIGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3Rh
dGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJCQkJCSAmY3J0Yy0+YmFz
ZSkpOwogfQogCitzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9z
dGF0ZSAqCitpbnRlbF9hdG9taWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCisJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpj
b25uZWN0b3IpCit7CisJcmV0dXJuIHRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKAor
CQkJZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtPmJhc2UsCisJCQkm
Y29ubmVjdG9yLT5iYXNlKSk7Cit9CisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX2RpZ2l0
YWxfY29ubmVjdG9yX3N0YXRlICoKK2ludGVsX2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJCQkgICAgIHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvcikKK3sKKwlyZXR1cm4gdG9faW50ZWxfZGlnaXRhbF9jb25u
ZWN0b3Jfc3RhdGUoCisJCQlkcm1fYXRvbWljX2dldF9vbGRfY29ubmVjdG9yX3N0YXRlKCZzdGF0
ZS0+YmFzZSwKKwkJCSZjb25uZWN0b3ItPmJhc2UpKTsKK30KKwogLyogaW50ZWxfZGlzcGxheS5j
ICovCiBzdGF0aWMgaW5saW5lIGJvb2wKIGludGVsX2NydGNfaGFzX3R5cGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
