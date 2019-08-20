Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333F896C7F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 00:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EF36E89E;
	Tue, 20 Aug 2019 22:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DBF06E89E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 22:41:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 15:41:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="207527633"
Received: from anusha.jf.intel.com ([10.54.75.176])
 by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2019 15:41:16 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 15:30:59 -0700
Message-Id: <20190820223059.18052-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/dp/dsc: Add Support for all BPCs supported by
 TGL
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

RFNDIGVuZ2luZSBvbiBJQ0wgc3VwcG9ydHMgb25seSA4IGFuZCAxMCBCUEMgYXMgdGhlIGlucHV0
CkJQQy4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBvcnRzIDgsIDEwIGFuZCAxMiBCUEMuCkFk
ZCAxMiBCUEMgc3VwcG9ydCBmb3IgRFNDIHdoaWxlIGNhbGN1bGF0aW5nIGNvbXByZXNzaW9uCmNv
bmZpZ3VyYXRpb24uCgp2MjogUmVtb3ZlIHRoZSBzZXBhcmF0ZSBkZWZpbmUgVEdMX0RQX0RTQ19N
QVhfU1VQUE9SVEVEX0JQQwphbmQgdXNlIHRoZSB2YWx1ZSBkaXJlY3RseS4oTW9yZSBzdWNoIGRl
ZmluZXMgY2FuIGJlIHJlbW92ZWQKYXMgcGFydCBvZiBmdXR1cmUgcGF0Y2hlcykuIChWaWxsZSkK
CnYzOiBVc2UgdmFsdWVzIGRpcmVjdGx5IGluc3RlYWQgb2YgYWNjZXNzaW5nIHRoZSBkZWZpbmVz
CmV2ZXJ5dGltZSBmb3IgbWluIGFuZCBtYXggRFNDIEJQQy4KCkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVz
aGEuc3JpdmF0c2FAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgfCAxNCArKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKaW5kZXggNDg4NGM4N2M4ZWQ3Li5mOWQyNDM4ZDdkYTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTcwLDggKzcwLDYgQEAKIAogLyogRFAgRFNDIHNtYWxs
IGpvaW5lciBoYXMgMiBGSUZPcyBlYWNoIG9mIDY0MCB4IDYgYnl0ZXMgKi8KICNkZWZpbmUgRFBf
RFNDX01BWF9TTUFMTF9KT0lORVJfUkFNX0JVRkZFUgk2MTQ0MAotI2RlZmluZSBEUF9EU0NfTUlO
X1NVUFBPUlRFRF9CUEMJCTgKLSNkZWZpbmUgRFBfRFNDX01BWF9TVVBQT1JURURfQlBDCQkxMAog
CiAvKiBEUCBEU0MgdGhyb3VnaHB1dCB2YWx1ZXMgdXNlZCBmb3Igc2xpY2UgY291bnQgY2FsY3Vs
YXRpb25zIEtQaXhlbHMvcyAqLwogI2RlZmluZSBEUF9EU0NfUEVBS19QSVhFTF9SQVRFCQkJMjcy
MDAwMApAQCAtMTkxNSwxMSArMTkxMywxNyBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19jb21w
dXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICghaW50ZWxfZHBfc3Vw
cG9ydHNfZHNjKGludGVsX2RwLCBwaXBlX2NvbmZpZykpCiAJCXJldHVybiAtRUlOVkFMOwogCi0J
ZHNjX21heF9icGMgPSBtaW5fdCh1OCwgRFBfRFNDX01BWF9TVVBQT1JURURfQlBDLAotCQkJICAg
IGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRfYnBjKTsKKwkvKiBNYXggRFNDIElucHV0IEJQQyBm
b3IgSUNMIGlzIDEwIGFuZCBmb3IgVEdMKyBpcyAxMiAqLworCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKQorCQlkc2NfbWF4X2JwYyA9IG1pbl90KHU4LCAxMiwgY29ubl9zdGF0ZS0+bWF4
X3JlcXVlc3RlZF9icGMpOworCWVsc2UKKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgMTAsCisJ
CQkJICAgIGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRfYnBjKTsKIAogCXBpcGVfYnBwID0gaW50
ZWxfZHBfZHNjX2NvbXB1dGVfYnBwKGludGVsX2RwLCBkc2NfbWF4X2JwYyk7Ci0JaWYgKHBpcGVf
YnBwIDwgRFBfRFNDX01JTl9TVVBQT1JURURfQlBDICogMykgeworCisJLyogTWluIElucHV0IEJQ
QyBmb3IgSUNMKyBpcyA4ICovCisJaWYgKHBpcGVfYnBwIDwgOCAqIDMpIHsKIAkJRFJNX0RFQlVH
X0tNUygiTm8gRFNDIHN1cHBvcnQgZm9yIGxlc3MgdGhhbiA4YnBjXG4iKTsKIAkJcmV0dXJuIC1F
SU5WQUw7CiAJfQotLSAKMi4yMi4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
