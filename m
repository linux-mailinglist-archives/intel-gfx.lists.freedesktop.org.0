Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DB2EDB20
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 10:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D966E1A5;
	Mon,  4 Nov 2019 09:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5706E1A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 09:02:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19070798-1500050 
 for multiple; Mon, 04 Nov 2019 09:01:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Nov 2019 09:01:58 +0000
Message-Id: <20191104090158.2959-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
In-Reply-To: <20191104090158.2959-1-chris@chris-wilson.co.uk>
References: <20191104090158.2959-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Protect request peeking with RCU
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

U2luY2UgdGhlIGV4ZWNsaXN0c19hY3RpdmUoKSBpcyBubyBsb25nZXIgcHJvdGVjdGVkIGJ5IHRo
ZQplbmdpbmUtPmFjdGl2ZS5sb2NrLCB3ZSBuZWVkIHRvIHByb3RlY3QgdGhlIHJlcXVlc3QgcG9p
bnRlciB3aXRoIFJDVSB0bwpwcmV2ZW50IGl0IGJlaW5nIGZyZWVkIGFzIHdlIGV2YWx1YXRlIHdo
ZXRoZXIgb3Igbm90IHdlIG5lZWQgdG8gcHJlZW1wdC4KCkZpeGVzOiBkZjQwMzA2OTAyOWQgKCJk
cm0vaTkxNS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYg
c3BpbmxvY2siKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfc2NoZWR1bGVyLmMKaW5kZXggZDJlZGI1MjdkY2I4Li4wMTBkNjdmNDhhZDkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwpAQCAtMjAyLDIxICsyMDIsMjYgQEAgc3Rh
dGljIHZvaWQga2lja19zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwK
IAlpZiAocHJpbyA8PSBlbmdpbmUtPmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0eV9oaW50KQogCQly
ZXR1cm47CiAKKwlyY3VfcmVhZF9sb2NrKCk7CisKIAkvKiBOb3RoaW5nIGN1cnJlbnRseSBhY3Rp
dmU/IFdlJ3JlIG92ZXJkdWUgZm9yIGEgc3VibWlzc2lvbiEgKi8KIAlpbmZsaWdodCA9IGV4ZWNs
aXN0c19hY3RpdmUoJmVuZ2luZS0+ZXhlY2xpc3RzKTsKIAlpZiAoIWluZmxpZ2h0KQotCQlyZXR1
cm47CisJCWdvdG8gdW5sb2NrOwogCiAJLyoKIAkgKiBJZiB3ZSBhcmUgYWxyZWFkeSB0aGUgY3Vy
cmVudGx5IGV4ZWN1dGluZyBjb250ZXh0LCBkb24ndAogCSAqIGJvdGhlciBldmFsdWF0aW5nIGlm
IHdlIHNob3VsZCBwcmVlbXB0IG91cnNlbHZlcy4KIAkgKi8KIAlpZiAoaW5mbGlnaHQtPmh3X2Nv
bnRleHQgPT0gcnEtPmh3X2NvbnRleHQpCi0JCXJldHVybjsKKwkJZ290byB1bmxvY2s7CiAKIAll
bmdpbmUtPmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0eV9oaW50ID0gcHJpbzsKIAlpZiAobmVlZF9w
cmVlbXB0KHByaW8sIHJxX3ByaW8oaW5mbGlnaHQpKSkKIAkJdGFza2xldF9oaV9zY2hlZHVsZSgm
ZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7CisKK3VubG9jazoKKwlyY3VfcmVhZF91bmxvY2so
KTsKIH0KIAogc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVkX25v
ZGUgKm5vZGUsCi0tIAoyLjI0LjAucmMyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
