Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1C31BBBDD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 13:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985476E379;
	Tue, 28 Apr 2020 11:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05096E378
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 11:05:01 +0000 (UTC)
IronPort-SDR: 0FasRGu5YGflskebLnr/48yij3AeTTEwSh4bUUYHMXqKC/lPwQGwve/d/6Jl+tTTQX2NIBavnm
 agN3m3aWcl8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 04:05:01 -0700
IronPort-SDR: 9zw03L84qx4jj47pncUKKkNhvf5cuOOz4Kl/KZoFr1Eg8ldNQXz0D+IETK49ZfRaQGsPgOhzNJ
 qyKfoa+nK9Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="336597858"
Received: from pbooyens-mobl1.ger.corp.intel.com (HELO [10.252.37.143])
 ([10.252.37.143])
 by orsmga001.jf.intel.com with ESMTP; 28 Apr 2020 04:05:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200428100816.951014-1-lionel.g.landwerlin@intel.com>
 <20200428100816.951014-3-lionel.g.landwerlin@intel.com>
 <158806914077.24122.4604283459575331296@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c793a64a-f441-57b7-1f44-886ec0cb3fe5@intel.com>
Date: Tue, 28 Apr 2020 14:04:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158806914077.24122.4604283459575331296@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 2/4] drm/i915/perf: stop using the kernel
 context
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjgvMDQvMjAyMCAxMzoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMjAtMDQtMjggMTE6MDg6MTQpCj4+IEBAIC0yODM3LDYgKzI4NTEsNyBA
QCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0g
KnN0cmVhbSwKPj4gICB7Cj4+ICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gc3RyZWFtLT5wZXJmLT5pOTE1Owo+PiAgICAgICAgICBzdHJ1Y3QgaTkxNV9wZXJmICpwZXJm
ID0gc3RyZWFtLT5wZXJmOwo+PiArICAgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGltZWxp
bmU7Cj4+ICAgICAgICAgIGludCBmb3JtYXRfc2l6ZTsKPj4gICAgICAgICAgaW50IHJldDsKPj4g
ICAKPj4gQEAgLTI5NDYsMTAgKzI5NjEsMzAgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9p
bml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4+ICAgCj4+ICAgICAgICAgIHN0
cmVhbS0+b3BzID0gJmk5MTVfb2Ffc3RyZWFtX29wczsKPj4gICAKPj4gKyAgICAgICB0aW1lbGlu
ZSA9IGludGVsX3RpbWVsaW5lX2NyZWF0ZShzdHJlYW0tPmVuZ2luZS0+Z3QsIE5VTEwpOwo+PiAr
ICAgICAgIGlmIChJU19FUlIodGltZWxpbmUpKSB7Cj4+ICsgICAgICAgICAgICAgICByZXQgPSBQ
VFJfRVJSKHRpbWVsaW5lKTsKPj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX3RpbWVsaW5lOwo+
PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIHN0cmVhbS0+Y29uZmlnX2NvbnRleHQgPSBpbnRl
bF9jb250ZXh0X2NyZWF0ZShzdHJlYW0tPmVuZ2luZSk7Cj4+ICsgICAgICAgaWYgKElTX0VSUihz
dHJlYW0tPmNvbmZpZ19jb250ZXh0KSkgewo+PiArICAgICAgICAgICAgICAgaW50ZWxfdGltZWxp
bmVfcHV0KHRpbWVsaW5lKTsKPj4gKyAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoc3RyZWFt
LT5jb25maWdfY29udGV4dCk7Cj4+ICsgICAgICAgICAgICAgICBnb3RvIGVycl90aW1lbGluZTsK
Pj4gKyAgICAgICB9Cj4+ICsKPj4gKyAgICAgICBzdHJlYW0tPmNvbmZpZ19jb250ZXh0LT5zc2V1
ID0gcHJvcHMtPnNzZXU7Cj4+ICsgICAgICAgc3RyZWFtLT5jb25maWdfY29udGV4dC0+dGltZWxp
bmUgPSB0aW1lbGluZTsKPiBUaW1lbGluZT8KPgo+PiArCj4+ICsgICAgICAgcmV0ID0gaW50ZWxf
Y29udGV4dF9waW4oc3RyZWFtLT5jb25maWdfY29udGV4dCk7Cj4gT25lIGlzIGNyZWF0ZWQgZm9y
IHRoZSBjb250ZXh0IGhlcmUgW3ZpYSBpbnRlbF9jb250ZXh0X2FsbG9jXS4KCgpJIGRvbid0IHNl
ZSBpdCA6CgpzdGF0aWMgc3RydWN0IGludGVsX2NvbnRleHQgKmludGVsX2NvbnRleHRfYWxsb2Mo
dm9pZCkKewogwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGttZW1fY2FjaGVfemFsbG9jKGdsb2JhbC5z
bGFiX2NlLCBHRlBfS0VSTkVMKTsKfQoKCgo+Cj4gSSB3YXMgaW50cmlndWVkIGFzIEkgdGhvdWdo
dCB5b3UgbWlnaHQgaGF2ZSBoYWQgc29tZXRoaW5nIHNwZWNpYWwgcGxhbm5lZAo+IHdpdGggbXVs
dGlwbGUgY29udGV4dHMgc2hhcmluZyBhIHRpbWVsaW5lCj4KPiBEbyB3ZSBuZWVkIHRvIHBlcm1h
bmVudGx5IHBpbiB0aGUgY29udGV4dD8gV2UgY2FuIGZhaWwgdGhlIE9BIGNvbmZpZwo+IGNoYW5n
ZSByZXF1ZXN0LCByaWdodD8KCgpZb3UncmUgcmlnaHQsIGl0IGRvZXNuJ3QgbmVlZCB0byBwaW5u
ZWQgYWxsIHRoZSB0aW1lLgoKClRoYW5rcywKCgotTGlvbmVsCgoKPiAtQ2hyaXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
