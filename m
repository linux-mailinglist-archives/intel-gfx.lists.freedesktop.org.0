Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0C0D813F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6875C6E3DF;
	Tue, 15 Oct 2019 20:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA2889A61
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:44:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849364-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:49 +0100
Message-Id: <20191015204451.19372-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/12] drm/i915/tgl: Wa_1607138336
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpBdm9p
ZCBwb3NzaWJsZSBkZWFkbG9jayBvbiBjb250ZXh0IHN3aXRjaC4KClNpZ25lZC1vZmYtYnk6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpMaW5rOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTEwMTUxNTQ0NDkuMTAzMzgtOS1t
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA0
ZjliZTJlZWUxMzIuLjQ4MzcyNTEzNzI5MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMjgxLDYgKzEyODEsMTEgQEAgcmNzX2VuZ2luZV93YV9p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsKQogCQl3YV9tYXNrZWRfZW4od2FsLAogCQkJICAgICBHRU45X0NTX0RFQlVHX01PREUxLAog
CQkJICAgICBGRl9ET1BfQ0xPQ0tfR0FURV9ESVNBQkxFKTsKKworCQkvKiBXYV8xNjA3MTM4MzM2
OnRnbCAqLworCQl3YV93cml0ZV9vcih3YWwsCisJCQkgICAgR0VOOV9DVFhfUFJFRU1QVF9SRUcs
CisJCQkgICAgR0VOMTJfRElTQUJMRV9QT1NIX0JVU1lfRkZfRE9QX0NHKTsKIAl9CiAKIAlpZiAo
SVNfR0VOKGk5MTUsIDExKSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNDQ5NjQ4YTI4
YTY3Li5iYWY1OTM5ZGYxZWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzY3OCw2ICs3
Njc4LDggQEAgZW51bSB7CiAjZGVmaW5lIEdFTjlfQ1NfREVCVUdfTU9ERTEJCV9NTUlPKDB4MjBl
YykKICNkZWZpbmUgICBGRl9ET1BfQ0xPQ0tfR0FURV9ESVNBQkxFCVJFR19CSVQoMSkKICNkZWZp
bmUgR0VOOV9DVFhfUFJFRU1QVF9SRUcJCV9NTUlPKDB4MjI0OCkKKyNkZWZpbmUgICBHRU4xMl9E
SVNBQkxFX1BPU0hfQlVTWV9GRl9ET1BfQ0cgUkVHX0JJVCgxMSkKKwogI2RlZmluZSBHRU44X0NT
X0NISUNLRU4xCQlfTU1JTygweDI1ODApCiAjZGVmaW5lIEdFTjlfUFJFRU1QVF8zRF9PQkpFQ1Rf
TEVWRUwJCSgxIDw8IDApCiAjZGVmaW5lIEdFTjlfUFJFRU1QVF9HUEdQVV9MRVZFTChoaSwgbG8p
CSgoKGhpKSA8PCAyKSB8ICgobG8pIDw8IDEpKQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
