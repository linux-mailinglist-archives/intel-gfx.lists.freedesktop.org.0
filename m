Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FF1E7C25
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 23:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEBB6E038;
	Mon, 28 Oct 2019 22:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD446E038
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 22:03:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18999629-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 22:03:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 22:03:25 +0000
Message-Id: <20191028220325.9325-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/blt: fixup block_size rounding
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

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKVGhlcmUgaXMgbm90
aGluZyB0byBzYXkgdGhhdCB0aGUgb2JqLT5iYXNlLnNpemUgaXMgYWN0dWFsbHkgYSBtdWx0aXBs
ZQpvZiB0aGUgYmxvY2tfc2l6ZS4KCnYyOiBVc2Ugcm91bmRfdXAoKSBhcyBibG9ja19zaXplIGlz
IGEgcG93ZXItb2YtdHdvCgpSZXBvcnRlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYyB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwppbmRleCA1MWFjZmZkMzE1
NzUuLjFjMDRjY2FhMTgwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF9ibHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X2JsdC5jCkBAIC0zMCw3ICszMCw3IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxf
ZW1pdF92bWFfZmlsbF9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCUdFTV9CVUdfT04o
aW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoY2UtPmVuZ2luZSkpOwogCWludGVsX2VuZ2luZV9wbV9n
ZXQoY2UtPmVuZ2luZSk7CiAKLQljb3VudCA9IGRpdl91NjQodm1hLT5zaXplLCBibG9ja19zaXpl
KTsKKwljb3VudCA9IHJvdW5kX3VwKHZtYS0+c2l6ZSwgYmxvY2tfc2l6ZSkgLyBibG9ja19zaXpl
OwogCXNpemUgPSAoMSArIDggKiBjb3VudCkgKiBzaXplb2YodTMyKTsKIAlzaXplID0gcm91bmRf
dXAoc2l6ZSwgUEFHRV9TSVpFKTsKIAlwb29sID0gaW50ZWxfZW5naW5lX2dldF9wb29sKGNlLT5l
bmdpbmUsIHNpemUpOwpAQCAtMjE0LDcgKzIxNCw3IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxf
ZW1pdF92bWFfY29weV9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCUdFTV9CVUdfT04o
aW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoY2UtPmVuZ2luZSkpOwogCWludGVsX2VuZ2luZV9wbV9n
ZXQoY2UtPmVuZ2luZSk7CiAKLQljb3VudCA9IGRpdl91NjQoZHN0LT5zaXplLCBibG9ja19zaXpl
KTsKKwljb3VudCA9IHJvdW5kX3VwKGRzdC0+c2l6ZSwgYmxvY2tfc2l6ZSkgLyBibG9ja19zaXpl
OwogCXNpemUgPSAoMSArIDExICogY291bnQpICogc2l6ZW9mKHUzMik7CiAJc2l6ZSA9IHJvdW5k
X3VwKHNpemUsIFBBR0VfU0laRSk7CiAJcG9vbCA9IGludGVsX2VuZ2luZV9nZXRfcG9vbChjZS0+
ZW5naW5lLCBzaXplKTsKLS0gCjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
