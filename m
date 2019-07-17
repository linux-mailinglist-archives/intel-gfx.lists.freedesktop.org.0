Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBCC6C07A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 19:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FC06E293;
	Wed, 17 Jul 2019 17:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCED86E290;
 Wed, 17 Jul 2019 17:36:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 10:36:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="343102744"
Received: from anusha.jf.intel.com ([10.54.75.56])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 10:36:57 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx-trybot@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 10:27:06 -0700
Message-Id: <20190715232422.9626-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Id: 318199
Subject: [Intel-gfx] drm/i915/guc: Define GuC firmware version for Comet Lake
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

TG9hZCBHdUMgZm9yIENvbWV0IExha2UuIERlcGVuZGluZyBvbiB0aGUgUkVWSUQsCndlIGxvYWQg
ZWl0aGVyIHRoZSBLQkwgZmlybXdhcmUgb3IgdGhlIENNTCBmaXJtd2FyZS4KCnYyOiBVc2UgQ0ZM
IGZvciBDTUwgcGxhdGZvcm0gY2hlY2suKE1pY2hhbCkKdjM6IFVzZSA+PTUgZm9yIGZ1dHVyZSBw
cm9vZmluZyhNaWNoYWwsIERhbmllbGUpCnY0OiByZWJhc2VkLgoKQ2M6IE1pY2hhbCBXYWpkZWN6
a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KClNpZ25lZC1vZmYtYnk6IEFudXNo
YSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYyB8IDE5ICsrKysrKysrKysrKysrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwppbmRleCAzZGZhNDBmZGJlOTkuLmMzMGNj
YTI5MmVjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
X2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMKQEAg
LTUyLDYgKzUyLDEzIEBAIE1PRFVMRV9GSVJNV0FSRShTS0xfR1VDX0ZJUk1XQVJFX1BBVEgpOwog
I2RlZmluZSBCWFRfR1VDX0ZJUk1XQVJFX1BBVEggX19NQUtFX0dVQ19GV19QQVRIKEJYVCkKIE1P
RFVMRV9GSVJNV0FSRShCWFRfR1VDX0ZJUk1XQVJFX1BBVEgpOwogCisjZGVmaW5lIENNTF9HVUNf
RldfUFJFRklYIGNtbAorI2RlZmluZSBDTUxfR1VDX0ZXX01BSk9SIDMzCisjZGVmaW5lIENNTF9H
VUNfRldfTUlOT1IgMAorI2RlZmluZSBDTUxfR1VDX0ZXX1BBVENIIDAKKyNkZWZpbmUgQ01MX0dV
Q19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChDTUwpCitNT0RVTEVfRklSTVdBUkUo
Q01MX0dVQ19GSVJNV0FSRV9QQVRIKTsKKwogI2RlZmluZSBLQkxfR1VDX0ZXX1BSRUZJWCBrYmwK
ICNkZWZpbmUgS0JMX0dVQ19GV19NQUpPUiAzMwogI2RlZmluZSBLQkxfR1VDX0ZXX01JTk9SIDAK
QEAgLTk5LDcgKzEwNiwxNyBAQCBzdGF0aWMgdm9pZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRl
bF91Y19mdyAqZ3VjX2Z3KQogCQlndWNfZnctPnBhdGggPSBHTEtfR1VDX0ZJUk1XQVJFX1BBVEg7
CiAJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEdMS19HVUNfRldfTUFKT1I7CiAJCWd1Y19m
dy0+bWlub3JfdmVyX3dhbnRlZCA9IEdMS19HVUNfRldfTUlOT1I7Ci0JfSBlbHNlIGlmIChJU19L
QUJZTEFLRShpOTE1KSB8fCBJU19DT0ZGRUVMQUtFKGk5MTUpKSB7CisJfSBlbHNlIGlmIChJU19D
T0ZGRUVMQUtFKGk5MTUpKSB7CisJCWlmIChJTlRFTF9SRVZJRChpOTE1KSA+PSA1KSB7CisJCQln
dWNfZnctPnBhdGggPSBDTUxfR1VDX0ZJUk1XQVJFX1BBVEg7CisJCQlndWNfZnctPm1ham9yX3Zl
cl93YW50ZWQgPSBDTUxfR1VDX0ZXX01BSk9SOworCQkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVk
ID0gQ01MX0dVQ19GV19NSU5PUjsKKwkJfSBlbHNlIHsKKwkJCWd1Y19mdy0+cGF0aCA9IEtCTF9H
VUNfRklSTVdBUkVfUEFUSDsKKwkJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNf
RldfTUFKT1I7CisJCQlndWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBLQkxfR1VDX0ZXX01JTk9S
OworCQl9CisJfSBlbHNlIGlmIChJU19LQUJZTEFLRShpOTE1KSkgewogCQlndWNfZnctPnBhdGgg
PSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7CiAJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEtC
TF9HVUNfRldfTUFKT1I7CiAJCWd1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNfRldf
TUlOT1I7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
