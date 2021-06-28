Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFAD3B5B98
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 11:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8A96E3F2;
	Mon, 28 Jun 2021 09:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3C16E3F2;
 Mon, 28 Jun 2021 09:48:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="293558331"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="293558331"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 02:48:00 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="454452410"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 02:47:58 -0700
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210628090943.45690-1-thomas.hellstrom@linux.intel.com>
 <20210628090943.45690-2-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <bc70ed00-e5a9-e892-c8b2-3c01bd562017@linux.intel.com>
Date: Mon, 28 Jun 2021 11:47:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210628090943.45690-2-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/gem: Implement object
 migration
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjgvMjEgMTE6MDkgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+IEludHJvZHVj
ZSBhbiBpbnRlcmZhY2UgdG8gbWlncmF0ZSBvYmplY3RzIGJldHdlZW4gcmVnaW9ucy4KPiBUaGlz
IGlzIHByaW1hcmlseSBpbnRlbmRlZCB0byBtaWdyYXRlIG9iamVjdHMgdG8gTE1FTSBmb3IgZGlz
cGxheSBhbmQKPiB0byBTWVNURU0gZm9yIGRtYS1idWYsIGJ1dCBtaWdodCBiZSByZXVzZWQgaW4g
b25lIGZvcm0gb3IgYW5vdGhlciBmb3IKPiBwZXJmb3JtYW5kZS1iYXNlZCBtaWdyYXRpb24uCj4K
PiB2MjoKPiAtIFZlcmlmeSB0aGF0IHRoZSBtZW1vcnkgcmVnaW9uIGdpdmVuIGFzIGFuIGlkIHJl
YWxseSBleGlzdHMuCj4gICAgKFJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkKPiAtIENhbGwgaTkx
NV9nZW1fb2JqZWN0X3tpbml0LHJlbGVhc2V9X21lbW9yeV9yZWdpb24oKSB3aGVuIHN3aXRjaGlu
ZyByZWdpb24KPiAgICB0byBoYW5kbGUgYWxzbyBzd2l0Y2hpbmcgcmVnaW9uIGxpc3RzLiAoUmVw
b3J0ZWQgYnkgTWF0dGhldyBBdWxkKQo+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLD
tm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgOTYgKysrKysrKysrKysrKysr
KysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwg
MTIgKysrCj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAg
fCAgOSArKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgICAg
IHwgNjkgKysrKysrKysrLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3dhaXQuYyAgICAgIHwgMTkgKysrKwo+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxODggaW5zZXJ0aW9u
cygrKSwgMTcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5jCj4gaW5kZXggMDdlOGZmOWE4YWFlLi41MmEzNzYxOTA1NGQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gQEAgLTUxMyw2ICs1
MTMsMTAyIEBAIGJvb2wgaTkxNV9nZW1fb2JqZWN0X2hhc19pb21lbShjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICAgCXJldHVybiBvYmotPm1lbV9mbGFncyAmIEk5MTVf
Qk9fRkxBR19JT01FTTsKPiAgIH0KPiAgIAo+ICsvKioKPiArICogaTkxNV9nZW1fb2JqZWN0X2Nh
bl9taWdyYXRlIC0gV2hldGhlciBhbiBvYmplY3QgbGlrZWx5IGNhbiBiZSBtaWdyYXRlZAo+ICsg
Kgo+ICsgKiBAb2JqOiBUaGUgb2JqZWN0IHRvIG1pZ3JhdGUKPiArICogQGlkOiBUaGUgcmVnaW9u
IGludGVuZGVkIHRvIG1pZ3JhdGUgdG8KPiArICoKPiArICogQ2hlY2sgd2hldGhlciB0aGUgb2Jq
ZWN0IGJhY2tlbmQgc3VwcG9ydHMgbWlncmF0aW9uIHRvIHRoZQo+ICsgKiBnaXZlbiByZWdpb24u
IE5vdGUgdGhhdCBwaW5uaW5nIG1heSBhZmZlY3QgdGhlIGFiaWxpdHkgdG8gbWlncmF0ZS4KPiAr
ICoKPiArICogUmV0dXJuOiB0cnVlIGlmIG1pZ3JhdGlvbiBpcyBwb3NzaWJsZSwgZmFsc2Ugb3Ro
ZXJ3aXNlLgo+ICsgKi8KPiArYm9vbCBpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiArCQkJCSBlbnVtIGludGVsX3JlZ2lvbl9pZCBp
ZCkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KG9iai0+
YmFzZS5kZXYpOwo+ICsJdW5zaWduZWQgaW50IG51bV9hbGxvd2VkID0gb2JqLT5tbS5uX3BsYWNl
bWVudHM7Cj4gKwlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbXI7Cj4gKwl1bnNpZ25lZCBp
bnQgaTsKPiArCj4gKwlHRU1fQlVHX09OKGlkID49IElOVEVMX1JFR0lPTl9VTktOT1dOKTsKPiAr
CUdFTV9CVUdfT04ob2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFEVl9XSUxMTkVFRCk7Cj4gKwo+ICsJ
aWYgKCFvYmotPm9wcy0+bWlncmF0ZSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJbXIgPSBp
OTE1LT5tbS5yZWdpb25zW2lkXTsKPiArCWlmICghbXIpCj4gKwkJcmV0dXJuIGZhbHNlOwoKCkht
bS4gU2hvdWxkIHByb2JhYmx5IHN3aXRjaCBvcmRlciBiZXR3ZWVuIHRoZXNlIHR3bywgb3RoZXJ3
aXNlIApjYW5fbWlncmF0ZSB3aWxsIGFsd2F5cyByZXR1cm4gZmFsc2Ugb24gIVRUTQoKL1Rob21h
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
