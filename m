Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FD67DB5A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 14:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A03D6E5B4;
	Thu,  1 Aug 2019 12:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3D66E5B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 12:24:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17787731-1500050 for multiple; Thu, 01 Aug 2019 13:24:48 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190730113432.22146-2-jani.nikula@intel.com>
References: <20190730113432.22146-1-jani.nikula@intel.com>
 <20190730113432.22146-2-jani.nikula@intel.com>
Message-ID: <156466228598.6045.13388313704690551932@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 13:24:46 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: add SPDX headers to subdir
 Makefiles
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNy0zMCAxMjozNDozMSkKPiBBZGQgdGhlIFNQRFgg
aGVhZGVycy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L01ha2VmaWxlIHwg
MiArKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUgICAgIHwgMiArKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9NYWtlZmlsZSAgICAgIHwgMiArKwo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9NYWtlZmlsZSAgIHwgMiArKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmlsZQo+IGlu
ZGV4IDE3M2MzMDVkNzg2Ni4uNjI0YjZmYmExYjljIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L01ha2VmaWxlCj4gQEAgLTEsMyArMSw1IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAoKSSB0aG91Z2h0IHRoZSBidWlsZCBzeXN0ZW0gd2FzIEdQTAotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
