Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A3BA4AF7
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Sep 2019 19:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECAF89B0D;
	Sun,  1 Sep 2019 17:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C561C89B0D
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Sep 2019 17:45:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18337012-1500050 
 for multiple; Sun, 01 Sep 2019 18:45:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Sep 2019 18:45:19 +0100
Message-Id: <20190901174519.8642-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Report aliasing ppgtt size as ggtt
 size
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

VGhlIGFsaWFzaW5nLXBwZ3R0IGlzIGNvbnN0cmFpbmVkIHRvIGJlIHRoZSBzYW1lIHNpemUgYXMg
dGhlIEdsb2JhbCBHVFQKc2luY2UgaXQgYWxpYXNlcyB0aGUgc2FtZSBhZGRyZXNzIHNwYWNlLiBT
aW1wbGlmeWluZyBndHQgc2l6ZSByZXBvcnRpbmcKaW4gdGhpcyBjYXNlLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCmluZGV4IGI4OTY5NjA1ZjRlOC4uZjFjMGU1ZDk1OGYzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTIyMzEsOCArMjIzMSw2IEBAIGlu
dCBpOTE1X2dlbV9jb250ZXh0X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiAJCWFyZ3MtPnNpemUgPSAwOwogCQlpZiAoY3R4LT52bSkKIAkJCWFyZ3Mt
PnZhbHVlID0gY3R4LT52bS0+dG90YWw7Ci0JCWVsc2UgaWYgKHRvX2k5MTUoZGV2KS0+Z2d0dC5h
bGlhcykKLQkJCWFyZ3MtPnZhbHVlID0gdG9faTkxNShkZXYpLT5nZ3R0LmFsaWFzLT52bS50b3Rh
bDsKIAkJZWxzZQogCQkJYXJncy0+dmFsdWUgPSB0b19pOTE1KGRldiktPmdndHQudm0udG90YWw7
CiAJCWJyZWFrOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
