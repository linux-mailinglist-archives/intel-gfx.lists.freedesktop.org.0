Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3849028DD3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93336E0A1;
	Thu, 23 May 2019 23:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1416C6E095
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:47 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2019 16:31:45 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0r023503; Fri, 24 May 2019 00:31:44 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:47 +0000
Message-Id: <20190523233049.28020-21-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 20/22] drm/i915/guc: Define GuC firmware
 version for Icelake
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

RGVmaW5lIEd1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBJY2VsYWtlLgoKU2lnbmVkLW9mZi1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVz
aGEuc3JpdmF0c2FAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVz
aGEuc3JpdmF0c2FAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19mdy5jIHwgMTEgKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwppbmRleCBjMWU5YmI0ZTA0ZmQuLjcyY2Rh
ZmQ5NjM2YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKQEAgLTY1LDYgKzY1LDEz
IEBAIE1PRFVMRV9GSVJNV0FSRShLQkxfR1VDX0ZJUk1XQVJFX1BBVEgpOwogI2RlZmluZSBHTEtf
R1VDX0ZJUk1XQVJFX1BBVEggX19NQUtFX0dVQ19GV19QQVRIKEdMSykKIE1PRFVMRV9GSVJNV0FS
RShHTEtfR1VDX0ZJUk1XQVJFX1BBVEgpOwogCisjZGVmaW5lIElDTF9HVUNfRldfUFJFRklYIGlj
bAorI2RlZmluZSBJQ0xfR1VDX0ZXX01BSk9SIDMyCisjZGVmaW5lIElDTF9HVUNfRldfTUlOT1Ig
MAorI2RlZmluZSBJQ0xfR1VDX0ZXX1BBVENIIDMKKyNkZWZpbmUgSUNMX0dVQ19GSVJNV0FSRV9Q
QVRIIF9fTUFLRV9HVUNfRldfUEFUSChJQ0wpCitNT0RVTEVfRklSTVdBUkUoSUNMX0dVQ19GSVJN
V0FSRV9QQVRIKTsKKwogc3RhdGljIHZvaWQgZ3VjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNf
ZncgKmd1Y19mdykKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSBjb250YWluZXJfb2YoZ3Vj
X2Z3LCBzdHJ1Y3QgaW50ZWxfZ3VjLCBmdyk7CkBAIC03OSw2ICs4NiwxMCBAQCBzdGF0aWMgdm9p
ZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3KQogCQlndWNfZnctPnBh
dGggPSBpOTE1X21vZHBhcmFtcy5ndWNfZmlybXdhcmVfcGF0aDsKIAkJZ3VjX2Z3LT5tYWpvcl92
ZXJfd2FudGVkID0gMDsKIAkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gMDsKKwl9IGVsc2Ug
aWYgKElTX0lDRUxBS0UoaTkxNSkpIHsKKwkJZ3VjX2Z3LT5wYXRoID0gSUNMX0dVQ19GSVJNV0FS
RV9QQVRIOworCQlndWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBJQ0xfR1VDX0ZXX01BSk9SOwor
CQlndWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBJQ0xfR1VDX0ZXX01JTk9SOwogCX0gZWxzZSBp
ZiAoSVNfR0VNSU5JTEFLRShpOTE1KSkgewogCQlndWNfZnctPnBhdGggPSBHTEtfR1VDX0ZJUk1X
QVJFX1BBVEg7CiAJCWd1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEdMS19HVUNfRldfTUFKT1I7
Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
