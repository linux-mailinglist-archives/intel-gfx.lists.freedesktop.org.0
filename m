Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 101091637D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0586E7B8;
	Tue,  7 May 2019 12:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88EDC6E7B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 12:11:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16476425-1500050 
 for multiple; Tue, 07 May 2019 13:11:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 13:11:08 +0100
Message-Id: <20190507121108.18377-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190507121108.18377-1-chris@chris-wilson.co.uk>
References: <20190507121108.18377-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Stop spinning for DROP_IDLE
 (debugfs/i915_drop_caches)
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

SWYgdGhlIHVzZXIgaXMgcmFjaW5nIGEgY2FsbCB0byBkZWJ1Z2ZzL2k5MTVfZHJvcF9jYWNoZXMg
d2l0aCBvbmdvaW5nCnN1Ym1pc3Npb24gZnJvbSBhbm90aGVyIHRocmVhZC9wcm9jZXNzLCB3ZSBt
YXkgbmV2ZXIgZW5kIHVwIGlkbGluZyB0aGUKR1BVIGFuZCBiZSB1bmludGVycnVwdGlibHkgc3Bp
bm5pbmcgaW4gZGVidWdmcy9pOTE1X2Ryb3BfY2FjaGVzIHRyeWluZwp0byBjYXRjaCBhbiBpZGxl
IG1vbWVudC4KCkp1c3QgZmx1c2ggdGhlIHdvcmsgb25jZSwgdGhhdCBzaG91bGQgYmUgZW5vdWdo
IHRvIHBhcmsgdGhlIHN5c3RlbSB1bmRlcgpjb3JyZWN0IGNvbmRpdGlvbnMuIE91dHNpZGUgb2Yg
dGhvc2Ugd2UgZWl0aGVyIGhhdmUgYSBkcml2ZXIgYnVnIG9yIHRoZQp1c2VyIGlzIHJhY2luZyB0
aGVtc2VsdmVzLiBTYWRseSwgYmVjYXVzZSB0aGUgdXNlciBtYXkgYmUgcHJvdm9raW5nIHRoZQp1
bndhbnRlZCBzaXR1YXRpb24gd2UgY2FuJ3QgcHV0IGEgd2FybiBoZXJlIHRvIGF0dHJhY3QgYXR0
ZW50aW9uIHRvIGEKcHJvYmFibGUgYnVnLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jIHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBmYzZlNjBkODI0Nzcu
LmI2MDk0MDYzYmU5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTM5NDcs
OSArMzk0Nyw3IEBAIGk5MTVfZHJvcF9jYWNoZXNfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCiAJ
ZnNfcmVjbGFpbV9yZWxlYXNlKEdGUF9LRVJORUwpOwogCiAJaWYgKHZhbCAmIERST1BfSURMRSkg
ewotCQlkbyB7Ci0JCQlmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yayk7
Ci0JCX0gd2hpbGUgKFJFQURfT05DRShpOTE1LT5ndC5hd2FrZSkpOworCQlmbHVzaF9kZWxheWVk
X3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yayk7CiAJCWZsdXNoX3dvcmsoJmk5MTUtPmdlbS5p
ZGxlX3dvcmspOwogCX0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
