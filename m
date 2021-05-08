Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68850376EAB
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2486E84C;
	Sat,  8 May 2021 02:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8076E82F
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: jt8YOzxpy3aImwQvoRg32yEmceVJDN/PPSNAz1RoPGpLVX2vlQG/oa9cn77li1hp+eTSKfHCro
 SQq/AqMl6rFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="198933642"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="198933642"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
IronPort-SDR: jfM/nQom/c3AvNMhPejackWbAkiSi92xSzc95CZJtZo/hNArr74vss/fwNa2S2LdWzE7QoHZq1
 b0GCwnPAg3gA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910082"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:27:47 -0700
Message-Id: <20210508022820.780227-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 15/48] drm/i915/xelpd: Provide port/phy
 mapping for vbt
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
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAxOCArKysrKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCAwMjdjYzczOGEx
NjguLmJmN2Y3NmU1MjQxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
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
