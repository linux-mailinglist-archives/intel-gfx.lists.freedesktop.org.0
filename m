Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E4EA73B5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D911897C3;
	Tue,  3 Sep 2019 19:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B02897C3;
 Tue,  3 Sep 2019 19:32:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18362932-1500050 
 for multiple; Tue, 03 Sep 2019 20:31:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 20:31:51 +0100
Message-Id: <20190903193151.3132-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902041548.14919-3-chris@chris-wilson.co.uk>
References: <20190902041548.14919-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_tiled_swapping: Tweak mlocked
 size
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

T24gbXkgc3lzdGVtcyB3aXRoIGxvdHMgb2YgbWVtZGVidWcgZW5hYmxlZCwgd2Ugd291bGQgaGl0
IHRoZSBvb21raWxsZXIKOTAlIG9mIHRoZSB0aW1lIGR1cmluZyB0aGUgaW5pdGlhbCBtbG9jayBw
cmlvciB0byBhbGxvY2F0aW5nIGFueSBvYmplY3RzCihhbmQgYWJvdXQgMjAlIG9mIHRoZSB0aW1l
IGxvY2t1cCAvIHBhbmljKS4gVHdlYWsgdGhlIHRhcmdldCBhbGxvY2F0aW9uCnNpemVzLCBhbmQg
aW5jbHVkZSBhIGZldyBtb3JlIGJyZWFkY3J1bWJzIHRyYWNpbmcgdGhlIGFsbG9jYXRpb25zIHNv
CnRoYXQgd2UgY2FuIHJlbGlhYmx5IHN0YXJ0IHRoZSB0ZXN0cy4gV2Ugc3RpbGwgZG8gaGl0IG91
ciBzaHJpbmtlciBhbmQKZXZlbiB0aGUgb29tIG5vdGlmaWVyLCBzbyBzdGlsbCBhY2hpZXZpbmcg
aXRzIGdvYWwgb2YgZXhlcmNpc2luZyBsb3cKbWVtb3J5IGFuZCBzd2FwIHByZXNzdXJlLgoKVG8g
c2xpZ2h0bHkgY29tcGVuc2F0ZSBmb3IgdGhlIHJlZHVjZWQgbWVtcHJlc3N1cmUgKGFsYmVpdCB3
ZSBkbyBub3QKcmVtb3ZlIHRoZSBzd2FwcGluZywgdGhlIHJhaXNvbiBkJ2V0cmUgb2YgdGhlIHRl
c3QpLCB3ZSBpbmNyZWFzZSB0aGUKbnVtYmVyIG9mIHRocmVhZHMgdG8gZm9yY2UgdGhlIHN5c3Rl
bSB0byByZXVzZSBhY3RpdmUgZmVuY2VzLCBtYWtpbmcgaXQKbW9yZSBzdHJlc3NmdWwgb24gdGhl
IGZlbmNlIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgotLS0KIHRl
c3RzL2k5MTUvZ2VtX3RpbGVkX3N3YXBwaW5nLmMgfCAyNiArKysrKysrKysrKysrKysrKy0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fdGlsZWRfc3dhcHBpbmcuYyBiL3Rlc3RzL2k5MTUv
Z2VtX3RpbGVkX3N3YXBwaW5nLmMKaW5kZXggZGRmMmE3NDhmLi4xYjcwYzFlNTEgMTAwNjQ0Ci0t
LSBhL3Rlc3RzL2k5MTUvZ2VtX3RpbGVkX3N3YXBwaW5nLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1f
dGlsZWRfc3dhcHBpbmcuYwpAQCAtMTY1LDggKzE2NSw5IEBAIHN0YXRpYyB2b2lkIGNoZWNrX21l
bW9yeV9sYXlvdXQoaW50IGZkKQogCiBpZ3RfbWFpbgogeworCXVuc2lnbmVkIGxvbmcgbiwgY291
bnQ7CiAJc3RydWN0IHRocmVhZCAqdGhyZWFkczsKLQlpbnQgZmQsIG4sIGNvdW50LCBudW1fdGhy
ZWFkczsKKwlpbnQgZmQsIG51bV90aHJlYWRzOwogCiAJaWd0X2ZpeHR1cmUgewogCQlzaXplX3Qg
bG9ja19zaXplOwpAQCAtMTc5LDIzICsxODAsMzAgQEAgaWd0X21haW4KIAkJY2hlY2tfbWVtb3J5
X2xheW91dChmZCk7CiAKIAkJLyogbG9jayBSQU0sIGxlYXZpbmcgb25seSA1MTJNQiBhdmFpbGFi
bGUgKi8KLQkJbG9ja19zaXplID0gbWF4KDAsIGludGVsX2dldF90b3RhbF9yYW1fbWIoKSAtIEFW
QUlMX1JBTSk7CisJCWNvdW50ID0gaW50ZWxfZ2V0X3RvdGFsX3JhbV9tYigpIC0gaW50ZWxfZ2V0
X2F2YWlsX3JhbV9tYigpOworCQljb3VudCA9IG1heChjb3VudCArIDY0LCBBVkFJTF9SQU0pOwor
CQlsb2NrX3NpemUgPSBtYXgoMCwgaW50ZWxfZ2V0X3RvdGFsX3JhbV9tYigpIC0gY291bnQpOwor
CQlpZ3RfaW5mbygiTWxvY2tpbmcgJXpkTWlCIG9mICVsZC8lbGRNaUJcbiIsCisJCQkgbG9ja19z
aXplLAorCQkJIChsb25nKWludGVsX2dldF9hdmFpbF9yYW1fbWIoKSwKKwkJCSAobG9uZylpbnRl
bF9nZXRfdG90YWxfcmFtX21iKCkpOwogCQlpZ3RfbG9ja19tZW0obG9ja19zaXplKTsKIAogCQkv
KiBuZWVkIHNsaWdodGx5IG1vcmUgdGhhbiBhdmFpbGFibGUgbWVtb3J5ICovCi0JCWNvdW50ID0g
bWluKGludGVsX2dldF90b3RhbF9yYW1fbWIoKSwgQVZBSUxfUkFNKSAqIDEuMjU7CisJCWNvdW50
ID0gaW50ZWxfZ2V0X2F2YWlsX3JhbV9tYigpICsgMTI4OworCQlpZ3RfaW5mbygiVXNpbmcgJWx1
IDFNaUIgb2JqZWN0cyAoYXZhaWxhYmxlIFJBTTogJWxkLyVsZCwgc3dhcDogJWxkKVxuIiwKKwkJ
CSBjb3VudCwKKwkJCSAobG9uZylpbnRlbF9nZXRfYXZhaWxfcmFtX21iKCksCisJCQkgKGxvbmcp
aW50ZWxfZ2V0X3RvdGFsX3JhbV9tYigpLAorCQkJIChsb25nKWludGVsX2dldF90b3RhbF9zd2Fw
X21iKCkpOwogCQlib19oYW5kbGVzID0gY2FsbG9jKGNvdW50LCBzaXplb2YodWludDMyX3QpKTsK
IAkJaWd0X2Fzc2VydChib19oYW5kbGVzKTsKIAotCQludW1fdGhyZWFkcyA9IGdlbV9hdmFpbGFi
bGVfZmVuY2VzKGZkKTsKKwkJbnVtX3RocmVhZHMgPSBnZW1fYXZhaWxhYmxlX2ZlbmNlcyhmZCkg
KyAxOworCQlpZ3RfaW5mbygiVXNpbmcgdXAgdG8gJWQgZmVuY2VzL3RocmVhZHNcbiIsIG51bV90
aHJlYWRzKTsKIAkJdGhyZWFkcyA9IGNhbGxvYyhudW1fdGhyZWFkcywgc2l6ZW9mKHN0cnVjdCB0
aHJlYWQpKTsKIAkJaWd0X2Fzc2VydCh0aHJlYWRzKTsKIAotCQlpZ3RfaW5mbygiVXNpbmcgJWQg
MU1pQiBvYmplY3RzIChhdmFpbGFibGUgUkFNOiAlbGQvJWxkLCBzd2FwOiAlbGQpXG4iLAotCQkJ
IGNvdW50LAotCQkJIChsb25nKWludGVsX2dldF9hdmFpbF9yYW1fbWIoKSwKLQkJCSAobG9uZylp
bnRlbF9nZXRfdG90YWxfcmFtX21iKCksCi0JCQkgKGxvbmcpaW50ZWxfZ2V0X3RvdGFsX3N3YXBf
bWIoKSk7CiAJCWludGVsX3JlcXVpcmVfbWVtb3J5KGNvdW50LCAxMDI0KjEwMjQsIENIRUNLX1JB
TSB8IENIRUNLX1NXQVApOwogCiAJCWZvciAobiA9IDA7IG4gPCBjb3VudDsgbisrKSB7Ci0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
