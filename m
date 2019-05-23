Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E3B28DCE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F3E6E094;
	Thu, 23 May 2019 23:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4C96E098
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:48 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2019 16:31:46 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0s023503; Fri, 24 May 2019 00:31:45 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:48 +0000
Message-Id: <20190523233049.28020-22-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 21/22] drm/i915/huc: Define HuC firmware
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

RGVmaW5lIEh1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBJY2VsYWtlLgoKU2lnbmVkLW9mZi1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogQW51c2hh
IFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpDYzogVG9ueSBZZSA8dG9ueS55
ZUBpbnRlbC5jb20+Cgp2MjogOC40LjMyMzggaXMgbm93IGF2YWlsYWJsZQotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2h1Y19mdy5jIHwgMTIgKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2h1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMKaW5k
ZXggOGJhYzZhMDUxYzE4Li4wNWNiZjgzMzhmNTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2h1Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1
Y19mdy5jCkBAIC0zOCw2ICszOCwxMCBAQAogI2RlZmluZSBHTEtfSFVDX0ZXX01JTk9SIDAxCiAj
ZGVmaW5lIEdMS19CTERfTlVNIDI4OTMKIAorI2RlZmluZSBJQ0xfSFVDX0ZXX01BSk9SIDgKKyNk
ZWZpbmUgSUNMX0hVQ19GV19NSU5PUiA0CisjZGVmaW5lIElDTF9CTERfTlVNIDMyMzgKKwogI2Rl
ZmluZSBIVUNfRldfUEFUSChwbGF0Zm9ybSwgbWFqb3IsIG1pbm9yLCBibGRfbnVtKSBcCiAJImk5
MTUvIiBfX3N0cmluZ2lmeShwbGF0Zm9ybSkgIl9odWNfdmVyIiBfX3N0cmluZ2lmeShtYWpvcikg
Il8iIFwKIAlfX3N0cmluZ2lmeShtaW5vcikgIl8iIF9fc3RyaW5naWZ5KGJsZF9udW0pICIuYmlu
IgpAQCAtNTgsNiArNjIsMTAgQEAgTU9EVUxFX0ZJUk1XQVJFKEk5MTVfS0JMX0hVQ19VQ09ERSk7
CiAJR0xLX0hVQ19GV19NSU5PUiwgR0xLX0JMRF9OVU0pCiBNT0RVTEVfRklSTVdBUkUoSTkxNV9H
TEtfSFVDX1VDT0RFKTsKIAorI2RlZmluZSBJOTE1X0lDTF9IVUNfVUNPREUgSFVDX0ZXX1BBVEgo
aWNsLCBJQ0xfSFVDX0ZXX01BSk9SLCBcCisJSUNMX0hVQ19GV19NSU5PUiwgSUNMX0JMRF9OVU0p
CitNT0RVTEVfRklSTVdBUkUoSTkxNV9JQ0xfSFVDX1VDT0RFKTsKKwogc3RhdGljIHZvaWQgaHVj
X2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1Y19mdykKIHsKIAlzdHJ1Y3QgaW50ZWxf
aHVjICpodWMgPSBjb250YWluZXJfb2YoaHVjX2Z3LCBzdHJ1Y3QgaW50ZWxfaHVjLCBmdyk7CkBA
IC04OCw2ICs5NiwxMCBAQCBzdGF0aWMgdm9pZCBodWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91
Y19mdyAqaHVjX2Z3KQogCQlodWNfZnctPnBhdGggPSBJOTE1X0dMS19IVUNfVUNPREU7CiAJCWh1
Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IEdMS19IVUNfRldfTUFKT1I7CiAJCWh1Y19mdy0+bWlu
b3JfdmVyX3dhbnRlZCA9IEdMS19IVUNfRldfTUlOT1I7CisJfSBlbHNlIGlmIChJU19JQ0VMQUtF
KGRldl9wcml2KSkgeworCQlodWNfZnctPnBhdGggPSBJOTE1X0lDTF9IVUNfVUNPREU7CisJCWh1
Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCA9IElDTF9IVUNfRldfTUFKT1I7CisJCWh1Y19mdy0+bWlu
b3JfdmVyX3dhbnRlZCA9IElDTF9IVUNfRldfTUlOT1I7CiAJfQogfQogCi0tIAoyLjE5LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
