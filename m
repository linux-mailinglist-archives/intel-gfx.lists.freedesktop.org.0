Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B19E75D671
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 20:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93122898C6;
	Tue,  2 Jul 2019 18:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE22898C6;
 Tue,  2 Jul 2019 18:58:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17104815-1500050 
 for multiple; Tue, 02 Jul 2019 19:58:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 19:58:26 +0100
Message-Id: <20190702185826.13674-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_create: Show number of pages
 cleared
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

SnVzdCBhIGxpdHRsZSBiaXQgb2YgZmVlZGJhY2sgYXQgdGhlIGVuZCBvZiBhbiBvdGhlcndpc2Ug
cXVpZXQgMjBzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMgfCAxNSArKysrKysrKysrKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2NyZWF0ZS5jIGIvdGVzdHMvaTkxNS9nZW1fY3JlYXRl
LmMKaW5kZXggOTAwOGNkOGEyLi5hZWQ3ZDFjZWMgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2Vt
X2NyZWF0ZS5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2NyZWF0ZS5jCkBAIC0xODcsNiArMTg3LDcg
QEAgc3RydWN0IHRocmVhZF9jbGVhciB7CiBzdGF0aWMgdm9pZCAqdGhyZWFkX2NsZWFyKHZvaWQg
KmRhdGEpCiB7CiAJc3RydWN0IHRocmVhZF9jbGVhciAqYXJnID0gZGF0YTsKKwl1bnNpZ25lZCBs
b25nIGNoZWNrZWQgPSAwOwogCWludCBpOTE1ID0gYXJnLT5pOTE1OwogCiAJaWd0X3VudGlsX3Rp
bWVvdXQoYXJnLT50aW1lb3V0KSB7CkBAIC0yMDksMTEgKzIxMCwxMiBAQCBzdGF0aWMgdm9pZCAq
dGhyZWFkX2NsZWFyKHZvaWQgKmRhdGEpCiAJCQlpZ3RfYXNzZXJ0X2VxX3U2NCh4LCAwKTsKIAkJ
fQogCQlnZW1fY2xvc2UoaTkxNSwgY3JlYXRlLmhhbmRsZSk7CisJCWNoZWNrZWQgKz0gbnBhZ2Vz
OwogCiAJCWF0b21pY19mZXRjaF9hZGQoJmFyZy0+bWF4LCBucGFnZXMpOwogCX0KIAotCXJldHVy
biBOVUxMOworCXJldHVybiAodm9pZCAqKSh1aW50cHRyX3QpY2hlY2tlZDsKIH0KIAogc3RhdGlj
IHZvaWQgYWx3YXlzX2NsZWFyKGludCBpOTE1LCBpbnQgdGltZW91dCkKQEAgLTIyNCwxMiArMjI2
LDE5IEBAIHN0YXRpYyB2b2lkIGFsd2F5c19jbGVhcihpbnQgaTkxNSwgaW50IHRpbWVvdXQpCiAJ
CS5tYXggPSBpbnRlbF9nZXRfYXZhaWxfcmFtX21iKCkgPDwgKDIwIC0gMTIpLCAvKiBpbiBwYWdl
cyAqLwogCX07CiAJY29uc3QgaW50IG5jcHVzID0gc3lzY29uZihfU0NfTlBST0NFU1NPUlNfT05M
Tik7CisJdW5zaWduZWQgbG9uZyBjaGVja2VkOwogCXB0aHJlYWRfdCB0aHJlYWRbbmNwdXNdOwor
CXZvaWQgKnJlc3VsdDsKIAogCWZvciAoaW50IGkgPSAwOyBpIDwgbmNwdXM7IGkrKykKIAkJcHRo
cmVhZF9jcmVhdGUoJnRocmVhZFtpXSwgTlVMTCwgdGhyZWFkX2NsZWFyLCAmYXJnKTsKLQlmb3Ig
KGludCBpID0gMDsgaSA8IG5jcHVzOyBpKyspCi0JCXB0aHJlYWRfam9pbih0aHJlYWRbaV0sIE5V
TEwpOworCisJY2hlY2tlZCA9IDA7CisJZm9yIChpbnQgaSA9IDA7IGkgPCBuY3B1czsgaSsrKSB7
CisJCXB0aHJlYWRfam9pbih0aHJlYWRbaV0sICZyZXN1bHQpOworCQljaGVja2VkICs9ICh1aW50
cHRyX3QpcmVzdWx0OworCX0KKwlpZ3RfaW5mbygiQ2hlY2tlZCAlJ2x1IHBhZ2UgYWxsb2NhdGlv
bnNcbiIsIGNoZWNrZWQpOwogfQogCiBzdGF0aWMgdm9pZCBzaXplX3VwZGF0ZShpbnQgZmQpCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
