Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50437380D5A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622F76F381;
	Fri, 14 May 2021 15:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214DC6EF31
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:21 +0000 (UTC)
IronPort-SDR: BmRM+12uaWOUpzhZ8OKAXXhf4h9ZptGiVornVY4JgcZ7KAHskOYlSl2Vj9S/lHgn1FyEKkGFP0
 IKOHNuPCAkxw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243920"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243920"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
IronPort-SDR: i7vP1lqc8NL9orQQc1yUB1KuMcdtYsWxq5oaGjvmaLqWYRkw4a2PTGtFYb1JXXfraTVkKf5Gyc
 GUWCj7hLlmMQ==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796558"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:36:58 -0700
Message-Id: <20210514153711.2359617-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 06/19] drm/i915/xelpd: Provide port/phy mapping for
 vbt
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHdpbGwgYWxsb3cgcHJvcGVyIERESSBpbml0aWFsaXphdGlvbiBiYXNlZCBvbiB2YnQgaW5mb3Jt
YXRpb24uCgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAxOCArKysrKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBlNjdkOTk4OGRm
YmYuLjViNjkyMmUyOGVmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMKQEAgLTE3NDMsOCArMTc0MywyNCBAQCBzdGF0aWMgZW51bSBwb3J0IGR2b19wb3J0X3Rv
X3BvcnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCVtQT1JUX1RDM10gPSB7IERW
T19QT1JUX0hETUlELCBEVk9fUE9SVF9EUEQsIC0xIH0sCiAJCVtQT1JUX1RDNF0gPSB7IERWT19Q
T1JUX0hETUlFLCBEVk9fUE9SVF9EUEUsIC0xIH0sCiAJfTsKKwlzdGF0aWMgY29uc3QgaW50IHhl
bHBkX3BvcnRfbWFwcGluZ1tdWzNdID0geworCQlbUE9SVF9BXSA9IHsgRFZPX1BPUlRfSERNSUEs
IERWT19QT1JUX0RQQSwgLTEgfSwKKwkJW1BPUlRfQl0gPSB7IERWT19QT1JUX0hETUlCLCBEVk9f
UE9SVF9EUEIsIC0xIH0sCisJCVtQT1JUX0NdID0geyBEVk9fUE9SVF9IRE1JQywgRFZPX1BPUlRf
RFBDLCAtMSB9LAorCQlbUE9SVF9EX1hFTFBEXSA9IHsgRFZPX1BPUlRfSERNSUQsIERWT19QT1JU
X0RQRCwgLTEgfSwKKwkJW1BPUlRfRV9YRUxQRF0gPSB7IERWT19QT1JUX0hETUlFLCBEVk9fUE9S
VF9EUEUsIC0xIH0sCisJCVtQT1JUX1RDMV0gPSB7IERWT19QT1JUX0hETUlGLCBEVk9fUE9SVF9E
UEYsIC0xIH0sCisJCVtQT1JUX1RDMl0gPSB7IERWT19QT1JUX0hETUlHLCBEVk9fUE9SVF9EUEcs
IC0xIH0sCisJCVtQT1JUX1RDM10gPSB7IERWT19QT1JUX0hETUlILCBEVk9fUE9SVF9EUEgsIC0x
IH0sCisJCVtQT1JUX1RDNF0gPSB7IERWT19QT1JUX0hETUlJLCBEVk9fUE9SVF9EUEksIC0xIH0s
CisJfTsKIAotCWlmIChJU19BTERFUkxBS0VfUyhpOTE1KSkKKwlpZiAoRElTUExBWV9WRVIoaTkx
NSkgPT0gMTMpCisJCXJldHVybiBfX2R2b19wb3J0X3RvX3BvcnQoQVJSQVlfU0laRSh4ZWxwZF9w
b3J0X21hcHBpbmcpLAorCQkJCQkgIEFSUkFZX1NJWkUoeGVscGRfcG9ydF9tYXBwaW5nWzBdKSwK
KwkJCQkJICB4ZWxwZF9wb3J0X21hcHBpbmcsCisJCQkJCSAgZHZvX3BvcnQpOworCWVsc2UgaWYg
KElTX0FMREVSTEFLRV9TKGk5MTUpKQogCQlyZXR1cm4gX19kdm9fcG9ydF90b19wb3J0KEFSUkFZ
X1NJWkUoYWRsc19wb3J0X21hcHBpbmcpLAogCQkJCQkgIEFSUkFZX1NJWkUoYWRsc19wb3J0X21h
cHBpbmdbMF0pLAogCQkJCQkgIGFkbHNfcG9ydF9tYXBwaW5nLAotLSAKMi4yNS40CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
