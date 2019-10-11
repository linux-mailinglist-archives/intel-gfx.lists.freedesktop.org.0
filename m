Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0F9D4763
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784366E42E;
	Fri, 11 Oct 2019 18:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08A06E42A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:19:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 11:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="198776424"
Received: from jhli-desk1.jf.intel.com ([10.7.198.166])
 by orsmga006.jf.intel.com with ESMTP; 11 Oct 2019 11:19:31 -0700
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 11:19:18 -0700
Message-Id: <20191011181918.29618-1-juston.li@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [intel-gfx] [PATCH] drm/i915: coffeelake supports
 hdcp2.2
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
Cc: seanpaul@chromium.org, nathan.d.ciobanu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpbmNsdWRlcyBvdGhlciBwbGF0Zm9ybXMgdGhhdCB1dGlsaXplIHRoZSBzYW1lIGdlbiBn
cmFwaGljcyBhcwpDRkw6IEFNTCwgV0hMIGFuZCBDTUwuCgpTaWduZWQtb2ZmLWJ5OiBKdXN0b24g
TGkgPGp1c3Rvbi5saUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZGNwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCmlu
ZGV4IGU2OWZhMzQ1MjhkZi4uZjdkYjYxZWFlYjdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkY3AuYwpAQCAtMTg4Nyw3ICsxODg3LDcgQEAgc3RhdGljIGJvb2wgaXNf
aGRjcDJfc3VwcG9ydGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJcmV0
dXJuIGZhbHNlOwogCiAJcmV0dXJuIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dF
TUlOSUxBS0UoZGV2X3ByaXYpIHx8Ci0JCUlTX0tBQllMQUtFKGRldl9wcml2KSk7CisJCUlTX0tB
QllMQUtFKGRldl9wcml2KSB8fCBJU19DT0ZGRUVMQUtFKGRldl9wcml2KSk7CiB9CiAKIHZvaWQg
aW50ZWxfaGRjcF9jb21wb25lbnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
