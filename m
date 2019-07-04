Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0930A5F67E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45DE06E2F5;
	Thu,  4 Jul 2019 10:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B03E6E2F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:21:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17126353-1500050 
 for multiple; Thu, 04 Jul 2019 11:20:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 11:20:48 +0100
Message-Id: <20190704102048.6436-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703155225.9501-1-chris@chris-wilson.co.uk>
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915: Check caller held wakerefs in
 assert_forcewakes_active
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

VGhlIGludGVudCBvZiB0aGUgYXNzZXJ0IGlzIHRvIGRvY3VtZW50IHRoYXQgdGhlIGNhbGxlciB0
b29rIHRoZQphcHByb3ByaWF0ZSB3YWtlcmVmcyBmb3IgdGhlIGZ1bmN0aW9uLiBIb3dldmVyLCBh
cyBUdnJ0a28gcG9pbnRlZCBvdXQsCndlIHNpbXBseSBjaGVjayB3aGV0aGVyIHRoZSBmd19kb21h
aW5zIGFyZSBhY3RpdmUgYW5kIG1heSBiZSBjb25mdXNlZCBieQp0aGUgYXV0byB3YWtlcmVmIHdo
aWNoIG1heSBiZSBkcm9wcGVkIGJldHdlZW4gdGhlIGNoZWNrIGFuZCB1c2UuIExldCdzCmJlIG1v
cmUgY2FyZWZ1bCBpbiB0aGUgYXNzZXJ0IGFuZCBjaGVjayB0aGF0IGVhY2ggZndfZG9tYWluIGhh
cyBhbgpleHBsaWNpdCBjYWxsZXIgd2FrZXJlZiBhYm92ZSBhbmQgYmV5b25kIHRoZSBhdXRvbWF0
aWMgd2FrZXJlZi4KCnYyOiBGaXggc3BlbGxpbmcgZm9yIGNvbmZpZyBEUk1fSTkxNV9ERUJVR19S
VU5USU1FX1BNCnYzOiBUaW1lciBtYXkgc3RpbGwgYmUgYWN0aXZlIGFmdGVyIHdlIGRyb3AgdGhl
IGF1dG93YWtlcmVmLCB3ZSBuZWVkIHRvCmNoZWNrIGRvbWFpbi0+YWN0aXZlIGluc3RlYWQuCnY0
OiBUaGUgdGltZXIgY2hlY2tzIGRvbWFpbi0+YWN0aXZlLCBidXQgd2Ugc3RpbGwgbmVlZCB0byBj
aGVjayB0aGUKdGltZXIuIChUaGlzIGlzIHN0YXJ0aW5nIHRvIGxvb2sgd2VpcmQuLi4pCgpSZXBv
cnRlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwppbmRl
eCA2OGQ1NGUxMjZkNzkuLjIwNDJjOTRjOWNjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdW5jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5j
b3JlLmMKQEAgLTczOCw2ICs3MzgsMTIgQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19pbmFjdGl2
ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiB2b2lkIGFzc2VydF9mb3JjZXdha2VzX2Fj
dGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJCQkgICAgICBlbnVtIGZvcmNld2Fr
ZV9kb21haW5zIGZ3X2RvbWFpbnMpCiB7CisJc3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdha2Vf
ZG9tYWluICpkb21haW47CisJdW5zaWduZWQgaW50IHRtcDsKKworCWlmICghSVNfRU5BQkxFRChD
T05GSUdfRFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTSkpCisJCXJldHVybjsKKwogCWlmICghdW5j
b3JlLT5mdW5jcy5mb3JjZV93YWtlX2dldCkKIAkJcmV0dXJuOwogCkBAIC03NDcsNiArNzUzLDI0
IEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSwKIAlXQVJOKGZ3X2RvbWFpbnMgJiB+dW5jb3JlLT5md19kb21haW5zX2FjdGl2ZSwKIAkg
ICAgICJFeHBlY3RlZCAlMDh4IGZ3X2RvbWFpbnMgdG8gYmUgYWN0aXZlLCBidXQgJTA4eCBhcmUg
b2ZmXG4iLAogCSAgICAgZndfZG9tYWlucywgZndfZG9tYWlucyAmIH51bmNvcmUtPmZ3X2RvbWFp
bnNfYWN0aXZlKTsKKworCS8qCisJICogQ2hlY2sgdGhhdCB0aGUgY2FsbGVyIGhhcyBhbiBleHBs
aWNpdCB3YWtlcmVmIGFuZCB3ZSBkb24ndCBtaXN0YWtlCisJICogaXQgZm9yIHRoZSBhdXRvIHdh
a2VyZWYuCisJICovCisJbG9jYWxfaXJxX2Rpc2FibGUoKTsKKwlmb3JfZWFjaF9md19kb21haW5f
bWFza2VkKGRvbWFpbiwgZndfZG9tYWlucywgdW5jb3JlLCB0bXApIHsKKwkJdW5zaWduZWQgaW50
IGV4cGVjdCA9IDE7CisKKwkJaWYgKGhydGltZXJfYWN0aXZlKCZkb21haW4tPnRpbWVyKSAmJiBS
RUFEX09OQ0UoZG9tYWluLT5hY3RpdmUpKQorCQkJZXhwZWN0Kys7IC8qIHBlbmRpbmcgYXV0b21h
dGljIHJlbGVhc2UgKi8KKworCQlpZiAoV0FSTihkb21haW4tPndha2VfY291bnQgPCBleHBlY3Qs
CisJCQkgIkV4cGVjdGVkIGRvbWFpbiAlZCB0byBiZSBoZWxkIGF3YWtlIGJ5IGNhbGxlciwgY291
bnQ9JWRcbiIsCisJCQkgZG9tYWluLT5pZCwgZG9tYWluLT53YWtlX2NvdW50KSkKKwkJCWJyZWFr
OworCX0KKwlsb2NhbF9pcnFfZW5hYmxlKCk7CiB9CiAKIC8qIFdlIGdpdmUgZmFzdCBwYXRocyBm
b3IgdGhlIHJlYWxseSBjb29sIHJlZ2lzdGVycyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
