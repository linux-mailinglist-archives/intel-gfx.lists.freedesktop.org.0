Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD3926A60
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2204889993;
	Wed, 22 May 2019 19:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410EF89993
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:01:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:01:11 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 12:01:10 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJ18WE012878; Wed, 22 May 2019 20:01:09 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:00:55 +0000
Message-Id: <20190522190057.848-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522190057.848-1-michal.wajdeczko@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Make uc_sanitize part of
 gt_sanitize
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

SW4gZ3Rfc2FuaXRpemUgd2UgcmVzZXQgd2hvbGUgR1BVIChhbmQgaW5kaXJlY3RseSB1QykuCk1h
a2Ugc3VyZSB3ZSBkb24ndCBtaXNzIHRvIHJ1biBvdXIgZGVkaWNhdGVkIHVDIHNhbml0aXplIGNv
ZGUuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgfCAyICsrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jICAgIHwgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9w
bS5jCmluZGV4IGFlNzE1NWYwZTA2My4uYWY2YmNjN2VhYmYzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3BtLmMKQEAgLTExNCw2ICsxMTQsOCBAQCB2b2lkIGludGVsX2d0X3Nhbml0
aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29sIGZvcmNlKQogCWlmICghcmVz
ZXRfZW5naW5lcyhpOTE1KSAmJiAhZm9yY2UpCiAJCXJldHVybjsKIAorCWludGVsX3VjX3Nhbml0
aXplKGk5MTUpOworCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpCiAJCWludGVs
X2VuZ2luZV9yZXNldChlbmdpbmUsIGZhbHNlKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9w
bS5jCmluZGV4IGZhOWMyZWJkOTY2YS4uYWYzYTNkZWY0NWQ4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX3BtLmMKQEAgLTE5Myw3ICsxOTMsNiBAQCB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfbGF0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAl9CiAJbXV0ZXhfdW5sb2NrKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKIAotCWludGVsX3VjX3Nhbml0aXplKGk5MTUpOwogCWk5MTVf
Z2VtX3Nhbml0aXplKGk5MTUpOwogfQogCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
