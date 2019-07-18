Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4542A6CB6F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 11:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959E56E373;
	Thu, 18 Jul 2019 09:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C166E373
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 09:03:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17393329-1500050 
 for multiple; Thu, 18 Jul 2019 10:03:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 10:03:34 +0100
Message-Id: <20190718090334.28297-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718090158.25123-1-chris@chris-wilson.co.uk>
References: <20190718090158.25123-1-chris@chris-wilson.co.uk>
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
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyB8IDI2ICsrKysrKy0tLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2ht
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCmluZGV4IGQy
YTExNTg4NjhlNy4uZjc1MmIzMjZkMzk5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc2htZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc2htZW0uYwpAQCAtNDU5LDcgKzQ1OSw2IEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
c2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU2NCBzaXplKQogewogCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBp
bmc7Ci0JdW5zaWduZWQgaW50IGNhY2hlX2xldmVsOwogCWdmcF90IG1hc2s7CiAJaW50IHJldDsK
IApAQCAtNDk4LDI0ICs0OTcsMTMgQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUpCiAJb2JqLT53cml0ZV9kb21haW4g
PSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9N
QUlOX0NQVTsKIAotCWlmIChIQVNfTExDKGk5MTUpKQotCQkvKiBPbiBzb21lIGRldmljZXMsIHdl
IGNhbiBoYXZlIHRoZSBHUFUgdXNlIHRoZSBMTEMgKHRoZSBDUFUKLQkJICogY2FjaGUpIGZvciBh
Ym91dCBhIDEwJSBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudAotCQkgKiBjb21wYXJlZCB0byB1bmNh
Y2hlZC4gIEdyYXBoaWNzIHJlcXVlc3RzIG90aGVyIHRoYW4KLQkJICogZGlzcGxheSBzY2Fub3V0
IGFyZSBjb2hlcmVudCB3aXRoIHRoZSBDUFUgaW4KLQkJICogYWNjZXNzaW5nIHRoaXMgY2FjaGUu
ICBUaGlzIG1lYW5zIGluIHRoaXMgbW9kZSB3ZQotCQkgKiBkb24ndCBuZWVkIHRvIGNsZmx1c2gg
b24gdGhlIENQVSBzaWRlLCBhbmQgb24gdGhlCi0JCSAqIEdQVSBzaWRlIHdlIG9ubHkgbmVlZCB0
byBmbHVzaCBpbnRlcm5hbCBjYWNoZXMgdG8KLQkJICogZ2V0IGRhdGEgdmlzaWJsZSB0byB0aGUg
Q1BVLgotCQkgKgotCQkgKiBIb3dldmVyLCB3ZSBtYWludGFpbiB0aGUgZGlzcGxheSBwbGFuZXMg
YXMgVUMsIGFuZCBzbwotCQkgKiBuZWVkIHRvIHJlYmluZCB3aGVuIGZpcnN0IHVzZWQgYXMgc3Vj
aC4KLQkJICovCi0JCWNhY2hlX2xldmVsID0gSTkxNV9DQUNIRV9MTEM7Ci0JZWxzZQotCQljYWNo
ZV9sZXZlbCA9IEk5MTVfQ0FDSEVfTk9ORTsKLQotCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVf
Y29oZXJlbmN5KG9iaiwgY2FjaGVfbGV2ZWwpOworCS8qCisJICogTm90ZSB0aGF0IHVzZXJzcGFj
ZSBoYXMgY29udHJvbCBvdmVyIGNhY2hlLWJ5cGFzcworCSAqIHZpYSBpdHMgY29tbWFuZCBzdHJl
YW0sIHNvIGV2ZW4gb24gTExDIGFyY2hpdGVjdHVyZXMKKwkgKiB3ZSBoYXZlIHRvIGZsdXNoIG91
dCB0aGUgQ1BVIGNhY2hlIHRvIG1lbW9yeSB0bworCSAqIGNsZWFyIHByZXZpb3VzIGNvbnRlbnRz
LgorCSAqLworCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgSTkxNV9D
QUNIRV9OT05FKTsKIAogCXRyYWNlX2k5MTVfZ2VtX29iamVjdF9jcmVhdGUob2JqKTsKIAotLSAK
Mi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
