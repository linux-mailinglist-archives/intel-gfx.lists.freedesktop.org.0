Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B9186D49
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 00:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCF176ECD8;
	Thu,  8 Aug 2019 22:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690CA88E40;
 Thu,  8 Aug 2019 22:32:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17936547-1500050 
 for multiple; Thu, 08 Aug 2019 23:32:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 23:32:45 +0100
Message-Id: <20190808223245.2320-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190808223245.2320-1-chris@chris-wilson.co.uk>
References: <20190808223245.2320-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_ctx_engine: Drip feed
 requests into 'independent'
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
aW5lcy5jCmluZGV4IDhjNjZmYjI2MS4uMmU4MGQwZjNlIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1
L2dlbV9jdHhfZW5naW5lcy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMKQEAg
LTQwNSw2ICs0MDUsMTQgQEAgc3RhdGljIHZvaWQgZXhlY3V0ZV9hbGxmb3JvbmUoaW50IGk5MTUp
CiAJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBwYXJhbS5jdHhfaWQpOwogfQogCitzdGF0aWMg
dWludDMyX3QgcmVhZF9yZXN1bHQoaW50IHRpbWVsaW5lLCB1aW50MzJfdCAqbWFwLCBpbnQgaWR4
KQoreworCXN3X3N5bmNfdGltZWxpbmVfaW5jKHRpbWVsaW5lLCAxKTsKKwl3aGlsZSAoIVJFQURf
T05DRShtYXBbaWR4XSkpCisJCTsKKwlyZXR1cm4gbWFwW2lkeF07Cit9CisKIHN0YXRpYyB2b2lk
IGluZGVwZW5kZW50KGludCBpOTE1KQogewogI2RlZmluZSBSQ1NfVElNRVNUQU1QICgweDIwMDAg
KyAweDM1OCkKQEAgLTQzOCw2ICs0NDYsMTIgQEAgc3RhdGljIHZvaWQgaW5kZXBlbmRlbnQoaW50
IGk5MTUpCiAJbWVtc2V0KCZlbmdpbmVzLCAwLCBzaXplb2YoZW5naW5lcykpOyAvKiBBbGwgcmNz
MCAqLwogCWdlbV9jb250ZXh0X3NldF9wYXJhbShpOTE1LCAmcGFyYW0pOwogCisJZ2VtX3NldF9j
YWNoaW5nKGk5MTUsIHJlc3VsdHMuaGFuZGxlLCBJOTE1X0NBQ0hJTkdfQ0FDSEVEKTsKKwltYXAg
PSBnZW1fbW1hcF9fY3B1KGk5MTUsIHJlc3VsdHMuaGFuZGxlLCAwLCA0MDk2LCBQUk9UX1JFQUQp
OworCWdlbV9zZXRfZG9tYWluKGk5MTUsIHJlc3VsdHMuaGFuZGxlLAorCQkgICAgICAgSTkxNV9H
RU1fRE9NQUlOX0NQVSwgSTkxNV9HRU1fRE9NQUlOX0NQVSk7CisJbWVtc2V0KG1hcCwgMCwgNDA5
Nik7CisKIAlmb3IgKGludCBpID0gMDsgaSA8IEk5MTVfRVhFQ19SSU5HX01BU0sgKyAxOyBpKysp
IHsKIAkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgb2JqWzJdID0gewogCQkJcmVz
dWx0cywgLyogd3JpdGUgaGF6YXJkIGxpZXMhICovCkBAIC00NzIsMjEgKzQ4NiwyMSBAQCBzdGF0
aWMgdm9pZCBpbmRlcGVuZGVudChpbnQgaTkxNSkKIAkJZ2VtX2Nsb3NlKGk5MTUsIG9ialsxXS5o
YW5kbGUpOwogCQljbG9zZShleGVjYnVmLnJzdmQyKTsKIAl9Ci0JY2xvc2UodGltZWxpbmUpOwot
CWdlbV9zeW5jKGk5MTUsIHJlc3VsdHMuaGFuZGxlKTsKLQotCW1hcCA9IGdlbV9tbWFwX19jcHUo
aTkxNSwgcmVzdWx0cy5oYW5kbGUsIDAsIDQwOTYsIFBST1RfUkVBRCk7Ci0JZ2VtX3NldF9kb21h
aW4oaTkxNSwgcmVzdWx0cy5oYW5kbGUsIEk5MTVfR0VNX0RPTUFJTl9DUFUsIDApOwotCWdlbV9j
bG9zZShpOTE1LCByZXN1bHRzLmhhbmRsZSk7CiAKLQlsYXN0ID0gbWFwWzBdOworCWxhc3QgPSBy
ZWFkX3Jlc3VsdCh0aW1lbGluZSwgbWFwLCAwKTsKIAlmb3IgKGludCBpID0gMTsgaSA8IEk5MTVf
RVhFQ19SSU5HX01BU0sgKyAxOyBpKyspIHsKLQkJaWd0X2Fzc2VydF9mKChtYXBbaV0gLSBsYXN0
KSA+IDAsCi0JCQkgICAgICJFbmdpbmUgaW5zdGFuY2UgWyVkXSBleGVjdXRlZCB0b28gbGF0ZVxu
IiwgaSk7Ci0JCWxhc3QgPSBtYXBbaV07CisJCXVpbnQzMl90IHQgPSByZWFkX3Jlc3VsdCh0aW1l
bGluZSwgbWFwLCBpKTsKKwkJaWd0X2Fzc2VydF9mKHQgLSBsYXN0ID4gMCwKKwkJCSAgICAgIkVu
Z2luZSBpbnN0YW5jZSBbJWRdIGV4ZWN1dGVkIHRvbyBsYXRlLCBwcmV2aW91cyB0aW1lc3RhbXAg
JTA4eCwgbm93ICUwOHhcbiIsCisJCQkgICAgIGksIGxhc3QsIHQpOworCQlsYXN0ID0gdDsKIAl9
CiAJbXVubWFwKG1hcCwgNDA5Nik7CiAKKwljbG9zZSh0aW1lbGluZSk7CisJZ2VtX3N5bmMoaTkx
NSwgcmVzdWx0cy5oYW5kbGUpOworCWdlbV9jbG9zZShpOTE1LCByZXN1bHRzLmhhbmRsZSk7CisK
IAlnZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIHBhcmFtLmN0eF9pZCk7CiB9CiAKQEAgLTUwMCw2
ICs1MTQsOCBAQCBpZ3RfbWFpbgogCiAJCWdlbV9yZXF1aXJlX2NvbnRleHRzKGk5MTUpOwogCQlp
Z3RfcmVxdWlyZShoYXNfY29udGV4dF9lbmdpbmVzKGk5MTUpKTsKKworCQlpZ3RfZm9ya19oYW5n
X2RldGVjdG9yKGk5MTUpOwogCX0KIAogCWlndF9zdWJ0ZXN0KCJpbnZhbGlkLWVuZ2luZXMiKQpA
QCAtNTE5LDQgKzUzNSw3IEBAIGlndF9tYWluCiAKIAlpZ3Rfc3VidGVzdCgiaW5kZXBlbmRlbnQi
KQogCQlpbmRlcGVuZGVudChpOTE1KTsKKworCWlndF9maXh0dXJlCisJCWlndF9zdG9wX2hhbmdf
ZGV0ZWN0b3IoKTsKIH0KLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
