Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7FF154F9E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 01:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671126E4CA;
	Fri,  7 Feb 2020 00:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099F56E4CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 00:14:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 16:14:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,411,1574150400"; d="scan'208";a="311863959"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 06 Feb 2020 16:14:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 16:14:16 -0800
Message-Id: <20200207001417.1229251-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ehl: Update port clock voltage
 level requirements
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Vm9sdGFnZSBsZXZlbCBkZXBlbmRzIG5vdCBvbmx5IG9uIHRoZSBjZGNsaywgYnV0IGFsc28gb24g
dGhlIERESSBjbG9jay4KTGFzdCB0aW1lIHRoZSBic3BlYyB2b2x0YWdlIGxldmVsIHRhYmxlIGZv
ciBFSEwgd2FzIHVwZGF0ZWQsIHdlIG9ubHkKdXBkYXRlZCB0aGUgY2RjbGsgcmVxdWlyZW1lbnRz
LCBidXQgZm9yZ290IHRvIGFjY291bnQgZm9yIHRoZSBuZXcgcG9ydApjbG9jayBjcml0ZXJpYS4K
CkJzcGVjOiAyMTgwOQpGaXhlczogZDE0NzQ4Mzg4NGVkICgiZHJtL2k5MTUvZWhsOiBVcGRhdGUg
dm9sdGFnZSBsZXZlbCBjaGVja3MiKQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDRjNWYzMmU1
MDU1NC4uZmY2MzhmYzZlM2Y1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKQEAgLTQyMDYsNyArNDIwNiw5IEBAIHN0YXRpYyBib29sIGludGVsX2RkaV9pc19hdWRp
b19lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIHZvaWQgaW50ZWxf
ZGRpX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7Ci0J
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+
IDU5NDAwMCkKKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPnBv
cnRfY2xvY2sgPiA1OTQwMDApCisJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMzsK
KwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmIGNydGNfc3RhdGUtPnBvcnRf
Y2xvY2sgPiA1OTQwMDApCiAJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMTsKIAll
bHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSAmJiBjcnRjX3N0YXRlLT5wb3J0X2Nsb2Nr
ID4gNTk0MDAwKQogCQljcnRjX3N0YXRlLT5taW5fdm9sdGFnZV9sZXZlbCA9IDI7Ci0tIAoyLjI0
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
