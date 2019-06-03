Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 554D933A17
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 23:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DFF4892AC;
	Mon,  3 Jun 2019 21:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ADB2892AC
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 21:47:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 14:47:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,548,1549958400"; d="scan'208";a="181305583"
Received: from smaug.jf.intel.com ([10.24.10.44])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jun 2019 14:47:55 -0700
From: matthew.s.atwood@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 14:49:40 -0700
Message-Id: <20190603214940.11996-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.17.2
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for GEN11+
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
Cc: dhinakaran.pandiyan@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgoKaW50ZWxfZHBf
c2V0X3NvdXJjZV9yYXRlcygpIGNhbGxzIGludGVsX2RwX2lzX2VkcCgpLCB3aGljaCBpcyB1bnNh
ZmUgdG8KdXNlIGJlZm9yZSBlbmNvZGVyX3R5cGUgaXMgc2V0LiBUaGlzIGNhdXNlZCBHRU4xMSsg
dG8gaW5jb3JyZWN0bHkgc3RyaXAKSEJSMyBmcm9tIHNvdXJjZSByYXRlcy4gTW92ZSBpbnRlbF9k
cF9zZXRfc291cmNlX3JhdGVzKCkgdG8gYWZ0ZXIKZW5jb2Rlcl90eXBlIGlzIHNldC4gQWRkIGNv
bW1lbnQgdG8gaW50ZWxfZHBfaXNfZWRwKCkgZGVzY3JpYmluZyB1bnNhZmUKdXNhZ2VzLgoKRml4
ZXM6IGIyNjVhMmE2MjU1ZjUgKCJkcm0vaTkxNS9pY2w6IGNvbWJvIHBvcnQgdnN3aW5nIHByb2dy
YW1taW5nCmNoYW5nZXMgcGVyIEJTUEVDIikKU2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2QgPG1h
dHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RwLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwppbmRleCAyNGI1NmIyYTc2YzguLmE0NDkw
YmNhZDY4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCkBAIC0xNDEsNiArMTQxLDggQEAgc3Rh
dGljIGNvbnN0IHU4IHZhbGlkX2RzY19zbGljZWNvdW50W10gPSB7MSwgMiwgNH07CiAgKgogICog
SWYgYSBDUFUgb3IgUENIIERQIG91dHB1dCBpcyBhdHRhY2hlZCB0byBhbiBlRFAgcGFuZWwsIHRo
aXMgZnVuY3Rpb24KICAqIHdpbGwgcmV0dXJuIHRydWUsIGFuZCBmYWxzZSBvdGhlcndpc2UuCisg
KgorICogVGhpcyBmdW5jdGlvbiBpcyBub3Qgc2FmZSB0byB1c2UgcHJpb3IgdG8gZW5jb2RlciB0
eXBlIGJlaW5nIHNldC4KICAqLwogYm9vbCBpbnRlbF9kcF9pc19lZHAoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkKIHsKQEAgLTczNDIsOCArNzM0NCw2IEBAIGludGVsX2RwX2luaXRfY29ubmVj
dG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCQkgaW50ZWxf
ZGlnX3BvcnQtPm1heF9sYW5lcywgcG9ydF9uYW1lKHBvcnQpKSkKIAkJcmV0dXJuIGZhbHNlOwog
Ci0JaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhpbnRlbF9kcCk7Ci0KIAlpbnRlbF9kcC0+cmVz
ZXRfbGlua19wYXJhbXMgPSB0cnVlOwogCWludGVsX2RwLT5wcHNfcGlwZSA9IElOVkFMSURfUElQ
RTsKIAlpbnRlbF9kcC0+YWN0aXZlX3BpcGUgPSBJTlZBTElEX1BJUEU7CkBAIC03Mzg4LDYgKzcz
ODgsOCBAQCBpbnRlbF9kcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICppbnRlbF9kaWdfcG9ydCwKIAkJCXR5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCA/ICJl
RFAiIDogIkRQIiwKIAkJCXBvcnRfbmFtZShwb3J0KSk7CiAKKwlpbnRlbF9kcF9zZXRfc291cmNl
X3JhdGVzKGludGVsX2RwKTsKKwogCWRybV9jb25uZWN0b3JfaW5pdChkZXYsIGNvbm5lY3Rvciwg
JmludGVsX2RwX2Nvbm5lY3Rvcl9mdW5jcywgdHlwZSk7CiAJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJf
YWRkKGNvbm5lY3RvciwgJmludGVsX2RwX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MpOwogCi0tIAoy
LjE3LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
