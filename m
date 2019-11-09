Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 929D2F615F
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Nov 2019 21:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2DDF6E40D;
	Sat,  9 Nov 2019 20:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734C46E415
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Nov 2019 20:26:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19143370-1500050 
 for multiple; Sat, 09 Nov 2019 20:26:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Nov 2019 20:26:14 +0000
Message-Id: <20191109202614.16019-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Cancel context if it hangs after it
 is closed
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

SWYgd2UgZGV0ZWN0IGEgaGFuZyBpbiBhIGNsb3NlZCBjb250ZXh0LCBqdXN0IGZsdXNoIGFsbCBv
ZiBpdHMgcmVxdWVzdHMKYW5kIGNhbmNlbCBhbnkgcmVtYWluaW5nIGV4ZWN1dGlvbiBhbG9uZyB0
aGUgY29udGV4dC4gTm90ZSB0aGF0IGFmdGVyCmNsb3NpbmcgdGhlIGNvbnRleHQsIHRoZSBsYXN0
IHJlZmVyZW5jZSB0byB0aGUgY29udGV4dCBtYXkgYmUgZHJvcHBlZCwKbGVhdmluZyBpdCBvbmx5
IHZhbGlkIHVuZGVyIFJDVS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwppbmRleCBmMDNlMDAwMDUxYzEuLmE2YjBkMDBjM2E1
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCkBAIC04MSw2ICs4MSwxMSBA
QCBzdGF0aWMgYm9vbCBjb250ZXh0X21hcmtfZ3VpbHR5KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgpCiAJYm9vbCBiYW5uZWQ7CiAJaW50IGk7CiAKKwlpZiAoaTkxNV9nZW1fY29udGV4dF9p
c19jbG9zZWQoY3R4KSkgeworCQlpOTE1X2dlbV9jb250ZXh0X3NldF9iYW5uZWQoY3R4KTsKKwkJ
cmV0dXJuIHRydWU7CisJfQorCiAJYXRvbWljX2luYygmY3R4LT5ndWlsdHlfY291bnQpOwogCiAJ
LyogQ29vbCBjb250ZXh0cyBhcmUgdG9vIGNvb2wgdG8gYmUgYmFubmVkISAoVXNlZCBmb3IgcmVz
ZXQgdGVzdGluZy4pICovCkBAIC0xMjQsNiArMTI5LDcgQEAgdm9pZCBfX2k5MTVfcmVxdWVzdF9y
ZXNldChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgYm9vbCBndWlsdHkpCiAKIAlHRU1fQlVHX09O
KGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKTsKIAorCXJjdV9yZWFkX2xvY2soKTsgLyogcHJv
dGVjdCB0aGUgR0VNIGNvbnRleHQgKi8KIAlpZiAoZ3VpbHR5KSB7CiAJCWk5MTVfcmVxdWVzdF9z
a2lwKHJxLCAtRUlPKTsKIAkJaWYgKGNvbnRleHRfbWFya19ndWlsdHkocnEtPmdlbV9jb250ZXh0
KSkKQEAgLTEzMiw2ICsxMzgsNyBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3Jlc2V0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCBib29sIGd1aWx0eSkKIAkJZG1hX2ZlbmNlX3NldF9lcnJvcigmcnEt
PmZlbmNlLCAtRUFHQUlOKTsKIAkJY29udGV4dF9tYXJrX2lubm9jZW50KHJxLT5nZW1fY29udGV4
dCk7CiAJfQorCXJjdV9yZWFkX3VubG9jaygpOwogfQogCiBzdGF0aWMgYm9vbCBpOTE1X2luX3Jl
c2V0KHN0cnVjdCBwY2lfZGV2ICpwZGV2KQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
