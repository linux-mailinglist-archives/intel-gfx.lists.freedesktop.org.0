Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0D947F51
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 12:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFF0890EA;
	Mon, 17 Jun 2019 10:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A371890EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 10:09:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16925193-1500050 
 for multiple; Mon, 17 Jun 2019 11:09:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 11:09:17 +0100
Message-Id: <20190617100917.13110-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Reduce verbosity on log overflows
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

SWYgdGhlIHVzZXIgaXMgY2xlYXJpbmcgdGhlIGxvZyBidWZmZXIgdG9vIHNsb3dseSwgd2Ugb3Zl
cmZsb3cuIEFzIHRoaXMKaXMgYW4gZXhwZWN0ZWQgY29uZGl0aW9uLCBhbmQgdGhlIGRyaXZlciB0
cmllcyB0byBoYW5kbGUgaXQsIHJlZHVjZSB0aGUKZXJyb3IgbWVzc2FnZSBkb3duIHRvIGEgbm90
aWNlLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDgxNwpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfbG9nLmMKaW5kZXggYmYxNDQ2NjI5NzAzLi5lM2I4M2VjYjkwYjUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19sb2cuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9ndWNfbG9nLmMKQEAgLTIwOCw3ICsyMDgsOSBAQCBzdGF0aWMgYm9vbCBndWNf
Y2hlY2tfbG9nX2J1Zl9vdmVyZmxvdyhzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nLAogCQkJLyog
YnVmZmVyX2Z1bGxfY250IGlzIGEgNCBiaXQgY291bnRlciAqLwogCQkJbG9nLT5zdGF0c1t0eXBl
XS5zYW1wbGVkX292ZXJmbG93ICs9IDE2OwogCQl9Ci0JCURSTV9FUlJPUl9SQVRFTElNSVRFRCgi
R3VDIGxvZyBidWZmZXIgb3ZlcmZsb3dcbiIpOworCisJCWRldl9ub3RpY2VfcmF0ZWxpbWl0ZWQo
Z3VjX3RvX2k5MTUobG9nX3RvX2d1Yyhsb2cpKS0+ZHJtLmRldiwKKwkJCQkgICAgICAgIkd1QyBs
b2cgYnVmZmVyIG92ZXJmbG93XG4iKTsKIAl9CiAKIAlyZXR1cm4gb3ZlcmZsb3c7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
