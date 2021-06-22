Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4133B04AB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 14:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9779D6E4D7;
	Tue, 22 Jun 2021 12:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550FA6E4D7;
 Tue, 22 Jun 2021 12:36:37 +0000 (UTC)
IronPort-SDR: cCtNR0yjcaFTdBVoJNggZhgSa7gdhKx57Ejtf/UF0c2sPDsSUD522d4ZJVIyzjV59fngR0RxHG
 Sa91Z4a/H5hw==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="187425652"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="187425652"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 05:36:36 -0700
IronPort-SDR: +N4rMsPQaqwFqXz1uIoPoN68a673jgDkS5yGMkDFxfVBe/wlQOmpePxK+sGQnVnIc3SwVrJbZe
 kvyXtl4DUkkQ==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="452600489"
Received: from ctuckwel-mobl3.ger.corp.intel.com (HELO [10.213.202.56])
 ([10.213.202.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 05:36:35 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.william.auld@gmail.com>
References: <20210622095843.132549-1-matthew.auld@intel.com>
 <1aeeac85-07d7-b6d5-4253-386801088307@linux.intel.com>
 <CAM0jSHOmtdAQ3GVzjAJxa9ZrdFYTuh78gy4Vbzhzf-r=9bofWw@mail.gmail.com>
 <96142f5a-6330-6a61-abef-c03c301425f3@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c1532ab1-a940-1a8a-cdbb-0d55761826ee@intel.com>
Date: Tue, 22 Jun 2021 13:36:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <96142f5a-6330-6a61-abef-c03c301425f3@linux.intel.com>
Content-Language: en-GB
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjIvMDYvMjAyMSAxMzoyOSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gCj4gT24gNi8y
Mi8yMSAyOjE1IFBNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IE9uIFR1ZSwgMjIgSnVuIDIwMjEg
YXQgMTE6MTEsIFRob21hcyBIZWxsc3Ryw7ZtCj4+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gT24gNi8yMi8yMSAxMTo1OCBBTSwgTWF0dGhldyBBdWxk
IHdyb3RlOgo+Pj4+IEp1c3QgY2hlY2tpbmcgdGhlIGN1cnJlbnQgcmVnaW9uIGlzIG5vdCBlbm91
Z2gsIGlmIHdlIGxhdGVyIG1pZ3JhdGUgdGhlCj4+Pj4gb2JqZWN0IHNvbWV3aGVyZSBlbHNlLiBG
b3IgZXhhbXBsZSBpZiB0aGUgcGxhY2VtZW50cyBhcmUge1NNRU0sIExNRU19LAo+Pj4+IHRoZW4g
d2UgbWlnaHQgZ2V0IHRoaXMgd3JvbmcuIEFub3RoZXIgaWRlYSBtaWdodCBiZSB0byBtYWtlIHRo
ZQo+Pj4+IHBhZ2VfYWxpZ25tZW50IHBhcnQgb2YgdGhlIHR0bV9wbGFjZSwgaW5zdGVhZCBvZiB0
aGUgQk8uCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Cj4+Pj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9t
QGxpbnV4LmludGVsLmNvbT4KPj4+PiAtLS0KPj4+PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyB8IDIxICsrKysrKysrKysrKysrKysrKysrLQo+Pj4+IMKgwqAg
MSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Pgo+Pj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgCj4+
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPj4+PiBpbmRleCBj
NWRlYjhiNzIyN2MuLjVkODk0YmJhNjQzMCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMKPj4+PiBAQCAtNzUzLDYgKzc1MywyNSBAQCB2b2lkIGk5MTVf
dHRtX2JvX2Rlc3Ryb3koc3RydWN0IAo+Pj4+IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhbGxfcmN1KCZvYmotPnJjdSwgX19pOTE1X2dl
bV9mcmVlX29iamVjdF9yY3UpOwo+Pj4+IMKgwqAgfQo+Pj4+Cj4+Pj4gK3N0YXRpYyB1NjQgaTkx
NV9nZW1fb2JqZWN0X3BhZ2Vfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+
Pj4+ICt7Cj4+Pj4gK8KgwqDCoMKgIHU2NCBwYWdlX3NpemU7Cj4+Pj4gK8KgwqDCoMKgIGludCBp
Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqAgaWYgKCFvYmotPm1tLm5fcGxhY2VtZW50cykKPj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBvYmotPm1tLnJlZ2lvbi0+bWluX3BhZ2Vf
c2l6ZTsKPj4+PiArCj4+Pj4gK8KgwqDCoMKgIHBhZ2Vfc2l6ZSA9IDA7Cj4+Pj4gK8KgwqDCoMKg
IGZvciAoaSA9IDA7IGkgPCBvYmotPm1tLm5fcGxhY2VtZW50czsgaSsrKSB7Cj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbXIgPSBvYmot
Pm1tLnBsYWNlbWVudHNbaV07Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cGFnZV9zaXplID0gbWF4X3QodTY0LCBtci0+bWluX3BhZ2Vfc2l6ZSwgcGFnZV9zaXplKTsKPj4+
PiArwqDCoMKgwqAgfQo+Pj4+ICsKPj4+PiArwqDCoMKgwqAgR0VNX0JVR19PTighcGFnZV9zaXpl
KTsKPj4+PiArwqDCoMKgwqAgcmV0dXJuIHBhZ2Vfc2l6ZTsKPj4+PiArfQo+Pj4+ICsKPj4+PiDC
oMKgIC8qKgo+Pj4+IMKgwqDCoCAqIF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0IC0gSW5pdGlh
bGl6ZSBhIHR0bS1iYWNrZWQgaTkxNSBnZW0gCj4+Pj4gb2JqZWN0Cj4+Pj4gwqDCoMKgICogQG1l
bTogVGhlIGluaXRpYWwgbWVtb3J5IHJlZ2lvbiBmb3IgdGhlIG9iamVjdC4KPj4+PiBAQCAtNzkz
LDcgKzgxMiw3IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgCj4+Pj4g
aW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+Pj4+IMKgwqDCoMKgwqDCoCBvYmotPmJhc2Uudm1h
X25vZGUuZHJpdmVyX3ByaXZhdGUgPSBpOTE1X2dlbV90b190dG0ob2JqKTsKPj4+PiDCoMKgwqDC
oMKgwqAgcmV0ID0gdHRtX2JvX2luaXQoJmk5MTUtPmJkZXYsIGk5MTVfZ2VtX3RvX3R0bShvYmop
LCBzaXplLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBib190eXBlLCAmaTkxNV9zeXNfcGxhY2VtZW50LAo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZW0tPm1pbl9wYWdlX3NpemUgPj4gUEFHRV9T
SElGVCwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aTkxNV9nZW1fb2JqZWN0X3BhZ2Vfc2l6ZShvYmopID4+IFBBR0VfU0hJRlQsCj4+PiBIbW0sIGNh
bid0IHdlIGp1c3QgaGF2ZSB0aGUgYnVkZHkgbWFuYWdlciBzaWxlbnRseSBlbmZvcmNlIGl0cwo+
Pj4gbWluX3BhZ2Vfc2l6ZT8KPj4gTWF5YmUsIGJ1dCB3ZSBuZWVkIHNvbWUgd2F5IG9mIG92ZXJy
aWRpbmcgaXQgZm9yIGFsbCBvZiBvdXIgcGFnZS10YWJsZQo+PiBhbGxvY2F0aW9ucyhhbmQgc29t
ZSBvdGhlciBzdHVmZiBhbHNvKSwgc28gYmVpbmcgYWJsZSB0byBjb250cm9sIHRoZQo+PiBwYWdl
X2FsaWdubWVudCBhdCB0aGUgb2JqZWN0IGxldmVsIGhlcmUgc2VlbXMgcmVhc29uYWJsZT8gQ291
bGQgbWF5YmUKPj4gcGFzcyBpdCB0aHJvdWdoIHdpdGggY3JlYXRlX2xtZW1fd2l0aF9wYWdlX3Np
emUoLi4uLCBwYWdlX3NpemUpPyBPaywKPj4gaXQgbWlnaHQgYmUgYmVzdCB0byBmaXJzdCB0eXBl
IGl0IGFuZCB0aGVuIHNlZSBob3cgaXQgd2lsbCBhbGwgZml0Cj4+IHRvZ2V0aGVyLgo+Pgo+IEht
bSwgT0ssIEknbSBub3QgMTAwJSBzdXJlIHdoYXQgdGhlIHZhcmlvdXMgcmVxdWlyZW1lbnRzIGFy
ZSBoZXJlIG9uIHRoZSAKPiBvYmplY3QgbGV2ZWwuIEJ1dCBmb3IgcmVnaW9uIHJlcXVpcmVtZW50
cywgSSB0aGluayB3ZSd2ZSBoaXN0b3JpY2FsbHkgCj4gZW5mb3JjZWQgdGhhdCB0aHJvdWdoIHRo
ZSBtYW5hZ2VyLCB0YWtpbmcgYWxzbyB0aGUgYm8tPnBhZ2VfYWxpZ25tZW50IAo+IGludG8gYWNj
b3VudCBhbmQgYXBwbHlpbmcgdGhlIGxhcmdlciBvZiB0aGUgdHdvLAo+IAo+IFRoZXJlIGlzIGFu
IGV4YW1wbGUgaW4gdm13X3RocF9pbnNlcnRfYWxpZ25lZCgpLgoKWWVhaCwgc28gZm9yIG91ciB1
c2UgY2FzZSB3ZSBuZWVkIHRvIHN1cHBvcnQgcGFnZV9hbGlnbm1lbnQgPCAKbWluX3BhZ2Vfc2l6
ZSwgZm9yIHBhZ2UtdGFibGVzKDRLKS4gSSBndWVzcyBwdXNoaW5nIHRoZSBtaW5fcGFnZV9zaXpl
IAppbnRvIGJ1ZGR5X21hbiwgYW5kIHRoZW4gbGV0dGluZyBwYWdlX2FsaWdubWVudCBvdmVycmlk
ZSB0aGF0LCB3aXRoIHRoZSAKYWRkZWQgY2F2ZWF0IHRoYXQgaXQgY2FuIGJlIHNtYWxsZXIgY291
bGQgd29yay4gT3RoZXJ3aXNlIGp1c3QgdXNpbmcgCm1tLmNodW5rX3NpemUgd291bGQgYWxyZWFk
eSBmaXQgdGhlIGJpbGwgcXVpdGUgbmljZWx5LgoKPiAKPiAvVGhvbWFzCj4gCj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
