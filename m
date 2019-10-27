Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06DFE64BB
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 18:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372B16E2A0;
	Sun, 27 Oct 2019 17:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E49616E2A0
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 17:55:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18985715-1500050 
 for multiple; Sun, 27 Oct 2019 17:55:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 17:55:05 +0000
Message-Id: <20191027175505.25470-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Tidy up rps irq handler to use
 intel_gt
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

U2luY2UgdGhlIHJwcyBpcyB0aWVkIHRvIGl0cyBpbnRlbF9ndCwgdXNlIHRoYXQgYmFja3BvaW50
ZXIgdG8gZmluZCB0aGUKcmlnaHQgZW5naW5lIHJhdGhlciB0aGFuIGRlbHZpbmcgaW50byBpOTE1
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgfCA4ICsrKy0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcnBzLmMKaW5kZXggMzBmNTZjNzg2NDY4Li41ZmQyZThlNTIyMGQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCkBAIC0xNTUzLDExICsxNTUzLDkgQEAgdm9p
ZCBnZW4xMV9ycHNfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX3JwcyAqcnBzLCB1MzIgcG1faWly
KQogCiB2b2lkIGdlbjZfcnBzX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9ycHMgKnJwcywgdTMy
IHBtX2lpcikKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHJwc190b19pOTE1
KHJwcyk7CisJc3RydWN0IGludGVsX2d0ICpndCA9IHJwc190b19ndChycHMpOwogCiAJaWYgKHBt
X2lpciAmIHJwcy0+cG1fZXZlbnRzKSB7Ci0JCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBycHNfdG9f
Z3QocnBzKTsKLQogCQlzcGluX2xvY2soJmd0LT5pcnFfbG9jayk7CiAJCWdlbjZfZ3RfcG1fbWFz
a19pcnEoZ3QsIHBtX2lpciAmIHJwcy0+cG1fZXZlbnRzKTsKIAkJcnBzLT5wbV9paXIgfD0gcG1f
aWlyICYgcnBzLT5wbV9ldmVudHM7CkBAIC0xNTY1LDExICsxNTYzLDExIEBAIHZvaWQgZ2VuNl9y
cHNfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX3JwcyAqcnBzLCB1MzIgcG1faWlyKQogCQlzcGlu
X3VubG9jaygmZ3QtPmlycV9sb2NrKTsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGk5MTUpID49IDgp
CisJaWYgKElOVEVMX0dFTihndC0+aTkxNSkgPj0gOCkKIAkJcmV0dXJuOwogCiAJaWYgKHBtX2lp
ciAmIFBNX1ZFQk9YX1VTRVJfSU5URVJSVVBUKQotCQlpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNf
aXJxKGk5MTUtPmVuZ2luZVtWRUNTMF0pOworCQlpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJx
KGd0LT5lbmdpbmVbVkVDUzBdKTsKIAogCWlmIChwbV9paXIgJiBQTV9WRUJPWF9DU19FUlJPUl9J
TlRFUlJVUFQpCiAJCURSTV9ERUJVRygiQ29tbWFuZCBwYXJzZXIgZXJyb3IsIHBtX2lpciAweCUw
OHhcbiIsIHBtX2lpcik7Ci0tIAoyLjI0LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
