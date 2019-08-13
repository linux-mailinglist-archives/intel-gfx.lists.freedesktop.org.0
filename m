Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B808AFD6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 08:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B826E057;
	Tue, 13 Aug 2019 06:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A32B6E056;
 Tue, 13 Aug 2019 06:20:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17976908-1500050 
 for multiple; Tue, 13 Aug 2019 07:20:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 07:20:08 +0100
Message-Id: <20190813062016.7870-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/9] i915/gem_exec_schedule: Limit the
 plug to fit small rings
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

SWYgd2UgYXJlIG5vdCBydW5uaW5nIHdpdGggYSBzY2hlZHVsZXIsIHdlIGFyZSB1c2luZyBhIGds
b2JhbCByaW5nYnVmZmVyCndoaWNoIG1heSBub3QgYWNjb21tb2RhdGUgMTYgZXh0cmEgYmF0Y2hl
cy4gRm9ydHVuYXRlbHksIHdlIG9ubHkgbmVlZApvbmUgc3VjaCBiYXRjaCB0byBibG9jayB0aGUg
c3VibWlzc2lvbiBxdWV1ZSBhcyB3aXRob3V0IGEgc2NoZWR1bGVyLCBpdAppcyBpbiBvcmRlciBz
dWJtaXNzaW9uIChhbmQgc28gdGhlIGJhdGNoIGlzIGFmdGVyIHRoZSBtYWluIHNldHVwCmFueXdh
eSEpLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIHwgOSArKysrKysrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19z
Y2hlZHVsZS5jCmluZGV4IDZlODQ2NjI5OS4uMDU4MTAyMTAzIDEwMDY0NAotLS0gYS90ZXN0cy9p
OTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVs
ZS5jCkBAIC0xNjQsOCArMTY0LDEzIEBAIHN0YXRpYyB1aW50MzJfdCBjcmVhdGVfaGlnaGVzdF9w
cmlvcml0eShpbnQgZmQpCiBzdGF0aWMgdm9pZCB1bnBsdWdfc2hvd19xdWV1ZShpbnQgZmQsIHN0
cnVjdCBpZ3RfY29yayAqYywgdW5zaWduZWQgaW50IGVuZ2luZSkKIHsKIAlpZ3Rfc3Bpbl90ICpz
cGluW01BWF9FTFNQX1FMRU5dOworCWludCBtYXggPSBNQVhfRUxTUF9RTEVOOwogCi0JZm9yIChp
bnQgbiA9IDA7IG4gPCBBUlJBWV9TSVpFKHNwaW4pOyBuKyspIHsKKwkvKiBJZiBubyBzY2hlZHVs
ZXIsIGFsbCBiYXRjaGVzIGFyZSBlbWl0dGVkIGluIHN1Ym1pc3Npb24gb3JkZXIgKi8KKwlpZiAo
IWdlbV9zY2hlZHVsZXJfZW5hYmxlZChmZCkpCisJCW1heCA9IDE7CisKKwlmb3IgKGludCBuID0g
MDsgbiA8IG1heDsgbisrKSB7CiAJCWNvbnN0IHN0cnVjdCBpZ3Rfc3Bpbl9mYWN0b3J5IG9wdHMg
PSB7CiAJCQkuY3R4ID0gY3JlYXRlX2hpZ2hlc3RfcHJpb3JpdHkoZmQpLAogCQkJLmVuZ2luZSA9
IGVuZ2luZSwKQEAgLTE3Nyw3ICsxODIsNyBAQCBzdGF0aWMgdm9pZCB1bnBsdWdfc2hvd19xdWV1
ZShpbnQgZmQsIHN0cnVjdCBpZ3RfY29yayAqYywgdW5zaWduZWQgaW50IGVuZ2luZSkKIAlpZ3Rf
Y29ya191bnBsdWcoYyk7IC8qIGJhdGNoZXMgd2lsbCBub3cgYmUgcXVldWVkIG9uIHRoZSBlbmdp
bmUgKi8KIAlpZ3RfZGVidWdmc19kdW1wKGZkLCAiaTkxNV9lbmdpbmVfaW5mbyIpOwogCi0JZm9y
IChpbnQgbiA9IDA7IG4gPCBBUlJBWV9TSVpFKHNwaW4pOyBuKyspCisJZm9yIChpbnQgbiA9IDA7
IG4gPCBtYXg7IG4rKykKIAkJaWd0X3NwaW5fZnJlZShmZCwgc3BpbltuXSk7CiAKIH0KLS0gCjIu
MjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
