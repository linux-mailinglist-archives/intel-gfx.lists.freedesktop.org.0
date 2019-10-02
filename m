Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C01C9237
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 21:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBFF6E19A;
	Wed,  2 Oct 2019 19:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C2C6E19A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 19:22:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 12:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="203702433"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga002.jf.intel.com with ESMTP; 02 Oct 2019 12:22:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:22:58 -0700
Message-Id: <20191002192258.1013-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/vbt: Child device size remains
 unchanged through VBT 229
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

VGhlIGxhdGVzdCBkb2N1bWVudGVkIHZlcnNpb24gb2YgdGhlIFZCVCBpcyAyMjksIGJ1dCBubyBm
dXJ0aGVyIGRhdGEgaGFzCmJlZW4gYWRkZWQgdG8gdGhlIGNoaWxkIGRldmljZSBkZWZpbml0aW9u
IGluIGJsb2NrIDIuICBVcGRhdGUgdGhlIGNoaWxkCmRldmljZSB2ZXJzaW9uIHRlc3QgdG8gZWxp
bWluYXRlIHRoZSAiRXhwZWN0ZWQgY2hpbGQgZGV2aWNlIGNvbmZpZyBzaXplCmZvciBWQlQgdmVy
c2lvbiBYWFggbm90IGtub3duOyBhc3N1bWluZyAzOSIgZGVidWcgbWVzc2FnZXMgZnJvbSB0aGUK
bG9ncy4KCkJzcGVjOiAyMDEyNApCc3BlYzogMjAxNTcKU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMKaW5kZXggMWRlZjU1MGM2OGM4Li45NjI4YjQ4NWIxNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xNjE1LDcgKzE2MTUsNyBAQCBwYXJzZV9nZW5l
cmFsX2RlZmluaXRpb25zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJZXhw
ZWN0ZWRfc2l6ZSA9IDM3OwogCX0gZWxzZSBpZiAoYmRiLT52ZXJzaW9uIDw9IDIxNSkgewogCQll
eHBlY3RlZF9zaXplID0gMzg7Ci0JfSBlbHNlIGlmIChiZGItPnZlcnNpb24gPD0gMjE2KSB7CisJ
fSBlbHNlIGlmIChiZGItPnZlcnNpb24gPD0gMjI5KSB7CiAJCWV4cGVjdGVkX3NpemUgPSAzOTsK
IAl9IGVsc2UgewogCQlleHBlY3RlZF9zaXplID0gc2l6ZW9mKCpjaGlsZCk7Ci0tIAoyLjIxLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
