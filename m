Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F129787E1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 11:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC7189CF5;
	Mon, 29 Jul 2019 08:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D8889CE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 08:59:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17694463-1500050 
 for multiple; Mon, 29 Jul 2019 09:59:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 09:59:44 +0100
Message-Id: <20190729085944.2179-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <bd4676e8-f724-91a7-ad3b-393e5892b159@linux.intel.com>
References: <bd4676e8-f724-91a7-ad3b-393e5892b159@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: Careful not to flush
 hang_fini on error setups
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

U21hdGNoIHNwb3R0ZWQgdGhhdCB3ZSB0ZXN0IGF0IHRoZSBzdGFydCBvZiBoYW5nX2ZpbmkgZm9y
IGEgdmFsaWQgKGgtPmd0CmlzIG9ubHkgc2V0IGFmdGVyIGEgcmVxdWVzdCBpcyBjcmVhdGVkKSBi
dXQgdGhlbiB1c2VkIGl0IHJlZ2FyZGxlc3MKbGF0ZXIgb24uCgp2MjogQWx0ZXJuYXRpdmVseSwg
d2UgZG8gbm90IG5lZWQgdG8gY2hlY2sgYXMgd2Ugbm93IGFsd2F5cyBwcmltZSBoLT5ndAppbiBo
YW5nX2luaXQoKQoKRml4ZXM6IGNiODIzZWQ5OTE1YiAoImRybS9pOTE1L2d0OiBVc2UgaW50ZWxf
Z3QgYXMgdGhlIHByaW1hcnkgb2JqZWN0IGZvciBoYW5kbGluZyByZXNldHMiKQpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jIHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9oYW5nY2hlY2suYwppbmRleCBlMmZhMzhhMWZmMGYuLjQ0ODRiNDQ0N2RiMSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKQEAgLTI3
Miw5ICsyNzIsNyBAQCBzdGF0aWMgdTMyIGh3c19zZXFubyhjb25zdCBzdHJ1Y3QgaGFuZyAqaCwg
Y29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiBzdGF0aWMgdm9pZCBoYW5nX2Zpbmkoc3Ry
dWN0IGhhbmcgKmgpCiB7CiAJKmgtPmJhdGNoID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKLQotCWlm
IChoLT5ndCkKLQkJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChoLT5ndCk7CisJaW50ZWxfZ3RfY2hp
cHNldF9mbHVzaChoLT5ndCk7CiAKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKGgtPm9iaik7
CiAJaTkxNV9nZW1fb2JqZWN0X3B1dChoLT5vYmopOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
