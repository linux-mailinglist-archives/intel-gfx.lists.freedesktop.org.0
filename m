Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2533228DC8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BB76E092;
	Thu, 23 May 2019 23:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6156E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:38 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 23 May 2019 16:31:36 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0i023503; Fri, 24 May 2019 00:31:35 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:38 +0000
Message-Id: <20190523233049.28020-12-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 11/22] drm/i915/guc: Define GuC firmware
 version for Geminilake
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

RGVmaW5lIEd1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBHZW1pbmlsYWtlLgoKU2lnbmVkLW9mZi1i
eTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzog
QW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jIHwgMTEgKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZ3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwppbmRl
eCBjNzQwYmYzNzMxZGUuLmMxZTliYjRlMDRmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2Z3LmMKQEAgLTU4LDYgKzU4LDEzIEBAIE1PRFVMRV9GSVJNV0FSRShCWFRfR1VDX0ZJUk1XQVJF
X1BBVEgpOwogI2RlZmluZSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEggX19NQUtFX0dVQ19GV19QQVRI
KEtCTCkKIE1PRFVMRV9GSVJNV0FSRShLQkxfR1VDX0ZJUk1XQVJFX1BBVEgpOwogCisjZGVmaW5l
IEdMS19HVUNfRldfUFJFRklYIGdsaworI2RlZmluZSBHTEtfR1VDX0ZXX01BSk9SIDMyCisjZGVm
aW5lIEdMS19HVUNfRldfTUlOT1IgMAorI2RlZmluZSBHTEtfR1VDX0ZXX1BBVENIIDMKKyNkZWZp
bmUgR0xLX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChHTEspCitNT0RVTEVf
RklSTVdBUkUoR0xLX0dVQ19GSVJNV0FSRV9QQVRIKTsKKwogc3RhdGljIHZvaWQgZ3VjX2Z3X3Nl
bGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdykKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3VjICpn
dWMgPSBjb250YWluZXJfb2YoZ3VjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3VjLCBmdyk7CkBAIC03Miw2
ICs3OSwxMCBAQCBzdGF0aWMgdm9pZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAq
Z3VjX2Z3KQogCQlndWNfZnctPnBhdGggPSBpOTE1X21vZHBhcmFtcy5ndWNfZmlybXdhcmVfcGF0
aDsKIAkJZ3VjX2Z3LT5tYWpvcl92ZXJfd2FudGVkID0gMDsKIAkJZ3VjX2Z3LT5taW5vcl92ZXJf
d2FudGVkID0gMDsKKwl9IGVsc2UgaWYgKElTX0dFTUlOSUxBS0UoaTkxNSkpIHsKKwkJZ3VjX2Z3
LT5wYXRoID0gR0xLX0dVQ19GSVJNV0FSRV9QQVRIOworCQlndWNfZnctPm1ham9yX3Zlcl93YW50
ZWQgPSBHTEtfR1VDX0ZXX01BSk9SOworCQlndWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBHTEtf
R1VDX0ZXX01JTk9SOwogCX0gZWxzZSBpZiAoSVNfS0FCWUxBS0UoaTkxNSkgfHwgSVNfQ09GRkVF
TEFLRShpOTE1KSkgewogCQlndWNfZnctPnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7CiAJ
CWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEtCTF9HVUNfRldfTUFKT1I7Ci0tIAoyLjE5LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
