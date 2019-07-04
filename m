Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDA35F4A5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 10:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812376E303;
	Thu,  4 Jul 2019 08:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604F06E303
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 08:34:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17124349-1500050 
 for multiple; Thu, 04 Jul 2019 09:17:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 09:17:33 +0100
Message-Id: <20190704081733.15816-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703155225.9501-1-chris@chris-wilson.co.uk>
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Check caller held wakerefs in
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
VU5USU1FX1BNCgpSZXBvcnRlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuYwppbmRleCA2OGQ1NGUxMjZkNzkuLjE3NzFlNjlkYmYwMyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdW5jb3JlLmMKQEAgLTczOCw2ICs3MzgsMTIgQEAgdm9pZCBhc3NlcnRfZm9y
Y2V3YWtlc19pbmFjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiB2b2lkIGFzc2Vy
dF9mb3JjZXdha2VzX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJCQkgICAg
ICBlbnVtIGZvcmNld2FrZV9kb21haW5zIGZ3X2RvbWFpbnMpCiB7CisJc3RydWN0IGludGVsX3Vu
Y29yZV9mb3JjZXdha2VfZG9tYWluICpkb21haW47CisJdW5zaWduZWQgaW50IHRtcDsKKworCWlm
ICghSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTSkpCisJCXJldHVy
bjsKKwogCWlmICghdW5jb3JlLT5mdW5jcy5mb3JjZV93YWtlX2dldCkKIAkJcmV0dXJuOwogCkBA
IC03NDcsNiArNzUzLDI0IEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSwKIAlXQVJOKGZ3X2RvbWFpbnMgJiB+dW5jb3JlLT5md19kb21h
aW5zX2FjdGl2ZSwKIAkgICAgICJFeHBlY3RlZCAlMDh4IGZ3X2RvbWFpbnMgdG8gYmUgYWN0aXZl
LCBidXQgJTA4eCBhcmUgb2ZmXG4iLAogCSAgICAgZndfZG9tYWlucywgZndfZG9tYWlucyAmIH51
bmNvcmUtPmZ3X2RvbWFpbnNfYWN0aXZlKTsKKworCS8qCisJICogQ2hlY2sgdGhhdCB0aGUgY2Fs
bGVyIGhhcyBhbiBleHBsaWNpdCB3YWtlcmVmIGFuZCB3ZSBkb24ndCBtaXN0YWtlCisJICogaXQg
Zm9yIHRoZSBhdXRvIHdha2VyZWYuCisJICovCisJbG9jYWxfaXJxX2Rpc2FibGUoKTsKKwlmb3Jf
ZWFjaF9md19kb21haW5fbWFza2VkKGRvbWFpbiwgZndfZG9tYWlucywgdW5jb3JlLCB0bXApIHsK
KwkJdW5zaWduZWQgaW50IGV4cGVjdCA9IDE7CisKKwkJaWYgKGhydGltZXJfYWN0aXZlKCZkb21h
aW4tPnRpbWVyKSkKKwkJCWV4cGVjdCsrOworCisJCWlmIChXQVJOKGRvbWFpbi0+d2FrZV9jb3Vu
dCA8IGV4cGVjdCwKKwkJCSAiRXhwZWN0ZWQgZG9tYWluICVkIHRvIGJlIGhlbGQgYXdha2UgYnkg
Y2FsbGVyXG4iLAorCQkJIGRvbWFpbi0+aWQpKQorCQkJYnJlYWs7CisJfQorCWxvY2FsX2lycV9l
bmFibGUoKTsKIH0KIAogLyogV2UgZ2l2ZSBmYXN0IHBhdGhzIGZvciB0aGUgcmVhbGx5IGNvb2wg
cmVnaXN0ZXJzICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
