Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C592F801F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 16:56:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0928789ED3;
	Fri, 15 Jan 2021 15:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 919C189ED3
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 15:56:15 +0000 (UTC)
IronPort-SDR: F/lqFj1099DOcqFwn/OxZFEIvf8hUgP05UEYyiBYKBWdEAIYY638R5SoEvNymAQ0lsWmRPKqjD
 TveZvvrVpbeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="177788956"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="177788956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 07:56:14 -0800
IronPort-SDR: dWOGe4DYfw+B48S7jHn7DkiNuEI/VgJVwOLd0p6PQmyvUBzTsT+x0aCsVXDv5nejYiT0dvyiGU
 uyF0EmFiKyUw==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="382709966"
Received: from avivs-mobl.amr.corp.intel.com (HELO intel.com) ([10.209.107.35])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 07:56:11 -0800
Date: Fri, 15 Jan 2021 10:56:09 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210115155609.GA3226@intel.com>
References: <20210115142623.29897-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210115142623.29897-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Mark private i915_gem_stolen
 functions as static
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKYW4gMTUsIDIwMjEgYXQgMDI6MjY6MjNQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYzo2MjQ6NTog
ZXJyb3I6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYX19pOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX3N0b2xlbuKAmSBbLVdlcnJvcj1taXNzaW5nLXByb3RvdHlwZXNdCj4gIGludCBfX2k5MTVf
Z2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0s
Cj4gICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jOjY0OTo1OiBlcnJvcjogbm8gcHJldmlvdXMgcHJv
dG90eXBlIGZvciDigJhfaTkxNV9nZW1fb2JqZWN0X3N0b2xlbl9pbml04oCZIFstV2Vycm9yPW1p
c3NpbmctcHJvdG90eXBlc10KPiAgaW50IF9pOTE1X2dlbV9vYmplY3Rfc3RvbGVuX2luaXQoc3Ry
dWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoK
UmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyB8IDE0ICsrKysr
KystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9z
dG9sZW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwo+IGlu
ZGV4IDI3ZDk1YmRkYmY0ZC4uYjIyMTQ5MjUzMWVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwo+IEBAIC02MjEsOSArNjIxLDkgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9vYmplY3Rfc3RvbGVu
X29wcyA9IHsKPiAgCS5yZWxlYXNlID0gaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2Vfc3RvbGVuLAo+
ICB9Owo+ICAKPiAtaW50IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0IGlu
dGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPiAtCQkJCSAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAo+IC0JCQkJICAgIHN0cnVjdCBkcm1fbW1fbm9kZSAqc3RvbGVuKQo+ICtzdGF0
aWMgaW50IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb24gKm1lbSwKPiArCQkJCQkgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAo+ICsJCQkJCSAgIHN0cnVjdCBkcm1fbW1fbm9kZSAqc3RvbGVuKQo+ICB7Cj4gIAlzdGF0aWMg
c3RydWN0IGxvY2tfY2xhc3Nfa2V5IGxvY2tfY2xhc3M7Cj4gIAl1bnNpZ25lZCBpbnQgY2FjaGVf
bGV2ZWw7Cj4gQEAgLTY0NiwxMCArNjQ2LDEwIEBAIGludCBfX2k5MTVfZ2VtX29iamVjdF9jcmVh
dGVfc3RvbGVuKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCj4gIAlyZXR1cm4gMDsK
PiAgfQo+ICAKPiAtaW50IF9pOTE1X2dlbV9vYmplY3Rfc3RvbGVuX2luaXQoc3RydWN0IGludGVs
X21lbW9yeV9yZWdpb24gKm1lbSwKPiAtCQkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAo+IC0JCQkJIHJlc291cmNlX3NpemVfdCBzaXplLAo+IC0JCQkJIHVuc2lnbmVkIGludCBm
bGFncykKPiArc3RhdGljIGludCBfaTkxNV9nZW1fb2JqZWN0X3N0b2xlbl9pbml0KHN0cnVjdCBp
bnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCj4gKwkJCQkJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKPiArCQkJCQlyZXNvdXJjZV9zaXplX3Qgc2l6ZSwKPiArCQkJCQl1bnNpZ25lZCBp
bnQgZmxhZ3MpCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbWVtLT5p
OTE1Owo+ICAJc3RydWN0IGRybV9tbV9ub2RlICpzdG9sZW47Cj4gLS0gCj4gMi4yMC4xCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
