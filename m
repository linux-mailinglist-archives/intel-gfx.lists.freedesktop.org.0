Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0904F3C1AE2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 23:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06E56E9B8;
	Thu,  8 Jul 2021 21:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC946E9AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 21:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="207775059"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="207775059"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="560755470"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 14:18:24 -0700
Message-Id: <20210708211827.288601-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Limit maximum number of memory
 channels
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

QWxkZXJsYWtlLVAgUENPREUgaXMgcmV0dXJuaW5nIDQgbWVtb3J5IGNoYW5uZWxzIHdoaWxlIGl0
IGhhcyBhCm1heGltdW0gb2YgMi4KU28gYWRkaW5nIHRoaXMgbGltaXQgYW5kIHByaW50aW5nIGEg
ZGVidWcgbWVzc2FnZSBidXQgdGhlIHJlYWwgZml4CndpbGwgbmVlZCB0byBjb21lIGZyb20gUENP
REUuCgpIU0RFUzogMjIwMTMyNzIxMTAKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHJhbS5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHJhbS5jCmluZGV4IDg3OWIwZjAwN2JlMzEuLmRlMWQ0MjY2MjdlZjEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMKQEAgLTQ2Nyw2ICs0NjcsMTAgQEAgc3RhdGlj
IGludCBpY2xfcGNvZGVfcmVhZF9tZW1fZ2xvYmFsX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCX0KIAogCWRyYW1faW5mby0+bnVtX2NoYW5uZWxzID0gKHZhbCAmIDB4
ZjApID4+IDQ7CisJaWYgKGRyYW1faW5mby0+bnVtX2NoYW5uZWxzID4gMikgeworCQlkcm1faW5m
bygmZGV2X3ByaXYtPmRybSwgIk1vcmUgRFJBTSBjaGFubmVscyB0aGFuIGV4cGVjdGVkLCBzZXR0
aW5nIHRvIG1heC5cbiIpOworCQlkcmFtX2luZm8tPm51bV9jaGFubmVscyA9IDI7CisJfQogCWRy
YW1faW5mby0+bnVtX3Fndl9wb2ludHMgPSAodmFsICYgMHhmMDApID4+IDg7CiAKIAlyZXR1cm4g
MDsKLS0gCjIuMzIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
