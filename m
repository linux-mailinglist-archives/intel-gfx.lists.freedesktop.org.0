Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EF78A209
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 17:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7972689AB6;
	Mon, 12 Aug 2019 15:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686B789AB6;
 Mon, 12 Aug 2019 15:13:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17971309-1500050 
 for multiple; Mon, 12 Aug 2019 16:12:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 16:12:56 +0100
Message-Id: <20190812151256.10657-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Restrict number of batches
 of submitted
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

TWFrZSBzdXJlIHdlIGRvbid0IGJsb2NrIHdoaWxlIHNldHRpbmcgdXAgdGhlIHN0cmVzcyBjYXNl
IGJlZm9yZSB0aGUKcmVzZXQgYnkgb25seSBzdWJtaXR0aW5nIGxlc3MgYmF0Y2hlcyB0aGFuIHdv
dWxkIGZpbGwgdGhlIHJpbmcuCgpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzNzkKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZWlvLmMgfCAxMyAr
KysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jIGIvdGVzdHMvaTkxNS9nZW1f
ZWlvLmMKaW5kZXggZGNiY2VmYTk3Li45YjA4NmEwMzkgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUv
Z2VtX2Vpby5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCkBAIC03MzQsNiArNzM0LDExIEBA
IHN0YXRpYyB2b2lkIHJlc2V0X3N0cmVzcyhpbnQgZmQsIHVpbnQzMl90IGN0eDAsCiAJCS5mbGFn
cyA9IGVuZ2luZSwKIAl9OwogCWlndF9zdGF0c190IHN0YXRzOworCWludCBtYXg7CisKKwltYXgg
PSBnZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGZkLCBlbmdpbmUsIDApOworCW1heCA9IG1heCAv
IDIgLSAxOyAvKiBhc3N1bWUgIWV4ZWNsaXN0cyBhbmQgYSBzaGFyZWQgcmluZyAqLworCWlndF9y
ZXF1aXJlKG1heCA+IDApOwogCiAJZ2VtX3dyaXRlKGZkLCBvYmouaGFuZGxlLCAwLCAmYmJlLCBz
aXplb2YoYmJlKSk7CiAKQEAgLTc1NSwxMSArNzYwLDExIEBAIHN0YXRpYyB2b2lkIHJlc2V0X3N0
cmVzcyhpbnQgZmQsIHVpbnQzMl90IGN0eDAsCiAJCWhhbmcgPSBzcGluX3N5bmMoZmQsIGN0eDAs
IGVuZ2luZSk7CiAKIAkJZXhlY2J1Zi5yc3ZkMSA9IGN0eDsKLQkJZm9yIChpID0gMDsgaSA8IDEw
OyBpKyspCisJCWZvciAoaSA9IDA7IGkgPCBtYXg7IGkrKykKIAkJCWdlbV9leGVjYnVmKGZkLCAm
ZXhlY2J1Zik7CiAKIAkJZXhlY2J1Zi5yc3ZkMSA9IGN0eDA7Ci0JCWZvciAoaSA9IDA7IGkgPCAx
MDsgaSsrKQorCQlmb3IgKGkgPSAwOyBpIDwgbWF4OyBpKyspCiAJCQlnZW1fZXhlY2J1ZihmZCwg
JmV4ZWNidWYpOwogCiAJCS8qIFdlZGdlIGFmdGVyIGEgc21hbGwgZGVsYXkuICovCkBAIC03Nzcs
MTEgKzc4MiwxMSBAQCBzdGF0aWMgdm9pZCByZXNldF9zdHJlc3MoaW50IGZkLCB1aW50MzJfdCBj
dHgwLAogCQkgKiBib3RoIGNvbnRleHRzLgogCQkgKi8KIAkJZXhlY2J1Zi5yc3ZkMSA9IGN0eDsK
LQkJZm9yIChpID0gMDsgaSA8IDU7IGkrKykKKwkJZm9yIChpID0gMDsgaSA8IG1heDsgaSsrKQog
CQkJZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsKIAogCQlleGVjYnVmLnJzdmQxID0gY3R4MDsK
LQkJZm9yIChpID0gMDsgaSA8IDU7IGkrKykKKwkJZm9yIChpID0gMDsgaSA8IG1heDsgaSsrKQog
CQkJZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsKIAogCQlnZW1fc3luYyhmZCwgb2JqLmhhbmRs
ZSk7Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
