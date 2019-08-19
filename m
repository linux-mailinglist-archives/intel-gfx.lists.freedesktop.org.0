Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD43091E75
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 09:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579036E0C3;
	Mon, 19 Aug 2019 07:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C80506E0C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 07:58:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18185095-1500050 
 for multiple; Mon, 19 Aug 2019 08:58:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 08:58:19 +0100
Message-Id: <20190819075835.20065-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819075835.20065-1-chris@chris-wilson.co.uk>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/18] drm/i915/gt: Mark up the nested engine-pm
 timeline lock as irqsafe
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

V2UgdXNlIGEgZmFrZSB0aW1lbGluZS0+bXV0ZXggbG9jayB0byByZWFzc3VyZSBsb2NrZGVwIHRo
YXQgdGhlIHRpbWVsaW5lCmlzIGFsd2F5cyBsb2NrZWQgd2hlbiBlbWl0dGluZyByZXF1ZXN0cy4g
SG93ZXZlciwgdGhlIHVzZSBpbnNpZGUKX19lbmdpbmVfcGFyaygpIG1heSBiZSBpbnNpZGUgaGFy
ZGlycSBhbmQgc28gbG9ja2RlcCBub3cgY29tcGxhaW5zIGFib3V0CnRoZSBtaXhlZCBpcnEtc3Rh
dGUgb2YgdGhlIG5lc3RlZCBsb2NrZWQuIERpc2FibGUgaXJxcyBhcm91bmQgdGhlCmxvY2tkZXAg
dHJhY2tpbmcgdG8ga2VlcCBpdCBoYXBweS4KCkZpeGVzOiA2YzY5YTQ1NDQ1YWYgKCJkcm0vaTkx
NS9ndDogTWFyayBjb250ZXh0LT5hY3RpdmVfY291bnQgYXMgcHJvdGVjdGVkIGJ5IHRpbWVsaW5l
LT5tdXRleCIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6
IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIHwgMTggKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKaW5kZXggNWYwM2Y3ZGNhZDcyLi41ZDAwMzc1MTk2OGIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC0zNyw5ICsz
NywxNSBAQCBzdGF0aWMgaW50IF9fZW5naW5lX3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAq
d2YpCiAJcmV0dXJuIDA7CiB9CiAKKyNpZiBJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKQorCiBz
dGF0aWMgaW5saW5lIHZvaWQgX190aW1lbGluZV9tYXJrX2xvY2soc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlKQogeworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisKKwlsb2NhbF9pcnFfc2F2ZShmbGFn
cyk7CiAJbXV0ZXhfYWNxdWlyZSgmY2UtPnRpbWVsaW5lLT5tdXRleC5kZXBfbWFwLCAyLCAwLCBf
VEhJU19JUF8pOworCWxvY2FsX2lycV9yZXN0b3JlKGZsYWdzKTsKIH0KIAogc3RhdGljIGlubGlu
ZSB2b2lkIF9fdGltZWxpbmVfbWFya191bmxvY2soc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQpA
QCAtNDcsNiArNTMsMTggQEAgc3RhdGljIGlubGluZSB2b2lkIF9fdGltZWxpbmVfbWFya191bmxv
Y2soc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCW11dGV4X3JlbGVhc2UoJmNlLT50aW1lbGlu
ZS0+bXV0ZXguZGVwX21hcCwgMCwgX1RISVNfSVBfKTsKIH0KIAorI2Vsc2UKKworc3RhdGljIGlu
bGluZSB2b2lkIF9fdGltZWxpbmVfbWFya19sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
K3sKK30KKworc3RhdGljIGlubGluZSB2b2lkIF9fdGltZWxpbmVfbWFya191bmxvY2soc3RydWN0
IGludGVsX2NvbnRleHQgKmNlKQoreworfQorCisjZW5kaWYKKwogc3RhdGljIGJvb2wgc3dpdGNo
X3RvX2tlcm5lbF9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKIAlz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
