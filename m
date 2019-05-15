Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E79A1F4F1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 15:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0F0892B7;
	Wed, 15 May 2019 13:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585B1892B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 13:01:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16564757-1500050 
 for multiple; Wed, 15 May 2019 14:00:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2019 14:00:48 +0100
Message-Id: <20190515130052.4475-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Mark semaphores as complete on
 unsubmit out if payload was started
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

QXZvaWQgY2hhcmdpbmcgdXMgZm9yIHRoZSBwcmVzdW1lZCBidXN5d2FpdCBpZiB0aGUgcmVxdWVz
dCB3YXMgcHJlZW1wdGVkCmFmdGVyIHN1Y2Nlc3NmdWxseSB1c2luZyBzZW1hcGhvcmVzIHRvIHJl
ZHVjZSBpbnRlci1lbmdpbmUgbGF0ZW5jeS4KCnYyOiBCdW1wIHRoZSBwcmlvcml0eSB0byByZWZs
ZWN0IHRoZSBsYWNrIG9mIHNlbWFwaG9yZXMgbm93IHJlcXVpcmVkLgoKUmVmZXJlbmNlczogY2E2
ZTU2ZjY1NGU3ICgiZHJtL2k5MTU6IERpc2FibGUgc2VtYXBob3JlIGJ1c3l3YWl0cyBvbiBzYXR1
cmF0ZWQgc3lzdGVtcyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDYgKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuYwppbmRleCBiZWQyMTMxNDhjYmIuLjExNjcwNzc0Y2QyNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMKQEAgLTUwOSw2ICs1MDksMTIgQEAgdm9pZCBfX2k5MTVfcmVxdWVzdF91
bnN1Ym1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogCS8qIFRyYW5zZmVyIGJhY2sg
ZnJvbSB0aGUgZ2xvYmFsIHBlci1lbmdpbmUgdGltZWxpbmUgdG8gcGVyLWNvbnRleHQgKi8KIAlt
b3ZlX3RvX3RpbWVsaW5lKHJlcXVlc3QsIHJlcXVlc3QtPnRpbWVsaW5lKTsKIAorCS8qIFdlJ3Zl
IGFscmVhZHkgc3B1biwgZG9uJ3QgY2hhcmdlIG9uIHJlc3VibWl0dGluZy4gKi8KKwlpZiAocmVx
dWVzdC0+c2NoZWQuc2VtYXBob3JlcyAmJiBpOTE1X3JlcXVlc3Rfc3RhcnRlZChyZXF1ZXN0KSkg
eworCQlyZXF1ZXN0LT5zY2hlZC5hdHRyLnByaW9yaXR5IHw9IEk5MTVfUFJJT1JJVFlfTk9TRU1B
UEhPUkU7CisJCXJlcXVlc3QtPnNjaGVkLnNlbWFwaG9yZXMgPSAwOworCX0KKwogCS8qCiAJICog
V2UgZG9uJ3QgbmVlZCB0byB3YWtlX3VwIGFueSB3YWl0ZXJzIG9uIHJlcXVlc3QtPmV4ZWN1dGUs
IHRoZXkKIAkgKiB3aWxsIGdldCB3b2tlbiBieSBhbnkgb3RoZXIgZXZlbnQgb3IgdXMgcmUtYWRk
aW5nIHRoaXMgcmVxdWVzdAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
