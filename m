Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A9839A324
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 16:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 315426F48A;
	Thu,  3 Jun 2021 14:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AC56F488;
 Thu,  3 Jun 2021 14:27:43 +0000 (UTC)
IronPort-SDR: b1/osmsYoeG4a04NWF3jBsWEXaGvqGz/8zM7U1yQWx0NbICPN9iALPeYGvmtCA+YT3Ix7236E3
 QD3lPaTp8L8w==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="184430036"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="184430036"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 07:27:42 -0700
IronPort-SDR: YxgxSwY3anv8UkL3PdgrwSLdfzIXCV0Ek8HGMtGLFpW18bsSv8kZznadoLCEqXJ2RpKXdCEX64
 K2olv/D+rqfA==
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="417398092"
Received: from vkubarev-mobl1.ccr.corp.intel.com (HELO [10.249.254.167])
 ([10.249.254.167])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 07:27:39 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210602170716.280491-1-thomas.hellstrom@linux.intel.com>
 <20210602170716.280491-5-thomas.hellstrom@linux.intel.com>
 <CAM0jSHPfNhw3e9y4eD5X+Bk-i1nkZqb1Tw194mhOFNGbHZD8xw@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <da197ad6-f408-004b-dd7b-9348ca602f0d@linux.intel.com>
Date: Thu, 3 Jun 2021 16:27:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPfNhw3e9y4eD5X+Bk-i1nkZqb1Tw194mhOFNGbHZD8xw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/ttm: Use TTM for system memory
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMy8yMSAxMTo0OCBBTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE9uIFdlZCwgMiBKdW4g
MjAyMSBhdCAxODowOCwgVGhvbWFzIEhlbGxzdHLDtm0KPiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+PiBGb3IgZGlzY3JldGUsIHVzZSBUVE0gZm9yIGJvdGggY2Fj
aGVkIGFuZCBXQyBzeXN0ZW0gbWVtb3J5LiBUaGF0IG1lYW5zCj4+IHdlIGN1cnJlbnRseSByZWx5
IG9uIHRoZSBUVE0gbWVtb3J5IGFjY291bnRpbmcgLyBzaHJpbmtlci4gRm9yIGNhY2hlZAo+PiBz
eXN0ZW0gbWVtb3J5IHdlIHNob3VsZCBjb25zaWRlciByZW1haW5pbmcgc2htZW0tYmFja2VkLCB3
aGljaCBjYW4gYmUKPj4gaW1wbGVtZW50ZWQgZnJvbSBvdXIgdHRtX3R0X3BvcHVsYXRlIGNhbGJh
Y2suIFdlIGNhbiB0aGVuIGFsc28gcmV1c2Ugb3VyCj4+IG93biB2ZXJ5IGVsYWJvcmF0ZSBzaHJp
bmtlciBmb3IgdGhhdCBtZW1vcnkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgIHwgMjIgKysrKysrKysrKysrKysr
KysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8
ICAzIC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyB8
ICA3ICsrKysrKy0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9u
LmggfCAgOCArKysrKysrKwo+PiAgIDQgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
Ywo+PiBpbmRleCA4ZTFjMDExNjhjNmQuLjQyZTg5YmY0MzcwOCAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+PiBAQCAtNzU1LDMgKzc1NSwyNSBAQCBpbnQg
X19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1l
bSwKPj4gICAgICAgICAgLyogaTkxNSB3YW50cyAtRU5YSU8gd2hlbiBvdXQgb2YgbWVtb3J5IHJl
Z2lvbiBzcGFjZS4gKi8KPj4gICAgICAgICAgcmV0dXJuIChyZXQgPT0gLUVOT1NQQykgPyAtRU5Y
SU8gOiByZXQ7Cj4+ICAgfQo+PiArCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb25fb3BzIHR0bV9zeXN0ZW1fcmVnaW9uX29wcyA9IHsKPj4gKyAgICAgICAuaW5pdF9v
YmplY3QgPSBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdCwKPj4gK307Cj4+ICsKPj4gK3N0cnVj
dCBpbnRlbF9tZW1vcnlfcmVnaW9uICoKPj4gK2k5MTVfZ2VtX3R0bV9zeXN0ZW1fc2V0dXAoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
dTE2IHR5cGUsIHUxNiBpbnN0YW5jZSkKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfbWVt
b3J5X3JlZ2lvbiAqbXI7Cj4+ICsKPj4gKyAgICAgICBtciA9IGludGVsX21lbW9yeV9yZWdpb25f
Y3JlYXRlKGk5MTUsIDAsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB0b3RhbHJhbV9wYWdlcygpIDw8IFBBR0VfU0hJRlQsCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBQQUdFX1NJWkUsIDAsCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB0eXBlLCBpbnN0YW5jZSwKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICZ0dG1fc3lzdGVtX3JlZ2lvbl9vcHMpOwo+PiArICAgICAg
IGlmIChJU19FUlJfT1JfTlVMTChtcikpCj4gcmVnaW9uX2NyZWF0ZSBjYW4ndCByZXR1cm4gTlVM
TC4KT0ssIHdpbGwgZml4LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
