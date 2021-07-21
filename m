Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3A33D19C0
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC71C6EB74;
	Wed, 21 Jul 2021 22:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937246EB3A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 22:30:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211528009"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211528009"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658464214"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:30:41 -0700
Message-Id: <20210721223043.834562-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 16/18] drm/i915/dg2: Don't program BW_BUDDY
 registers
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

QWx0aG91Z2ggdGhlIEJXX0JVRERZIHJlZ2lzdGVycyBzdGlsbCBleGlzdCwgdGhleSBhcmUgbm90
IHVzZWQgZm9yCmFueXRoaW5nIG9uIERHMi4gIFRoaXMgY2hhbmdlIGlzIGV4cGVjdGVkIHRvIGhv
bGQgdHJ1ZSBmb3IgZnV0dXJlIGRncHUncwp0b28uCgpCc3BlYzogNDkyMTgKU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNCArKysrCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA0NzMyZWZiYjAyZjkuLjgxZWZj
NzdiYWRhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKQEAgLTU4MTQsNiArNTgxNCwxMCBAQCBzdGF0aWMgdm9pZCB0Z2xfYndf
YnVkZHlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdW5zaWduZWQg
bG9uZyBhYm94X21hc2sgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+YWJveF9tYXNrOwogCWludCBj
b25maWcsIGk7CiAKKwkvKiBCV19CVUREWSByZWdpc3RlcnMgYXJlIG5vdCB1c2VkIG9uIGRncHUn
cyBiZXlvbmQgREcxICovCisJaWYgKElTX0RHRlgoZGV2X3ByaXYpICYmICFJU19ERzEoZGV2X3By
aXYpKQorCQlyZXR1cm47CisKIAlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8CiAJICAg
IElTX0RHMV9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApIHx8CiAJICAg
IElTX1JLTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApIHx8Ci0tIAoy
LjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
