Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D6B6CB5C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 11:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163316E373;
	Thu, 18 Jul 2019 09:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D036E373
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 09:02:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17393252-1500050 
 for multiple; Thu, 18 Jul 2019 10:01:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 10:01:58 +0100
Message-Id: <20190718090158.25123-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush all user surfaces prior to
 first use
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

U2luY2UgdXNlcnNwYWNlIGhhcyB0aGUgYWJpbGl0eSB0byBieXBhc3MgdGhlIENQVSBjYWNoZSBm
cm9tIHdpdGhpbiBpdHMKdW5wcml2aWxlZGdlZCBjb21tYW5kIHN0cmVhbSwgd2UgaGF2ZSB0byBm
bHVzaCB0aGUgQ1BVIGNhY2hlIHRvIG1lbW9yeQppbiBvcmRlciB0byBvdmVyd3JpdGUgdGhlIHBy
ZXZpb3VzIGNvbnRlbnRzIG9uIGNyZWF0aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBzdGFibGV2Z2VyLmtlcm5lbC5vcmcKLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyB8IDI1ICsrKysrKystLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2ht
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCmluZGV4IGQy
YTExNTg4NjhlNy4uODBlMDJiY2RmNjc4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc2htZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc2htZW0uYwpAQCAtNDk4LDI0ICs0OTgsMTMgQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9zaG1lbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUpCiAJb2JqLT53
cml0ZV9kb21haW4gPSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9iai0+cmVhZF9kb21haW5zID0g
STkxNV9HRU1fRE9NQUlOX0NQVTsKIAotCWlmIChIQVNfTExDKGk5MTUpKQotCQkvKiBPbiBzb21l
IGRldmljZXMsIHdlIGNhbiBoYXZlIHRoZSBHUFUgdXNlIHRoZSBMTEMgKHRoZSBDUFUKLQkJICog
Y2FjaGUpIGZvciBhYm91dCBhIDEwJSBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudAotCQkgKiBjb21w
YXJlZCB0byB1bmNhY2hlZC4gIEdyYXBoaWNzIHJlcXVlc3RzIG90aGVyIHRoYW4KLQkJICogZGlz
cGxheSBzY2Fub3V0IGFyZSBjb2hlcmVudCB3aXRoIHRoZSBDUFUgaW4KLQkJICogYWNjZXNzaW5n
IHRoaXMgY2FjaGUuICBUaGlzIG1lYW5zIGluIHRoaXMgbW9kZSB3ZQotCQkgKiBkb24ndCBuZWVk
IHRvIGNsZmx1c2ggb24gdGhlIENQVSBzaWRlLCBhbmQgb24gdGhlCi0JCSAqIEdQVSBzaWRlIHdl
IG9ubHkgbmVlZCB0byBmbHVzaCBpbnRlcm5hbCBjYWNoZXMgdG8KLQkJICogZ2V0IGRhdGEgdmlz
aWJsZSB0byB0aGUgQ1BVLgotCQkgKgotCQkgKiBIb3dldmVyLCB3ZSBtYWludGFpbiB0aGUgZGlz
cGxheSBwbGFuZXMgYXMgVUMsIGFuZCBzbwotCQkgKiBuZWVkIHRvIHJlYmluZCB3aGVuIGZpcnN0
IHVzZWQgYXMgc3VjaC4KLQkJICovCi0JCWNhY2hlX2xldmVsID0gSTkxNV9DQUNIRV9MTEM7Ci0J
ZWxzZQotCQljYWNoZV9sZXZlbCA9IEk5MTVfQ0FDSEVfTk9ORTsKLQotCWk5MTVfZ2VtX29iamVj
dF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgY2FjaGVfbGV2ZWwpOworCS8qCisJICogTm90ZSB0
aGF0IHVzZXJzcGFjZSBoYXMgY29udHJvbCBvdmVyIGNhY2hlLWJ5cGFzcworCSAqIHZpYSBpdHMg
Y29tbWFuZCBzdHJlYW0sIHNvIGV2ZW4gb24gTExDIGFyY2hpdGVjdHVyZXMKKwkgKiB3ZSBoYXZl
IHRvIGZsdXNoIG91dCB0aGUgQ1BVIGNhY2hlIHRvIG1lbW9yeSB0bworCSAqIGNsZWFyIHByZXZp
b3VzIGNvbnRlbnRzLgorCSAqLworCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5
KG9iaiwgSTkxNV9DQUNIRV9OT05FKTsKIAogCXRyYWNlX2k5MTVfZ2VtX29iamVjdF9jcmVhdGUo
b2JqKTsKIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
