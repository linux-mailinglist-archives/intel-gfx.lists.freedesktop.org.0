Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9CA1FB40A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 16:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A252D6E8C8;
	Tue, 16 Jun 2020 14:19:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132636E8C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 14:19:04 +0000 (UTC)
IronPort-SDR: tb8NtdWWUqY1518J55Bvo+CxQYbWygQYol1T8TqFgk6gk6NW2SuF3yIFJCrTeWAm14QRZVorQJ
 tfKb7D8bAfCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 07:19:03 -0700
IronPort-SDR: f7yDfMdyN+MDcgUB78s3AvSegsvRir5G0zjqCnoi/bpfraLHaxT7i9xKQMeLjqY53laxk/MJ0/
 lGJYJjo9qUKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="273165002"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 07:19:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 17:18:51 +0300
Message-Id: <20200616141855.746-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/dp_mst: Disable link training
 fallback on MST links
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

V2UgY2FsY3VsYXRlIHRoZSBNU1QgYXZhaWxhYmxlIGJhbmR3aWR0aCB1c2luZyB0aGUgbGluaydz
IG1heGltdW0gcmF0ZQphbmQgbGFuZSBjb3VudC4gVGhpcyBiYW5kd2lkdGggd29uJ3QgYmUgcmVj
YWxjdWxhdGVkIGluIHJlc3BvbnNlIHRvIGEKbGluayB0cmFpbmluZyBlcnJvciBhbmQgZmFsbGJh
Y2sgc2V0dGluZywgc28gbW9kZXNldHMgZm9sbG93aW5nIGEgbGluawp0cmFpbmluZyBlcnJvciB3
aWxsIGNhbGN1bGF0ZSBpbmNvcnJlY3QgdGltaW5nIHBhcmFtZXRlcnMgKGxpa2UgdGhlCnRyYW5z
Y29kZXIncyBkYXRhIE0vTiBwYXJhbXMgb3IgdGhlIG51bWJlciBvZiBNU1QgVFVzKS4KClByZXZl
bnQgdGhlIGFib3ZlIHByb2JsZW0gYnkgZGlzYWJsaW5nIHRoZSBsaW5rIHRyYWluaW5nIGZhbGxi
YWNrIG9uIE1TVApsaW5rcyBmb3Igbm93LCB1bnRpbCB0aGUgTVNUIGNvbXB1dGUgY29uZmlnIGNh
biBkZWFsIHdpdGggY2hhbmdpbmcgbGluawpwYXJhbWV0ZXJzLgoKVGhlIG1pc2NvbmZpZ3VyZWQg
dGltaW5nIGxlYWQgYXQgbGVhc3QgdG8gYQonVGltZWQgb3V0IHdhaXRpbmcgZm9yIERQIGlkbGUg
cGF0dGVybnMnCmVycm9yLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMjUgKysrKysrKysrKysrKysr
KysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDQyNTg5Y2Fl
NzY2ZC4uYzU4NWIwMDI3ODNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCkBAIC00NjgsNiArNDY4LDEzIEBAIGludCBpbnRlbF9kcF9nZXRfbGlua190cmFpbl9mYWxs
YmFja192YWx1ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCWludCBpbmRleDsKIAorCS8q
CisJICogVE9ETzogRW5hYmxlIGZhbGxiYWNrIG9uIE1TVCBsaW5rcyBvbmNlIE1TVCBsaW5rIGNv
bXB1dGUgY2FuIGhhbmRsZQorCSAqIHRoZSBmYWxsYmFjayBwYXJhbXMuCisJICovCisJaWYgKGlu
dGVsX2RwLT5pc19tc3QpCisJCXJldHVybiAtMTsKKwogCWluZGV4ID0gaW50ZWxfZHBfcmF0ZV9p
bmRleChpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLAogCQkJCSAgICBpbnRlbF9kcC0+bnVtX2NvbW1v
bl9yYXRlcywKIAkJCQkgICAgbGlua19yYXRlKTsKQEAgLTYxNjMsNyArNjE3MCwxNyBAQCBpbnRl
bF9kcF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJZ290byBvdXQ7
CiAJfQogCi0JaWYgKGludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcykgeworCS8qIFJlYWQgRFAg
U2luayBEU0MgQ2FwIERQQ0QgcmVncyBmb3IgRFAgdjEuNCAqLworCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQorCQlpbnRlbF9kcF9nZXRfZHNjX3NpbmtfY2FwKGludGVsX2RwKTsKKwor
CWludGVsX2RwX2NvbmZpZ3VyZV9tc3QoaW50ZWxfZHApOworCisJLyoKKwkgKiBUT0RPOiBSZXNl
dCBsaW5rIHBhcmFtcyB3aGVuIHN3aXRjaGluZyB0byBNU1QgbW9kZSwgdW50aWwgTVNUCisJICog
c3VwcG9ydHMgbGluayB0cmFpbmluZyBmYWxsYmFjayBwYXJhbXMuCisJICovCisJaWYgKGludGVs
X2RwLT5yZXNldF9saW5rX3BhcmFtcyB8fCBpbnRlbF9kcC0+aXNfbXN0KSB7CiAJCS8qIEluaXRp
YWwgbWF4IGxpbmsgbGFuZSBjb3VudCAqLwogCQlpbnRlbF9kcC0+bWF4X2xpbmtfbGFuZV9jb3Vu
dCA9IGludGVsX2RwX21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCk7CiAKQEAgLTYxNzUs
MTIgKzYxOTIsNiBAQCBpbnRlbF9kcF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvciwKIAogCWludGVsX2RwX3ByaW50X3JhdGVzKGludGVsX2RwKTsKIAotCS8qIFJlYWQgRFAg
U2luayBEU0MgQ2FwIERQQ0QgcmVncyBmb3IgRFAgdjEuNCAqLwotCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQotCQlpbnRlbF9kcF9nZXRfZHNjX3NpbmtfY2FwKGludGVsX2RwKTsKLQot
CWludGVsX2RwX2NvbmZpZ3VyZV9tc3QoaW50ZWxfZHApOwotCiAJaWYgKGludGVsX2RwLT5pc19t
c3QpIHsKIAkJLyoKIAkJICogSWYgd2UgYXJlIGluIE1TVCBtb2RlIHRoZW4gdGhpcyBjb25uZWN0
b3IKLS0gCjIuMjMuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
