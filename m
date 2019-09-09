Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81059AD36C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 09:12:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0F2897E8;
	Mon,  9 Sep 2019 07:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7399F897E8;
 Mon,  9 Sep 2019 07:12:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18422018-1500050 
 for multiple; Mon, 09 Sep 2019 08:12:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 08:12:26 +0100
Message-Id: <20190909071226.15401-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Check on the health of the
 spinner while waiting
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

QW5kIGdpdmUgdXAgaWYgd2UgbmV2ZXIgZXZlbiBtYWtlIGl0IHRvIHRoZSBzdGFydC4KCkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1OTIK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRlc3RzL3Bl
cmZfcG11LmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL3Rlc3RzL3BlcmZfcG11LmMgYi90ZXN0cy9wZXJmX3BtdS5jCmluZGV4IGQzOTJhNjdk
NC4uOGEwNmU1ZDQ0IDEwMDY0NAotLS0gYS90ZXN0cy9wZXJmX3BtdS5jCisrKyBiL3Rlc3RzL3Bl
cmZfcG11LmMKQEAgLTE5MSwxMCArMTkxLDEyIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIF9fc3Bp
bl93YWl0KGludCBmZCwgaWd0X3NwaW5fdCAqc3BpbikKIAkJd2hpbGUgKCFpZ3Rfc3Bpbl9oYXNf
c3RhcnRlZChzcGluKSkgewogCQkJdW5zaWduZWQgbG9uZyB0ID0gaWd0X25zZWNfZWxhcHNlZCgm
c3RhcnQpOwogCisJCQlpZ3RfYXNzZXJ0KGdlbV9ib19idXN5KGZkLCBzcGluLT5oYW5kbGUpKTsK
IAkJCWlmICgodCAtIHRpbWVvdXQpID4gMjUwZTYpIHsKIAkJCQl0aW1lb3V0ID0gdDsKIAkJCQlp
Z3Rfd2FybigiU3Bpbm5lciBub3QgcnVubmluZyBhZnRlciAlLjJmbXNcbiIsCiAJCQkJCSAoZG91
YmxlKXQgLyAxZTYpOworCQkJCWlndF9hc3NlcnQodCA8IDJlOSk7CiAJCQl9CiAJCX0KIAl9IGVs
c2UgewpAQCAtMjAyLDYgKzIwNCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIF9fc3Bpbl93YWl0
KGludCBmZCwgaWd0X3NwaW5fdCAqc3BpbikKIAkJdXNsZWVwKDUwMGUzKTsgLyogQmV0dGVyIHRo
YW4gbm90aGluZyEgKi8KIAl9CiAKKwlpZ3RfYXNzZXJ0KGdlbV9ib19idXN5KGZkLCBzcGluLT5o
YW5kbGUpKTsKIAlyZXR1cm4gaWd0X25zZWNfZWxhcHNlZCgmc3RhcnQpOwogfQogCi0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
