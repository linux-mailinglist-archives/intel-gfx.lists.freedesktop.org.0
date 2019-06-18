Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE74A451
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B285A6E200;
	Tue, 18 Jun 2019 14:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005AC6E200
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 14:46:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16942079-1500050 for multiple; Tue, 18 Jun 2019 15:46:29 +0100
MIME-Version: 1.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190618142108.9978-2-ville.syrjala@linux.intel.com>
References: <20190618142108.9978-1-ville.syrjala@linux.intel.com>
 <20190618142108.9978-2-ville.syrjala@linux.intel.com>
Message-ID: <156086918982.31375.16222108074150558958@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 15:46:29 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Fix various tracepoints for
 gen2
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Shawn Guo <shawn.guo@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE4IDE1OjIxOjA2KQo+IEBAIC01OSwxNCAr
NTcsMTMgQEAgVFJBQ0VfRVZFTlQoaW50ZWxfcGlwZV9kaXNhYmxlLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKSwKPiAgCj4gICAgICAgICAgICAgVFBfZmFzdF9hc3NpZ24oCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBwaXBlIF9waXBlOwo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgIGZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIF9waXBlKSB7Cj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VudHJ5LT5mcmFtZVtfcGlwZV0gPQo+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfcHJpdi0+ZHJtLmRyaXZl
ci0+Z2V0X3ZibGFua19jb3VudGVyKCZkZXZfcHJpdi0+ZHJtLCBfcGlwZSk7Cj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VudHJ5LT5zY2FubGluZVtfcGlwZV0gPQo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF9nZXRfY3J0Y19z
Y2FubGluZShpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgX3BpcGUpKTsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgaW50ZWxfY3J0YyAqX2NydGM7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgZm9y
X2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgX2NydGMpIHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF9fZW50cnktPmZyYW1lW19jcnRjLT5waXBlXSA9IGludGVs
X2NydGNfZ2V0X3ZibGFua19jb3VudGVyKF9jcnRjKTsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF9fZW50cnktPnNjYW5saW5lW19jcnRjLT5waXBlXSA9IGludGVsX2dldF9j
cnRjX3NjYW5saW5lKF9jcnRjKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgX19lbnRyeS0+cGlwZSA9IHBpcGU7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgX19lbnRyeS0+cGlwZSA9IGNydGMtPnBpcGU7CgpPay4gU3RhcmVk
IGhhcmQgdG8gbWFrZSBzdXJlIGl0IHdhcyBfY3J0YyBhbmQgbm90IGNydGMuIFdvdWxkIGNydGNf
XyBiZQptb3JlIG9idmlvdXMsIG9yIG1heWJlIGl0X18gc28gdGhhdCBpdCBkb2Vzbid0IGxvb2sg
YW55dGhpbmcgbGlrZSB0aGUKY3J0YyBhcmd1bWVudC4KCj4gICAgICAgICAgICAgVFBfZmFzdF9h
c3NpZ24oCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBwaXBlIHBpcGU7Cj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgewo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX19lbnRyeS0+ZnJhbWVbcGlwZV0g
PQo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfcHJpdi0+
ZHJtLmRyaXZlci0+Z2V0X3ZibGFua19jb3VudGVyKCZkZXZfcHJpdi0+ZHJtLCBwaXBlKTsKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF9fZW50cnktPnNjYW5saW5lW3BpcGVd
ID0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ZWxfZ2V0
X2NydGNfc2NhbmxpbmUoaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsIHBpcGUpKTsK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICBmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+
ZHJtLCBjcnRjKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VudHJ5
LT5mcmFtZVtjcnRjLT5waXBlXSA9IGludGVsX2NydGNfZ2V0X3ZibGFua19jb3VudGVyKGNydGMp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX19lbnRyeS0+c2NhbmxpbmVb
Y3J0Yy0+cGlwZV0gPSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9CgpPciBldmVuIGEgcG9wdWxhdGVfdmJsYW5rcyhpOTE1LCBfX2Vu
dHJ5LT5mcmFtZSwgX19lbnRyeS0+c2NhbmxpbmUpCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
