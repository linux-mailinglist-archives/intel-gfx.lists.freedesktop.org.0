Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA17BB28E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 13:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D82F6E870;
	Mon, 23 Sep 2019 11:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4F86E86C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 11:01:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18585095-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:00:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 12:00:53 +0100
Message-Id: <20190923110056.15176-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] drm/i915/execlists: Relax assertion for a
 pinned context image on reset
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

QSBncHUgaGFuZyBjYW4gb2NjdXIgYXQgYW55IHRpbWUsIGdpdmVuIGEgc3VmZmljaWVudGx5IGFu
Z3J5IGdwdS4gQW4KZXhhbXBsZSBpcyB3aGVuIGl0IGZvcmdldHMgdG8gcGVyZm9ybSBhIGNvbnRl
eHQtc3dpdGNoIGF0IHRoZSBlbmQgb2YgYQpyZXF1ZXN0LCBsZWF2aW5nIHVzIHdpdGggYSBoYW5n
aW5nIEdQVSBvbiBhIGNvbXBsZXRlZCByZXF1ZXN0LiBIZXJlLCB3ZQptYXkgcmV0aXJlIHRoZSBy
ZXF1ZXN0LCBvbmx5IGxlYXZpbmcgaXRzIGNvbnRleHQgYWxpdmUgdmlhIHRoZSBhY3RpdmUKYmFy
cmllci4gV2hlbiB3ZSByZXNldCB0aGUgR1BVIG9uIGEgY29tcGxldGVkIHJlcXVlc3QsIHdlIGRv
IG5vdCBtb2RpZnkKaXRzIGNvbnRleHQgaW1hZ2UgKGp1c3QgdXBkYXRpbmcgdGhlIHJpbmcgc3Rh
dGUpIGFuZCBjYW4gc2FmZWx5IGRlZmVyCnRoZSBhc3NlcnRpb24gdGhhdCB3ZSBoYXZlIHRoZSBp
bWFnZSBwaW5uZWQgYW5kIHJlYWR5IHRvIG1vZGlmeS4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE2MzkKRml4ZXM6IGRmZmE4ZmViMzA4
NCAoImRybS9pOTE1L3BlcmY6IEFzc2VydCBsb2NraW5nIGZvciBpOTE1X2luaXRfb2FfcGVyZl9z
dGF0ZSgpIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwppbmRleCAxYTJiNzExNTdmMDguLjgwZGVkOTliY2IxNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTIzODMsNyArMjM4Myw2IEBAIHN0YXRpYyB2b2lk
IF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBz
dGFsbGVkKQogCUdFTV9CVUdfT04oIWk5MTVfdm1hX2lzX3Bpbm5lZChjZS0+c3RhdGUpKTsKIAog
CS8qIFByb2NsYWltIHdlIGhhdmUgZXhjbHVzaXZlIGFjY2VzcyB0byB0aGUgY29udGV4dCBpbWFn
ZSEgKi8KLQlHRU1fQlVHX09OKCFpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpOwogCW11dGV4
X2FjcXVpcmUoJmNlLT5waW5fbXV0ZXguZGVwX21hcCwgMiwgMCwgX1RISVNfSVBfKTsKIAogCXJx
ID0gYWN0aXZlX3JlcXVlc3QocnEpOwpAQCAtMjQzMiw2ICsyNDMxLDcgQEAgc3RhdGljIHZvaWQg
X19leGVjbGlzdHNfcmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29sIHN0
YWxsZWQpCiAJICogZnV0dXJlIHJlcXVlc3Qgd2lsbCBiZSBhZnRlciB1c2Vyc3BhY2UgaGFzIGhh
ZCB0aGUgb3Bwb3J0dW5pdHkKIAkgKiB0byByZWNyZWF0ZSBpdHMgb3duIHN0YXRlLgogCSAqLwor
CUdFTV9CVUdfT04oIWludGVsX2NvbnRleHRfaXNfcGlubmVkKGNlKSk7CiAJcmVncyA9IGNlLT5s
cmNfcmVnX3N0YXRlOwogCWlmIChlbmdpbmUtPnBpbm5lZF9kZWZhdWx0X3N0YXRlKSB7CiAJCW1l
bWNweShyZWdzLCAvKiBza2lwIHJlc3RvcmluZyB0aGUgdmFuaWxsYSBQUEhXU1AgKi8KLS0gCjIu
MjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
