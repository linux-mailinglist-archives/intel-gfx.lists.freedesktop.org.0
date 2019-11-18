Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE355100F32
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 00:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180CE6E848;
	Mon, 18 Nov 2019 23:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063996E072
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 23:03:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19248364-1500050 
 for multiple; Mon, 18 Nov 2019 23:02:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 23:02:43 +0000
Message-Id: <20191118230254.2615942-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/19] drm/i915/gem: Merge GGTT vma flush into a
 single loop
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

V2Ugb25seSBuZWVkIHRoZSBvbmUgbG9vcCB0byBmaW5kIHRoZSBkaXJ0eSB2bWEgZmx1c2ggdGhl
bSwgYW5kIHRoZWlyCmNoaXBzZXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
IHwgMTIgKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpp
bmRleCBkYjEwM2QzYzg3NjAuLjYzYmQzZmY4NGY1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtMjc5LDE4ICsyNzksMTIgQEAgaTkxNV9nZW1fb2Jq
ZWN0X2ZsdXNoX3dyaXRlX2RvbWFpbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAog
CiAJc3dpdGNoIChvYmotPndyaXRlX2RvbWFpbikgewogCWNhc2UgSTkxNV9HRU1fRE9NQUlOX0dU
VDoKLQkJZm9yX2VhY2hfZ2d0dF92bWEodm1hLCBvYmopCi0JCQlpbnRlbF9ndF9mbHVzaF9nZ3R0
X3dyaXRlcyh2bWEtPnZtLT5ndCk7Ci0KLQkJaW50ZWxfZnJvbnRidWZmZXJfZmx1c2gob2JqLT5m
cm9udGJ1ZmZlciwgT1JJR0lOX0NQVSk7Ci0KIAkJZm9yX2VhY2hfZ2d0dF92bWEodm1hLCBvYmop
IHsKLQkJCWlmICh2bWEtPmlvbWFwKQotCQkJCWNvbnRpbnVlOwotCi0JCQlpOTE1X3ZtYV91bnNl
dF9nZ3R0X3dyaXRlKHZtYSk7CisJCQlpZiAoaTkxNV92bWFfdW5zZXRfZ2d0dF93cml0ZSh2bWEp
KQorCQkJCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHZtYS0+dm0tPmd0KTsKIAkJfQogCisJ
CWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKG9iai0+ZnJvbnRidWZmZXIsIE9SSUdJTl9DUFUpOwog
CQlicmVhazsKIAogCWNhc2UgSTkxNV9HRU1fRE9NQUlOX1dDOgotLSAKMi4yNC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
