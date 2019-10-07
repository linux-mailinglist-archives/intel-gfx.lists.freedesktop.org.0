Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C721CDFDC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 13:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD3C6E52D;
	Mon,  7 Oct 2019 11:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BDBD6E527;
 Mon,  7 Oct 2019 11:07:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18750014-1500050 
 for multiple; Mon, 07 Oct 2019 12:06:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 12:06:51 +0100
Message-Id: <20191007110651.10486-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_suspend: Exercise S0 (aka
 s2idle)
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

RXhlcmNpc2UgdGhlIGZpcnN0IGxldmVsIG9mIHN1c3BlbmQsIFMwLiBUaGlzIGlzIGJhc2ljYWxs
eSB0aGUgc2FtZSBhcwpvdXIgcnVudGltZS1zdXNwZW5kLCB3ZSBuZWVkIHRvIHB1dCB0aGUgZGV2
aWNlIHRvIHNsZWVwIGJ1dCBvdGhlcndpc2UKaXQgaXMgbGVmdCBwb3dlcmVkIHVwLgoKSWRlYWxs
eSwgd2Ugd291bGQgbWVhc3VyZSB0aGUgZW5lcmd5IGNvbnN1bXB0aW9uIGluIHRoaXMgc3RhdGUu
CgpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMTE5MDkKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZXhlY19zdXNwZW5kLmMgICAgICAgICB8IDE2ICsr
KysrKysrKysrKy0tLS0KIHRlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QgfCAg
MSArCiAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19zdXNwZW5kLmMgYi90ZXN0cy9pOTE1L2dl
bV9leGVjX3N1c3BlbmQuYwppbmRleCBlNDNhMTZlOWUuLmYyNWYxYTg2YiAxMDA2NDQKLS0tIGEv
dGVzdHMvaTkxNS9nZW1fZXhlY19zdXNwZW5kLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19z
dXNwZW5kLmMKQEAgLTMyLDEwICszMiwxMSBAQAogI2luY2x1ZGUgImlndF9kdW1teWxvYWQuaCIK
IAogI2RlZmluZSBOT1NMRUVQIDAKLSNkZWZpbmUgU1VTUEVORF9ERVZJQ0VTIDEKLSNkZWZpbmUg
U1VTUEVORCAyCi0jZGVmaW5lIEhJQkVSTkFURV9ERVZJQ0VTIDMKLSNkZWZpbmUgSElCRVJOQVRF
IDQKKyNkZWZpbmUgSURMRSAxCisjZGVmaW5lIFNVU1BFTkRfREVWSUNFUyAyCisjZGVmaW5lIFNV
U1BFTkQgMworI2RlZmluZSBISUJFUk5BVEVfREVWSUNFUyA0CisjZGVmaW5lIEhJQkVSTkFURSA1
CiAjZGVmaW5lIG1vZGUoeCkgKCh4KSAmIDB4ZmYpCiAKICNkZWZpbmUgTE9DQUxfSTkxNV9FWEVD
X0JTRF9TSElGVCAgICAgICgxMykKQEAgLTE5NSw2ICsxOTYsMTEgQEAgc3RhdGljIHZvaWQgcnVu
X3Rlc3QoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQogCWNhc2UgTk9T
TEVFUDoKIAkJYnJlYWs7CiAKKwljYXNlIElETEU6CisJCWlndF9zeXN0ZW1fc3VzcGVuZF9hdXRv
cmVzdW1lKFNVU1BFTkRfU1RBVEVfRlJFRVpFLAorCQkJCQkgICAgICBTVVNQRU5EX1RFU1RfTk9O
RSk7CisJCWJyZWFrOworCiAJY2FzZSBTVVNQRU5EX0RFVklDRVM6CiAJCWlndF9zeXN0ZW1fc3Vz
cGVuZF9hdXRvcmVzdW1lKFNVU1BFTkRfU1RBVEVfTUVNLAogCQkJCQkgICAgICBTVVNQRU5EX1RF
U1RfREVWSUNFUyk7CkBAIC0yNTUsNiArMjYxLDggQEAgaWd0X21haW4KIAogCWlndF9zdWJ0ZXN0
KCJiYXNpYyIpCiAJCXJ1bl90ZXN0KGZkLCBBTExfRU5HSU5FUywgTk9TTEVFUCk7CisJaWd0X3N1
YnRlc3QoImJhc2ljLVMwIikKKwkJcnVuX3Rlc3QoZmQsIEFMTF9FTkdJTkVTLCBJRExFKTsKIAlp
Z3Rfc3VidGVzdCgiYmFzaWMtUzMtZGV2aWNlcyIpCiAJCXJ1bl90ZXN0KGZkLCBBTExfRU5HSU5F
UywgU1VTUEVORF9ERVZJQ0VTKTsKIAlpZ3Rfc3VidGVzdCgiYmFzaWMtUzMiKQpkaWZmIC0tZ2l0
IGEvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdCBiL3Rlc3RzL2ludGVsLWNp
L2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QKaW5kZXggZTc4ZTdmZDBjLi4yNTUzYTY4YzMgMTAwNjQ0
Ci0tLSBhL3Rlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QKKysrIGIvdGVzdHMv
aW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdApAQCAtNTYsNiArNTYsNyBAQCBpZ3RAZ2Vt
X2V4ZWNfcmVsb2NAYmFzaWMtd3JpdGUtcmVhZC1hY3RpdmUKIGlndEBnZW1fZXhlY19yZWxvY0Bi
YXNpYy1zb2Z0cGluCiBpZ3RAZ2VtX2V4ZWNfc3RvcmVAYmFzaWMtYWxsCiBpZ3RAZ2VtX2V4ZWNf
c3VzcGVuZEBiYXNpYworaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczAKIGlndEBnZW1fZXhl
Y19zdXNwZW5kQGJhc2ljLXMzCiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zNC1kZXZpY2Vz
CiBpZ3RAZ2VtX2ZsaW5rX2Jhc2ljQGJhZC1mbGluawotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
