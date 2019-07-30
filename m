Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 894237AA39
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CD66E52C;
	Tue, 30 Jul 2019 13:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA0CF6E52C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:54:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 06:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="200169804"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 06:54:53 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 19:20:21 +0530
Message-Id: <20190730135024.31765-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730135024.31765-1-anshuman.gupta@intel.com>
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/9] drm/i915/tgl: Add VIDEO power domain
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
Cc: Deak@freedesktop.org, jani.nikula@intel.com,
	Nikula@freedesktop.org, Manna@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UE9XRVJfRE9NQUlOX1ZJREVPIGlzIGEgaG9vayB0byAiREM1IE9mZiIgcG93ZXIgd2VsbCwKd2hp
Y2ggY2FuIGRpc2FsbG93IERDNS82IGFuZCBhbGxvdyBEQzNDTy4KSXQgd2lsbCBiZSB1c2VkIHdo
ZW4gdGhlcmUgd2lsbCBiZSBQU1IyIGlkbGUgZnJhbWUgd2hpbGUgYWN0aXZlCnZpZGVvIHBsYXli
YWNrLgoKQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogRGVhaywg
SW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1
cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYyB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuaCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAg
ICAgICAgICAgICAgICAgICAgfCA2ICsrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwppbmRleCBjNDRiM2M1NGNiY2IuLjI0ZGYyMWU4NmEzOCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTEy
Miw2ICsxMjIsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJCXJldHVybiAiVkdBIjsKIAljYXNlIFBPV0VSX0RPTUFJTl9B
VURJTzoKIAkJcmV0dXJuICJBVURJTyI7CisJY2FzZSBQT1dFUl9ET01BSU5fVklERU86CisJCXJl
dHVybiAiVklERU8iOwogCWNhc2UgUE9XRVJfRE9NQUlOX0FVWF9BOgogCQlyZXR1cm4gIkFVWF9B
IjsKIAljYXNlIFBPV0VSX0RPTUFJTl9BVVhfQjoKQEAgLTI3NzQsNiArMjc3Niw3IEBAIHZvaWQg
aW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCiAjZGVmaW5lIFRHTF9ESVNQTEFZX0RDX09GRl9QT1dFUl9ET01BSU5TICgJCVwKIAlUR0xf
UFdfMl9QT1dFUl9ET01BSU5TIHwJCQlcCisJQklUX1VMTChQT1dFUl9ET01BSU5fVklERU8pIHwJ
CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fTU9ERVNFVCkgfAkJCVwKIAlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVVhfQSkgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKaW5k
ZXggN2E2MWNhYjFlYjMxLi4xZGQyMjFjNGJlZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCkBAIC02Niw2ICs2Niw3IEBAIGVu
dW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gewogCVBPV0VSX0RPTUFJTl9QT1JUX09USEVS
LAogCVBPV0VSX0RPTUFJTl9WR0EsCiAJUE9XRVJfRE9NQUlOX0FVRElPLAorCVBPV0VSX0RPTUFJ
Tl9WSURFTywKIAlQT1dFUl9ET01BSU5fQVVYX0EsCiAJUE9XRVJfRE9NQUlOX0FVWF9CLAogCVBP
V0VSX0RPTUFJTl9BVVhfQywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDA0ZTQ1NGU1MWE1
ZS4uOGI3ZGJhYTkxYTBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTM2MSw2ICszNjEs
MTIgQEAgc3RydWN0IGludGVsX2NzciB7CiAJdTMyIGFsbG93ZWRfZGNfbWFzazsKIAlpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKIAlib29sIHByZWZlcl9kYzNjbzsKKwlpbnRlbF93YWtlcmVmX3Qg
ZGM1X3dha2VyZWY7CisJLyoKKwkgKiBNdXRleCB0byBwcm90ZWN0IGRjNV93YWtlcmVmIHdoaWNo
IG1ha2UgbWFpbnRhaW4gcHJvcGVyCisJICogcG93ZXIgZG9tYWluIHJlZmVyZW5jZSBjb3VudCBv
ZiBQT1dFUl9ET01BSU5fVklERU8KKwkgKi8KKwlzdHJ1Y3QgbXV0ZXggZGM1X211dGV4OwogfTsK
IAogZW51bSBpOTE1X2NhY2hlX2xldmVsIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
