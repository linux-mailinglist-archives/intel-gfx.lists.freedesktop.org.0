Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B44E1624C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B5689FC0;
	Tue,  7 May 2019 10:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B8489FC0
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:55:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:55:59 -0700
X-ExtLoop1: 1
Received: from awilczyn-mobl2.ger.corp.intel.com (HELO
 mwahaha.ger.corp.intel.com) ([10.252.19.76])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:55:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 11:55:56 +0100
Message-Id: <20190507105557.5385-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/gtt: grab wakeref in
 gen6_alloc_va_range
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

U29tZSBzdGVwcyBpbiBnZW42X2FsbG9jX3ZhX3JhbmdlIHJlcXVpcmUgdGhlIEhXIHRvIGJlIGF3
YWtlLCBzbyBpZGVhbGx5CndlIHNob3VsZCBiZSBncmFiYmluZyB0aGUgd2FrZXJlZiBvdXJzZWx2
ZXMgYW5kIG5vdCByZWx5aW5nIG9uIHRoZQpjYWxsZXIgYWxyZWFkeSBob2xkaW5nIGl0IGZvciB1
cy4KClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDggKysrKysrKy0KIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDhmNWRiNzg3YjdmMi4uZmZiOGMzZDAxMWU5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMTc0NSwxMCArMTc0NSwxMyBAQCBzdGF0aWMg
aW50IGdlbjZfYWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiB7
CiAJc3RydWN0IGdlbjZfaHdfcHBndHQgKnBwZ3R0ID0gdG9fZ2VuNl9wcGd0dChpOTE1X3ZtX3Rv
X3BwZ3R0KHZtKSk7CiAJc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqcHQ7CisJaW50ZWxfd2FrZXJl
Zl90IHdha2VyZWY7CiAJdTY0IGZyb20gPSBzdGFydDsKIAl1bnNpZ25lZCBpbnQgcGRlOwogCWJv
b2wgZmx1c2ggPSBmYWxzZTsKIAorCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCh2bS0+
aTkxNSk7CisKIAlnZW42X2Zvcl9lYWNoX3BkZShwdCwgJnBwZ3R0LT5iYXNlLnBkLCBzdGFydCwg
bGVuZ3RoLCBwZGUpIHsKIAkJY29uc3QgdW5zaWduZWQgaW50IGNvdW50ID0gZ2VuNl9wdGVfY291
bnQoc3RhcnQsIGxlbmd0aCk7CiAKQEAgLTE3NzQsMTIgKzE3NzcsMTUgQEAgc3RhdGljIGludCBn
ZW42X2FsbG9jX3ZhX3JhbmdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCiAJaWYg
KGZsdXNoKSB7CiAJCW1hcmtfdGxic19kaXJ0eSgmcHBndHQtPmJhc2UpOwotCQlnZW42X2dndHRf
aW52YWxpZGF0ZShwcGd0dC0+YmFzZS52bS5pOTE1KTsKKwkJZ2VuNl9nZ3R0X2ludmFsaWRhdGUo
dm0tPmk5MTUpOwogCX0KIAorCWludGVsX3J1bnRpbWVfcG1fcHV0KHZtLT5pOTE1LCB3YWtlcmVm
KTsKKwogCXJldHVybiAwOwogCiB1bndpbmRfb3V0OgorCWludGVsX3J1bnRpbWVfcG1fcHV0KHZt
LT5pOTE1LCB3YWtlcmVmKTsKIAlnZW42X3BwZ3R0X2NsZWFyX3JhbmdlKHZtLCBmcm9tLCBzdGFy
dCAtIGZyb20pOwogCXJldHVybiAtRU5PTUVNOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
