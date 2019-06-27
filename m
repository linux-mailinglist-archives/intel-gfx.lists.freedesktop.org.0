Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9B958C2E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D416E84D;
	Thu, 27 Jun 2019 20:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D42D6E841
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:56:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:56:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455643"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:56:50 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:09 +0100
Message-Id: <20190627205633.1143-14-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/37] drm/i915/selftests: don't just test
 CACHE_NONE for huge-pages
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

V2UgYWxzbyB3YW50IHRvIHRlc3QgTExDLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaHVnZV9wYWdlcy5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9odWdlX3BhZ2VzLmMKaW5kZXggMWNkZjk4Yjc1MzVlLi4xODYyYmYwNmEyMGYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCkBAIC0x
NTIsNiArMTUyLDcgQEAgaHVnZV9wYWdlc19vYmplY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCiAJCSAgdW5zaWduZWQgaW50IHBhZ2VfbWFzaykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOworCXVuc2lnbmVkIGludCBjYWNoZV9sZXZlbDsKIAogCUdFTV9CVUdf
T04oIXNpemUpOwogCUdFTV9CVUdfT04oIUlTX0FMSUdORUQoc2l6ZSwgQklUKF9fZmZzKHBhZ2Vf
bWFzaykpKSk7CkBAIC0xNzEsNyArMTcyLDkgQEAgaHVnZV9wYWdlc19vYmplY3Qoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAKIAlvYmotPndyaXRlX2RvbWFpbiA9IEk5MTVfR0VNX0RP
TUFJTl9DUFU7CiAJb2JqLT5yZWFkX2RvbWFpbnMgPSBJOTE1X0dFTV9ET01BSU5fQ1BVOwotCW9i
ai0+Y2FjaGVfbGV2ZWwgPSBJOTE1X0NBQ0hFX05PTkU7CisKKwljYWNoZV9sZXZlbCA9IEhBU19M
TEMoaTkxNSkgPyBJOTE1X0NBQ0hFX0xMQyA6IEk5MTVfQ0FDSEVfTk9ORTsKKwlpOTE1X2dlbV9v
YmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIGNhY2hlX2xldmVsKTsKIAogCW9iai0+bW0u
cGFnZV9tYXNrID0gcGFnZV9tYXNrOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
