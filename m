Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C41E0151
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97CF66E500;
	Tue, 22 Oct 2019 09:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAFF6E500
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:59:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18922501-1500050 
 for multiple; Tue, 22 Oct 2019 10:58:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:58:51 +0100
Message-Id: <20191022095851.23442-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Set vm->gt backpointer for
 mock_ppgtt
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

QWRkIHRoZSBiYWNrcG9pbnRlciB0byBwcGd0dCBhbmQgaTkxNS0+Z3Qgc28gdGhhdCB3ZSBjYW4g
dHJhdmVyc2UgYWNyb3NzCnRoZSBkZXZpY2UgaGllcmFyY2h5LgoKUmVwb3J0ZWQtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2Uu
YyB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmMgICAgICAg
IHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwppbmRleCBjYjhjM2E1MDFj
YzcuLmJjZTFjODU1Y2YyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL21vY2tfZ2VtX2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9tb2NrX2dlbV9kZXZpY2UuYwpAQCAtMTgxLDYgKzE4MSw3IEBAIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKIAlpbnRlbF90aW1lbGluZXNfaW5pdChpOTE1
KTsKIAogCW1vY2tfaW5pdF9nZ3R0KGk5MTUsICZpOTE1LT5nZ3R0KTsKKwlpOTE1LT5ndC5nZ3R0
ID0gJmk5MTUtPmdndHQ7CiAKIAlta3dyaXRlX2RldmljZV9pbmZvKGk5MTUpLT5lbmdpbmVfbWFz
ayA9IEJJVCgwKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L21vY2tfZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQuYwpp
bmRleCAxNzNmMmQ0ZGJkMTQuLjllYzkzZGMyN2ZiNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfZ3R0LmMKQEAgLTYzLDYgKzYzLDcgQEAgc3RydWN0IGk5MTVfcHBndHQg
Km1vY2tfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGNvbnN0IGNoYXIgKm5h
bWUpCiAJaWYgKCFwcGd0dCkKIAkJcmV0dXJuIE5VTEw7CiAKKwlwcGd0dC0+dm0uZ3QgPSAmaTkx
NS0+Z3Q7CiAJcHBndHQtPnZtLmk5MTUgPSBpOTE1OwogCXBwZ3R0LT52bS50b3RhbCA9IHJvdW5k
X2Rvd24oVTY0X01BWCwgUEFHRV9TSVpFKTsKIAlwcGd0dC0+dm0uZmlsZSA9IEVSUl9QVFIoLUVO
T0RFVik7Ci0tIAoyLjI0LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
