Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 409F185BB9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 09:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355366E792;
	Thu,  8 Aug 2019 07:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF7876E790
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 07:42:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17926058-1500050 
 for multiple; Thu, 08 Aug 2019 08:42:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 08:42:03 +0100
Message-Id: <20190808074207.18274-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190808074207.18274-1-chris@chris-wilson.co.uk>
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/19] drm/i915/gt: Mark context->active_count
 as protected by timeline->mutex
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

V2UgdXNlIHRpbWVsaW5lLT5tdXRleCB0byBwcm90ZWN0IG1vZGlmaWNhdGlvbnMgdG8KY29udGV4
dC0+YWN0aXZlX2NvdW50LCBhbmQgdGhlIGFzc29jaWF0ZWQgZW5hYmxlL2Rpc2FibGUgY2FsbGJh
Y2tzLgpEdWUgdG8gY29tcGxpY2F0aW9ucyB3aXRoIGVuZ2luZS1wbSBiYXJyaWVyIHRoZXJlIGlz
IGEgcGF0aCB3aGVyZSB3ZSB1c2VkCmEgInN1cGVybG9jayIgdG8gcHJvdmlkZSBzZXJpYWxpc2Vk
IHByb3RlY3QgYW5kIHNvIGNvdWxkIG5vdAp1bmNvbmRpdGlvbmFsbHkgYXNzZXJ0IHdpdGggbG9j
a2RlcCB0aGF0IGl0IHdhcyBhbHdheXMgaGVsZC4gSG93ZXZlciwKd2UgY2FuIG1hcmsgdGhlIG11
dGV4IGFzIHRha2VuIChub3RpbmcgdGhhdCB3ZSBtYXkgYmUgbmVzdGVkIHVuZGVybmVhdGgKb3Vy
c2VsdmVzKSB3aGljaCBtZWFucyB3ZSBjYW4gYmUgcmVhc3N1cmVkIHRoZSByaWdodCB0aW1lbGlu
ZS0+bXV0ZXggaXMKYWx3YXlzIHRyZWF0ZWQgYXMgaGVsZCBhbmQgbGV0IGxvY2tkZXAgcm9hbSBm
cmVlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaCAgICAgICB8ICAzICsrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oIHwgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jICAgICB8IDEyICsrKysrKysrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyAgICAgIHwgIDQgKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgICAgICAgIHwgIDMgKyst
CiA1IGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCmluZGV4IDA1M2ExMzA3ZWNiNC4uZGQ3
NDJhYzJmYmRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250
ZXh0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCkBAIC04
OSwxNyArODksMjAgQEAgdm9pZCBpbnRlbF9jb250ZXh0X2V4aXRfZW5naW5lKHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSk7CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250ZXh0X2VudGVy
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIHsKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjZS0+
dGltZWxpbmUtPm11dGV4KTsKIAlpZiAoIWNlLT5hY3RpdmVfY291bnQrKykKIAkJY2UtPm9wcy0+
ZW50ZXIoY2UpOwogfQogCiBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfY29udGV4dF9tYXJrX2Fj
dGl2ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7CisJbG9ja2RlcF9hc3NlcnRfaGVsZCgm
Y2UtPnRpbWVsaW5lLT5tdXRleCk7CiAJKytjZS0+YWN0aXZlX2NvdW50OwogfQogCiBzdGF0aWMg
aW5saW5lIHZvaWQgaW50ZWxfY29udGV4dF9leGl0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
IHsKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjZS0+dGltZWxpbmUtPm11dGV4KTsKIAlHRU1fQlVH
X09OKCFjZS0+YWN0aXZlX2NvdW50KTsKIAlpZiAoIS0tY2UtPmFjdGl2ZV9jb3VudCkKIAkJY2Ut
Pm9wcy0+ZXhpdChjZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0
X3R5cGVzLmgKaW5kZXggYTYzMmIyMGVjNGQ4Li42MTZmM2Y5YTY4MjUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3R5cGVzLmgKQEAgLTYxLDcgKzYxLDcgQEAg
c3RydWN0IGludGVsX2NvbnRleHQgewogCXUzMiAqbHJjX3JlZ19zdGF0ZTsKIAl1NjQgbHJjX2Rl
c2M7CiAKLQl1bnNpZ25lZCBpbnQgYWN0aXZlX2NvdW50OyAvKiBub3Rpb25hbGx5IHByb3RlY3Rl
ZCBieSB0aW1lbGluZS0+bXV0ZXggKi8KKwl1bnNpZ25lZCBpbnQgYWN0aXZlX2NvdW50OyAvKiBw
cm90ZWN0ZWQgYnkgdGltZWxpbmUtPm11dGV4ICovCiAKIAlhdG9taWNfdCBwaW5fY291bnQ7CiAJ
c3RydWN0IG11dGV4IHBpbl9tdXRleDsgLyogZ3VhcmRzIHBpbm5pbmcgYW5kIGFzc29jaWF0ZWQg
b24tZ3B1aW5nICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCmlu
ZGV4IGVlNmYwOGIzNTJhNC4uZTdkNjE3NTlkNzI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtMzcsNiArMzcsMTYgQEAgc3RhdGljIGludCBfX2VuZ2lu
ZV91bnBhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogCXJldHVybiAwOwogfQogCitzdGF0
aWMgaW5saW5lIHZvaWQgX190aW1lbGluZV9tYXJrX2xvY2soc3RydWN0IGludGVsX2NvbnRleHQg
KmNlKQoreworCW11dGV4X2FjcXVpcmUoJmNlLT50aW1lbGluZS0+bXV0ZXguZGVwX21hcCwgMiwg
MCwgX1RISVNfSVBfKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkIF9fdGltZWxpbmVfbWFya191
bmxvY2soc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCW11dGV4X3JlbGVhc2UoJmNlLT50
aW1lbGluZS0+bXV0ZXguZGVwX21hcCwgMCwgX1RISVNfSVBfKTsKK30KKwogc3RhdGljIGJvb2wg
c3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IHsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKQEAgLTYxLDYgKzcxLDcgQEAgc3RhdGljIGJv
b2wgc3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIAkgKiByZXRpcmluZyB0aGUgbGFzdCByZXF1ZXN0LCB0aHVzIGFsbCByaW5ncyBzaG91bGQg
YmUgZW1wdHkgYW5kCiAJICogYWxsIHRpbWVsaW5lcyBpZGxlLgogCSAqLworCV9fdGltZWxpbmVf
bWFya19sb2NrKGVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwogCXJxID0gX19pOTE1X3JlcXVlc3Rf
Y3JlYXRlKGVuZ2luZS0+a2VybmVsX2NvbnRleHQsIEdGUF9OT1dBSVQpOwogCWlmIChJU19FUlIo
cnEpKQogCQkvKiBDb250ZXh0IHN3aXRjaCBmYWlsZWQsIGhvcGUgZm9yIHRoZSBiZXN0ISBNYXli
ZSByZXNldD8gKi8KQEAgLTcyLDYgKzgzLDcgQEAgc3RhdGljIGJvb2wgc3dpdGNoX3RvX2tlcm5l
bF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCWk5MTVfcmVxdWVz
dF9hZGRfYWN0aXZlX2JhcnJpZXJzKHJxKTsKIAlfX2k5MTVfcmVxdWVzdF9jb21taXQocnEpOwor
CV9fdGltZWxpbmVfbWFya191bmxvY2soZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CiAKIAlyZXR1
cm4gZmFsc2U7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwppbmRl
eCA3YjQ3NmNkNTVkYWMuLmVhZmQ5NGQ1ZTIxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCkBAIC0zMzgsNiArMzM4LDggQEAgdm9pZCBpbnRlbF90aW1lbGluZV9l
bnRlcihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogewogCXN0cnVjdCBpbnRlbF9ndF90aW1l
bGluZXMgKnRpbWVsaW5lcyA9ICZ0bC0+Z3QtPnRpbWVsaW5lczsKIAorCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoJnRsLT5tdXRleCk7CisKIAlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmdGwtPnBpbl9j
b3VudCkpOwogCWlmICh0bC0+YWN0aXZlX2NvdW50KyspCiAJCXJldHVybjsKQEAgLTM1Miw2ICsz
NTQsOCBAQCB2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0
bCkKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmdGwtPmd0LT50
aW1lbGluZXM7CiAKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ0bC0+bXV0ZXgpOworCiAJR0VNX0JV
R19PTighdGwtPmFjdGl2ZV9jb3VudCk7CiAJaWYgKC0tdGwtPmFjdGl2ZV9jb3VudCkKIAkJcmV0
dXJuOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCBmNzQyYTNlOTBmZmQuLjE4
OWU4YzQ1YzRmNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTEwODcsNyAr
MTA4Nyw4IEBAIF9faTkxNV9yZXF1ZXN0X2FkZF90b190aW1lbGluZShzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKIAkgKiBwcmVjbHVkZXMgb3B0aW1pc2luZyB0byB1c2Ugc2VtYXBob3JlcyBzZXJp
YWxpc2F0aW9uIG9mIGEgc2luZ2xlCiAJICogdGltZWxpbmUgYWNyb3NzIGVuZ2luZXMuCiAJICov
Ci0JcHJldiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQodGltZWxpbmUtPmxhc3RfcmVxdWVz
dC5yZXF1ZXN0LCAxKTsKKwlwcmV2ID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZCh0aW1lbGlu
ZS0+bGFzdF9yZXF1ZXN0LnJlcXVlc3QsCisJCQkJCSBsb2NrZGVwX2lzX2hlbGQoJnRpbWVsaW5l
LT5tdXRleCkpOwogCWlmIChwcmV2ICYmICFpOTE1X3JlcXVlc3RfY29tcGxldGVkKHByZXYpKSB7
CiAJCWlmIChpc19wb3dlcl9vZl8yKHByZXYtPmVuZ2luZS0+bWFzayB8IHJxLT5lbmdpbmUtPm1h
c2spKQogCQkJaTkxNV9zd19mZW5jZV9hd2FpdF9zd19mZW5jZSgmcnEtPnN1Ym1pdCwKLS0gCjIu
MjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
