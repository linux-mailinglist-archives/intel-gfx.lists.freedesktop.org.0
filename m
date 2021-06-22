Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ABE3B0461
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 14:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E367F6E4C7;
	Tue, 22 Jun 2021 12:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA616E4C7;
 Tue, 22 Jun 2021 12:29:21 +0000 (UTC)
IronPort-SDR: pYrMe9Cw5PI0i4qkZgwdiG2bW3hOsX+EphxTX4nBhM+m6Dw8F1CEy6wmDXoACc4SzWYuvFMUYK
 9XXbqxjQkhCw==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194352776"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="194352776"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 05:29:20 -0700
IronPort-SDR: iOEFh6T+BftY3n2qFEGu/Q8Dxmet6eiICs1W6fY4+lqwsjapBGrcJ6CYHyoCZ5gP/3GiZJE1ad
 /1F2J2sqKh6Q==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="454243069"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO [10.249.254.95])
 ([10.249.254.95])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 05:29:08 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210622095843.132549-1-matthew.auld@intel.com>
 <1aeeac85-07d7-b6d5-4253-386801088307@linux.intel.com>
 <CAM0jSHOmtdAQ3GVzjAJxa9ZrdFYTuh78gy4Vbzhzf-r=9bofWw@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <96142f5a-6330-6a61-abef-c03c301425f3@linux.intel.com>
Date: Tue, 22 Jun 2021 14:29:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOmtdAQ3GVzjAJxa9ZrdFYTuh78gy4Vbzhzf-r=9bofWw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: consider all placements for
 the page alignment
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
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjIvMjEgMjoxNSBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE9uIFR1ZSwgMjIgSnVu
IDIwMjEgYXQgMTE6MTEsIFRob21hcyBIZWxsc3Ryw7ZtCj4gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPiB3cm90ZToKPj4KPj4gT24gNi8yMi8yMSAxMTo1OCBBTSwgTWF0dGhldyBB
dWxkIHdyb3RlOgo+Pj4gSnVzdCBjaGVja2luZyB0aGUgY3VycmVudCByZWdpb24gaXMgbm90IGVu
b3VnaCwgaWYgd2UgbGF0ZXIgbWlncmF0ZSB0aGUKPj4+IG9iamVjdCBzb21ld2hlcmUgZWxzZS4g
Rm9yIGV4YW1wbGUgaWYgdGhlIHBsYWNlbWVudHMgYXJlIHtTTUVNLCBMTUVNfSwKPj4+IHRoZW4g
d2UgbWlnaHQgZ2V0IHRoaXMgd3JvbmcuIEFub3RoZXIgaWRlYSBtaWdodCBiZSB0byBtYWtlIHRo
ZQo+Pj4gcGFnZV9hbGlnbm1lbnQgcGFydCBvZiB0aGUgdHRtX3BsYWNlLCBpbnN0ZWFkIG9mIHRo
ZSBCTy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+Cj4+PiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKy0KPj4+ICAgIDEgZmlsZSBjaGFu
Z2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+Pj4gaW5kZXggYzVkZWI4YjcyMjdjLi41ZDg5NGJi
YTY0MzAgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+
Pj4gQEAgLTc1Myw2ICs3NTMsMjUgQEAgdm9pZCBpOTE1X3R0bV9ib19kZXN0cm95KHN0cnVjdCB0
dG1fYnVmZmVyX29iamVjdCAqYm8pCj4+PiAgICAgICAgICAgICAgICBjYWxsX3JjdSgmb2JqLT5y
Y3UsIF9faTkxNV9nZW1fZnJlZV9vYmplY3RfcmN1KTsKPj4+ICAgIH0KPj4+Cj4+PiArc3RhdGlj
IHU2NCBpOTE1X2dlbV9vYmplY3RfcGFnZV9zaXplKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmopCj4+PiArewo+Pj4gKyAgICAgdTY0IHBhZ2Vfc2l6ZTsKPj4+ICsgICAgIGludCBpOwo+
Pj4gKwo+Pj4gKyAgICAgaWYgKCFvYmotPm1tLm5fcGxhY2VtZW50cykKPj4+ICsgICAgICAgICAg
ICAgcmV0dXJuIG9iai0+bW0ucmVnaW9uLT5taW5fcGFnZV9zaXplOwo+Pj4gKwo+Pj4gKyAgICAg
cGFnZV9zaXplID0gMDsKPj4+ICsgICAgIGZvciAoaSA9IDA7IGkgPCBvYmotPm1tLm5fcGxhY2Vt
ZW50czsgaSsrKSB7Cj4+PiArICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9u
ICptciA9IG9iai0+bW0ucGxhY2VtZW50c1tpXTsKPj4+ICsKPj4+ICsgICAgICAgICAgICAgcGFn
ZV9zaXplID0gbWF4X3QodTY0LCBtci0+bWluX3BhZ2Vfc2l6ZSwgcGFnZV9zaXplKTsKPj4+ICsg
ICAgIH0KPj4+ICsKPj4+ICsgICAgIEdFTV9CVUdfT04oIXBhZ2Vfc2l6ZSk7Cj4+PiArICAgICBy
ZXR1cm4gcGFnZV9zaXplOwo+Pj4gK30KPj4+ICsKPj4+ICAgIC8qKgo+Pj4gICAgICogX19pOTE1
X2dlbV90dG1fb2JqZWN0X2luaXQgLSBJbml0aWFsaXplIGEgdHRtLWJhY2tlZCBpOTE1IGdlbSBv
YmplY3QKPj4+ICAgICAqIEBtZW06IFRoZSBpbml0aWFsIG1lbW9yeSByZWdpb24gZm9yIHRoZSBv
YmplY3QuCj4+PiBAQCAtNzkzLDcgKzgxMiw3IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3Rf
aW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+Pj4gICAgICAgIG9iai0+YmFz
ZS52bWFfbm9kZS5kcml2ZXJfcHJpdmF0ZSA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOwo+Pj4gICAg
ICAgIHJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5iZGV2LCBpOTE1X2dlbV90b190dG0ob2JqKSwg
c2l6ZSwKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBib190eXBlLCAmaTkxNV9zeXNfcGxh
Y2VtZW50LAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgbWVtLT5taW5fcGFnZV9zaXplID4+
IFBBR0VfU0hJRlQsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3Rf
cGFnZV9zaXplKG9iaikgPj4gUEFHRV9TSElGVCwKPj4gSG1tLCBjYW4ndCB3ZSBqdXN0IGhhdmUg
dGhlIGJ1ZGR5IG1hbmFnZXIgc2lsZW50bHkgZW5mb3JjZSBpdHMKPj4gbWluX3BhZ2Vfc2l6ZT8K
PiBNYXliZSwgYnV0IHdlIG5lZWQgc29tZSB3YXkgb2Ygb3ZlcnJpZGluZyBpdCBmb3IgYWxsIG9m
IG91ciBwYWdlLXRhYmxlCj4gYWxsb2NhdGlvbnMoYW5kIHNvbWUgb3RoZXIgc3R1ZmYgYWxzbyks
IHNvIGJlaW5nIGFibGUgdG8gY29udHJvbCB0aGUKPiBwYWdlX2FsaWdubWVudCBhdCB0aGUgb2Jq
ZWN0IGxldmVsIGhlcmUgc2VlbXMgcmVhc29uYWJsZT8gQ291bGQgbWF5YmUKPiBwYXNzIGl0IHRo
cm91Z2ggd2l0aCBjcmVhdGVfbG1lbV93aXRoX3BhZ2Vfc2l6ZSguLi4sIHBhZ2Vfc2l6ZSk/IE9r
LAo+IGl0IG1pZ2h0IGJlIGJlc3QgdG8gZmlyc3QgdHlwZSBpdCBhbmQgdGhlbiBzZWUgaG93IGl0
IHdpbGwgYWxsIGZpdAo+IHRvZ2V0aGVyLgo+CkhtbSwgT0ssIEknbSBub3QgMTAwJSBzdXJlIHdo
YXQgdGhlIHZhcmlvdXMgcmVxdWlyZW1lbnRzIGFyZSBoZXJlIG9uIHRoZSAKb2JqZWN0IGxldmVs
LiBCdXQgZm9yIHJlZ2lvbiByZXF1aXJlbWVudHMsIEkgdGhpbmsgd2UndmUgaGlzdG9yaWNhbGx5
IAplbmZvcmNlZCB0aGF0IHRocm91Z2ggdGhlIG1hbmFnZXIsIHRha2luZyBhbHNvIHRoZSBiby0+
cGFnZV9hbGlnbm1lbnQgCmludG8gYWNjb3VudCBhbmQgYXBwbHlpbmcgdGhlIGxhcmdlciBvZiB0
aGUgdHdvLAoKVGhlcmUgaXMgYW4gZXhhbXBsZSBpbiB2bXdfdGhwX2luc2VydF9hbGlnbmVkKCku
CgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
