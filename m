Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694A666F8B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1786E02B;
	Fri, 12 Jul 2019 13:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB2A6E02B
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 13:06:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17248408-1500050 
 for multiple; Fri, 12 Jul 2019 14:05:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 14:05:53 +0100
Message-Id: <20190712130553.30233-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190626103727.4264-1-chris@chris-wilson.co.uk>
References: <20190626103727.4264-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] i915/gem_ctx_engine: Drip feed
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
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQpSZW1lbWJlciB0aGUgaW1wb3J0
YW5jZSBvZiBSRUFEX09OQ0UhCi0tLQogdGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYyB8IDM5
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI5
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUv
Z2VtX2N0eF9lbmdpbmVzLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCmluZGV4IDhj
NjZmYjI2MS4uMmU4MGQwZjNlIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5l
cy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMKQEAgLTQwNSw2ICs0MDUsMTQg
QEAgc3RhdGljIHZvaWQgZXhlY3V0ZV9hbGxmb3JvbmUoaW50IGk5MTUpCiAJZ2VtX2NvbnRleHRf
ZGVzdHJveShpOTE1LCBwYXJhbS5jdHhfaWQpOwogfQogCitzdGF0aWMgdWludDMyX3QgcmVhZF9y
ZXN1bHQoaW50IHRpbWVsaW5lLCB1aW50MzJfdCAqbWFwLCBpbnQgaWR4KQoreworCXN3X3N5bmNf
dGltZWxpbmVfaW5jKHRpbWVsaW5lLCAxKTsKKwl3aGlsZSAoIVJFQURfT05DRShtYXBbaWR4XSkp
CisJCTsKKwlyZXR1cm4gbWFwW2lkeF07Cit9CisKIHN0YXRpYyB2b2lkIGluZGVwZW5kZW50KGlu
dCBpOTE1KQogewogI2RlZmluZSBSQ1NfVElNRVNUQU1QICgweDIwMDAgKyAweDM1OCkKQEAgLTQz
OCw2ICs0NDYsMTIgQEAgc3RhdGljIHZvaWQgaW5kZXBlbmRlbnQoaW50IGk5MTUpCiAJbWVtc2V0
KCZlbmdpbmVzLCAwLCBzaXplb2YoZW5naW5lcykpOyAvKiBBbGwgcmNzMCAqLwogCWdlbV9jb250
ZXh0X3NldF9wYXJhbShpOTE1LCAmcGFyYW0pOwogCisJZ2VtX3NldF9jYWNoaW5nKGk5MTUsIHJl
c3VsdHMuaGFuZGxlLCBJOTE1X0NBQ0hJTkdfQ0FDSEVEKTsKKwltYXAgPSBnZW1fbW1hcF9fY3B1
KGk5MTUsIHJlc3VsdHMuaGFuZGxlLCAwLCA0MDk2LCBQUk9UX1JFQUQpOworCWdlbV9zZXRfZG9t
YWluKGk5MTUsIHJlc3VsdHMuaGFuZGxlLAorCQkgICAgICAgSTkxNV9HRU1fRE9NQUlOX0NQVSwg
STkxNV9HRU1fRE9NQUlOX0NQVSk7CisJbWVtc2V0KG1hcCwgMCwgNDA5Nik7CisKIAlmb3IgKGlu
dCBpID0gMDsgaSA8IEk5MTVfRVhFQ19SSU5HX01BU0sgKyAxOyBpKyspIHsKIAkJc3RydWN0IGRy
bV9pOTE1X2dlbV9leGVjX29iamVjdDIgb2JqWzJdID0gewogCQkJcmVzdWx0cywgLyogd3JpdGUg
aGF6YXJkIGxpZXMhICovCkBAIC00NzIsMjEgKzQ4NiwyMSBAQCBzdGF0aWMgdm9pZCBpbmRlcGVu
ZGVudChpbnQgaTkxNSkKIAkJZ2VtX2Nsb3NlKGk5MTUsIG9ialsxXS5oYW5kbGUpOwogCQljbG9z
ZShleGVjYnVmLnJzdmQyKTsKIAl9Ci0JY2xvc2UodGltZWxpbmUpOwotCWdlbV9zeW5jKGk5MTUs
IHJlc3VsdHMuaGFuZGxlKTsKLQotCW1hcCA9IGdlbV9tbWFwX19jcHUoaTkxNSwgcmVzdWx0cy5o
YW5kbGUsIDAsIDQwOTYsIFBST1RfUkVBRCk7Ci0JZ2VtX3NldF9kb21haW4oaTkxNSwgcmVzdWx0
cy5oYW5kbGUsIEk5MTVfR0VNX0RPTUFJTl9DUFUsIDApOwotCWdlbV9jbG9zZShpOTE1LCByZXN1
bHRzLmhhbmRsZSk7CiAKLQlsYXN0ID0gbWFwWzBdOworCWxhc3QgPSByZWFkX3Jlc3VsdCh0aW1l
bGluZSwgbWFwLCAwKTsKIAlmb3IgKGludCBpID0gMTsgaSA8IEk5MTVfRVhFQ19SSU5HX01BU0sg
KyAxOyBpKyspIHsKLQkJaWd0X2Fzc2VydF9mKChtYXBbaV0gLSBsYXN0KSA+IDAsCi0JCQkgICAg
ICJFbmdpbmUgaW5zdGFuY2UgWyVkXSBleGVjdXRlZCB0b28gbGF0ZVxuIiwgaSk7Ci0JCWxhc3Qg
PSBtYXBbaV07CisJCXVpbnQzMl90IHQgPSByZWFkX3Jlc3VsdCh0aW1lbGluZSwgbWFwLCBpKTsK
KwkJaWd0X2Fzc2VydF9mKHQgLSBsYXN0ID4gMCwKKwkJCSAgICAgIkVuZ2luZSBpbnN0YW5jZSBb
JWRdIGV4ZWN1dGVkIHRvbyBsYXRlLCBwcmV2aW91cyB0aW1lc3RhbXAgJTA4eCwgbm93ICUwOHhc
biIsCisJCQkgICAgIGksIGxhc3QsIHQpOworCQlsYXN0ID0gdDsKIAl9CiAJbXVubWFwKG1hcCwg
NDA5Nik7CiAKKwljbG9zZSh0aW1lbGluZSk7CisJZ2VtX3N5bmMoaTkxNSwgcmVzdWx0cy5oYW5k
bGUpOworCWdlbV9jbG9zZShpOTE1LCByZXN1bHRzLmhhbmRsZSk7CisKIAlnZW1fY29udGV4dF9k
ZXN0cm95KGk5MTUsIHBhcmFtLmN0eF9pZCk7CiB9CiAKQEAgLTUwMCw2ICs1MTQsOCBAQCBpZ3Rf
bWFpbgogCiAJCWdlbV9yZXF1aXJlX2NvbnRleHRzKGk5MTUpOwogCQlpZ3RfcmVxdWlyZShoYXNf
Y29udGV4dF9lbmdpbmVzKGk5MTUpKTsKKworCQlpZ3RfZm9ya19oYW5nX2RldGVjdG9yKGk5MTUp
OwogCX0KIAogCWlndF9zdWJ0ZXN0KCJpbnZhbGlkLWVuZ2luZXMiKQpAQCAtNTE5LDQgKzUzNSw3
IEBAIGlndF9tYWluCiAKIAlpZ3Rfc3VidGVzdCgiaW5kZXBlbmRlbnQiKQogCQlpbmRlcGVuZGVu
dChpOTE1KTsKKworCWlndF9maXh0dXJlCisJCWlndF9zdG9wX2hhbmdfZGV0ZWN0b3IoKTsKIH0K
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
