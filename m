Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E73AFDC8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744B96EAE6;
	Wed, 11 Sep 2019 13:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 644676EAE6;
 Wed, 11 Sep 2019 13:35:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18452004-1500050 
 for multiple; Wed, 11 Sep 2019 14:35:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 14:35:00 +0100
Message-Id: <20190911133500.31847-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_whisper: Disable preparser
 around self-modifications
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3VyICJ3aGlzcGVyIiBjb25zaXN0cyBvZiB3cml0aW5nIHRoZSBzZWNyZXQgdmFsdWUgZ2l2ZW4g
dG8gdXMgYnkgb3VyCnByZWRlY2Vzc29ycyBpbnRvIHRoZSBuZXh0IGJhdGNoLCBpLmUuIHdlIGFy
ZSBtb2RpZnlpbmcgb24gdGhlIEdQVSB0aGUKY2hhaW4gb2YgaW5mbGlnaHQgYmF0Y2hlcy4gQXMg
dGhlIHByZXBhcnNlciBvbiBnZW4xMiB3aWxsIHJlYWQgdGhlIGJhdGNoCmluc3RydWN0aW9ucyBh
aGVhZCBvZiB0aW1lLCB3ZSBuZWVkIHRvIGRpc2FibGUgaXQgYXJvdW5kIHRoZQpzZWxmLW1vZGlm
aWNhdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMgfCAxMSArKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Bl
ci5jCmluZGV4IGRlN2ExNGRhZC4uNDNiNzE2ZTdjIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dl
bV9leGVjX3doaXNwZXIuYworKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3doaXNwZXIuYwpAQCAt
MTY2LDYgKzE2NiwxMSBAQCBzdGF0aWMgdm9pZCBjdHhfc2V0X3JhbmRvbV9wcmlvcml0eShpbnQg
ZmQsIHVpbnQzMl90IGN0eCkKIAlnZW1fY29udGV4dF9zZXRfcHJpb3JpdHkoZmQsIGN0eCwgcHJp
byk7CiB9CiAKK3N0YXRpYyB1aW50MzJfdCBwcmVwYXJzZXJfZGlzYWJsZShib29sIHN0YXRlKQor
eworCXJldHVybiAweDUgPDwgMjMgfCAxIDw8IDggfCBzdGF0ZTsgLyogY3VzdG9tIE1JX0FSQl9D
SEVDSyAqLworfQorCiBzdGF0aWMgdm9pZCB3aGlzcGVyKGludCBmZCwgdW5zaWduZWQgZW5naW5l
LCB1bnNpZ25lZCBmbGFncykKIHsKIAljb25zdCB1aW50MzJfdCBiYmUgPSBNSV9CQVRDSF9CVUZG
RVJfRU5EOwpAQCAtMjU5LDYgKzI2NCw4IEBAIHN0YXRpYyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1
bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQogCQlsb2MgPSA4OwogCQlpZiAoZ2VuID49
IDQpCiAJCQlsb2MgKz0gNDsKKwkJaWYgKGdlbiA+PSAxMikKKwkJCWxvYyArPSAxOwogCQlyZWxv
Yy5yZWFkX2RvbWFpbnMgPSBJOTE1X0dFTV9ET01BSU5fSU5TVFJVQ1RJT047CiAJCXJlbG9jLndy
aXRlX2RvbWFpbiA9IEk5MTVfR0VNX0RPTUFJTl9JTlNUUlVDVElPTjsKIApAQCAtMjgwLDYgKzI4
Nyw4IEBAIHN0YXRpYyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2ln
bmVkIGZsYWdzKQogCQl9CiAKIAkJaSA9IDA7CisJCWlmIChnZW4gPj0gMTIpCisJCQliYXRjaFtp
KytdID0gcHJlcGFyc2VyX2Rpc2FibGUodHJ1ZSk7CiAJCWJhdGNoW2ldID0gTUlfU1RPUkVfRFdP
UkRfSU1NIHwgKGdlbiA8IDYgPyAxIDw8IDIyIDogMCk7CiAJCWlmIChnZW4gPj0gOCkgewogCQkJ
YmF0Y2hbKytpXSA9IHN0b3JlLm9mZnNldCArIGxvYzsKQEAgLTI5Myw2ICszMDIsOCBAQCBzdGF0
aWMgdm9pZCB3aGlzcGVyKGludCBmZCwgdW5zaWduZWQgZW5naW5lLCB1bnNpZ25lZCBmbGFncykK
IAkJfQogCQliYXRjaFsrK2ldID0gMHhjMGZmZWU7CiAJCWlndF9hc3NlcnQobG9jID09IHNpemVv
Zih1aW50MzJfdCkgKiBpKTsKKwkJaWYgKGdlbiA+PSAxMikKKwkJCWJhdGNoWysraV0gPSBwcmVw
YXJzZXJfZGlzYWJsZShmYWxzZSk7CiAJCWJhdGNoWysraV0gPSBNSV9CQVRDSF9CVUZGRVJfRU5E
OwogCiAJCWlmIChmbGFncyAmIENPTlRFWFRTKSB7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
