Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C9257D38
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 09:36:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7AE6E80E;
	Thu, 27 Jun 2019 07:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D796E80E;
 Thu, 27 Jun 2019 07:36:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17039432-1500050 
 for multiple; Thu, 27 Jun 2019 08:36:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 08:36:15 +0100
Message-Id: <20190627073615.15573-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_pread/pwrite: Rename "basic"
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

VGhlICJiYXNpYyIgc3VidGVzdHMgcGVyZm9ybSBubyB2ZXJpZmljYXRpb24gdGhhdCB0aGUgcmVh
ZC93cml0ZSB3b3JrLApvbmx5IGZ1bmN0aW9uIGFzIG1lcmUgQVBJIGV4ZXJjaXNlcnMgYW5kIGxv
b3NlIGJlbmNobWFya3MuIFJlbmFtZSB0aGVtCnRvIHJlZmxlY3QgdGhhdCB0aGV5IGFyZSBwb29y
IGJlbmNobWFya3MgaW5zdGVhZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX3ByZWFkLmMgICAgICAgICAg
ICAgICAgfCAyICstCiB0ZXN0cy9pOTE1L2dlbV9wd3JpdGUuYyAgICAgICAgICAgICAgIHwgMiAr
LQogdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdCB8IDIgLS0KIDMgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rl
c3RzL2k5MTUvZ2VtX3ByZWFkLmMgYi90ZXN0cy9pOTE1L2dlbV9wcmVhZC5jCmluZGV4IGM2NDc4
NzY1My4uMGQzZTEwYjgwIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9wcmVhZC5jCisrKyBi
L3Rlc3RzL2k5MTUvZ2VtX3ByZWFkLmMKQEAgLTE1OSw3ICsxNTksNyBAQCBpZ3RfbWFpbl9hcmdz
KCJzOiIsIE5VTEwsIGhlbHBfc3RyLCBvcHRfaGFuZGxlciwgTlVMTCkKIAkJZHN0X3VzZXIgPSBt
YWxsb2Mob2JqZWN0X3NpemUpOwogCX0KIAotCWlndF9zdWJ0ZXN0KCJiYXNpYyIpIHsKKwlpZ3Rf
c3VidGVzdCgiYmVuY2giKSB7CiAJCWZvciAoY291bnQgPSAxOyBjb3VudCA8PSAxPDwxNzsgY291
bnQgPDw9IDEpIHsKIAkJCXN0cnVjdCB0aW1ldmFsIHN0YXJ0LCBlbmQ7CiAKZGlmZiAtLWdpdCBh
L3Rlc3RzL2k5MTUvZ2VtX3B3cml0ZS5jIGIvdGVzdHMvaTkxNS9nZW1fcHdyaXRlLmMKaW5kZXgg
OTc3MDNhMmFhLi4zN2U5Nzg3OTEgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX3B3cml0ZS5j
CisrKyBiL3Rlc3RzL2k5MTUvZ2VtX3B3cml0ZS5jCkBAIC0yODYsNyArMjg2LDcgQEAgaWd0X21h
aW5fYXJncygiczoiLCBOVUxMLCBoZWxwX3N0ciwgb3B0X2hhbmRsZXIsIE5VTEwpCiAJCXNyY191
c2VyID0gbWFsbG9jKG9iamVjdF9zaXplKTsKIAl9CiAKLQlpZ3Rfc3VidGVzdCgiYmFzaWMiKSB7
CisJaWd0X3N1YnRlc3QoImJlbmNoIikgewogCQlmb3IgKGNvdW50ID0gMTsgY291bnQgPD0gMTw8
MTc7IGNvdW50IDw8PSAxKSB7CiAJCQlzdHJ1Y3QgdGltZXZhbCBzdGFydCwgZW5kOwogCmRpZmYg
LS1naXQgYS90ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0IGIvdGVzdHMvaW50
ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdAppbmRleCA4NjE4ZGZkMjguLjVmY2I1ZTc2ZCAx
MDA2NDQKLS0tIGEvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdAorKysgYi90
ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0CkBAIC04Nyw4ICs4Nyw2IEBAIGln
dEBnZW1fbW1hcF9ndHRAYmFzaWMtd3JpdGUtZ3R0LW5vLXByZWZhdWx0CiBpZ3RAZ2VtX21tYXBf
Z3R0QGJhc2ljLXdyaXRlLW5vLXByZWZhdWx0CiBpZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLXdyaXRl
LXJlYWQKIGlndEBnZW1fbW1hcF9ndHRAYmFzaWMtd3JpdGUtcmVhZC1kaXN0aW5jdAotaWd0QGdl
bV9wcmVhZEBiYXNpYwotaWd0QGdlbV9wd3JpdGVAYmFzaWMKIGlndEBnZW1fcmVuZGVyX2xpbmVh
cl9ibGl0c0BiYXNpYwogaWd0QGdlbV9yZW5kZXJfdGlsZWRfYmxpdHNAYmFzaWMKIGlndEBnZW1f
cmluZ2ZpbGxAYmFzaWMtZGVmYXVsdAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
