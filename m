Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 444663C9E44
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 14:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8A76E82E;
	Thu, 15 Jul 2021 12:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED436E82E;
 Thu, 15 Jul 2021 12:09:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="208715756"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="208715756"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 05:09:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="460372368"
Received: from ianwarx-mobl.ger.corp.intel.com (HELO [10.249.44.71])
 ([10.249.44.71])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 05:09:48 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210715101536.2606307-1-matthew.auld@intel.com>
 <20210715101536.2606307-3-matthew.auld@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <fce3d89b-f9ef-994f-7bc1-a3cb2c2f5476@linux.intel.com>
Date: Thu, 15 Jul 2021 14:09:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210715101536.2606307-3-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/uapi: convert
 drm_i915_gem_userptr to kernel doc
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTUtMDctMjAyMSBvbSAxMjoxNSBzY2hyZWVmIE1hdHRoZXcgQXVsZDoKPiBBZGQgdGhlIG1p
c3Npbmcga2VybmVsLWRvYy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AbGludXguaW50ZWwuY29tPgo+IENjOiBKb3JkYW4gSnVzdGVuIDxqb3JkYW4ubC5qdXN0ZW5A
aW50ZWwuY29tPgo+IENjOiBLZW5uZXRoIEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4K
PiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+IENjOiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBSYW1hbGluZ2FtIEMgPHJhbWFs
aW5nYW0uY0BpbnRlbC5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCB8
IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDM5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiBp
bmRleCA4NjhjMmVlN2JlNjAuLmUyMGVlZWNhN2ExYyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3Vh
cGkvZHJtL2k5MTVfZHJtLmgKPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiBA
QCAtMjE0MSwxNCArMjE0MSw1MiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcmVzZXRfc3RhdHMgewo+ICAJ
X191MzIgcGFkOwo+ICB9Owo+ICAKPiArLyoqCj4gKyAqIHN0cnVjdCBkcm1faTkxNV9nZW1fdXNl
cnB0ciAtIENyZWF0ZSBHRU0gb2JqZWN0IGZyb20gdXNlciBhbGxvY2F0ZWQgbWVtb3J5Lgo+ICsg
Kgo+ICsgKiBVc2VycHRyIG9iamVjdHMgaGF2ZSBzZXZlcmFsIHJlc3RyaWN0aW9ucyBvbiB3aGF0
IGlvY3RscyBjYW4gYmUgdXNlZCB3aXRoIHRoZQo+ICsgKiBvYmplY3QgaGFuZGxlLgo+ICsgKi8K
PiAgc3RydWN0IGRybV9pOTE1X2dlbV91c2VycHRyIHsKPiArCS8qKgo+ICsJICogQHVzZXJfcHRy
OiBUaGUgcG9pbnRlciB0byB0aGUgYWxsb2NhdGVkIG1lbW9yeS4KPiArCSAqCj4gKwkgKiBOZWVk
cyB0byBiZSBhbGlnbmVkIHRvIFBBR0VfU0laRS4KPiArCSAqLwo+ICAJX191NjQgdXNlcl9wdHI7
Cj4gKwo+ICsJLyoqCj4gKwkgKiBAdXNlcl9zaXplOgo+ICsJICoKPiArCSAqIFRoZSBzaXplIGlu
IGJ5dGVzIGZvciB0aGUgYWxsb2NhdGVkIG1lbW9yeS4gVGhpcyB3aWxsIGFsc28gYmVjb21lIHRo
ZQo+ICsJICogb2JqZWN0IHNpemUuCj4gKwkgKgo+ICsJICogTmVlZHMgdG8gYmUgYWxpZ25lZCB0
byBQQUdFX1NJWkUsIGFuZCBzaG91bGQgYmUgYXQgbGVhc3QgUEFHRV9TSVpFLAo+ICsJICogb3Ig
bGFyZ2VyLgo+ICsJICovCj4gIAlfX3U2NCB1c2VyX3NpemU7Cj4gKwo+ICsJLyoqCj4gKwkgKiBA
ZmxhZ3M6Cj4gKwkgKgo+ICsJICogU3VwcG9ydGVkIGZsYWdzOgo+ICsJICoKPiArCSAqIEk5MTVf
VVNFUlBUUl9SRUFEX09OTFk6Cj4gKwkgKgo+ICsJICogTWFyayB0aGUgb2JqZWN0IGFzIHJlYWRv
bmx5LCB0aGlzIGFsc28gbWVhbnMgR1BVIGFjY2VzcyBjYW4gb25seSBiZQo+ICsJICogcmVhZG9u
bHkuIFRoaXMgaXMgb25seSBzdXBwb3J0ZWQgb24gSFcgd2hpY2ggc3VwcG9ydHMgcmVhZG9ubHkg
YWNjZXNzCj4gKwkgKiB0aHJvdWdoIHRoZSBHVFQuIElmIHRoZSBIVyBjYW4ndCBzdXBwb3J0IHJl
YWRvbmx5IGFjY2VzcywgYW4gZXJyb3IgaXMKPiArCSAqIHJldHVybmVkLgo+ICsJICoKPiArCSAq
IEk5MTVfVVNFUlBUUl9VTlNZTkNIUk9OSVpFRDoKPiArCSAqCj4gKwkgKiBOT1QgVVNFRC4gU2V0
dGluZyB0aGlzIGZsYWcgd2lsbCByZXN1bHQgaW4gYW4gZXJyb3IuCj4gKwkgKi8KPiAgCV9fdTMy
IGZsYWdzOwo+ICAjZGVmaW5lIEk5MTVfVVNFUlBUUl9SRUFEX09OTFkgMHgxCj4gICNkZWZpbmUg
STkxNV9VU0VSUFRSX1VOU1lOQ0hST05JWkVEIDB4ODAwMDAwMDAKPiAgCS8qKgo+IC0JICogUmV0
dXJuZWQgaGFuZGxlIGZvciB0aGUgb2JqZWN0Lgo+ICsJICogQGhhbmRsZTogUmV0dXJuZWQgaGFu
ZGxlIGZvciB0aGUgb2JqZWN0Lgo+ICAJICoKPiAgCSAqIE9iamVjdCBoYW5kbGVzIGFyZSBub256
ZXJvLgo+ICAJICovCgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCkNhbiB5b3UgcmV2aWV3CgpodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDQ0MTQ3Lz9zZXJpZXM9OTIzNTkmcmV2PTIKCj8KCkkg
bm90aWNlZCBzb21lIHBhcnRzIG9mIGk5MTVfZHJtLmggbWlzc2luZy4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
