Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FE891605
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 11:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17EE86E05A;
	Sun, 18 Aug 2019 09:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F141E6E05A
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 09:52:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 02:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,400,1559545200"; d="scan'208";a="179163400"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 18 Aug 2019 02:52:21 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7I9qBYn001582; Sun, 18 Aug 2019 10:52:20 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 09:52:04 +0000
Message-Id: <20190818095204.31568-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190818095204.31568-1-michal.wajdeczko@intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Never fail on HuC firmware
 errors
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

VGhlcmUgaXMgbm8gbmVlZCB0byBtYXJrIHdob2xlIEdQVSBhcyB3ZWRnZWQganVzdCBiZWNhdXNl
Cm9mIHRoZSBjdXN0b20gSHVDIGZ3IGZhaWx1cmUgYXMgdXNlcnMgY2FuIGFsd2F5cyB2ZXJpZnkK
YWN0dWFsIEh1QyBmaXJtd2FyZSBzdGF0dXMgdXNpbmcgZXhpc3RpbmcgSFVDX1NUQVRVUyBpb2N0
bC4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50
ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jIHwgIDQgKysrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgfCAxMyArKy0tLS0tLS0tLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYwppbmRleCBhZjYxYWU4NjRhYjguLmQ0NjI1Yzk3
YjRmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMKQEAgLTEyOSw5ICsx
MjksMTEgQEAgaW50IGludGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIAlzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMgPSAmZ3QtPnVjLmd1YzsKIAlpbnQgcmV0OwogCi0JR0VNX0JVR19P
TighaW50ZWxfdWNfZndfaXNfbG9hZGVkKCZodWMtPmZ3KSk7CiAJR0VNX0JVR19PTihpbnRlbF9o
dWNfaXNfYXV0aGVudGljYXRlZChodWMpKTsKIAorCWlmICghaW50ZWxfdWNfZndfaXNfbG9hZGVk
KCZodWMtPmZ3KSkKKwkJcmV0dXJuIC1FTk9FWEVDOworCiAJcmV0ID0gaTkxNV9pbmplY3RfbG9h
ZF9lcnJvcihndC0+aTkxNSwgLUVOWElPKTsKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwppbmRleCAxMDk3OGU3ZmYwNmQuLjcxZWU3YWIw
MzVjYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCkBAIC00NTcsMTIgKzQ1
Nyw3IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJCWlmIChy
ZXQpCiAJCQlnb3RvIGVycl9vdXQ7CiAKLQkJaWYgKGludGVsX3VjX3VzZXNfaHVjKHVjKSkgewot
CQkJcmV0ID0gaW50ZWxfaHVjX2Z3X3VwbG9hZChodWMpOwotCQkJaWYgKHJldCAmJiBpbnRlbF91
Y19md19pc19vdmVycmlkZGVuKCZodWMtPmZ3KSkKLQkJCQlnb3RvIGVycl9vdXQ7Ci0JCX0KLQor
CQlpbnRlbF9odWNfZndfdXBsb2FkKGh1Yyk7CiAJCWludGVsX2d1Y19hZHNfcmVzZXQoZ3VjKTsK
IAkJaW50ZWxfZ3VjX3dyaXRlX3BhcmFtcyhndWMpOwogCQlyZXQgPSBpbnRlbF9ndWNfZndfdXBs
b2FkKGd1Yyk7CkBAIC00ODEsMTEgKzQ3Niw3IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVj
dCBpbnRlbF91YyAqdWMpCiAJaWYgKHJldCkKIAkJZ290byBlcnJfbG9nX2NhcHR1cmU7CiAKLQlp
ZiAoaW50ZWxfdWNfZndfaXNfbG9hZGVkKCZodWMtPmZ3KSkgewotCQlyZXQgPSBpbnRlbF9odWNf
YXV0aChodWMpOwotCQlpZiAocmV0ICYmIGludGVsX3VjX2Z3X2lzX292ZXJyaWRkZW4oJmh1Yy0+
ZncpKQotCQkJZ290byBlcnJfY29tbXVuaWNhdGlvbjsKLQl9CisJaW50ZWxfaHVjX2F1dGgoaHVj
KTsKIAogCXJldCA9IGludGVsX2d1Y19zYW1wbGVfZm9yY2V3YWtlKGd1Yyk7CiAJaWYgKHJldCkK
LS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
