Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08BDBBEB6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 01:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E116E9AA;
	Mon, 23 Sep 2019 23:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F3F6E9AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 23:02:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18592633-1500050 
 for multiple; Tue, 24 Sep 2019 00:02:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 00:02:09 +0100
Message-Id: <20190923230209.16480-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923230209.16480-1-chris@chris-wilson.co.uk>
References: <20190923230209.16480-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Swap engines for rps (gpu
 reclocking)
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

SWYgd2UgZGlzYWJsZSBycHMsIGl0IGFwcGVhcnMgdGhlIFRpZ2VybGFrZSBpcyBzdGFibGUgZW5v
dWdoIHRvIHJ1bgptdWx0aXBsZSBlbmdpbmVzIHNpbXVsdGFuZW91c2x5IGluIENJLiBBcyBkaXNh
YmxpbmcgcnBzIHNob3VsZCBvbmx5CmNhdXNlIHRoZSBleGVjdXRpb24gYmVpbmcgc2xvdywgd2hl
cmVhcyBtYW55IGZlYXR1cmVzIGRlcGVuZCBvbiB0aGUKZGlmZmVyZW50IGVuZ2luZXMsIHdlIHdv
dWxkIHByZWZlciB0byBoYXZlIHRoZSBlbmdpbmVzIGVuYWJsZWQgd2hpbGUgdGhlCmhhbmdzIGFy
ZSBiZWluZyBkZWJ1Z2dlZC4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTE3MTQKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMKaW5kZXggYzJmYWE2Nzk2NThjLi43OTZhMzFlZTYzZWEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYwpAQCAtNzk4LDcgKzc5OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJLmRpc3BsYXku
aGFzX21vZHVsYXJfZmlhID0gMSwKIAkuZW5naW5lX21hc2sgPQogCQlCSVQoUkNTMCkgfCBCSVQo
QkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAotCS5lbmdpbmVfbWFz
ayA9IEJJVChSQ1MwKSwgLyogWFhYIHJlZHVjZWQgZm9yIGRlYnVnZ2luZyAqLworCS5oYXNfcnBz
ID0gZmFsc2UsIC8qIFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICovCiB9OwogCiAjdW5kZWYg
R0VOCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
