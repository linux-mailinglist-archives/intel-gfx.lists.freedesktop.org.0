Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A3BAED1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 10:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D02F6E1D8;
	Mon, 23 Sep 2019 08:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E70B6E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 08:01:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18582015-1500050 
 for multiple; Mon, 23 Sep 2019 09:00:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 09:00:38 +0100
Message-Id: <20190923080038.30729-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Relax assertion for a
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
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKaW5kZXggMWEyYjcxMTU3ZjA4Li44MGRlZDk5YmNiMTUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yMzgzLDcgKzIzODMsNiBAQCBzdGF0aWMgdm9pZCBf
X2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3Rh
bGxlZCkKIAlHRU1fQlVHX09OKCFpOTE1X3ZtYV9pc19waW5uZWQoY2UtPnN0YXRlKSk7CiAKIAkv
KiBQcm9jbGFpbSB3ZSBoYXZlIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gdGhlIGNvbnRleHQgaW1hZ2Uh
ICovCi0JR0VNX0JVR19PTighaW50ZWxfY29udGV4dF9pc19waW5uZWQoY2UpKTsKIAltdXRleF9h
Y3F1aXJlKCZjZS0+cGluX211dGV4LmRlcF9tYXAsIDIsIDAsIF9USElTX0lQXyk7CiAKIAlycSA9
IGFjdGl2ZV9yZXF1ZXN0KHJxKTsKQEAgLTI0MzIsNiArMjQzMSw3IEBAIHN0YXRpYyB2b2lkIF9f
ZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFs
bGVkKQogCSAqIGZ1dHVyZSByZXF1ZXN0IHdpbGwgYmUgYWZ0ZXIgdXNlcnNwYWNlIGhhcyBoYWQg
dGhlIG9wcG9ydHVuaXR5CiAJICogdG8gcmVjcmVhdGUgaXRzIG93biBzdGF0ZS4KIAkgKi8KKwlH
RU1fQlVHX09OKCFpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpOwogCXJlZ3MgPSBjZS0+bHJj
X3JlZ19zdGF0ZTsKIAlpZiAoZW5naW5lLT5waW5uZWRfZGVmYXVsdF9zdGF0ZSkgewogCQltZW1j
cHkocmVncywgLyogc2tpcCByZXN0b3JpbmcgdGhlIHZhbmlsbGEgUFBIV1NQICovCi0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
