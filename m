Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA85566E0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 12:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB6AA6E372;
	Wed, 26 Jun 2019 10:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97CB6E370;
 Wed, 26 Jun 2019 10:37:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17029049-1500050 
 for multiple; Wed, 26 Jun 2019 11:37:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 11:37:27 +0100
Message-Id: <20190626103727.4264-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Drip feed requests
 into 'independent'
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

VGhlIGludGVudCBvZiB0aGUgdGVzdCBpcyB0byBleGVyY2lzZSB0aGF0IGVhY2ggY2hhbm5lbCBp
biB0aGUgZW5naW5lW10KaXMgYW4gaW5kZXBlbmRlbnQgY29udGV4dC9yaW5nL3RpbWVsaW5lLiBJ
dCBzZXR1cHMgNjQgY2hhbm5lbHMgcG9pbnRpbmcKdG8gcmNzMCBhbmQgdGhlbiBzdWJtaXRzIG9u
ZSByZXF1ZXN0IHRvIGVhY2ggaW4gdHVybiB3YWl0aW5nIG9uIGEKdGltZWxpbmUgdGhhdCB3aWxs
IGZvcmNlIHRoZW0gdG8gcnVuIG91dCBvZiBzdWJtaXNzaW9uIG9yZGVyLiBUaGV5IGNhbgpvbmx5
IHJ1biBpbiBmZW5jZSBvcmRlciBhbmQgbm90IHN1Ym1pc3Npb24gb3JkZXIgaWYgdGhlIHRpbWVs
aW5lcyBvZgplYWNoIGNoYW5uZWwgYXJlIHRydWx5IGluZGVwZW5kZW50LgoKSG93ZXZlciwgd2Ug
cmVsZWFzZWQgdGhlIGZlbmNlcyBlbiBtYXNzZSwgYW5kIG9uY2UgdGhlIHJlcXVlc3RzIGFyZQpy
ZWFkeSB0aGV5IGFyZSBpbmRlcGVuZGVudCBhbnkgbWF5IGJlIGV4ZWN1dGVkIGluIGFueSBvcmRl
ciBieSB0aGUgSFcsCmVzcGVjaWFsbHkgdHJ1ZSB3aXRoIHRpbWVzbGljaW5nIHRoYXQgbWF5IHJl
b3JkZXIgdGhlIHJlcXVlc3RzIG9uIGEKd2hpbS4gU28gaW5zdGVhZCBvZiByZWxlYXNpbmcgYWxs
IHJlcXVlc3RzIGF0IG9uY2UsIGluY3JlbWVudCB0aGUKdGltZWxpbmUgc3RlcCBieSBzdGVwIGFu
ZCBjaGVjayB3ZSBnZXQgb3VyIHJlc3VsdHMgYWR2YW5jaW5nLiBJZiB0aGUKcmVxdWVzdHMgY2Fu
IG5vdCBiZSBydW4gaW4gZmVuY2Ugb3JkZXIgYW5kIGZhbGwgYmFjayB0byBzdWJtaXNzaW9uCm9y
ZGVyLCB3ZSB3aWxsIHRpbWUgb3V0IHdhaXRpbmcgZm9yIG91ciBpbmNyZW1lbnRhbCByZXN1bHRz
IGFuZCB0cmlnZ2VyCmEgZmV3IEdQVSBoYW5ncy4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5ODcKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fY3R4
X2VuZ2luZXMuYyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfZW5n
aW5lcy5jCmluZGV4IDhjNjZmYjI2MS4uYzRmNTBkODA5IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1
L2dlbV9jdHhfZW5naW5lcy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMKQEAg
LTQwNSw2ICs0MDUsMTQgQEAgc3RhdGljIHZvaWQgZXhlY3V0ZV9hbGxmb3JvbmUoaW50IGk5MTUp
CiAJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBwYXJhbS5jdHhfaWQpOwogfQogCitzdGF0aWMg
dWludDMyX3QgcmVhZF9yZXN1bHQoaW50IHRpbWVsaW5lLCB1aW50MzJfdCAqbWFwLCBpbnQgaWR4
KQoreworCXN3X3N5bmNfdGltZWxpbmVfaW5jKHRpbWVsaW5lLCAxKTsKKwl3aGlsZSAoIW1hcFtp
ZHhdKQorCQk7CisJcmV0dXJuIG1hcFtpZHhdOworfQorCiBzdGF0aWMgdm9pZCBpbmRlcGVuZGVu
dChpbnQgaTkxNSkKIHsKICNkZWZpbmUgUkNTX1RJTUVTVEFNUCAoMHgyMDAwICsgMHgzNTgpCkBA
IC00MzgsNiArNDQ2LDEyIEBAIHN0YXRpYyB2b2lkIGluZGVwZW5kZW50KGludCBpOTE1KQogCW1l
bXNldCgmZW5naW5lcywgMCwgc2l6ZW9mKGVuZ2luZXMpKTsgLyogQWxsIHJjczAgKi8KIAlnZW1f
Y29udGV4dF9zZXRfcGFyYW0oaTkxNSwgJnBhcmFtKTsKIAorCWdlbV9zZXRfY2FjaGluZyhpOTE1
LCByZXN1bHRzLmhhbmRsZSwgSTkxNV9DQUNISU5HX0NBQ0hFRCk7CisJbWFwID0gZ2VtX21tYXBf
X2NwdShpOTE1LCByZXN1bHRzLmhhbmRsZSwgMCwgNDA5NiwgUFJPVF9SRUFEKTsKKwlnZW1fc2V0
X2RvbWFpbihpOTE1LCByZXN1bHRzLmhhbmRsZSwKKwkJICAgICAgIEk5MTVfR0VNX0RPTUFJTl9D
UFUsIEk5MTVfR0VNX0RPTUFJTl9DUFUpOworCW1lbXNldChtYXAsIDAsIDQwOTYpOworCiAJZm9y
IChpbnQgaSA9IDA7IGkgPCBJOTE1X0VYRUNfUklOR19NQVNLICsgMTsgaSsrKSB7CiAJCXN0cnVj
dCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9ialsyXSA9IHsKIAkJCXJlc3VsdHMsIC8qIHdy
aXRlIGhhemFyZCBsaWVzISAqLwpAQCAtNDcyLDIxICs0ODYsMjEgQEAgc3RhdGljIHZvaWQgaW5k
ZXBlbmRlbnQoaW50IGk5MTUpCiAJCWdlbV9jbG9zZShpOTE1LCBvYmpbMV0uaGFuZGxlKTsKIAkJ
Y2xvc2UoZXhlY2J1Zi5yc3ZkMik7CiAJfQotCWNsb3NlKHRpbWVsaW5lKTsKLQlnZW1fc3luYyhp
OTE1LCByZXN1bHRzLmhhbmRsZSk7Ci0KLQltYXAgPSBnZW1fbW1hcF9fY3B1KGk5MTUsIHJlc3Vs
dHMuaGFuZGxlLCAwLCA0MDk2LCBQUk9UX1JFQUQpOwotCWdlbV9zZXRfZG9tYWluKGk5MTUsIHJl
c3VsdHMuaGFuZGxlLCBJOTE1X0dFTV9ET01BSU5fQ1BVLCAwKTsKLQlnZW1fY2xvc2UoaTkxNSwg
cmVzdWx0cy5oYW5kbGUpOwogCi0JbGFzdCA9IG1hcFswXTsKKwlsYXN0ID0gcmVhZF9yZXN1bHQo
dGltZWxpbmUsIG1hcCwgMCk7CiAJZm9yIChpbnQgaSA9IDE7IGkgPCBJOTE1X0VYRUNfUklOR19N
QVNLICsgMTsgaSsrKSB7Ci0JCWlndF9hc3NlcnRfZigobWFwW2ldIC0gbGFzdCkgPiAwLAotCQkJ
ICAgICAiRW5naW5lIGluc3RhbmNlIFslZF0gZXhlY3V0ZWQgdG9vIGxhdGVcbiIsIGkpOwotCQls
YXN0ID0gbWFwW2ldOworCQl1aW50MzJfdCB0ID0gcmVhZF9yZXN1bHQodGltZWxpbmUsIG1hcCwg
aSk7CisJCWlndF9hc3NlcnRfZih0IC0gbGFzdCA+IDAsCisJCQkgICAgICJFbmdpbmUgaW5zdGFu
Y2UgWyVkXSBleGVjdXRlZCB0b28gbGF0ZSwgcHJldmlvdXMgdGltZXN0YW1wICUwOHgsIG5vdyAl
MDh4XG4iLAorCQkJICAgICBpLCBsYXN0LCB0KTsKKwkJbGFzdCA9IHQ7CiAJfQogCW11bm1hcCht
YXAsIDQwOTYpOwogCisJY2xvc2UodGltZWxpbmUpOworCWdlbV9zeW5jKGk5MTUsIHJlc3VsdHMu
aGFuZGxlKTsKKwlnZW1fY2xvc2UoaTkxNSwgcmVzdWx0cy5oYW5kbGUpOworCiAJZ2VtX2NvbnRl
eHRfZGVzdHJveShpOTE1LCBwYXJhbS5jdHhfaWQpOwogfQogCkBAIC01MDAsNiArNTE0LDggQEAg
aWd0X21haW4KIAogCQlnZW1fcmVxdWlyZV9jb250ZXh0cyhpOTE1KTsKIAkJaWd0X3JlcXVpcmUo
aGFzX2NvbnRleHRfZW5naW5lcyhpOTE1KSk7CisKKwkJaWd0X2ZvcmtfaGFuZ19kZXRlY3Rvcihp
OTE1KTsKIAl9CiAKIAlpZ3Rfc3VidGVzdCgiaW52YWxpZC1lbmdpbmVzIikKQEAgLTUxOSw0ICs1
MzUsNyBAQCBpZ3RfbWFpbgogCiAJaWd0X3N1YnRlc3QoImluZGVwZW5kZW50IikKIAkJaW5kZXBl
bmRlbnQoaTkxNSk7CisKKwlpZ3RfZml4dHVyZQorCQlpZ3Rfc3RvcF9oYW5nX2RldGVjdG9yKCk7
CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
