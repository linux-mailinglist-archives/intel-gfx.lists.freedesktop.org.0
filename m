Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1088B3CEA8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 16:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AEB8916D;
	Tue, 11 Jun 2019 14:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5B88916D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 14:27:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16865296-1500050 
 for multiple; Tue, 11 Jun 2019 15:27:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 15:27:25 +0100
Message-Id: <20190611142725.4531-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Skip initializing PT with scratch
 if full
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

SWYgd2Ugd2lsbCBjb21wbGV0ZWx5IG92ZXJ3cml0ZSB0aGUgUFQgd2l0aCBQVEVzIGZvciB0aGUg
b2JqZWN0LCB3ZSBjYW4KZm9yZ28gZmlsbGluZyBpdCB3aXRoIHNjcmF0Y2ggZW50cmllcy4KClJl
ZmVyZW5jZXM6IDE0ODI2NjczMjQ3ZSAoImRybS9pOTE1OiBPbmx5IGluaXRpYWxpemUgcGFydGlh
bGx5IGZpbGxlZCBwYWdldGFibGVzIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5l
bkBsaW51eC5pbnRlbC5jb20+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwu
Y29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFp
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsrLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZGFlY2JmOTFlZmM2Li42ZjQzN2IyOGZlMmEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xODQ2LDcgKzE4NDYsOCBAQCBzdGF0
aWMgaW50IGdlbjZfYWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
CiAJCQlpZiAoSVNfRVJSKHB0KSkKIAkJCQlnb3RvIHVud2luZF9vdXQ7CiAKLQkJCWdlbjZfaW5p
dGlhbGl6ZV9wdCh2bSwgcHQpOworCQkJaWYgKGNvdW50IDwgR0VONl9QVEVTKQorCQkJCWdlbjZf
aW5pdGlhbGl6ZV9wdCh2bSwgcHQpOwogCiAJCQlvbGQgPSBjbXB4Y2hnKCZwcGd0dC0+YmFzZS5w
ZC5wYWdlX3RhYmxlW3BkZV0sCiAJCQkJICAgICAgdm0tPnNjcmF0Y2hfcHQsIHB0KTsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
