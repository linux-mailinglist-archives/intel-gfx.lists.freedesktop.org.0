Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64703114F7F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 11:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547386F9CA;
	Fri,  6 Dec 2019 10:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED406F9CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 10:55:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19482514-1500050 
 for multiple; Fri, 06 Dec 2019 10:55:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 10:55:23 +0000
Message-Id: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/gem: Flush the pwrite through the
 chipset before signaling
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmVmb3JlIHdlIHNpZ25hbCB0aGUgZmVuY2UgdG8gaW5kaWNhdGUgY29tcGxldGlvbiwgZW5zdXJl
IHRoZSBwd3JpdGUKdGhyb3VnaCB0aGUgaW5kaXJlY3QgR0dUVCBpcyBjb2hlcmVudCAoYXMgYmVz
dCBhcyB3ZSBrbm93KSBpbiBtZW1vcnkuCkFueSBsaXN0ZW5lcnMgdG8gdGhlIGZlbmNlIG1heSBz
dGFydCBpbW1lZGlhdGVseSBhbmQgc2FtcGxlIGZyb20gdGhlCmJhY2tpbmcgc3RvcmUgcHJpb3Ig
dG8gdGhlIHdyaXRlcyBiZWluZyBwb3N0ZWQsIHRodXMgc2VlaW5nIHN0YWxlIGRhdGEuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRl
eCA5OGI2NWI3MThlMWEuLjkxOWQzYTcyM2M1MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBA
IC02NzAsMTEgKzY3MCwxMiBAQCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJdXNlcl9kYXRhICs9IHBhZ2VfbGVuZ3RoOwogCQlvZmZz
ZXQgKz0gcGFnZV9sZW5ndGg7CiAJfQorCisJaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXMoZ2d0
dC0+dm0uZ3QpOwogCWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKG9iai0+ZnJvbnRidWZmZXIsIE9S
SUdJTl9DUFUpOwogCiAJaTkxNV9nZW1fb2JqZWN0X3VubG9ja19mZW5jZShvYmosIGZlbmNlKTsK
IG91dF91bnBpbjoKLQlpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhnZ3R0LT52bS5ndCk7CiAJ
aWYgKGRybV9tbV9ub2RlX2FsbG9jYXRlZCgmbm9kZSkpIHsKIAkJZ2d0dC0+dm0uY2xlYXJfcmFu
Z2UoJmdndHQtPnZtLCBub2RlLnN0YXJ0LCBub2RlLnNpemUpOwogCQlyZW1vdmVfbWFwcGFibGVf
bm9kZShnZ3R0LCAmbm9kZSk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
