Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB951874A8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 10:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE956E270;
	Fri,  9 Aug 2019 08:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B567E6E270
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 08:57:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 01:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="350440472"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.25.45])
 by orsmga005.jf.intel.com with ESMTP; 09 Aug 2019 01:57:16 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190809051354.29981-1-chris@chris-wilson.co.uk>
References: <20190809051354.29981-1-chris@chris-wilson.co.uk>
Message-ID: <156534103509.5047.14073904955308327485@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 09 Aug 2019 11:57:15 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check for a second VCS engine
 more carefully
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDkgMDg6MTM6NTQpCj4gVG8gdXNlIHRoZSBs
ZWdhY3kgQlNEIHNlbGVjdG9yLCB5b3UgbXVzdCBoYXZlIGEgc2Vjb25kIFZDUyBlbmdpbmUsIG9y
Cj4gZWxzZSB0aGUgQUJJIHNpbXBseSBtYXBzIHRoZSByZXF1ZXN0IGZvciBhbm90aGVyIGVuZ2lu
ZSBvbnRvIFZDUzAuCj4gSG93ZXZlciwgd2Ugb25seSBjaGVja2VkIGEgc2luZ2xlIFZDUzEgbG9j
YXRpb24gYW5kIG92ZXJsb29raW5nIHRoZQo+IHBvc3NpYmlsaXR5IG9mIGEgc3BhcnNlIFZDUyBz
ZXQgYmVpbmcgbWFwcGVkIHRvIHRoZSBkZW5zZSBBQkkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgNSArKysrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gaW5kZXggNTY2ZThhNDg0NGNmLi5h
NDNhOWJkNDhiYzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMKPiBAQCAtMjIwMCw3ICsyMjAwLDEwIEBAIGViX3NlbGVjdF9sZWdhY3lf
cmluZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPiAgICAgICAgICAgICAgICAgcmV0dXJu
IC0xOwo+ICAgICAgICAgfQo+ICAKPiAtICAgICAgIGlmICh1c2VyX3JpbmdfaWQgPT0gSTkxNV9F
WEVDX0JTRCAmJiBIQVNfRU5HSU5FKGk5MTUsIFZDUzEpKSB7Cj4gKyAgICAgICBCVUlMRF9CVUdf
T04oSTkxNV9NQVhfVkNTID4gOCk7IC8qIHNlZSBod2VpZ2h0OCgpIGJlbG93ICovCj4gKyAgICAg
ICBpZiAodXNlcl9yaW5nX2lkID09IEk5MTVfRVhFQ19CU0QgJiYKPiArICAgICAgICAgICBod2Vp
Z2h0OCgoSU5URUxfSU5GTyhpOTE1KS0+ZW5naW5lX21hc2sgPj4gVkNTMCkgJgo+ICsgICAgICAg
ICAgICAgICAgICAgIChCSVQoSTkxNV9NQVhfVkNTKSAtIDEpKSA+IDEpIHsgLyogc2lsbHkgYWJp
IGlzIGFiaSAqLwoKVGhpcyBpcyBkZWZpbml0ZWx5IG5vdCBhIGhvdCBwYXRoLCBzbyBob3cgYWJv
dXQgc29tZXRoaW5nIGxpa2U6CgoJaHdlaWdodDY0KElOVEVMX0lORk8oaTkxNSktPmVuZ2luZV9t
YXNrICYKCQkgIEdFTk1BU0tfVUxMKFZDUzAgKyBJOTE1X01BWF9WQ1MsIFZDUzApKQoKUmVhZHMg
YmV0dGVyIHRvIG1lLiBSZWdhcmRsZXNzLCB0aGlzIGlzOwoKUmV2aWV3ZWQtYnk6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KClJlZ2FyZHMsIEpvb25h
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
