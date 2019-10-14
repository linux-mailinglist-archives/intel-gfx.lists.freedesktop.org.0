Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54885D6B7B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 00:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690416E323;
	Mon, 14 Oct 2019 22:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E2589CD9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 22:05:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18837435-1500050 
 for multiple; Mon, 14 Oct 2019 23:05:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 23:05:34 +0100
Message-Id: <20191014220534.1662-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014220534.1662-1-chris@chris-wilson.co.uk>
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Flush idle barriers when waiting
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

SWYgd2UgZG8gZmluZCBvdXJzZWx2ZXMgd2l0aCBhbiBpZGxlIGJhcnJpZXIgaW5zaWRlIG91ciBh
Y3RpdmUgd2hpbGUKd2FpdGluZywgYXR0ZW1wdCB0byBmbHVzaCBpdCBieSBlbWl0dGluZyBhIHB1
bHNlIHVzaW5nIHRoZSBrZXJuZWwKY29udGV4dC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2hlYXJ0YmVhdC5jICB8IDE0ICsrKysrKysrKysrKysKIC4uLi9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAgICB8IDIxICsrKysrKysrKysrKysrKysrLS0KIDMg
ZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMKaW5kZXggM2E0
MzYxODY5M2Q0Li4yM2E4Y2Q4OWZkZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMKQEAgLTE4MiwzICsxODIsMTcgQEAgaW50IGludGVs
X2VuZ2luZV9wdWxzZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJaW50ZWxfZW5n
aW5lX3BtX3B1dChlbmdpbmUpOwogCXJldHVybiBlcnI7CiB9CisKK2ludCBpbnRlbF9lbmdpbmVf
Zmx1c2hfYmFycmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxOworCisJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGVuZ2luZS0+
a2VybmVsX2NvbnRleHQpOworCWlmIChJU19FUlIocnEpKQorCQlyZXR1cm4gUFRSX0VSUihycSk7
CisKKwlpZGxlX3B1bHNlKGVuZ2luZSwgcnEpOworCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCisJ
cmV0dXJuIDA7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfaGVhcnRiZWF0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
aGVhcnRiZWF0LmgKaW5kZXggMzkzOTEwMDQ1NTRkLi4wYzFhZDBmYzA5MWQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmgKQEAgLTE1LDUg
KzE1LDYgQEAgdm9pZCBpbnRlbF9lbmdpbmVfcGFya19oZWFydGJlYXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKTsKIHZvaWQgaW50ZWxfZW5naW5lX3VucGFya19oZWFydGJlYXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIAogaW50IGludGVsX2VuZ2luZV9wdWxzZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOworaW50IGludGVsX2VuZ2luZV9mbHVzaF9i
YXJyaWVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogCiAjZW5kaWYgLyogSU5U
RUxfRU5HSU5FX0hFQVJUQkVBVF9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwppbmRl
eCBhYTM3YzA3MDA0YjkuLjk4ZDVmZTFjN2UxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZS5jCkBAIC02LDYgKzYsNyBAQAogCiAjaW5jbHVkZSA8bGludXgvZGVidWdvYmplY3RzLmg+CiAK
KyNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmgiCiAjaW5jbHVkZSAiZ3QvaW50
ZWxfZW5naW5lX3BtLmgiCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgpAQCAtNDM1LDYgKzQzNiwy
MSBAQCBzdGF0aWMgdm9pZCBlbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBpOTE1X2FjdGl2ZV9mZW5j
ZSAqYWN0aXZlKQogCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwogfQogCitzdGF0aWMgaW50IGZsdXNo
X2JhcnJpZXIoc3RydWN0IGFjdGl2ZV9ub2RlICppdCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmU7CisKKwlpZiAoIWlzX2JhcnJpZXIoJml0LT5iYXNlKSkKKwkJcmV0dXJuIDA7
CisKKwllbmdpbmUgPSBfX2JhcnJpZXJfdG9fZW5naW5lKGl0KTsKKwlzbXBfcm1iKCk7IC8qIHNl
cmlhbGlzZSB3aXRoIGFkZF9hY3RpdmVfYmFycmllcnMgKi8KKwlpZiAoIWlzX2JhcnJpZXIoJml0
LT5iYXNlKSkKKwkJcmV0dXJuIDA7CisKKwlyZXR1cm4gaW50ZWxfZW5naW5lX2ZsdXNoX2JhcnJp
ZXJzKGVuZ2luZSk7Cit9CisKIGludCBpOTE1X2FjdGl2ZV93YWl0KHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmKQogewogCXN0cnVjdCBhY3RpdmVfbm9kZSAqaXQsICpuOwpAQCAtNDQ4LDggKzQ2NCw5
IEBAIGludCBpOTE1X2FjdGl2ZV93YWl0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCS8qIEZs
dXNoIGxhenkgc2lnbmFscyAqLwogCWVuYWJsZV9zaWduYWxpbmcoJnJlZi0+ZXhjbCk7CiAJcmJ0
cmVlX3Bvc3RvcmRlcl9mb3JfZWFjaF9lbnRyeV9zYWZlKGl0LCBuLCAmcmVmLT50cmVlLCBub2Rl
KSB7Ci0JCWlmIChpc19iYXJyaWVyKCZpdC0+YmFzZSkpIC8qIHVuY29ubmVjdGVkIGlkbGUgYmFy
cmllciAqLwotCQkJY29udGludWU7CisJCWVyciA9IGZsdXNoX2JhcnJpZXIoaXQpOyAvKiB1bmNv
bm5lY3RlZCBpZGxlIGJhcnJpZXI/ICovCisJCWlmIChlcnIpCisJCQlicmVhazsKIAogCQllbmFi
bGVfc2lnbmFsaW5nKCZpdC0+YmFzZSk7CiAJfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
