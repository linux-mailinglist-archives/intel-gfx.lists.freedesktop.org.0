Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53231E5F3E
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 21:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A073E6E13D;
	Sat, 26 Oct 2019 19:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4917C6E132;
 Sat, 26 Oct 2019 19:35:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18977234-1500050 
 for multiple; Sat, 26 Oct 2019 20:35:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 20:34:56 +0100
Message-Id: <20191026193456.19445-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191026193456.19445-1-chris@chris-wilson.co.uk>
References: <20191026193456.19445-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_exec: Enable resets for
 basic-nohangcheck
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

V3JhcCB0aGUgdGVzdCBpbnNpZGUgaWd0X2FsbG93X2hhbmcgYXMgd2UgZGVwZW5kIHVwb24gYSBm
YXN0IHJlc2V0IHRvCmNhbmNlbCB0aGUgaG9zdGlsZSBjb250ZXh0LgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9n
ZW1fY3R4X2V4ZWMuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9leGVjLmMgYi90ZXN0cy9pOTE1L2dlbV9j
dHhfZXhlYy5jCmluZGV4IGI1NTJlZGZiZC4uNmIwMDkyMjUwIDEwMDY0NAotLS0gYS90ZXN0cy9p
OTE1L2dlbV9jdHhfZXhlYy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9leGVjLmMKQEAgLTIw
Nyw2ICsyMDcsNyBAQCBzdGF0aWMgdm9pZCBub2hhbmdjaGVja19ob3N0aWxlKGludCBpOTE1KQog
ewogCWludDY0X3QgdGltZW91dCA9IE5TRUNfUEVSX1NFQyAvIDI7CiAJaWd0X3NwaW5fdCAqc3Bp
bjsKKwlpZ3RfaGFuZ190IGhhbmc7CiAJdWludDMyX3QgY3R4OwogCWludCBlcnIgPSAwOwogCWlu
dCBkaXI7CkBAIC0yMTYsNiArMjE3LDggQEAgc3RhdGljIHZvaWQgbm9oYW5nY2hlY2tfaG9zdGls
ZShpbnQgaTkxNSkKIAkgKiB3ZSBmb3JjaWJseSB0ZXJtaW5hdGUgdGhhdCBjb250ZXh0LgogCSAq
LwogCisJaGFuZyA9IGlndF9hbGxvd19oYW5nKGk5MTUsIDAsIDApOworCiAJZGlyID0gaWd0X3N5
c2ZzX29wZW5fcGFyYW1ldGVycyhpOTE1KTsKIAlpZ3RfcmVxdWlyZShkaXIgIT0gLTEpOwogCkBA
IC0yMzUsNiArMjM4LDcgQEAgc3RhdGljIHZvaWQgbm9oYW5nY2hlY2tfaG9zdGlsZShpbnQgaTkx
NSkKIAogCWlndF9yZXF1aXJlKF9fZW5hYmxlX2hhbmdjaGVjayhkaXIsIHRydWUpKTsKIAlnZW1f
cXVpZXNjZW50X2dwdShpOTE1KTsKKwlpZ3RfZGlzYWxsb3dfaGFuZyhpOTE1LCBoYW5nKTsKIAog
CWlndF9hc3NlcnRfZihlcnIgPT0gMCwKIAkJICAgICAiSG9zdGlsZSB1bnByZWVtcHRhYmxlIGNv
bnRleHQgd2FzIG5vdCBjYW5jZWxsZWQgaW1tZWRpYXRlbHkgdXBvbiBjbG9zdXJlXG4iKTsKLS0g
CjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
