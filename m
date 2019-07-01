Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392C25B891
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 12:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6504689C9B;
	Mon,  1 Jul 2019 10:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDA789C9B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 10:05:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17082331-1500050 
 for multiple; Mon, 01 Jul 2019 11:05:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:04:53 +0100
Message-Id: <20190701100502.15639-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190701100502.15639-1-chris@chris-wilson.co.uk>
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Mark up vma->active as safe for
 use inside shrinkers
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

U2luY2UgYSBzaHJpbmtlciBtYXkgYmUgZm9yY2VkIHRvIHdhaXQgb24gR1BVIGFjdGl2aXR5LApp
OTE1X2FjdGl2ZV93YWl0KCZ2bWEtPmFjdGl2ZSkgbXVzdCBiZSBzYWZlIGZvciB1c2UgaW5zaWRl
IGEgc2hyaW5rZXIsCmFuZCBzbyBsZXQncyBtYXJrIHVwIHRoZSBsb2NrIGFzIGJlaW5nIGFjcXVp
cmVkIGJ5IHRoZSBzaHJpbmtlciB0byBhdm9pZAphbnkgbmFzdHkgc3VycHJpc2VzIGNyZWVwaW5n
IGluLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8IDggKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRl
eCBjMjBhMzAyMmNkODAuLmVlNzNiYWYyOTQxNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBA
IC0yMiw2ICsyMiw3IEBACiAgKgogICovCiAKKyNpbmNsdWRlIDxsaW51eC9zY2hlZC9tbS5oPgog
I2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+CiAKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Zyb250
YnVmZmVyLmgiCkBAIC0xMjAsNiArMTIxLDEzIEBAIHZtYV9jcmVhdGUoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJCSBfX2k5MTVfdm1hX2FjdGl2ZSwgX19pOTE1X3ZtYV9yZXRp
cmUpOwogCUlOSVRfQUNUSVZFX1JFUVVFU1QoJnZtYS0+bGFzdF9mZW5jZSk7CiAKKwkvKiBEZWNs
YXJlIG91cnNlbHZlcyBzYWZlIGZvciB1c2UgaW5zaWRlIHNocmlua2VycyAqLworCWlmIChJU19F
TkFCTEVEKENPTkZJR19MT0NLREVQKSkgeworCQlmc19yZWNsYWltX2FjcXVpcmUoR0ZQX0tFUk5F
TCk7CisJCW1pZ2h0X2xvY2soJnZtYS0+YWN0aXZlLm11dGV4KTsKKwkJZnNfcmVjbGFpbV9yZWxl
YXNlKEdGUF9LRVJORUwpOworCX0KKwogCUlOSVRfTElTVF9IRUFEKCZ2bWEtPmNsb3NlZF9saW5r
KTsKIAogCWlmICh2aWV3ICYmIHZpZXctPnR5cGUgIT0gSTkxNV9HR1RUX1ZJRVdfTk9STUFMKSB7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
