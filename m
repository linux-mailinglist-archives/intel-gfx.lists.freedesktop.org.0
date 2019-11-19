Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C0F102948
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C616E987;
	Tue, 19 Nov 2019 16:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8816E987
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:24:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:24:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="258772838"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Nov 2019 08:24:15 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4BF2E5C1DFA; Tue, 19 Nov 2019 18:23:59 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 18:23:59 +0200
Message-ID: <87v9rfx2ao.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/17] drm/i915/gem: Manually dump the debug
 trace on GEM_BUG_ON
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2luY2Ug
aWd0IG5vdyBkZWZhdWx0cyB0byBub3QgZW5hYmxpbmcgZnRyYWNlLW9uLW9vcHMsIHdlIG5lZWQg
dG8KPiBtYW51YWxseSBpbnZva2UgR0VNX1RSQUNFX0RVTVAoKSB0byBzZWUgdGhlIGRlYnVnIGxv
ZyBwcmlvciB0byBhCj4gR0VNX0JVR19PTiBwYW5pY2tpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkFja2VkLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggfCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKPiBpbmRleCBjNzk4NTc2NzI5NmEu
LjE3NTNjODRkNmMwZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaAo+IEBAIC0zMCw2ICsz
MCw4IEBACj4gIAo+ICAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPiAgCj4gKyNpbmNsdWRlICJp
OTE1X3V0aWxzLmgiCj4gKwo+ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKPiAgCj4gICNpZmRl
ZiBDT05GSUdfRFJNX0k5MTVfREVCVUdfR0VNCj4gQEAgLTM5LDYgKzQxLDcgQEAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGU7Cj4gICNkZWZpbmUgR0VNX0JVR19PTihjb25kaXRpb24pIGRvIHsgaWYg
KHVubGlrZWx5KChjb25kaXRpb24pKSkgewlcCj4gIAkJR0VNX1RSQUNFX0VSUigiJXM6JWQgR0VN
X0JVR19PTiglcylcbiIsIFwKPiAgCQkJICAgICAgX19mdW5jX18sIF9fTElORV9fLCBfX3N0cmlu
Z2lmeShjb25kaXRpb24pKTsgXAo+ICsJCUdFTV9UUkFDRV9EVU1QKCk7IFwKPiAgCQlCVUcoKTsg
XAo+ICAJCX0gXAo+ICAJfSB3aGlsZSgwKQo+IC0tIAo+IDIuMjQuMApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
