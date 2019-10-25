Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A027E56E8
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:06:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829B66EBC6;
	Fri, 25 Oct 2019 23:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D46B6EBC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:06:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:06:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="282396824"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2019 16:06:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:06:23 -0700
Message-Id: <20191025230623.27829-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025230623.27829-1-matthew.d.roper@intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/tgl: Add AUX B & C to
 DC_OFF_POWER_DOMAINS
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

T3VyIFRHTCBDSSBwbGF0Zm9ybXMgYXJlIHJ1bm5pbmcgaW50byBjYXNlcyB3aGVyZSBhdXggdHJh
bnNhY3Rpb25zIGhhdmUKZmFpbGVkIHRvIGNvbXBsZXRlIG9yIGRlY2xhcmUgYSB0aW1lb3V0IHdl
bGwgYWZ0ZXIgdGhlIHRpbWVvdXQgbGltaXQKdGhhdCB0aGUgaGFyZHdhcmUgaXMgc3VwcG9zZWQg
dG8gZW5mb3JjZS4gIEZyb20gdGhlIGxvZ3MgaXQgYXBwZWFycyB0aGF0CnRoZXNlIGZhaWx1cmVz
IGFyaXNlIHdoZW4gYXV4IHRyYW5zYWN0aW9ucyBoYXBwZW4gYWZ0ZXIgd2UndmUgZW50ZXJlZApE
QzYuICBPbiBUR0wgQVVYIEIgJiBDIGFyZSBpbiBQRzEgKG1hbmFnZWQgYnkgdGhlIERNQyBmaXJt
d2FyZSkgcmF0aGVyCnRoYW4gUEczIGFzIHRoZXkgd2VyZSBvbiBJQ0wuCgpTaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMiArKwogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggNmY5ZTc5MjdlMjQ4Li43MDdhYzExMGUy
NzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jCkBAIC0yNjgyLDYgKzI2ODIsOCBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJf
cHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlUR0xfUFdfMl9QT1dFUl9E
T01BSU5TIHwJCQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fTU9ERVNFVCkgfAkJCVwKIAlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVVhfQSkgfAkJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhf
QikgfAkJCVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQykgfAkJCVwKIAlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9JTklUKSkKIAogI2RlZmluZSBUR0xfRERJX0lPX0RfVEMxX1BPV0VSX0RPTUFJ
TlMgKAlcCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
