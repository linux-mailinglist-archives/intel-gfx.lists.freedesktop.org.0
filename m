Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AADEE1C69F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 12:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F4E89175;
	Tue, 14 May 2019 10:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D986689175;
 Tue, 14 May 2019 10:05:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16550030-1500050 
 for multiple; Tue, 14 May 2019 11:05:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 11:05:24 +0100
Message-Id: <20190514100524.4985-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Perturb static_vcs
 selection across clients
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

VXNlIHRoZSBjbGllbnQgaWQgdG8gYWx0ZXJuYXRlIHRoZSBzdGF0aWNfdmNzIGJhbGFuY2VyICgt
YiBjb250ZXh0KQphY3Jvc3MgY2xpZW50cyAtIG90aGVyd2lzZSBhbGwgY2xpZW50cyBlbmQgdXAg
b24gdmNzMCBhbmQgZG8gbm90IG1hdGNoCnRoZSBjb250ZXh0IGJhbGFuY2luZyBlbXBsb3llZCBi
eSBtZWRpYS1kcml2ZXIuCgpUaGlzIG1heSB3YW50IHRvIGJlIGJlaGluZCB0aGUgLVIgZmxhZywg
YnV0IEkgZmVsdCBpdCB3YXMgYSBmdW5kYW1lbnRhbApwcm9wZXJ0eSBvZiBzdGF0aWMgY29udGV4
dCBiYWxhbmNpbmcgdGhhdCB0byBrZWVwIGl0IGRpc2FibGVkIGJ5IGRlZmF1bHQKY2F1c2VzIHVu
ZmFpciBjb21wYXJpc29ucyBhbmQgcG9vciB3b3JrbG9hZCBzY2hlZHVsaW5nLCBkZWZlYXRpbmcg
dGhlCnB1cnBvc2Ugb2YgdGVzdGluZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KLS0tCiBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9iZW5jaG1h
cmtzL2dlbV93c2ltLmMgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKaW5kZXggYWZiOTY0NGRkLi44
YzdlMzBlYjQgMTAwNjQ0Ci0tLSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYworKysgYi9iZW5jaG1h
cmtzL2dlbV93c2ltLmMKQEAgLTkzOSw3ICs5MzksNyBAQCBhbGxvY19zdGVwX2JhdGNoKHN0cnVj
dCB3b3JrbG9hZCAqd3JrLCBzdHJ1Y3Qgd19zdGVwICp3LCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiBz
dGF0aWMgdm9pZAogcHJlcGFyZV93b3JrbG9hZCh1bnNpZ25lZCBpbnQgaWQsIHN0cnVjdCB3b3Jr
bG9hZCAqd3JrLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiB7Ci0JdW5zaWduZWQgaW50IGN0eF92Y3Mg
PSAwOworCXVuc2lnbmVkIGludCBjdHhfdmNzID0gaWQgJiAxOwogCWludCBtYXhfY3R4ID0gLTE7
CiAJc3RydWN0IHdfc3RlcCAqdzsKIAlpbnQgaTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
