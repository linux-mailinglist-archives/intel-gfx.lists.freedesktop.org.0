Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DDB151859
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 11:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7B96E5BB;
	Tue,  4 Feb 2020 10:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17476E5BB
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 10:01:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 02:01:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="431460175"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 04 Feb 2020 02:01:47 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 38E2E5C0D59; Tue,  4 Feb 2020 12:00:55 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200203181625.589118-1-chris@chris-wilson.co.uk>
References: <20200203181625.589118-1-chris@chris-wilson.co.uk>
Date: Tue, 04 Feb 2020 12:00:55 +0200
Message-ID: <874kw6brjc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Ensure string fits
 within name[]
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2hyaW5r
IHRoZSBzdHJuY3B5IGJvdW5kcyB0byBlbnN1cmUgdGhlIE5VTC10ZXJtaW5hdG9yIGNhbiBmaXQg
d2l0aGluCj4gdGhlIGVtYmVkZGVkIGFycmF5Ogo+Cj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MjQ3NToKPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jOiBJbiBmdW5jdGlvbiDi
gJhtb2NrX2NvbnRleHTigJk6Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9t
b2NrX2NvbnRleHQuYzo0MDozOiBlcnJvcjog4oCYc3RybmNweeKAmSBzcGVjaWZpZWQgYm91bmQg
MjQgZXF1YWxzIGRlc3RpbmF0aW9uIHNpemUgWy1XZXJyb3I9c3RyaW5nb3AtdHJ1bmNhdGlvbl0K
PiAgICA0MCB8ICAgc3RybmNweShjdHgtPm5hbWUsIG5hbWUsIHNpemVvZihjdHgtPm5hbWUpKTsK
Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2Nv
bnRleHQuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9tb2NrX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9j
a19jb250ZXh0LmMKPiBpbmRleCA3YmFkOGZlZDQyMzguLjgxNzY0Mjg5Y2YwZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuYwo+
IEBAIC0zNyw3ICszNyw3IEBAIG1vY2tfY29udGV4dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKPiAgCWlmIChuYW1lKSB7Cj4gIAkJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0Owo+ICAK
PiAtCQlzdHJuY3B5KGN0eC0+bmFtZSwgbmFtZSwgc2l6ZW9mKGN0eC0+bmFtZSkpOwo+ICsJCXN0
cm5jcHkoY3R4LT5uYW1lLCBuYW1lLCBzaXplb2YoY3R4LT5uYW1lKSAtIDEpOwo+ICAKPiAgCQlw
cGd0dCA9IG1vY2tfcHBndHQoaTkxNSwgbmFtZSk7Cj4gIAkJaWYgKCFwcGd0dCkKPiAtLSAKPiAy
LjI1LjAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
