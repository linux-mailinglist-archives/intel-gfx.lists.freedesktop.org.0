Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5AB366A5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 23:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EF78930E;
	Wed,  5 Jun 2019 21:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D608930E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 21:18:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 14:18:38 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jun 2019 14:18:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jun 2019 14:18:32 -0700
Message-Id: <20190605211832.23945-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.14.5
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VW5saWtlIElDTCwgRUhMJ3MgY29tYm8gUEhZcyBjYW4gc3VwcG9ydCBIQlIzIGRhdGEgcmF0ZXMu
ICBOb3RlIHRoYXQKdGhpcyBqdXN0IGV4dGVuZHMgdGhlIHVwcGVyIGxpbWl0OyB3ZSB3aWxsIGNv
bnRpbnVlIHRvIGhvbm9yIHRoZSBtYXgKZGF0YSByYXRlIHNwZWNpZmllZCBpbiB0aGUgVkJUIGlu
IGNhc2VzIHdoZXJlIGl0IGlzIGxvd2VyIHRoYW4gSEJSMy4KClNpZ25lZC1vZmYtYnk6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHAuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RwLmMKaW5kZXggMjRiNTZiMmE3NmM4Li5iMDk5YTlkYzI4ZmQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHAuYwpAQCAtMzMyLDYgKzMzMiw3IEBAIHN0YXRpYyBpbnQgaWNsX21h
eF9zb3VyY2VfcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWVudW0gcG9ydCBwb3J0
ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsKIAogCWlmIChpbnRlbF9wb3J0X2lzX2NvbWJvcGh5KGRl
dl9wcml2LCBwb3J0KSAmJgorCSAgICAhSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmCiAJICAg
ICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQogCQlyZXR1cm4gNTQwMDAwOwogCi0tIAoyLjE0
LjUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
