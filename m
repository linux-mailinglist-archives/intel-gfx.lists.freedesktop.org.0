Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50DF0088
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 15:59:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFCB6EAA1;
	Tue,  5 Nov 2019 14:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B6D6EA9E;
 Tue,  5 Nov 2019 14:59:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19090293-1500050 
 for multiple; Tue, 05 Nov 2019 14:59:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 14:59:31 +0000
Message-Id: <20191105145931.14612-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191105145127.28616-1-chris@chris-wilson.co.uk>
References: <20191105145127.28616-1-chris@chris-wilson.co.uk>
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
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
aTkxNS9nZW1fbW1hcF9ndHQuYyB8IDExICsrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2Vt
X21tYXBfZ3R0LmMgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCmluZGV4IDkxZGE1YTM3Yi4u
NzczOGM0N2NiIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCisrKyBiL3Rl
c3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKQEAgLTEwMTksOSArMTAxOSwxOCBAQCBpZ3RfbWFpbgog
CWlmIChpZ3RfcnVuX2luX3NpbXVsYXRpb24oKSkKIAkJT0JKRUNUX1NJWkUgPSAxICogMTAyNCAq
IDEwMjQ7CiAKLQlpZ3RfZml4dHVyZQorCWlndF9maXh0dXJlIHsKIAkJZmQgPSBkcm1fb3Blbl9k
cml2ZXIoRFJJVkVSX0lOVEVMKTsKIAorCQkvKgorCQkgKiBJZiB0aGUgSFcgbGFja3Mgb3IgZG9l
cyBub3QgZXhwb3NlIGFuIGFwZXJ0dXJlIGZvciBpbmRpcmVjdAorCQkgKiBkZXRpbGluZyBhY2Nl
c3MgZnJvbSB1bnRydXN0ZWQgdXNlcnNwYWNlIHRvIHRoZSBvYmplY3RzLAorCQkgKiB0aGUga2Vy
bmVsIGRvZXMgYW4gZWFybHkgcmVqZWN0aW9uIG9mIHRoZSBtbWFwX2d0dCBpb2N0bC4KKwkJICov
CisJCWlndF9yZXF1aXJlX2YobW1hcF9pb2N0bChmZCwgJmFyZykgIT0gLUVOT0RFViwKKwkJCSAg
ICAgICJIVyAmIGtlcm5lbCBzdXBwb3J0IGZvciBpbmRpcmVjdCBkZXRpbGluZyBhcGVydHVyZVxu
Iik7CisJfQorCiAJaWd0X3N1YnRlc3QoImJhZC1vYmplY3QiKSB7CiAJCXVpbnQzMl90IHJlYWxf
aGFuZGxlID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7CiAJCXVpbnQzMl90IGhhbmRsZXNbMjBdOwot
LSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
