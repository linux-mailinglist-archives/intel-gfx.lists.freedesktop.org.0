Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F4C1542A0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 12:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48CE46EA2F;
	Thu,  6 Feb 2020 11:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0DB96EA2F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 11:07:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 03:07:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,409,1574150400"; d="scan'208";a="224973046"
Received: from aklett-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.38.199])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 03:06:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206003046.171642-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200206003046.171642-1-jose.souza@intel.com>
Date: Thu, 06 Feb 2020 13:07:05 +0200
Message-ID: <87mu9wnfdy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix redefinition of
 sanitize_watermarks_add_affected
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

T24gV2VkLCAwNSBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbW1pdCA0NGE2NzcxOTQ5N2IgKCJkcm0vaTkxNTogRml4IG1v
ZGVzZXQgbG9ja3MgaW4gc2FuaXRpemVfd2F0ZXJtYXJrcygpIikKPiB0aGF0IGFkZGVkIHRoaXMg
ZnVuY3Rpb24gaXMgY29ycmVjdGx5LCB0aGlzIGlzc3VlIHdhcyBpbnRyb2R1Y2VkIHdoZW4KPiBy
ZXNvbHZpbmcgdGhlIG1lcmdlIGNvbmZsaWN0LgoKSXQgd2FzIGEgc2lsZW50IGNvbmZsaWN0IGlu
IGRybS10aXAgcmVidWlsZC4gQ2hyaXMgZml4ZWQgaXQgd2l0aCBhIGZpeHVwCnBhdGNoIGluIGRy
bS1yZXJlcmUuIGJjMWJkZmQ1N2ExOSAoIjIwMjB5LTAybS0wNmQtMDFoLTUybS0xMnMgVVRDOgpk
cm0tdGlwIHJlcmVyZSBjYWNoZSB1cGRhdGUiKS4KCkJSLApKYW5pLgoKCgo+Cj4gRml4ZXM6IDlj
NjU0ZTQyMzUwNyAoIk1lcmdlIHJlbW90ZS10cmFja2luZyBicmFuY2gKPidkcm0taW50ZWwvZHJt
LWludGVsLW5leHQtcXVldWVkJyBpbnRvIGRybS10aXAiKSBDYzogSmFuaSBOaWt1bGEKPjxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4gLS0tCj5kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDI0IC0tLS0tLS0tLS0tLS0tLS0tLS0tCj4xIGZpbGUgY2hhbmdlZCwgMjQgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
IGluZGV4IGNkZTEwYjUzNmE5MS4uODBlZWJkYzRjNjcwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTc2ODgsMzAgKzE3Njg4LDYg
QEAgc3RhdGljIGludCBzYW5pdGl6ZV93YXRlcm1hcmtzX2FkZF9hZmZlY3RlZChzdHJ1Y3QgZHJt
X2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiAtc3RhdGljIGlu
dCBzYW5pdGl6ZV93YXRlcm1hcmtzX2FkZF9hZmZlY3RlZChzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqc3RhdGUpCj4gLXsKPiAtCXN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lOwo+IC0Jc3RydWN0IGRy
bV9jcnRjICpjcnRjOwo+IC0KPiAtCWRybV9mb3JfZWFjaF9jcnRjKGNydGMsIHN0YXRlLT5kZXYp
IHsKPiAtCQlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Cj4gLQo+IC0JCWNydGNf
c3RhdGUgPSBkcm1fYXRvbWljX2dldF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKPiAtCQlpZiAo
SVNfRVJSKGNydGNfc3RhdGUpKQo+IC0JCQlyZXR1cm4gUFRSX0VSUihjcnRjX3N0YXRlKTsKPiAt
CX0KPiAtCj4gLQlkcm1fZm9yX2VhY2hfcGxhbmUocGxhbmUsIHN0YXRlLT5kZXYpIHsKPiAtCQlz
dHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsKPiAtCj4gLQkJcGxhbmVfc3RhdGUg
PSBkcm1fYXRvbWljX2dldF9wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOwo+IC0JCWlmIChJU19F
UlIocGxhbmVfc3RhdGUpKQo+IC0JCQlyZXR1cm4gUFRSX0VSUihwbGFuZV9zdGF0ZSk7Cj4gLQl9
Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gLX0KPiAtCj4gIC8qCj4gICAqIENhbGN1bGF0ZSB3aGF0IHdl
IHRoaW5rIHRoZSB3YXRlcm1hcmtzIHNob3VsZCBiZSBmb3IgdGhlIHN0YXRlIHdlJ3ZlIHJlYWQK
PiAgICogb3V0IG9mIHRoZSBoYXJkd2FyZSBhbmQgdGhlbiBpbW1lZGlhdGVseSBwcm9ncmFtIHRo
b3NlIHdhdGVybWFya3Mgc28gdGhhdAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJj
ZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
