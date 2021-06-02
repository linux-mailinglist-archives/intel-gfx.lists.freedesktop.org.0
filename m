Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B67EA3988C1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 14:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06C96EC51;
	Wed,  2 Jun 2021 12:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29816EC4D;
 Wed,  2 Jun 2021 12:00:49 +0000 (UTC)
IronPort-SDR: pE86RgEQOUbfjmEusLy4A1vd/Jb/9K/Xbf49l+FH6MqDsWZXktgQD0O0iYtUD2ktE2PnCyl6EW
 HAlwAmtobNwA==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="203764389"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="203764389"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 05:00:49 -0700
IronPort-SDR: oWEONvLkhIjiGCsjW23M26zg7LgrQ4KRMM0JXr7lBZn+8HZn/cfiYD1YWFKH0joa+NDVVxhOrW
 YY5Isj75TOWQ==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="399700858"
Received: from ibanaga-mobl.ger.corp.intel.com (HELO [10.249.254.50])
 ([10.249.254.50])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 05:00:47 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210602093636.167070-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <3af30ebb-a46b-2b21-57b0-988b2400ac08@linux.intel.com>
Date: Wed, 2 Jun 2021 14:00:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210602093636.167070-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem/mman: only allow WC for lmem
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA2LzIvMjEgMTE6MzYgQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBGb3IgZGdmeCB3
aGVyZSB3ZSBub3cgaGF2ZSBsbWVtIGFuZCB0dG0sIHdlIGNhbiBvbmx5IHN1cHBvcnQgc2luZ2xl
IG1tYXAKPiBtb2RlIGZvciB0aGUgbGlmZXRpbWUgb2YgdGhlIG9iamVjdCwgYW5kIGZvciBsbWVt
IG9iamVjdHMgdGhpcyBzaG91bGQgYmUKPiBXQywgc28gcmVqZWN0IGFsbCBvdGhlciBtYXBwaW5n
IG1vZGVzIGZvciBtbWFwX29mZnNldCwgaW5jbHVkaW5nIGlmIHRoZQo+IG9iamVjdCBjYW4gYmUg
cGxhY2VkIGluIGJvdGggc21lbSBhbmQgbG1lbS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRo
b21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYyAgIHwgIDQgKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgIDQgKysrKwo+ICAgMyBmaWxl
cyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMKPiBpbmRleCBmZDFjOTcxNGY4ZDguLjMyZjg4ZjIzNjc3MSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+IEBAIC02ODksNiArNjg5
LDEwIEBAIF9fYXNzaWduX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiAgIAkJ
Z290byBvdXQ7Cj4gICAJfQo+ICAgCj4gKwlpZiAobW1hcF90eXBlICE9IEk5MTVfTU1BUF9UWVBF
X1dDICYmCj4gKwkgICAgaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudHNfY29udGFpbl90eXBlKG9i
aiwgSU5URUxfTUVNT1JZX0xPQ0FMKSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCgpJIHRoaW5r
IHdlIHdpbGwgYWxzbyBoYXZlIHRoZSByZXN0cmljdGlvbiB0aGF0IGFueSBvdGhlciBvYmplY3Rz
IG9uIERHRlggCmNhbiBvbmx5IGJlIG1hcHBlZCBjYWNoZWQ/IEF0IGxlYXN0IHRoYXQncyB3aGF0
IHRoZSBUVE0gY29kZSBpcyAKaW1wbGVtZW50aW5nIGN1cnJlbnRseS4KCgo+ICAgCW1tbyA9IG1t
YXBfb2Zmc2V0X2F0dGFjaChvYmosIG1tYXBfdHlwZSwgZmlsZSk7Cj4gICAJaWYgKElTX0VSUiht
bW8pKSB7Cj4gICAJCWVyciA9IFBUUl9FUlIobW1vKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gaW5kZXggMmJlNjEwOWQwMDkzLi5kNGIwZGE4ZWQ5Njkg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gQEAg
LTQwMyw2ICs0MDMsMjggQEAgaW50IGk5MTVfZ2VtX29iamVjdF9yZWFkX2Zyb21fcGFnZShzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCB1NjQgb2Zmc2V0LAo+ICAgCXJldHVybiAwOwo+
ICAgfQo+ICAgCj4gKy8qKgo+ICsgKiBpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWlu
X3R5cGUgLSBDaGVjayB3aGV0aGVyIHRoZSBvYmplY3QgY2FuIGJlCj4gKyAqIHBsYWNlZCBhdCBj
ZXJ0YWluIG1lbW9yeSB0eXBlCj4gKyAqIEBvYmo6IFBvaW50ZXIgdG8gdGhlIG9iamVjdAo+ICsg
KiBAdHlwZTogVGhlIG1lbW9yeSB0eXBlIHRvIGNoZWNrCj4gKyAqCj4gKyAqIFJldHVybjogVHJ1
ZSBpZiB0aGUgb2JqZWN0IGNhbiBiZSBwbGFjZWQgaW4gQHR5cGUuIEZhbHNlIG90aGVyd2lzZS4K
PiArICovCj4gK2Jvb2wgaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudHNfY29udGFpbl90eXBlKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gKwkJCQkJICAgICBlbnVtIGludGVsX21l
bW9yeV90eXBlIHR5cGUpCj4gK3sKPiArCXVuc2lnbmVkIGludCBpOwo+ICsKPiArCS8qIFRPRE86
IGNvbnNpZGVyIG1heWJlIHN0b3JpbmcgYXMgYSBtYXNrIHdoZW4gZG9pbmcgZ2VtX2NyZWF0ZV9l
eHQgKi8KPiArCWZvciAoaSA9IDA7IGkgPCBvYmotPm1tLm5fcGxhY2VtZW50czsgaSsrKSB7Cj4g
KwkJaWYgKG9iai0+bW0ucGxhY2VtZW50c1tpXS0+dHlwZSA9PSB0eXBlKQo+ICsJCQlyZXR1cm4g
dHJ1ZTsKPiArCX0KPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gK30KPiArCgpEbyB3ZSBuZWVkIHNv
bWV0aGluZyBmb3IgdGhlIGluLWtlcm5lbCBtYXBwaW5ncyBhcyB3ZWxsPyBPciBqdXN0IHJldHVy
biAKYSBtYXBwaW5nIHdpdGggdGhlIG9ubHkgYWxsb3dlZCBjYWNoaW5nIG1vZGU/CgovVGhvbWFz
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
