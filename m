Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4FDCA0FE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 17:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6327F6EA11;
	Thu,  3 Oct 2019 15:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740C06EA11
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 15:15:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 08:15:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="391976308"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga005.fm.intel.com with ESMTP; 03 Oct 2019 08:15:45 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:36:51 +0530
Message-Id: <20191003150653.15881-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191003150653.15881-1-animesh.manna@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/6] drm/i915/dp: Register definition for DP
 compliance register.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFBfQ09NUF9DVEwgYW5kIERQX0NPTVBfUEFUIHJlZ2lzdGVyIHVzZWQgdG8gcHJvZ3JhbSBEUApj
b21wbGlhbmNlIHBhdHRlcm4uCgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwg
MjAgKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZWVmZDc4OWI5YTI4Li4zOGRhY2ZkZGJkNDIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTYyMSw2ICs5NjIxLDI2IEBAIGVudW0gc2ts
X3Bvd2VyX2dhdGUgewogI2RlZmluZSAgRERJX0JVRl9CQUxBTkNFX0xFR19FTkFCTEUJKDEgPDwg
MzEpCiAjZGVmaW5lIERESV9CVUZfVFJBTlNfSEkocG9ydCwgaSkJX01NSU8oX1BPUlQocG9ydCwg
X0RESV9CVUZfVFJBTlNfQSwgX0RESV9CVUZfVFJBTlNfQikgKyAoaSkgKiA4ICsgNCkKIAorLyog
RERJIERQIENvbXBsaWFuY2UgQ29udHJvbCAqLworI2RlZmluZSBERElfRFBfQ09NUF9DVExfQSAg
ICAgICAgICAgICAgICAgICAgICAweDYwNWYwCisjZGVmaW5lIERESV9EUF9DT01QX0NUTF9CICAg
ICAgICAgICAgICAgICAgICAgIDB4NjE1ZjAKKyNkZWZpbmUgRERJX0RQX0NPTVBfQ1RMKHBvcnQp
IF9NTUlPX1BPUlQocG9ydCwgRERJX0RQX0NPTVBfQ1RMX0EsIFwKKwkJCQkJIERESV9EUF9DT01Q
X0NUTF9CKQorI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX0VOQUJMRSAgICAgICAgICAgICAgICAg
ICAgICAgICgxIDw8IDMxKQorI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX0QxMF8yICAgICAgICAg
ICAgICAgICAoMCA8PCAyOCkKKyNkZWZpbmUgIERESV9EUF9DT01QX0NUTF9TQ1JBTUJMRURfMCAg
ICAgICAgICAgKDEgPDwgMjgpCisjZGVmaW5lICBERElfRFBfQ09NUF9DVExfUFJCUzcgICAgICAg
ICAgICAgICAgICgyIDw8IDI4KQorI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX0NVU1RPTTgwICAg
ICAgICAgICAgICAgICAgICAgICgzIDw8IDI4KQorI2RlZmluZSAgRERJX0RQX0NPTVBfQ1RMX0hC
UjIgICAgICAgICAgICAgICAgICAoNCA8PCAyOCkKKyNkZWZpbmUgIERESV9EUF9DT01QX0NUTF9T
Q1JBTUJMRURfMSAgICAgICAgICAgKDUgPDwgMjgpCisjZGVmaW5lICBERElfRFBfQ09NUF9DVExf
SEJSMl9SRVNFVCAgICAgICAgICAgICgweEZDIDw8IDApCisKKy8qIERESSBEUCBDb21wbGlhbmNl
IFBhdHRlcm4gKi8KKyNkZWZpbmUgRERJX0RQX0NPTVBfUEFUX0EgICAgICAgICAgICAgICAgICAg
ICAgMHg2MDVmNAorI2RlZmluZSBERElfRFBfQ09NUF9QQVRfQiAgICAgICAgICAgICAgICAgICAg
ICAweDYxNWY0CisjZGVmaW5lIERESV9EUF9DT01QX1BBVChwb3J0LCBpKSBfTU1JTyhfUE9SVChw
b3J0LCBERElfRFBfQ09NUF9QQVRfQSwgXAorCQkJCQkgICAgIERESV9EUF9DT01QX1BBVF9CKSAr
IChpKSAqIDQpCisKIC8qIFNpZGViYW5kIEludGVyZmFjZSAoU0JJKSBpcyBwcm9ncmFtbWVkIGlu
ZGlyZWN0bHksIHZpYQogICogU0JJX0FERFIsIHdoaWNoIGNvbnRhaW5zIHRoZSByZWdpc3RlciBv
ZmZzZXQ7IGFuZCBTQklfREFUQSwKICAqIHdoaWNoIGNvbnRhaW5zIHRoZSBwYXlsb2FkICovCi0t
IAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
