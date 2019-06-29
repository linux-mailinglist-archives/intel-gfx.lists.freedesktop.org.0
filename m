Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 054FF5A7E3
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 02:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F2D6E992;
	Sat, 29 Jun 2019 00:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090926E992
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2019 00:46:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 17:46:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,429,1557212400"; d="scan'208";a="167915844"
Received: from anusha.jf.intel.com ([10.54.75.56])
 by orsmga006.jf.intel.com with ESMTP; 28 Jun 2019 17:46:47 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:37:09 -0700
Message-Id: <20190629003709.14513-1-anusha.srivatsa@intel.com>
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
ZWl0aGVyIHRoZSBLQkwgZmlybXdhcmUgb3IgdGhlIENNTCBmaXJtd2FyZS4KCkNjOiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyB8IDE3ICsrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3
LmMKaW5kZXggOTcwZjM5ZWYyNDhiLi5lYjBiZTg3YzM1OGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Y19mdy5jCkBAIC01OCw2ICs1OCwxMyBAQCBNT0RVTEVfRklSTVdBUkUoQlhUX0dVQ19G
SVJNV0FSRV9QQVRIKTsKICNkZWZpbmUgS0JMX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNf
RldfUEFUSChLQkwpCiBNT0RVTEVfRklSTVdBUkUoS0JMX0dVQ19GSVJNV0FSRV9QQVRIKTsKIAor
I2RlZmluZSBDTUxfR1VDX0ZXX1BSRUZJWCBjbWwKKyNkZWZpbmUgQ01MX0dVQ19GV19NQUpPUiAz
MworI2RlZmluZSBDTUxfR1VDX0ZXX01JTk9SIDAKKyNkZWZpbmUgQ01MX0dVQ19GV19QQVRDSCAw
CisjZGVmaW5lIENNTF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoS0JMKQor
TU9EVUxFX0ZJUk1XQVJFKENNTF9HVUNfRklSTVdBUkVfUEFUSCk7CisKICNkZWZpbmUgR0xLX0dV
Q19GV19QUkVGSVggZ2xrCiAjZGVmaW5lIEdMS19HVUNfRldfTUFKT1IgMzIKICNkZWZpbmUgR0xL
X0dVQ19GV19NSU5PUiAwCkBAIC05NCw2ICsxMDEsMTYgQEAgc3RhdGljIHZvaWQgZ3VjX2Z3X3Nl
bGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdykKIAkJZ3VjX2Z3LT5wYXRoID0gR0xLX0dV
Q19GSVJNV0FSRV9QQVRIOwogCQlndWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBHTEtfR1VDX0ZX
X01BSk9SOwogCQlndWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBHTEtfR1VDX0ZXX01JTk9SOwor
CX0gZWxzZSBpZiAoSVNfQ09NRVRMQUtFKGk5MTUpKSB7CisJCWlmIChSRVZJRChkZXZfcHJpdikg
PT0gNSkgeworCQkJZ3VjX2Z3LT5wYXRoID0gQ01MX0dVQ19GSVJNV0FSRV9QQVRIOworCQkJZ3Vj
X2Z3LT5tYWpvcl92ZXJfd2FudGVkID0gQ01MX0dVQ19GV19NQUpPUjsKKwkJCWd1Y19mdy0+bWlu
b3JfdmVyX3dhbnRlZCA9IENNTF9HVUNfRldfTUlOT1I7CisJCX0gZWxzZSB7CisJCQlndWNfZnct
PnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7CisJCQlndWNfZnctPm1ham9yX3Zlcl93YW50
ZWQgPSBLQkxfR1VDX0ZXX01BSk9SOworCQkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gS0JM
X0dVQ19GV19NSU5PUjsKKwkJfQogCX0gZWxzZSBpZiAoSVNfS0FCWUxBS0UoaTkxNSkgfHwgSVNf
Q09GRkVFTEFLRShpOTE1KSkgewogCQlndWNfZnctPnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BB
VEg7CiAJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNfRldfTUFKT1I7Ci0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
