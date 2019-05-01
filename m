Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 580331078F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE088919F;
	Wed,  1 May 2019 11:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A680890BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 11:45:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16415732-1500050 
 for multiple; Wed, 01 May 2019 12:45:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 12:45:29 +0100
Message-Id: <20190501114541.10077-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/14] drm/i915: Include fence signaled bit in
 print_request()
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

U2hvdyB0aGUgZmVuY2UgZmxhZ3MgdmlldyBvZiByZXF1ZXN0IGNvbXBsZXRpb24gaW4gYWRkaXRp
b24gdG8gdGhlCm5vcm1hbCBod3NwIGNoZWNrIGFuZCB3aGV0aGVyIHNpZ25hbGluZyBpcyBlbmFi
bGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCA1ICsr
KystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA2ZTQwZjhlYTlhNmEu
LmYxNzhmMTI2OGY0ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKQEAgLTEyMjksOCArMTIyOSwxMSBAQCBzdGF0aWMgdm9pZCBwcmludF9yZXF1ZXN0KHN0cnVj
dCBkcm1fcHJpbnRlciAqbSwKIAkJICAgaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkgPyAiISIg
OgogCQkgICBpOTE1X3JlcXVlc3Rfc3RhcnRlZChycSkgPyAiKiIgOgogCQkgICAiIiwKKwkJICAg
dGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULAorCQkJICAgICZycS0+ZmVuY2Uu
ZmxhZ3MpID8gICIrIiA6CiAJCSAgIHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdO
QUxfQklULAotCQkJICAgICZycS0+ZmVuY2UuZmxhZ3MpID8gICIrIiA6ICIiLAorCQkJICAgICZy
cS0+ZmVuY2UuZmxhZ3MpID8gICItIiA6CisJCSAgICIiLAogCQkgICBidWYsCiAJCSAgIGppZmZp
ZXNfdG9fbXNlY3MoamlmZmllcyAtIHJxLT5lbWl0dGVkX2ppZmZpZXMpLAogCQkgICBuYW1lKTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
