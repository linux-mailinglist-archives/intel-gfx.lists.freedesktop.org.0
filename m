Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9306D62AE3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 23:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DACD89F9F;
	Mon,  8 Jul 2019 21:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6258B89F9F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 21:17:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 14:17:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316835185"
Received: from anusha.jf.intel.com ([10.54.75.56])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 14:17:54 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 14:08:05 -0700
Message-Id: <20190708210805.24479-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Define GuC firmware version for
 Comet Lake
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
IGZvciBDTUwgcGxhdGZvcm0gY2hlY2suKE1pY2hhbCkKCkNjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2
YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfZncuYyB8IDE5ICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfZncuYwppbmRleCBkYjFlMGRhY2E3ZGIuLmRmMGRmYTQ5ZmJjOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjX2Z3LmMKQEAgLTU4LDYgKzU4LDEzIEBAIE1PRFVMRV9GSVJNV0FSRShCWFRf
R1VDX0ZJUk1XQVJFX1BBVEgpOwogI2RlZmluZSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEggX19NQUtF
X0dVQ19GV19QQVRIKEtCTCkKIE1PRFVMRV9GSVJNV0FSRShLQkxfR1VDX0ZJUk1XQVJFX1BBVEgp
OwogCisjZGVmaW5lIENNTF9HVUNfRldfUFJFRklYIGNtbAorI2RlZmluZSBDTUxfR1VDX0ZXX01B
Sk9SIDMzCisjZGVmaW5lIENNTF9HVUNfRldfTUlOT1IgMAorI2RlZmluZSBDTUxfR1VDX0ZXX1BB
VENIIDAKKyNkZWZpbmUgQ01MX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChL
QkwpCitNT0RVTEVfRklSTVdBUkUoQ01MX0dVQ19GSVJNV0FSRV9QQVRIKTsKKwogI2RlZmluZSBH
TEtfR1VDX0ZXX1BSRUZJWCBnbGsKICNkZWZpbmUgR0xLX0dVQ19GV19NQUpPUiAzMwogI2RlZmlu
ZSBHTEtfR1VDX0ZXX01JTk9SIDAKQEAgLTk0LDcgKzEwMSwxNyBAQCBzdGF0aWMgdm9pZCBndWNf
Zndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3KQogCQlndWNfZnctPnBhdGggPSBH
TEtfR1VDX0ZJUk1XQVJFX1BBVEg7CiAJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEdMS19H
VUNfRldfTUFKT1I7CiAJCWd1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCA9IEdMS19HVUNfRldfTUlO
T1I7Ci0JfSBlbHNlIGlmIChJU19LQUJZTEFLRShpOTE1KSB8fCBJU19DT0ZGRUVMQUtFKGk5MTUp
KSB7CisJfSBlbHNlIGlmIChJU19DT0ZGRUVMQUtFKGk5MTUpKSB7CisJCWlmIChJTlRFTF9SRVZJ
RChpOTE1KSA9PSA1KSB7CisJCQlndWNfZnctPnBhdGggPSBDTUxfR1VDX0ZJUk1XQVJFX1BBVEg7
CisJCQlndWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBDTUxfR1VDX0ZXX01BSk9SOworCQkJZ3Vj
X2Z3LT5taW5vcl92ZXJfd2FudGVkID0gQ01MX0dVQ19GV19NSU5PUjsKKwkJfSBlbHNlIHsKKwkJ
CWd1Y19mdy0+cGF0aCA9IEtCTF9HVUNfRklSTVdBUkVfUEFUSDsKKwkJCWd1Y19mdy0+bWFqb3Jf
dmVyX3dhbnRlZCA9IEtCTF9HVUNfRldfTUFKT1I7CisJCQlndWNfZnctPm1pbm9yX3Zlcl93YW50
ZWQgPSBLQkxfR1VDX0ZXX01JTk9SOworCQl9CisJfSBlbHNlIGlmIChJU19LQUJZTEFLRShpOTE1
KSkgewogCQlndWNfZnctPnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7CiAJCWd1Y19mdy0+
bWFqb3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNfRldfTUFKT1I7CiAJCWd1Y19mdy0+bWlub3JfdmVy
X3dhbnRlZCA9IEtCTF9HVUNfRldfTUlOT1I7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
