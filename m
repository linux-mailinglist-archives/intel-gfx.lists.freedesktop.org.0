Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D551374A38
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 23:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B191E6E483;
	Wed,  5 May 2021 21:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDCE6E483
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 21:35:11 +0000 (UTC)
IronPort-SDR: kgVpmJHyJrrC6b+ODzyMyYMPUZQe7prZ4rc5r4LRiHmqcb1U3k07DJLv4F7OReT7c4nPSXrwoV
 4IerP3FGU2Iw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="177869511"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="177869511"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:35:10 -0700
IronPort-SDR: YMqJM3i/uO2N9l5TEcKx2EKlX5F2vMPBZUBVxLTUn5vWA0xQ93t82UR7uTnDpz5F7tWgZJqTPy
 OwIrCrMasvdQ==
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="430065594"
Received: from srajen2x-mobl5.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.36.128])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:35:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 May 2021 14:38:01 -0700
Message-Id: <20210505213801.80772-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Disable PSR2 sel fetch in TGL
 pre-production
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

VGhlIGltcGxlbWVudGF0aW9uIG9mIHR3byB3b3JrYXJvdW5kcyBhcmUgbWlzc2luZyBjYXVzaW5n
IGZhaWx1cmVzCmluIENJIHdpdGggcHJlLXByb2R1Y3Rpb24gSFcuCgpDYzogR3dhbi1neWVvbmcg
TXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5k
ZXggZTNjMzBkY2FkY2QxLi40MDZiYTlhNzEyYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwpAQCAtNzIwLDYgKzcyMCwxMyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9w
c3IyX3NlbF9mZXRjaF9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJ
fQogCX0KIAorCS8qIFdhXzE0MDEwMjU0MTg1IFdhXzE0MDEwMTAzNzkyICovCisJaWYgKElTX1RH
TF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjEpKSB7CisJCWRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLAorCQkJICAgICJQU1IyIHNlbCBmZXRjaCBub3QgZW5hYmxlZCwg
bWlzc2luZyB0aGUgaW1wbGVtZW50YXRpb24gb2YgV0FzXG4iKTsKKwkJcmV0dXJuIGZhbHNlOwor
CX0KKwogCXJldHVybiBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggPSB0cnVlOwog
fQogCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
