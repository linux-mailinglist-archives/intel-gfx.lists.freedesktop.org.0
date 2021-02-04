Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F3330FA5B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 18:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0926E9CB;
	Thu,  4 Feb 2021 17:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12406E9CB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 17:57:13 +0000 (UTC)
IronPort-SDR: 2cyMo3c7QNzq0veCK0bSG0hpKXXzkWvikN9ZxZ8JNAWu604NvwMAr8IiGFwbPsrbIiNulKudzH
 KMsPf9nALQIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245366786"
X-IronPort-AV: E=Sophos;i="5.81,152,1610438400"; d="scan'208";a="245366786"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 09:57:12 -0800
IronPort-SDR: 2rN3PGrpbcA3up3pMgE3LshMAo5Xg5sGr/90r87N0ecieSKbrfr9gdC6patoNC3HQADt0B57C/
 xtWN8slmTbaA==
X-IronPort-AV: E=Sophos;i="5.81,152,1610438400"; d="scan'208";a="508221367"
Received: from gkpatel-mobl1.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.255.79.143])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 09:57:10 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 09:58:30 -0800
Message-Id: <20210204175830.97857-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Remove PSR2 on JSL and EHL
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
Cc: Edmund Dea <edmund.j.dea@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRWRtdW5kIERlYSA8ZWRtdW5kLmouZGVhQGludGVsLmNvbT4KCldoaWxlIEpTTCBhbmQg
RUhMIGVEUCB0cmFuc2NvZGVyIHN1cHBvcnRzIFBTUjIsIHRoZSBwaHkgb2YgdGhpcwpwbGF0Zm9y
bXMgb25seSBzdXBwb3J0cyBlRFAgMS4zLCBzbyByZW1vdmluZyBQU1IyIHN1cHBvcnQgYXMgdGhp
cwpmZWF0dXJlIHdhcyBhZGRlZCBpbiBlRFAgMS40LgoKU2lnbmVkLW9mZi1ieTogRWRtdW5kIERl
YSA8ZWRtdW5kLmouZGVhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggMmMz
NjViNzc4Zjc0Li5jY2NiOGFmZjQzMzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwpAQCAtNzE4LDYgKzcxOCwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2Nv
bmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICghZGV2X3ByaXYtPnBz
ci5zaW5rX3BzcjJfc3VwcG9ydCkKIAkJcmV0dXJuIGZhbHNlOwogCisJLyogSlNMIGFuZCBFSEwg
b25seSBzdXBwb3J0cyBlRFAgMS4zICovCisJaWYgKElTX0pTTF9FSEwoZGV2X3ByaXYpKSB7CisJ
CWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiUFNSMiBub3Qgc3VwcG9ydGVkIGJ5IHBoeVxu
Iik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKIAlpZiAoIXRyYW5zY29kZXJfaGFzX3BzcjIoZGV2
X3ByaXYsIGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSkgewogCQlkcm1fZGJnX2ttcygmZGV2
X3ByaXYtPmRybSwKIAkJCSAgICAiUFNSMiBub3Qgc3VwcG9ydGVkIGluIHRyYW5zY29kZXIgJXNc
biIsCi0tIAoyLjMwLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
