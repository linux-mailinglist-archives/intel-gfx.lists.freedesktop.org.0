Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9330F004E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 15:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21EC6E077;
	Tue,  5 Nov 2019 14:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08C26E077
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 14:52:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19090206-1500050 
 for multiple; Tue, 05 Nov 2019 14:51:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 14:51:27 +0000
Message-Id: <20191105145127.28616-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Skip if we have no
 aperture and no mmap_gtt
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlIGRldmljZSBkb2VzIG5vdCBleHBvc2UgYW4gYXBlcnR1cmUgZm9yIGluZGlyZWN0IGFj
Y2VzcyB3aXRoCmRldGlsaW5nIGZ1bmN0aW9uYWxpdHksIHRoZSBrZXJuZWwgcmVqZWN0cyBhbiBh
dHRlbXB0IHRvIGNyZWF0ZSBzdWNoIGEKbWFwcGluZyB3aXRoIC1FTk9ERVYuIElmIHRoZSBpb2N0
bCBpcyBub3Qgc3VwcG9ydGVkLCB3ZSBjYW4gc2tpcCBhbGwgb2YKb3VyIG1tYXBfZ3R0IHNwZWNp
ZmljIHRlc3RzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogdGVzdHMv
aTkxNS9nZW1fbW1hcF9ndHQuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0
LmMgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCmluZGV4IDkxZGE1YTM3Yi4uY2ZkOTkxMTlh
IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCisrKyBiL3Rlc3RzL2k5MTUv
Z2VtX21tYXBfZ3R0LmMKQEAgLTEwMTksOCArMTAxOSwxMCBAQCBpZ3RfbWFpbgogCWlmIChpZ3Rf
cnVuX2luX3NpbXVsYXRpb24oKSkKIAkJT0JKRUNUX1NJWkUgPSAxICogMTAyNCAqIDEwMjQ7CiAK
LQlpZ3RfZml4dHVyZQorCWlndF9maXh0dXJlIHsKIAkJZmQgPSBkcm1fb3Blbl9kcml2ZXIoRFJJ
VkVSX0lOVEVMKTsKKwkJaWd0X3JlcXVpcmUobW1hcF9pb2N0bChmZCwgJmFyZykgIT0gLUVOT0RF
Vik7CisJfQogCiAJaWd0X3N1YnRlc3QoImJhZC1vYmplY3QiKSB7CiAJCXVpbnQzMl90IHJlYWxf
aGFuZGxlID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
