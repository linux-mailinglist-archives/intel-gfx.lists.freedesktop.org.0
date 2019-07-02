Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16515D094
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 15:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA9489D40;
	Tue,  2 Jul 2019 13:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4D289D40
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 13:25:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17100274-1500050 
 for multiple; Tue, 02 Jul 2019 14:25:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 14:25:05 +0100
Message-Id: <20190702132506.8309-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190702132506.8309-1-chris@chris-wilson.co.uk>
References: <20190702132506.8309-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Mark up vma->active as safe for
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
Cc: matthew.auld@intel.com
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
