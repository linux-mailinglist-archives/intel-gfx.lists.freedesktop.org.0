Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF99104388
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 19:39:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832F26E917;
	Wed, 20 Nov 2019 18:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59AA6E917
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 18:39:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19276630-1500050 
 for multiple; Wed, 20 Nov 2019 18:39:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 18:39:28 +0000
Message-Id: <20191120183928.3968026-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Mark intel_wakeref_get() as a sleeper
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

QXNzdW1lIHRoYXQgaW50ZWxfd2FrZXJlZ19nZXQoKSBtYXkgdGFrZSB0aGUgbXV0ZXgsIGFuZCBw
ZXJmb3JtIG90aGVyCnNsZWVwaW5nIGFjdGlvbnMgaW4gdGhlIGNvdXJzZSBvZiBpdHMgY2FsbGJh
Y2tzIGFuZCBzbyB1c2UgbWlnaHRfc2xlZXAoKQp0byBlbnN1cmUgdGhhdCBhbGwgY2FsbGVycyBh
YmlkZS4gQW55dGhpbmcgdGhhdCBjYW5ub3Qgc2xlZXAgaGFzIHRvIHVzZQplLmcuIGludGVsX3dh
a2VyZWZfZ2V0X2lmX2FjdGl2ZSgpIHRvIGF2b2lkIGhpdHRpbmcgdGhlIG5vbi1hdG9taWMKcGF0
aHMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmggfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3dha2VyZWYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYu
aAppbmRleCBjYmM0ZmMwZDY1M2YuLjE2ODZiYzc2ODgxYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dha2VyZWYuaApAQCAtNzYsNiArNzYsNyBAQCB2b2lkIF9faW50ZWxfd2FrZXJlZl9wdXRf
bGFzdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpOwogc3Rh
dGljIGlubGluZSBpbnQKIGludGVsX3dha2VyZWZfZ2V0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3
ZikKIHsKKwltaWdodF9zbGVlcCgpOwogCWlmICh1bmxpa2VseSghYXRvbWljX2luY19ub3RfemVy
bygmd2YtPmNvdW50KSkpCiAJCXJldHVybiBfX2ludGVsX3dha2VyZWZfZ2V0X2ZpcnN0KHdmKTsK
IAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
