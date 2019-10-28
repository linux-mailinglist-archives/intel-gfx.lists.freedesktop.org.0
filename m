Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3186EE7410
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 15:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207D16E8D6;
	Mon, 28 Oct 2019 14:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C91636E8D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 14:53:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 07:53:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="350698608"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 28 Oct 2019 07:53:39 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 743535C1EB8; Mon, 28 Oct 2019 16:52:46 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191028142652.1987-1-chris@chris-wilson.co.uk>
References: <20191028142652.1987-1-chris@chris-wilson.co.uk>
Date: Mon, 28 Oct 2019 16:52:46 +0200
Message-ID: <871ruw7wht.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Initialise ret
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gS2VlcCBz
bWF0Y2ggcXVpZXQsCj4KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS8vZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jb250ZXh0LmM6MTI2OCBfX2lndF9jdHhfc3NldSgpIGVycm9yOiB1bmluaXRpYWxpemVk
IHN5bWJvbCAncmV0Jy4KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS8vZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jb250ZXh0LmM6MTI4MCBfX2lndF9jdHhfc3NldSgpIGVycm9yOiB1bmluaXRpYWxpemVk
IHN5bWJvbCAncmV0Jy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiBpbmRleCBkMWQ4NzNmMjMz
MzguLmM2ZTYxNTY0YmI1ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTExODgsNyArMTE4OCw3IEBA
IF9faWd0X2N0eF9zc2V1KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICB7Cj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICAJaW50IGluc3QgPSAwOwo+IC0JaW50
IHJldDsKPiArCWludCByZXQgPSAwOwo+ICAKPiAgCWlmIChJTlRFTF9HRU4oaTkxNSkgPCA5IHx8
ICFSVU5USU1FX0lORk8oaTkxNSktPnNzZXUuaGFzX3NsaWNlX3BnKQo+ICAJCXJldHVybiAwOwo+
IC0tIAo+IDIuMjQuMC5yYzEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
