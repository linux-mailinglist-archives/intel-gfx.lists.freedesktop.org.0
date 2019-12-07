Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C78C1115EB3
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 22:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAA96E245;
	Sat,  7 Dec 2019 21:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0CE6E245;
 Sat,  7 Dec 2019 21:04:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19498252-1500050 
 for multiple; Sat, 07 Dec 2019 21:04:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 21:04:07 +0000
Message-Id: <20191207210407.2721819-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_freq: Protect against absent
 sysfs nodes
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

Tm90IGFsbCBtYWNoaW5lcyBleHBvc2UgdGhlIFJQUyBjb250cm9sIG5vZGVzIChlLmcuIElyb25s
YWtlIGFuZAplYXJsaWVyKSBhcyB0aGV5IGRvbid0IHN1cHBvcnQgUlBTLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkx
NS9nZW1fY3R4X2ZyZXEuYyB8IDI3ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3Rlc3RzL2k5MTUvZ2VtX2N0eF9mcmVxLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfZnJlcS5jCmlu
ZGV4IGJjMDkzNjU0YS4uODlmM2QxMWVmIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhf
ZnJlcS5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9mcmVxLmMKQEAgLTEwOSwxMCArMTA5LDEw
IEBAIHN0YXRpYyB2b2lkIHNldF9zeXNmc19mcmVxKHVpbnQzMl90IG1pbiwgdWludDMyX3QgbWF4
KQogCWlndF9zeXNmc19wcmludGYoc3lzZnMsICJndF9tYXhfZnJlcV9taHoiLCAiJXUiLCBtYXgp
OwogfQogCi1zdGF0aWMgdm9pZCBnZXRfc3lzZnNfZnJlcSh1aW50MzJfdCAqbWluLCB1aW50MzJf
dCAqbWF4KQorc3RhdGljIGJvb2wgZ2V0X3N5c2ZzX2ZyZXEodWludDMyX3QgKm1pbiwgdWludDMy
X3QgKm1heCkKIHsKLQlpZ3Rfc3lzZnNfc2NhbmYoc3lzZnMsICJndF9taW5fZnJlcV9taHoiLCAi
JXUiLCBtaW4pOwotCWlndF9zeXNmc19zY2FuZihzeXNmcywgImd0X21heF9mcmVxX21oeiIsICIl
dSIsIG1heCk7CisJcmV0dXJuIChpZ3Rfc3lzZnNfc2NhbmYoc3lzZnMsICJndF9taW5fZnJlcV9t
aHoiLCAiJXUiLCBtaW4pID09IDEgJiYKKwkJaWd0X3N5c2ZzX3NjYW5mKHN5c2ZzLCAiZ3RfbWF4
X2ZyZXFfbWh6IiwgIiV1IiwgbWF4KSA9PSAxKTsKIH0KIAogc3RhdGljIHZvaWQgc3lzZnNfcmFu
Z2UoaW50IGk5MTUpCkBAIC0xMzEsNyArMTMxLDcgQEAgc3RhdGljIHZvaWQgc3lzZnNfcmFuZ2Uo
aW50IGk5MTUpCiAJICogY29uc3RyaWFpbmVkIHN5c2ZzIHJhbmdlLgogCSAqLwogCi0JZ2V0X3N5
c2ZzX2ZyZXEoJnN5c19taW4sICZzeXNfbWF4KTsKKwlpZ3RfcmVxdWlyZShnZXRfc3lzZnNfZnJl
cSgmc3lzX21pbiwgJnN5c19tYXgpKTsKIAlpZ3RfaW5mbygiU3lzdGVtIG1pbiBmcmVxOiAlZE1I
ejsgbWF4IGZyZXE6ICVkTUh6XG4iLCBzeXNfbWluLCBzeXNfbWF4KTsKIAogCXRyaWFuZ2xlX2Zp
bGwoZnJlcXVlbmNpZXMsIE5fU1RFUFMsIHN5c19taW4sIHN5c19tYXgpOwpAQCAtMTgyLDE4ICsx
ODIsMTcgQEAgc3RhdGljIHZvaWQgcmVzdG9yZV9zeXNmc19mcmVxKGludCBzaWcpCiAJfQogfQog
Ci1zdGF0aWMgdm9pZCBkaXNhYmxlX2Jvb3N0KGludCBpOTE1KQorc3RhdGljIHZvaWQgZGlzYWJs
ZV9ib29zdCh2b2lkKQogewotCWNoYXIgKnZhbHVlOworCWNoYXIgYnVmWzI1Nl07CiAKLQl2YWx1
ZSA9IGlndF9zeXNmc19nZXQoaTkxNSwgImd0X1JQbl9mcmVxX21oeiIpOwotCWlndF9zeXNmc19z
ZXQoaTkxNSwgImd0X21pbl9mcmVxX21oeiIsIHZhbHVlKTsKLQlpZ3Rfc3lzZnNfc2V0KGk5MTUs
ICJndF9ib29zdF9mcmVxX21oeiIsIHZhbHVlKTsKLQlmcmVlKHZhbHVlKTsKKwlpZiAoaWd0X3N5
c2ZzX3JlYWQoc3lzZnMsICJndF9SUG5fZnJlcV9taHoiLCBidWYsIHNpemVvZihidWYpKSA+IDAp
IHsKKwkJaWd0X3N5c2ZzX3NldChzeXNmcywgImd0X21pbl9mcmVxX21oeiIsIGJ1Zik7CisJCWln
dF9zeXNmc19zZXQoc3lzZnMsICJndF9ib29zdF9mcmVxX21oeiIsIGJ1Zik7CisJfQogCi0JdmFs
dWUgPSBpZ3Rfc3lzZnNfZ2V0KGk5MTUsICJndF9SUDBfZnJlcV9taHoiKTsKLQlpZ3Rfc3lzZnNf
c2V0KGk5MTUsICJndF9tYXhfZnJlcV9taHoiLCB2YWx1ZSk7Ci0JZnJlZSh2YWx1ZSk7CisJaWYg
KGlndF9zeXNmc19yZWFkKHN5c2ZzLCAiZ3RfUlAwX2ZyZXFfbWh6IiwgYnVmLCBzaXplb2YoYnVm
KSkgPiAwKQorCQlpZ3Rfc3lzZnNfc2V0KHN5c2ZzLCAiZ3RfbWF4X2ZyZXFfbWh6IiwgYnVmKTsK
IH0KIAogaWd0X21haW4KQEAgLTIwOCw3ICsyMDcsNyBAQCBpZ3RfbWFpbgogCQlpZ3RfYXNzZXJ0
KHN5c2ZzICE9IC0xKTsKIAkJaWd0X2luc3RhbGxfZXhpdF9oYW5kbGVyKHJlc3RvcmVfc3lzZnNf
ZnJlcSk7CiAKLQkJZGlzYWJsZV9ib29zdChzeXNmcyk7CisJCWRpc2FibGVfYm9vc3QoKTsKIAl9
CiAKIAlpZ3Rfc3VidGVzdF9mKCJzeXNmcyIpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
