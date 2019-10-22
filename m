Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B174FE01DD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57A86E3BB;
	Tue, 22 Oct 2019 10:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68BC46E3BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:17:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18922912-1500050 
 for multiple; Tue, 22 Oct 2019 11:17:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 11:17:04 +0100
Message-Id: <20191022101704.5618-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Make the mman object busy
 everywhere
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

TG9vcCBvdmVyIGFsbCBlbmdpbmVzLCBpc3N1aW5nIGEgcmVxdWVzdCBmb3IgdGhlIG9iamVjdCBv
biBlYWNoIGluIG9yZGVyCnRvIG1ha2Ugc3VyZSB3ZSBsZWF2ZSBubyBzdG9uZSB1bnR1cm5lZCB3
aGVuIGNyZWF0aW5nIGFuIGFjdGl2ZSByZWYuIFRoZQpwdXJwb3NlIGlzIHRvIG1ha2Ugc3VyZSB0
aGF0IHdlIGNhbiByZWFwIGEgem9tYmllIG9iamVjdCAob25lIHRoYXQgaXMKb25seSBhbGl2ZSBk
dWUgdG8gYW4gYWN0aXZlIHJlZmVyZW5jZSBvbiB0aGUgR1BVKSBubyBtYXR0ZXIgd2hlcmUgdGhh
dAphY3RpdmUgcmVmZXJlbmNlIGVtYW5hdGVzIGZyb20uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fbW1hbi5jICAgIHwgMjggKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKaW5kZXggNjVkNGRiZjkxOTk5
Li5kNDVhOTM5MjhmZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaTkxNV9nZW1fbW1hbi5jCkBAIC01MTUsMjAgKzUxNSwxOSBAQCBzdGF0aWMgaW50IG1h
a2Vfb2JqX2J1c3koc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7CiAJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwotCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hOwotCWludCBlcnI7CiAKLQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5j
ZShvYmosICZpOTE1LT5nZ3R0LnZtLCBOVUxMKTsKLQlpZiAoSVNfRVJSKHZtYSkpCi0JCXJldHVy
biBQVFJfRVJSKHZtYSk7CisJZm9yX2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lLCBpOTE1KSB7CisJ
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOworCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwkJaW50
IGVycjsKIAotCWVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAsIFBJTl9VU0VSKTsKLQlpZiAo
ZXJyKQotCQlyZXR1cm4gZXJyOworCQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosICZlbmdp
bmUtPmd0LT5nZ3R0LT52bSwgTlVMTCk7CisJCWlmIChJU19FUlIodm1hKSkKKwkJCXJldHVybiBQ
VFJfRVJSKHZtYSk7CiAKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgewotCQlz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwkJZXJyID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwg
UElOX1VTRVIpOworCQlpZiAoZXJyKQorCQkJcmV0dXJuIGVycjsKIAogCQlycSA9IGk5MTVfcmVx
dWVzdF9jcmVhdGUoZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CiAJCWlmIChJU19FUlIocnEpKSB7
CkBAIC01NDQsMTIgKzU0MywxMyBAQCBzdGF0aWMgaW50IG1ha2Vfb2JqX2J1c3koc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkJaTkxNV92bWFfdW5sb2NrKHZtYSk7CiAKIAkJaTkx
NV9yZXF1ZXN0X2FkZChycSk7CisJCWk5MTVfdm1hX3VucGluKHZtYSk7CisJCWlmIChlcnIpCisJ
CQlyZXR1cm4gZXJyOwogCX0KIAotCWk5MTVfdm1hX3VucGluKHZtYSk7CiAJaTkxNV9nZW1fb2Jq
ZWN0X3B1dChvYmopOyAvKiBsZWF2ZSBpdCBvbmx5IGFsaXZlIHZpYSBpdHMgYWN0aXZlIHJlZiAq
LwotCi0JcmV0dXJuIGVycjsKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGJvb2wgYXNzZXJ0X21t
YXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotLSAKMi4yNC4wLnJjMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
