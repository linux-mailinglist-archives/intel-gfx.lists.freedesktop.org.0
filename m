Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132329EFE5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 18:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E6C89812;
	Tue, 27 Aug 2019 16:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29F189805;
 Tue, 27 Aug 2019 16:14:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18280370-1500050 
 for multiple; Tue, 27 Aug 2019 17:14:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 17:14:17 +0100
Message-Id: <20190827161417.3330-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] benchmarks: Use labs() for abs(long)
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

ZS5nLiBiZW5jaG1hcmtzL2dlbV93c2ltLmM6MjkzNjo0OiB3YXJuaW5nOiBhYnNvbHV0ZSB2YWx1
ZSBmdW5jdGlvbiDigJhhYnPigJkgZ2l2ZW4gYW4gYXJndW1lbnQgb2YgdHlwZSDigJhsb25nIGlu
dOKAmSBidXQgaGFzIHBhcmFtZXRlciBvZiB0eXBlIOKAmGludOKAmSB3aGljaCBtYXkgY2F1c2Ug
dHJ1bmNhdGlvbiBvZiB2YWx1ZSBbLVdhYnNvbHV0ZS12YWx1ZV0KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGJlbmNobWFya3MvZ2Vt
X3N5c2xhdGVuY3kuYyB8IDIgKy0KIGJlbmNobWFya3MvZ2VtX3dzaW0uYyAgICAgICB8IDIgKy0K
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2JlbmNobWFya3MvZ2VtX3N5c2xhdGVuY3kuYyBiL2JlbmNobWFya3MvZ2VtX3N5c2xh
dGVuY3kuYwppbmRleCA3NjcxZGM0M2UuLmQ3Y2YwZWQ0OSAxMDA2NDQKLS0tIGEvYmVuY2htYXJr
cy9nZW1fc3lzbGF0ZW5jeS5jCisrKyBiL2JlbmNobWFya3MvZ2VtX3N5c2xhdGVuY3kuYwpAQCAt
MzQzLDcgKzM0Myw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIGNhbGlicmF0ZV9ub3AodW5zaWdu
ZWQgaW50IHRhcmdldF91cywKIAkJc3ogPSBsb29wcyAqIHN6IC8gZWxhcHNlZCgmdF9zdGFydCwg
JnRfZW5kKSAqIDFlMyAqIHRhcmdldF91czsKIAkJc3ogPSBBTElHTihzeiwgc2l6ZW9mKHVpbnQz
Ml90KSk7CiAJfSB3aGlsZSAoZWxhcHNlZCgmdF8wLCAmdF9lbmQpIDwgNSB8fAotCQkgYWJzKHN6
IC0gcHJldikgPiAoc3ogKiB0b2xlcmFuY2VfcGN0IC8gMTAwKSk7CisJCSBsYWJzKHN6IC0gcHJl
dikgPiAoc3ogKiB0b2xlcmFuY2VfcGN0IC8gMTAwKSk7CiAKIAljbG9zZShmZCk7CiAKZGlmZiAt
LWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwppbmRl
eCBhNzZmZGJmZTIuLmI4ZTIyYjNmNiAxMDA2NDQKLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5j
CisrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwpAQCAtMjkzMyw3ICsyOTMzLDcgQEAgc3RhdGlj
IHVuc2lnbmVkIGxvbmcgY2FsaWJyYXRlX25vcCh1bnNpZ25lZCBpbnQgdG9sZXJhbmNlX3BjdCkK
IAkJc2l6ZSA9IGxvb3BzICogc2l6ZSAvIGVsYXBzZWQoJnRfc3RhcnQsICZ0X2VuZCkgLyAxZTYg
KiB1c2VjczsKIAkJc2l6ZSA9IEFMSUdOKHNpemUsIHNpemVvZih1aW50MzJfdCkpOwogCX0gd2hp
bGUgKGVsYXBzZWQoJnRfMCwgJnRfZW5kKSA8IDUgfHwKLQkJIGFicyhzaXplIC0gbGFzdF9zaXpl
KSA+IChzaXplICogdG9sZXJhbmNlX3BjdCAvIDEwMCkpOworCQkgbGFicyhzaXplIC0gbGFzdF9z
aXplKSA+IChzaXplICogdG9sZXJhbmNlX3BjdCAvIDEwMCkpOwogCiAJcmV0dXJuIHNpemUgLyBz
aXplb2YodWludDMyX3QpOwogfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
