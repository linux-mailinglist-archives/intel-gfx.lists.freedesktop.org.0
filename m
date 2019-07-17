Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 972796BDF2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 16:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF52B6E095;
	Wed, 17 Jul 2019 14:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C616E095
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 14:14:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 07:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="169569739"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jul 2019 07:14:23 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:39:45 +0530
Message-Id: <20190717140949.29329-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717140949.29329-1-anshuman.gupta@intel.com>
References: <20190717140949.29329-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/10] drm/i915/tgl:Added VIDEO power domain.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkZWQgUE9XRVJfRE9NQUlOX1ZJREVPIHBvd2VyIGRvbWFpbiBhbmQgYWRkZWQgaXRzIGhlbHBl
ciBzdHVmZi4KUE9XRVJfRE9NQUlOX1ZJREVPIGlzIGEgaG9vayB0byAiREM1IE9mZiIgcG93ZXIg
d2VsbC4Kd2hpY2ggY2FuIGRpc2FsbG93IERDNS82IGluIG9yZGVyIHRvIGFsbG93IGRjM2NvLgoK
Q2M6IGphbmkubmlrdWxhQGludGVsLmNvbQpDYzogaW1yZS5kZWFrQGludGVsLmNvbQpDYzogYW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICAgICAgICAgICAgfCA2ICsrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYwppbmRleCA2MmQ2OGUyMWQ1ZmEuLjlkMjllZTQ2MGM2OCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMK
QEAgLTEyMiw2ICsxMjIsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCXJldHVybiAiVkdBIjsKIAljYXNlIFBPV0VSX0RP
TUFJTl9BVURJTzoKIAkJcmV0dXJuICJBVURJTyI7CisJY2FzZSBQT1dFUl9ET01BSU5fVklERU86
CisJCXJldHVybiAiVklERU8iOwogCWNhc2UgUE9XRVJfRE9NQUlOX0FVWF9BOgogCQlyZXR1cm4g
IkFVWF9BIjsKIAljYXNlIFBPV0VSX0RPTUFJTl9BVVhfQjoKQEAgLTI3NjIsNiArMjc2NCw3IEBA
IHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCiAjZGVmaW5lIFRHTF9ESVNQTEFZX0RDM0NPX09GRl9QT1dFUl9ET01BSU5TICgJ
CVwKIAlUR0xfUFdfMl9QT1dFUl9ET01BSU5TIHwJCQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5f
VklERU8pIHwJCQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fTU9ERVNFVCkgfAkJCVwKIAlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVVhfQSkgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklU
KSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmgKaW5kZXggOTNlZTA4ZGU3YjA2Li42MzViOTNjZjY3ZmQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCkBAIC02NSw2ICs2
NSw3IEBAIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gewogCVBPV0VSX0RPTUFJTl9Q
T1JUX09USEVSLAogCVBPV0VSX0RPTUFJTl9WR0EsCiAJUE9XRVJfRE9NQUlOX0FVRElPLAorCVBP
V0VSX0RPTUFJTl9WSURFTywKIAlQT1dFUl9ET01BSU5fQVVYX0EsCiAJUE9XRVJfRE9NQUlOX0FV
WF9CLAogCVBPV0VSX0RPTUFJTl9BVVhfQywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDRm
NDQ0NzE4Y2QxZi4uNzJiYmM3ODYwNTNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTM2
MCw2ICszNjAsMTIgQEAgc3RydWN0IGludGVsX2NzciB7CiAJdTMyIGFsbG93ZWRfZGNfbWFzazsK
IAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAlib29sIHByZWZlcl9kYzNjbzsKKwlpbnRlbF93
YWtlcmVmX3QgZGM1X3dha2VyZWY7CisJLyoKKwkgKiBNdXRleCB0byBwcm90ZWN0IGRjNV93YWtl
cmVmIHdoaWNoIG1ha2UgbWFpbnRhaW4gcHJvcGVyCisJICogcG93ZXIgZG9tYWluIHJlZmVyZW5j
ZSBjb3VudCBvZiBQT1dFUl9ET01BSU5fVklERU8KKwkgKi8KKwlzdHJ1Y3QgbXV0ZXggZGM1X211
dGV4OwogfTsKIAogZW51bSBpOTE1X2NhY2hlX2xldmVsIHsKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
