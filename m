Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B6215F8F5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 22:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1BA6FBA8;
	Fri, 14 Feb 2020 21:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F686FBA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 21:49:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 13:49:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,442,1574150400"; d="scan'208";a="433157686"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl.intel.com)
 ([10.24.15.21])
 by fmsmga005.fm.intel.com with ESMTP; 14 Feb 2020 13:49:02 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 15 Feb 2020 01:49:38 -0500
Message-Id: <20200201082834.10163-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Patchwork-Id: 351526
Subject: [Intel-gfx] [v3] drm/i915/tgl: Add Wa_1606054188:tgl
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
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGlnZXIgTGFrZSB3ZSBkbyBub3Qgc3VwcG9ydCBzb3VyY2Uga2V5aW5nIGluIHRoZSBwaXhl
bCBmb3JtYXRzIFAwMTAsClAwMTIsIFAwMTYuCgp2MjogTW92ZSBXQSB0byBlbmQgb2YgZnVuY3Rp
b24uIENyZWF0ZSBoZWxwZXIgZnVuY3Rpb24gZm9yIGZvcm1hdApjaGVjay4gTGVzcyB2ZXJib3Nl
IGRlYnVnZ2luZyBtZXNzYWdpbmcuCgp2Mzogd2hpdGVzcGFjZQoKQnNwZWM6IDUyODkwCkNjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQ0M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3
b29kQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
CmluZGV4IDJmMjc3ZDFmYzZmMS4uNzFmZjk4NDliNWMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTIwNzAsNiArMjA3MCwxOCBAQCB2bHZfc3By
aXRlX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCXJldHVybiAw
OwogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9mb3JtYXRfaXNfcDAxeChpbnQgZm9ybWF0KQorewor
CXN3aXRjaCAoZm9ybWF0KSB7CisJY2FzZSBEUk1fRk9STUFUX1AwMTA6CisJY2FzZSBEUk1fRk9S
TUFUX1AwMTI6CisJY2FzZSBEUk1fRk9STUFUX1AwMTY6CisJCXJldHVybiB0cnVlOworCWRlZmF1
bHQ6CisJCXJldHVybiBmYWxzZTsKKwl9Cit9CisKIHN0YXRpYyBpbnQgc2tsX3BsYW5lX2NoZWNr
X2ZiKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJICAgICAg
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIHsKQEAgLTIxNDMs
NiArMjE1NSwxNiBAQCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCisJ
LyogV2FfMTYwNjA1NDE4ODp0Z2wKKwkgKgorCSAqIFRPRE86IEFkZCBmb3JtYXQgUkdCNjRpIHdo
ZW4gaW1wbGVtZW50ZWQuCisJICoKKwkgKi8KKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMikgJiYK
KwkgICBwbGFuZV9zdGF0ZS0+Y2tleS5mbGFncyAmIEk5MTVfU0VUX0NPTE9SS0VZX1NPVVJDRSAm
JgorCSAgIGludGVsX2Zvcm1hdF9pc19wMDF4KGZiLT5mb3JtYXQtPmZvcm1hdCkpCisJCURSTV9E
RUJVR19LTVMoIlNvdXJjZSBjb2xvciBrZXlpbmcgbm90IHN1cHBvcnRlZCB3aXRoIFAwMXggZm9y
bWF0c1xuIik7CisKIAlyZXR1cm4gMDsKIH0KIApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
