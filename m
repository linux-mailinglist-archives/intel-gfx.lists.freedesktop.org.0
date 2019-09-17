Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AB2B4873
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 09:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0646EB25;
	Tue, 17 Sep 2019 07:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD6C76EB25
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 07:43:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18514875-1500050 
 for multiple; Tue, 17 Sep 2019 08:43:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 08:43:12 +0100
Message-Id: <20190917074312.12290-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Lock signaler timeline while
 navigating
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UgbmVlZCB0byB0YWtlIGEgd2FsayBiYWNrIGFsb25nIHRoZSBzaWduYWxlciB0aW1lbGlu
ZSB0byBmaW5kIHRoZQpmZW5jZSBiZWZvcmUgdXBvbiB3aGljaCB3ZSB3YW50IHRvIHdhaXQsIHdl
IG5lZWQgdG8gbG9jayB0aGF0IHRpbWVsaW5lCnRvIHByZXZlbnQgaXQgYmVpbmcgbW9kaWZpZWQg
YXMgd2Ugd2Fsay4gU2ltaWxhcmx5LCB3ZSBhbHNvIG5lZWQgdG8KYWNxdWlyZSBhIHJlZmVyZW5j
ZSB0byB0aGUgZWFybGllciBmZW5jZSB3aGlsZSBpdCBzdGlsbCBleGlzdHMhCgpUaG91Z2ggd2Ug
bGFjayB0aGUgY29ycmVjdCBsb2NraW5nIHRvZGF5LCB3ZSBhcmUgc2F2ZWQgYnkgdGhlCm92ZXJh
cmNoaW5nIHN0cnVjdF9tdXRleCAtLSBidXQgdGhhdCBwcm90ZWN0aW9uIGlzIGJlaW5nIHJlbW92
ZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDMwICsrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmluZGV4IGYxMjM1
ODE1MDA5Ny4uNDUyYWQ3YThmZjBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpA
QCAtNzY3LDE2ICs3NjcsMzQgQEAgaTkxNV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCiBzdGF0aWMgaW50CiBpOTE1X3JlcXVlc3RfYXdhaXRfc3RhcnQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnNpZ25hbCkKIHsKLQlpZiAobGlz
dF9pc19maXJzdCgmc2lnbmFsLT5saW5rLCAmc2lnbmFsLT50aW1lbGluZS0+cmVxdWVzdHMpKQor
CXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwgPSBzaWduYWwtPnRpbWVsaW5lOworCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOworCWludCBlcnI7CisKKwlpZiAobGlzdF9pc19maXJzdCgmc2lnbmFs
LT5saW5rLCAmdGwtPnJlcXVlc3RzKSkKIAkJcmV0dXJuIDA7CiAKLQlzaWduYWwgPSBsaXN0X3By
ZXZfZW50cnkoc2lnbmFsLCBsaW5rKTsKLQlpZiAoaW50ZWxfdGltZWxpbmVfc3luY19pc19sYXRl
cihycS0+dGltZWxpbmUsICZzaWduYWwtPmZlbmNlKSkKKwlpZiAobXV0ZXhfbG9ja19pbnRlcnJ1
cHRpYmxlX25lc3RlZCgmdGwtPm11dGV4LCBTSU5HTEVfREVQVEhfTkVTVElORykpCisJCXJldHVy
biAtRUlOVFI7CisKKwlpZiAobGlzdF9pc19maXJzdCgmc2lnbmFsLT5saW5rLCAmdGwtPnJlcXVl
c3RzKSkgeworCQlmZW5jZSA9IE5VTEw7CisJfSBlbHNlIHsKKwkJc2lnbmFsID0gbGlzdF9wcmV2
X2VudHJ5KHNpZ25hbCwgbGluayk7CisJCWZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3UoJnNpZ25h
bC0+ZmVuY2UpOworCX0KKwltdXRleF91bmxvY2soJnRsLT5tdXRleCk7CisJaWYgKCFmZW5jZSkK
IAkJcmV0dXJuIDA7CiAKLQlyZXR1cm4gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoJnJx
LT5zdWJtaXQsCi0JCQkJCSAgICAgJnNpZ25hbC0+ZmVuY2UsIDAsCi0JCQkJCSAgICAgSTkxNV9G
RU5DRV9HRlApOworCWVyciA9IDA7CisJaWYgKCFpbnRlbF90aW1lbGluZV9zeW5jX2lzX2xhdGVy
KHJxLT50aW1lbGluZSwgZmVuY2UpKQorCQllcnIgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9m
ZW5jZSgmcnEtPnN1Ym1pdCwKKwkJCQkJCSAgICBmZW5jZSwgMCwKKwkJCQkJCSAgICBJOTE1X0ZF
TkNFX0dGUCk7CisJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CisKKwlyZXR1cm4gZXJyOwogfQogCiBz
dGF0aWMgaW50ZWxfZW5naW5lX21hc2tfdAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
