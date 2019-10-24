Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A93FE36C4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 17:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9738D895CA;
	Thu, 24 Oct 2019 15:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E158895CA;
 Thu, 24 Oct 2019 15:34:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18951854-1500050 
 for multiple; Thu, 24 Oct 2019 16:34:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 16:34:16 +0100
Message-Id: <20191024153416.13665-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Restore i915.reset before testing it
 in igt_allow_hang()
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

aWd0X2FsbG93X2hhbmcoKSBjaGVja3MgdGhhdCB0aGUgR1BVIGNhbiBiZSByZXNldCBiZWZvcmUg
YWxsb3dpbmcgdGhlCnRlc3QgdG8gY2F1c2UgYSBHUFUgaGFuZyAod2hpY2ggd291bGQgbmVlZCB0
aGUgcmVzZXQgdG8gcmVjb3ZlcikuCkhvd2V2ZXIsIG91ciBjaGVja2luZyBmb3IgYWxsb3dpbmcg
YSBoYW5nIGRlcGVuZHMgb24gaTkxNS5yZXNldCB3aGljaCB3ZQpsYXRlciByZXN0b3JlLiBEbyB0
aGF0IHJlc3RvcmF0aW9uIGJlZm9yZSB0aGUgY2hlY2sgc28gdGhhdCB0aGlzIHRlc3QgaXMKbm90
IGFmZmVjdGVkIGJ5IGVhcmxpZXIgZmFpbHMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBsaWIvaWd0X2d0LmMgfCA1ICsrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2xpYi9pZ3RfZ3QuYyBiL2xpYi9pZ3RfZ3QuYwppbmRleCA1Y2E3NzQ3MWMuLjI1NmM3Y2Jj
MCAxMDA2NDQKLS0tIGEvbGliL2lndF9ndC5jCisrKyBiL2xpYi9pZ3RfZ3QuYwpAQCAtMTc1LDgg
KzE3NSw2IEBAIGlndF9oYW5nX3QgaWd0X2FsbG93X2hhbmcoaW50IGZkLCB1bnNpZ25lZCBjdHgs
IHVuc2lnbmVkIGZsYWdzKQogCWlmICghaWd0X2NoZWNrX2Jvb2xlYW5fZW52X3ZhcigiSUdUX0hB
TkciLCB0cnVlKSkKIAkJaWd0X3NraXAoImhhbmcgaW5qZWN0aW9uIGRpc2FibGVkIGJ5IHVzZXIi
KTsKIAlnZW1fY29udGV4dF9yZXF1aXJlX2Jhbm5hYmxlKGZkKTsKLQlpZiAoIWlndF9jaGVja19i
b29sZWFuX2Vudl92YXIoIklHVF9IQU5HX1dJVEhPVVRfUkVTRVQiLCBmYWxzZSkpCi0JCWlndF9y
ZXF1aXJlKGhhc19ncHVfcmVzZXQoZmQpKTsKIAogCWFsbG93X3Jlc2V0ID0gMTsKIAlpZiAoKGZs
YWdzICYgSEFOR19BTExPV19DQVBUVVJFKSA9PSAwKSB7CkBAIC0xOTEsNiArMTg5LDkgQEAgaWd0
X2hhbmdfdCBpZ3RfYWxsb3dfaGFuZyhpbnQgZmQsIHVuc2lnbmVkIGN0eCwgdW5zaWduZWQgZmxh
Z3MpCiAJfQogCWlndF9yZXF1aXJlKGlndF9zeXNmc19zZXRfcGFyYW1ldGVyKGZkLCAicmVzZXQi
LCAiJWQiLCBhbGxvd19yZXNldCkpOwogCisJaWYgKCFpZ3RfY2hlY2tfYm9vbGVhbl9lbnZfdmFy
KCJJR1RfSEFOR19XSVRIT1VUX1JFU0VUIiwgZmFsc2UpKQorCQlpZ3RfcmVxdWlyZShoYXNfZ3B1
X3Jlc2V0KGZkKSk7CisKIAliYW4gPSBjb250ZXh0X2dldF9iYW4oZmQsIGN0eCk7CiAJaWYgKChm
bGFncyAmIEhBTkdfQUxMT1dfQkFOKSA9PSAwKQogCQljb250ZXh0X3NldF9iYW4oZmQsIGN0eCwg
MCk7Ci0tIAoyLjI0LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
