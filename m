Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D03A5F5C6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 11:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1ED6E2A2;
	Thu,  4 Jul 2019 09:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEED16E326
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 09:37:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17125691-1500050 
 for multiple; Thu, 04 Jul 2019 10:37:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 10:37:40 +0100
Message-Id: <20190704093740.5702-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703155225.9501-1-chris@chris-wilson.co.uk>
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Check caller held wakerefs in
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
IGF1dG93YWtlcmVmLCB3ZSBuZWVkIHRvCmNoZWNrIGRvbWFpbi0+YWN0aXZlIGluc3RlYWQuCgpS
ZXBvcnRlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwpp
bmRleCA2OGQ1NGUxMjZkNzkuLjZiNDRkYzRjYmYyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
dW5jb3JlLmMKQEAgLTczOCw2ICs3MzgsMTIgQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19pbmFj
dGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiB2b2lkIGFzc2VydF9mb3JjZXdha2Vz
X2FjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJCQkgICAgICBlbnVtIGZvcmNl
d2FrZV9kb21haW5zIGZ3X2RvbWFpbnMpCiB7CisJc3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdh
a2VfZG9tYWluICpkb21haW47CisJdW5zaWduZWQgaW50IHRtcDsKKworCWlmICghSVNfRU5BQkxF
RChDT05GSUdfRFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTSkpCisJCXJldHVybjsKKwogCWlmICgh
dW5jb3JlLT5mdW5jcy5mb3JjZV93YWtlX2dldCkKIAkJcmV0dXJuOwogCkBAIC03NDcsNiArNzUz
LDI0IEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSwKIAlXQVJOKGZ3X2RvbWFpbnMgJiB+dW5jb3JlLT5md19kb21haW5zX2FjdGl2ZSwK
IAkgICAgICJFeHBlY3RlZCAlMDh4IGZ3X2RvbWFpbnMgdG8gYmUgYWN0aXZlLCBidXQgJTA4eCBh
cmUgb2ZmXG4iLAogCSAgICAgZndfZG9tYWlucywgZndfZG9tYWlucyAmIH51bmNvcmUtPmZ3X2Rv
bWFpbnNfYWN0aXZlKTsKKworCS8qCisJICogQ2hlY2sgdGhhdCB0aGUgY2FsbGVyIGhhcyBhbiBl
eHBsaWNpdCB3YWtlcmVmIGFuZCB3ZSBkb24ndCBtaXN0YWtlCisJICogaXQgZm9yIHRoZSBhdXRv
IHdha2VyZWYuCisJICovCisJbG9jYWxfaXJxX2Rpc2FibGUoKTsKKwlmb3JfZWFjaF9md19kb21h
aW5fbWFza2VkKGRvbWFpbiwgZndfZG9tYWlucywgdW5jb3JlLCB0bXApIHsKKwkJdW5zaWduZWQg
aW50IGV4cGVjdCA9IDE7CisKKwkJaWYgKFJFQURfT05DRShkb21haW4tPmFjdGl2ZSkpCisJCQll
eHBlY3QrKzsgLyogcGVuZGluZyBhdXRvbWF0aWMgcmVsZWFzZSAqLworCisJCWlmIChXQVJOKGRv
bWFpbi0+d2FrZV9jb3VudCA8IGV4cGVjdCwKKwkJCSAiRXhwZWN0ZWQgZG9tYWluICVkIHRvIGJl
IGhlbGQgYXdha2UgYnkgY2FsbGVyLCBjb3VudD0lZFxuIiwKKwkJCSBkb21haW4tPmlkLCBkb21h
aW4tPndha2VfY291bnQpKQorCQkJYnJlYWs7CisJfQorCWxvY2FsX2lycV9lbmFibGUoKTsKIH0K
IAogLyogV2UgZ2l2ZSBmYXN0IHBhdGhzIGZvciB0aGUgcmVhbGx5IGNvb2wgcmVnaXN0ZXJzICov
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
