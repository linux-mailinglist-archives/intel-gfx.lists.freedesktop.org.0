Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ED3281EEE
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 01:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5606A6E043;
	Fri,  2 Oct 2020 23:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E307E6E043
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 23:13:18 +0000 (UTC)
IronPort-SDR: zLR07WEZWX2oStgiMW87XgHw2RF6NZbiFbE+1uKuGkSPq1M0Q8gsCJ5Pb3eA7RRNdvkSKpj0mT
 Zf9IL5cjj2zQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="247847610"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="247847610"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:13:14 -0700
IronPort-SDR: 0qXmlPIBaCJORefGf6auPDrQz4k78yE6uz+knS1cEzSCEdE/UByPaz2eAwz40l0wxnNwtLjqIV
 nuzCU8LDzFKg==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="313667519"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:13:13 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 16:16:27 -0700
Message-Id: <20201002231627.24528-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl/psr: Fix glitches when doing
 frontbuffer modifications
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

V3JpdGVzIHRvIENVUlNVUkZMSVZFIGluIFRHTCBhcmUgY2F1c2luZyBJT01NVSBlcnJvcnMgYW5k
IHZpc3VhbApnbGl0Y2hlcyB0aGF0IGFyZSBvZnRlbiByZXByb2R1Y2VkIHdoZW4gZXhlY3V0aW5n
IENQVSBpbnRlbnNpdmUKd29ya2xvYWRzIHdoaWxlIGEgZURQIDRLIHBhbmVsIGlzIGF0dGFjaGVk
LgoKTWFudWFsbHkgZXhpdGluZyBQU1IgY2F1c2VzIHRoZSBmcm9udGJ1ZmZlciB0byBiZSB1cGRh
dGVkIHdpdGhvdXQKZ2xpdGNoZXMgYW5kIHRoZSBJT01NVSBlcnJvcnMgYXJlIGFsc28gZ29uZSBi
dXQgdGhpcyBjb21lcyBhdCB0aGUgY29zdApvZiBsZXNzIHRpbWUgd2l0aCBQU1IgYWN0aXZlLgoK
U28gdXNpbmcgdGhpcyB3b3JrYXJvdW5kIHVudGlsIHRoaXMgaXNzdWUgaXMgcm9vdCBjYXVzZWQg
YW5kIGEgYmV0dGVyCmZpeCBpcyBmb3VuZC4KClRoZSBjdXJyZW50IGNvZGUgaXMgYWxyZWFkeSBy
ZWFkeSB0byBlbmFibGUgUFNSIGFmdGVyIHRoaXMgZXhpdCBpZgp0aGVyZSBpcyBub3Qgb3RoZXIg
ZnJvbnRidWZmZXIgbW9kaWZpY2F0aW9ucy4KCkFkZGluZyBhIG5ldyBpZiBibG9jayBpbiBwc3Jf
Zm9yY2VfaHdfdHJhY2tpbmdfZXhpdCgpIGluc3RlYWQgb2YgcmV1c2UKdGhlIGVsc2UvZ2VuOC0g
YmxvY2sgYmVjYXVzZSB0aGUgcGxhbiBpcyB0byByZXZlcnQgdGhpcyB3b3JrYXJvdW5kCmFzIHNv
b24gYXMgYSBiZXR0ZXIgc29sdXRpb24gaXMgZm91bmQuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxn
d2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYyB8IDE2ICsrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKaW5kZXggOGE5ZDBiZGRlMWJmLi44NjMwMTIxZGJiYmUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMTE1Miw3ICsxMTUyLDIxIEBAIHZv
aWQgaW50ZWxfcHNyX2Rpc2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAogc3RhdGlj
IHZvaWQgcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogewotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCisJaWYgKElTX1RJ
R0VSTEFLRShkZXZfcHJpdikpCisJCS8qCisJCSAqIFdyaXRlcyB0byBDVVJTVVJGTElWRSBpbiBU
R0wgYXJlIGNhdXNpbmcgSU9NTVUgZXJyb3JzIGFuZAorCQkgKiB2aXN1YWwgZ2xpdGNoZXMgdGhh
dCBhcmUgb2Z0ZW4gcmVwcm9kdWNlZCB3aGVuIGV4ZWN1dGluZworCQkgKiBDUFUgaW50ZW5zaXZl
IHdvcmtsb2FkcyB3aGlsZSBhIGVEUCA0SyBwYW5lbCBpcyBhdHRhY2hlZC4KKwkJICoKKwkJICog
TWFudWFsbHkgZXhpdGluZyBQU1IgY2F1c2VzIHRoZSBmcm9udGJ1ZmZlciB0byBiZSB1cGRhdGVk
CisJCSAqIHdpdGhvdXQgZ2xpdGNoZXMgYW5kIHRoZSBJT01NVSBlcnJvcnMgYXJlIGFsc28gZ29u
ZSBidXQKKwkJICogdGhpcyBjb21lcyBhdCB0aGUgY29zdCBvZiBsZXNzIHRpbWUgd2l0aCBQU1Ig
YWN0aXZlLgorCQkgKgorCQkgKiBTbyB1c2luZyB0aGlzIHdvcmthcm91bmQgdW50aWwgdGhpcyBp
c3N1ZSBpcyByb290IGNhdXNlZAorCQkgKiBhbmQgYSBiZXR0ZXIgZml4IGlzIGZvdW5kLgorCQkg
Ki8KKwkJaW50ZWxfcHNyX2V4aXQoZGV2X3ByaXYpOworCWVsc2UgaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gOSkKIAkJLyoKIAkJICogRGlzcGxheSBXQSAjMDg4NDogc2tsKwogCQkgKiBUaGlz
IGRvY3VtZW50ZWQgV0EgZm9yIGJ4dCBjYW4gYmUgc2FmZWx5IGFwcGxpZWQKLS0gCjIuMjguMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
