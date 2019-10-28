Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0ADE7A19
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 21:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E1AA6EA05;
	Mon, 28 Oct 2019 20:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3512C6EA05
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 20:30:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18998830-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 20:30:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 20:30:12 +0000
Message-Id: <20191028203012.14566-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Limit the blitter sizes to ensure
 low preemption latency
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

Q3VycmVudGx5IHdlIGluc2VydCBhIGFyYml0cmF0aW9uIHBvaW50IGV2ZXJ5IDEyOE1pQiBkdXJp
bmcgYSBibGl0dGVyCmNvcHkuIEF0IDhHaUIvcywgdGhpcyBpcyBhcm91bmQgMzBtcy4gVGhpcyBp
cyBhIGxpdHRsZSBvbiB0aGUgbGFyZ2Ugc2lkZQppZiB3ZSBuZWVkIHRvIGluamVjdCBhIGhpZ2gg
cHJpb3JpdHkgd29yaywgc28gcmVkdWNlZCBpdCBkb3duIHRvIDhNaUIgb3IKcm91Z2hseSAxbXMu
Cgp2MjogRG9uJ3QgZm9yZ2V0IGJvdGggZmlsbC9jb3B5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dF9ibHQuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9i
bHQuYwppbmRleCA1MTZlNjFlOTkyMTIuLjUxYWNmZmQzMTU3NSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCkBAIC0xNyw3ICsxNyw3IEBAIHN0
cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfZmlsbF9ibHQoc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLAogCQkJCQkgdTMyIHZhbHVlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gY2UtPnZtLT5pOTE1OwotCWNvbnN0IHUzMiBibG9ja19zaXplID0gUzE2X01BWCAqIFBB
R0VfU0laRTsKKwljb25zdCB1MzIgYmxvY2tfc2l6ZSA9IFNaXzhNOyAvKiB+MW1zIGF0IDhHaUIv
cyBwcmVlbXB0aW9uIGRlbGF5ICovCiAJc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKnBv
b2w7CiAJc3RydWN0IGk5MTVfdm1hICpiYXRjaDsKIAl1NjQgb2Zmc2V0OwpAQCAtMjAxLDcgKzIw
MSw3IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfY29weV9ibHQoc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLAogCQkJCQkgc3RydWN0IGk5MTVfdm1hICpkc3QpCiB7CiAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjZS0+dm0tPmk5MTU7Ci0JY29uc3QgdTMyIGJsb2Nr
X3NpemUgPSBTMTZfTUFYICogUEFHRV9TSVpFOworCWNvbnN0IHUzMiBibG9ja19zaXplID0gU1pf
OE07IC8qIH4xbXMgYXQgOEdpQi9zIHByZWVtcHRpb24gZGVsYXkgKi8KIAlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsKIAlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOwogCXU2NCBz
cmNfb2Zmc2V0LCBkc3Rfb2Zmc2V0OwotLSAKMi4yNC4wLnJjMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
