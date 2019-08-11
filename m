Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB2989130
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 12:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 593326E323;
	Sun, 11 Aug 2019 10:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB346E323
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 10:06:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 03:06:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,372,1559545200"; d="scan'208";a="187107839"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga002.jf.intel.com with ESMTP; 11 Aug 2019 03:06:21 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 11 Aug 2019 15:32:32 +0530
Message-Id: <20190811100232.27964-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Fixing up list of PG3 power
 domains.
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

VGhlIERESS1JTyBwb3dlciB3ZWxscyAoUFdSX1dFTExfQ1RMX0RESSkgYXJlIGJhY2tpbmcKdGhl
IElPL1BIWSBmdW5jdGlvbmFsaXR5LCB3aGljaCBkb2Vzbid0IG5lZWQgdGhlIFBHMwpwb3dlciBw
b3dlciB3ZWxsLiBBY2NvcmRpbmdseSBmaXhpbmcgdXAgdGhlIGxpc3Qgb2YKUEczIHBvd2VyIGRv
bWFpbnMuCgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5z
aHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDYgLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IGUzYmVhMmI3NGNlMi4uZWFjNDExMjVj
ZjNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwpAQCAtMjU3NSwxNyArMjU3NSwxMSBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcG93
ZXJfcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9UUkFOU0NPREVSX0QpIHwJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0Jf
UEFORUxfRklUVEVSKSB8CVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzFfTEFO
RVMpIHwJXAotCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDMV9JTykgfAkJXAogCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDMl9MQU5FUykgfAlcCi0JQklUX1VMTChQT1dF
Ul9ET01BSU5fUE9SVF9ERElfVEMyX0lPKSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9S
VF9ERElfVEMzX0xBTkVTKSB8CVwKLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzNf
SU8pIHwJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzRfTEFORVMpIHwJXAot
CUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDNF9JTykgfAkJXAogCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1BPUlRfRERJX1RDNV9MQU5FUykgfAlcCi0JQklUX1VMTChQT1dFUl9ET01BSU5f
UE9SVF9ERElfVEM1X0lPKSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfVEM2
X0xBTkVTKSB8CVwKLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9UQzZfSU8pIHwJCVwK
IAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEMxKSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01B
SU5fQVVYX1RDMikgfAkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQzMpIHwJCVwKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
