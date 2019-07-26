Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DBD75BD0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A47F6E83B;
	Fri, 26 Jul 2019 00:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87EE26E82C
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:02:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 17:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="189491191"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2019 17:02:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 17:02:25 -0700
Message-Id: <20190726000226.26914-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726000226.26914-1-lucas.demarchi@intel.com>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkltcGxlbWVu
dCBXYV8xNjA0NTU1NjA3IChzZXQgdGhlIERTIHBhaXJpbmcgdGltZXIgdG8gMTI4IGN5Y2xlcyku
CkZGX01PREUyIGlzIHBhcnQgb2YgdGhlIHJlZ2lzdGVyIHN0YXRlIGNvbnRleHQsIHRoYXQncyB3
aHkgaXQgaXMKaW1wbGVtZW50ZWQgaGVyZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5
IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCA3ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgfCA1ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpp
bmRleCBhNmViOWM2ZTg3ZWMuLjMyMzVlZjM1NWRmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC01NzIsNiArNTcyLDEzIEBAIHN0YXRpYyB2b2lk
IGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
CiBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAogCQkJCSAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogeworCXUz
MiB2YWw7CisKKwkvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLworCXZhbCA9IGludGVsX3VuY29yZV9y
ZWFkKGVuZ2luZS0+dW5jb3JlLCBGRl9NT0RFMik7CisJdmFsICY9IH5GRl9NT0RFMl9URFNfVElN
RVJfTUFTSzsKKwl2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKKwl3YV93cml0ZV9tYXNr
ZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7CiB9CiAK
IHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA1NGVhMjUwMDAwYmUuLmZi
YmI4OWY2Y2EyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03NzcxLDYgKzc3NzEsMTEg
QEAgZW51bSB7CiAjZGVmaW5lICAgUElYRUxfUk9VTkRJTkdfVFJVTkNfRkJfUEFTU1RIUlUgCSgx
IDw8IDE1KQogI2RlZmluZSAgIFBFUl9QSVhFTF9BTFBIQV9CWVBBU1NfRU4JCSgxIDw8IDcpCiAK
KyNkZWZpbmUgRkZfTU9ERTIJCQlfTU1JTygweDY2MDQpCisjZGVmaW5lICAgRkZfTU9ERTJfVERT
X1RJTUVSX1NISUZUCSgxNikKKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfMTI4CSg0IDw8
IEZGX01PREUyX1REU19USU1FUl9TSElGVCkKKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJf
TUFTSwkoMHhmZiA8PCBGRl9NT0RFMl9URFNfVElNRVJfU0hJRlQpCisKIC8qIFBDSCAqLwogCiAj
ZGVmaW5lIFBDSF9ESVNQTEFZX0JBU0UJMHhjMDAwMHUKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
