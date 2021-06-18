Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 784643ACB3E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30DD46EA02;
	Fri, 18 Jun 2021 12:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16A96EA01;
 Fri, 18 Jun 2021 12:41:09 +0000 (UTC)
IronPort-SDR: VSbJvB8IZlIwGeAKzY1jZNsz+AOJJq7hM9wub2c5zF94TX9r5DwkkxmMEDqYOKyb/Br5k3uDJf
 8jHP8T5/i3ew==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="228074011"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="228074011"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:41:09 -0700
IronPort-SDR: LdxoiOB5mG1nuUjVsKJzLntlYwFWG898j2YBaio6t92PqnSmlQVIoP3S+x+/zT48luJ+cgbMeZ
 hA1+IoEzvnwg==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="479811139"
Received: from jhogberg-mobl1.ger.corp.intel.com (HELO [10.249.254.60])
 ([10.249.254.60])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:41:08 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210618083117.158081-1-thomas.hellstrom@linux.intel.com>
 <CAM0jSHMLmWGfVQEZu9R__SGsAAjfPMSOHxgyXf8veYVxOOa8Mw@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <e489a32f-198b-2860-8d22-b88a9f51eb2c@linux.intel.com>
Date: Fri, 18 Jun 2021 14:41:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMLmWGfVQEZu9R__SGsAAjfPMSOHxgyXf8veYVxOOa8Mw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix incorrect assumptions
 about ttm_bo_validate() semantics
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

Ck9uIDYvMTgvMjEgMTI6NTMgUE0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBPbiBGcmksIDE4IEp1
biAyMDIxIGF0IDA5OjMxLCBUaG9tYXMgSGVsbHN0csO2bQo+IDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+IFdlIGhhdmUgYXNzdW1lZCB0aGF0IGlmIHRoZSBjdXJy
ZW50IHBsYWNlbWVudCB3YXMgbm90IHRoZSByZXF1ZXN0ZWQKPj4gcGxhY2VtZW50LCBidXQgaW5z
dGVhZCBvbmUgb2YgdGhlIGJ1c3kgcGxhY2VtZW50cywgYSBUVE0gbW92ZSB3b3VsZCBoYXZlCj4+
IGJlZW4gdHJpZ2dlcmVkLiBUaGF0IGlzIG5vdCB0aGUgY2FzZS4KPj4KPj4gU28gd2hlbiB3ZSBp
bml0aWFsbHkgcGxhY2UgTE1FTSBvYmplY3RzIGluICJMaW1ibyIsICh0aGF0IGlzIHN5c3RlbQo+
PiBwbGFjZW1lbnQgd2l0aG91dCBhbnkgcGFnZXMgYWxsb2NhdGVkKSwgdG8gYmUgYWJsZSB0byBk
ZWZlciBjbGVhcmluZwo+PiBvYmplY3RzIHVudGlsIGZpcnN0IGdldF9wYWdlcygpLCB0aGUgZmly
c3QgZ2V0X3BhZ2VzKCkgd291bGQgaGFwcGlseSBrZWVwCj4+IG9iamVjdHMgaW4gc3lzdGVtIG1l
bW9yeSBpZiB0aGF0IGlzIG9uZSBvZiB0aGUgYWxsb3dlZCBwbGFjZW1lbnRzLiBBbmQKPj4gc2lu
Y2Ugd2UgZG9uJ3QgeWV0IHN1cHBvcnQgaTkxNSBHRU0gc3lzdGVtIG1lbW9yeSBmcm9tIFRUTSwg
ZXZlcnl0aGluZwo+PiBicmVha3MgYXBhcnQuCj4+Cj4+IFNvIG1ha2Ugc3VyZSB3ZSB0cnkgdGhl
IHJlcXVlc3RlZCBwbGFjZW1lbnQgZmlyc3QsIGlmIG5vIGV2aWN0aW9uIGlzCj4+IG5lZWRlZC4g
SWYgdGhhdCBmYWlscywgcmV0cnkgd2l0aCBhbGwgYWxsb3dlZCBwbGFjZW1lbnRzIGFsc28gYWxs
b3dpbmcKPj4gZXZpY3Rpb25zLiBBbHNvIG1ha2Ugc3VyZSB3ZSBoYW5kbGUgVFRNIGZhaWx1cmUg
Y29kZXMgY29ycmVjdGx5Lgo+Pgo+PiBBbHNvIHRlbXBvcmFyaWx5ICh1bnRpbCB3ZSBzdXBwb3J0
IGk5MTUgR0VNIHN5c3RlbSBvbiBUVE0pLCByZXN0cmljdAo+PiBhbGxvd2VkIHBsYWNlbWVudHMg
dG8gdGhlIHJlcXVlc3RlZCBwbGFjZW1lbnQgdG8gYXZvaWQgdGhpbmdzIGZhbGxpbmcKPj4gYXBh
cnQgc2hvdWxkIExNRU0gYmUgZnVsbC4KPj4KPj4gRml4ZXM6IDM4ZjI4YzA2OTVjMCAoImRybS9p
OTE1L3R0bTogQ2FsY3VsYXRlIHRoZSBvYmplY3QgcGxhY2VtZW50IGF0IGdldF9wYWdlcyB0aW1l
KQo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90dG0uYyB8IDYxICsrKysrKysrKysrKysrKysrKysrKysrLS0KPj4gICAxIGZpbGUgY2hh
bmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+PiBpbmRleCBkZjQ2NTM1Y2NhNDcuLjRiYjA0NDBm
NjkzYyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0
bS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+PiBA
QCAtNjQsNiArNjQsMzAgQEAgc3RhdGljIHN0cnVjdCB0dG1fcGxhY2VtZW50IGk5MTVfc3lzX3Bs
YWNlbWVudCA9IHsKPj4gICAgICAgICAgLmJ1c3lfcGxhY2VtZW50ID0gJnN5c19wbGFjZW1lbnRf
ZmxhZ3MsCj4+ICAgfTsKPj4KPj4gK3N0YXRpYyBpbnQgaTkxNV90dG1fZXJyX3RvX2dlbShpbnQg
ZXJyKQo+PiArewo+PiArICAgICAgIC8qIEZhc3RwYXRoICovCj4+ICsgICAgICAgaWYgKGxpa2Vs
eSghZXJyKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+PiArCj4+ICsgICAgICAgc3dp
dGNoIChlcnIpIHsKPj4gKyAgICAgICBjYXNlIC1FQlVTWToKPj4gKyAgICAgICAgICAgICAgIC8q
Cj4+ICsgICAgICAgICAgICAgICAgKiBUVE0gbGlrZXMgdG8gY29udmVydCAtRURFQURMSyB0byAt
RUJVU1ksIGFuZCB3YW50cyB1cyB0bwo+PiArICAgICAgICAgICAgICAgICogcmVzdGFydCB0aGUg
b3BlcmF0aW9uLCBzaW5jZSB3ZSBkb24ndCByZWNvcmQgdGhlIGNvbnRlbmRpbmcKPj4gKyAgICAg
ICAgICAgICAgICAqIGxvY2suIFdlIHVzZSAtRUFHQUlOIHRvIHJlc3RhcnQuCj4+ICsgICAgICAg
ICAgICAgICAgKi8KPj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUFHQUlOOwo+PiArICAgICAg
IGNhc2UgLUVOT1NQQzoKPj4gKyAgICAgICAgICAgICAgIC8qIE1lbW9yeSB0eXBlIC8gcmVnaW9u
IGlzIGZ1bGwsIGFuZCB3ZSBjYW4ndCBldmljdC4gKi8KPj4gKyAgICAgICAgICAgICAgIHJldHVy
biAtRU5YSU87Cj4gdHRtIHN5c3RlbSB3aWxsIHJldHVybiAtRU5PTUVNIHJpZ2h0Pwo+Cj4gUmV2
aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KCkhtbSwgWWVz
LCBJIHN1cHBvc2Ugc28uIFdpbGwgdGhhdCBuZWVkIHNvbWUgbWFuZ2xpbmcgYmVmb3JlIGhhbmRp
bmcgb3ZlciAKdG8gR0VNPwoKVGhhbmtzIGZvciByZXZpZXdpbmchCgpUaG9tYXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
