Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FDE42D56
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 19:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0017089471;
	Wed, 12 Jun 2019 17:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81AF89471
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 17:20:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16879819-1500050 
 for multiple; Wed, 12 Jun 2019 18:19:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 18:19:55 +0100
Message-Id: <20190612171955.4640-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Refine placement of gt.reset_lockmap
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

SWYgd2UgcHVsbCB0aGUgbG9ja21hcCBpbnRvIHJlc2V0X3ByZXBhcmUvcmVzZXRfZmluaXNoLCBp
dCB3aWxsCm5hdHVyYWxseSBjb3ZlciBpOTE1X2dlbV9zZXRfd2VkZ2VkKCkgYXMgd2VsbCBhcyBp
OTE1X3Jlc2V0KCkuIEFuZCB3aXRoCmFub3RoZXIgdHdlYWssIHdlIGNhbiBwdWxsIF9faTkxNV9n
ZW1fdW5zZXRfd2VkZ2VkKCkgdW5kZXJuZWF0aCB0aGUKbG9ja21hcCBjb3ZlcmluZyB0aGUgbXV0
ZXhlcyB1c2VkIHRoZXJlLgoKQXMgYSBib251cywgaXQgc2hvdWxkIGhpZGUgdGhlIHVnbGluZXNz
IG9mIHRoZSBpOTE1X3Jlc2V0IGV4aXQgcGF0aCA7KQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jIHwgMTIgKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmlu
ZGV4IDYzNjhiMzdmMjZkMS4uOTUyZTExYjRiNWM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKQEAgLTcyMyw2ICs3MjMsOCBAQCBzdGF0aWMgdm9pZCByZXNldF9wcmVwYXJl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWVudW0gaW50ZWxfZW5naW5lX2lkIGlk
OwogCiAJaW50ZWxfZ3RfcG1fZ2V0KGk5MTUpOworCWxvY2tfbWFwX2FjcXVpcmUoJmk5MTUtPmd0
LnJlc2V0X2xvY2ttYXApOworCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpCiAJ
CXJlc2V0X3ByZXBhcmVfZW5naW5lKGVuZ2luZSk7CiAKQEAgLTc3Myw2ICs3NzUsOCBAQCBzdGF0
aWMgdm9pZCByZXNldF9maW5pc2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCXJl
c2V0X2ZpbmlzaF9lbmdpbmUoZW5naW5lKTsKIAkJaW50ZWxfZW5naW5lX3NpZ25hbF9icmVhZGNy
dW1icyhlbmdpbmUpOwogCX0KKworCWxvY2tfbWFwX3JlbGVhc2UoJmk5MTUtPmd0LnJlc2V0X2xv
Y2ttYXApOwogCWludGVsX2d0X3BtX3B1dChpOTE1KTsKIH0KIApAQCAtOTc4LDE3ICs5ODIsMTcg
QEAgdm9pZCBpOTE1X3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAJbWln
aHRfc2xlZXAoKTsKIAlHRU1fQlVHX09OKCF0ZXN0X2JpdChJOTE1X1JFU0VUX0JBQ0tPRkYsICZl
cnJvci0+ZmxhZ3MpKTsKLQlsb2NrX21hcF9hY3F1aXJlKCZpOTE1LT5ndC5yZXNldF9sb2NrbWFw
KTsKKworCXJlc2V0X3ByZXBhcmUoaTkxNSk7CiAKIAkvKiBDbGVhciBhbnkgcHJldmlvdXMgZmFp
bGVkIGF0dGVtcHRzIGF0IHJlY292ZXJ5LiBUaW1lIHRvIHRyeSBhZ2Fpbi4gKi8KIAlpZiAoIV9f
aTkxNV9nZW1fdW5zZXRfd2VkZ2VkKGk5MTUpKQotCQlnb3RvIHVubG9jazsKKwkJZ290byBmaW5p
c2g7CiAKIAlpZiAocmVhc29uKQogCQlkZXZfbm90aWNlKGk5MTUtPmRybS5kZXYsICJSZXNldHRp
bmcgY2hpcCBmb3IgJXNcbiIsIHJlYXNvbik7CiAJZXJyb3ItPnJlc2V0X2NvdW50Kys7CiAKLQly
ZXNldF9wcmVwYXJlKGk5MTUpOwogCiAJaWYgKCFpbnRlbF9oYXNfZ3B1X3Jlc2V0KGk5MTUpKSB7
CiAJCWlmIChpOTE1X21vZHBhcmFtcy5yZXNldCkKQEAgLTEwMzAsOCArMTAzNCw2IEBAIHZvaWQg
aTkxNV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogZmluaXNoOgogCXJl
c2V0X2ZpbmlzaChpOTE1KTsKLXVubG9jazoKLQlsb2NrX21hcF9yZWxlYXNlKCZpOTE1LT5ndC5y
ZXNldF9sb2NrbWFwKTsKIAlyZXR1cm47CiAKIHRhaW50OgotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
