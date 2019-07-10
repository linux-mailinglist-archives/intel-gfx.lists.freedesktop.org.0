Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EABE64ECE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 00:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8788989BC0;
	Wed, 10 Jul 2019 22:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C4689BC0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 22:53:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 15:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="173988002"
Received: from anusha.jf.intel.com ([10.54.75.177])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2019 15:53:08 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 15:43:25 -0700
Message-Id: <20190710224325.20555-1-anusha.srivatsa@intel.com>
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
IGZvciBDTUwgcGxhdGZvcm0gY2hlY2suKE1pY2hhbCkKdjM6IFVzZSA+PTUgZm9yIGZ1dHVyZSBw
cm9vZmluZyhNaWNoYWwsIERhbmllbGUpCgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFu
dXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjX2Z3LmMgfCAxOSArKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2d1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMK
aW5kZXggZGIxZTBkYWNhN2RiLi5jOGM5NGRmMWU1ZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19mdy5jCkBAIC01OCw2ICs1OCwxMyBAQCBNT0RVTEVfRklSTVdBUkUoQlhUX0dVQ19GSVJN
V0FSRV9QQVRIKTsKICNkZWZpbmUgS0JMX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldf
UEFUSChLQkwpCiBNT0RVTEVfRklSTVdBUkUoS0JMX0dVQ19GSVJNV0FSRV9QQVRIKTsKIAorI2Rl
ZmluZSBDTUxfR1VDX0ZXX1BSRUZJWCBjbWwKKyNkZWZpbmUgQ01MX0dVQ19GV19NQUpPUiAzMwor
I2RlZmluZSBDTUxfR1VDX0ZXX01JTk9SIDAKKyNkZWZpbmUgQ01MX0dVQ19GV19QQVRDSCAwCisj
ZGVmaW5lIENNTF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoQ01MKQorTU9E
VUxFX0ZJUk1XQVJFKENNTF9HVUNfRklSTVdBUkVfUEFUSCk7CisKICNkZWZpbmUgR0xLX0dVQ19G
V19QUkVGSVggZ2xrCiAjZGVmaW5lIEdMS19HVUNfRldfTUFKT1IgMzMKICNkZWZpbmUgR0xLX0dV
Q19GV19NSU5PUiAwCkBAIC05NCw3ICsxMDEsMTcgQEAgc3RhdGljIHZvaWQgZ3VjX2Z3X3NlbGVj
dChzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdykKIAkJZ3VjX2Z3LT5wYXRoID0gR0xLX0dVQ19G
SVJNV0FSRV9QQVRIOwogCQlndWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBHTEtfR1VDX0ZXX01B
Sk9SOwogCQlndWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBHTEtfR1VDX0ZXX01JTk9SOwotCX0g
ZWxzZSBpZiAoSVNfS0FCWUxBS0UoaTkxNSkgfHwgSVNfQ09GRkVFTEFLRShpOTE1KSkgeworCX0g
ZWxzZSBpZiAoSVNfQ09GRkVFTEFLRShpOTE1KSkgeworCQlpZiAoSU5URUxfUkVWSUQoaTkxNSkg
Pj0gNSkgeworCQkJZ3VjX2Z3LT5wYXRoID0gQ01MX0dVQ19GSVJNV0FSRV9QQVRIOworCQkJZ3Vj
X2Z3LT5tYWpvcl92ZXJfd2FudGVkID0gQ01MX0dVQ19GV19NQUpPUjsKKwkJCWd1Y19mdy0+bWlu
b3JfdmVyX3dhbnRlZCA9IENNTF9HVUNfRldfTUlOT1I7CisJCX0gZWxzZSB7CisJCQlndWNfZnct
PnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7CisJCQlndWNfZnctPm1ham9yX3Zlcl93YW50
ZWQgPSBLQkxfR1VDX0ZXX01BSk9SOworCQkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gS0JM
X0dVQ19GV19NSU5PUjsKKwkJfQorCX0gZWxzZSBpZiAoSVNfS0FCWUxBS0UoaTkxNSkpIHsKIAkJ
Z3VjX2Z3LT5wYXRoID0gS0JMX0dVQ19GSVJNV0FSRV9QQVRIOwogCQlndWNfZnctPm1ham9yX3Zl
cl93YW50ZWQgPSBLQkxfR1VDX0ZXX01BSk9SOwogCQlndWNfZnctPm1pbm9yX3Zlcl93YW50ZWQg
PSBLQkxfR1VDX0ZXX01JTk9SOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
