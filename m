Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A44F767B3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EF989DA8;
	Fri, 26 Jul 2019 13:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA5C893D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:39:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 06:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="345826764"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 26 Jul 2019 06:39:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190725131447.27515-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fde48960-79c4-e22b-4750-50191a4dba06@linux.intel.com>
Date: Fri, 26 Jul 2019 14:39:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725131447.27515-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Add to timeline requires
 the timeline mutex
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI1LzA3LzIwMTkgMTQ6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBNb2RpZnlpbmcgYSBy
ZW1vdGUgY29udGV4dCByZXF1aXJlcyBjYXJlZnVsIHNlcmlhbGlzYXRpb24gd2l0aCByZXF1ZXN0
cwo+IG9uIHRoYXQgY29udGV4dCwgYW5kIHRoYXQgc2VyaWFsaXNhdGlvbiByZXF1aXJlcyB1cyB0
byB0YWtlIHRoZWlyCj4gdGltZWxpbmUtPm11dGV4LiBNYWtlIGl0IHNvLgo+IAo+IE5vdGUgdGhh
dCB3aGlsZSBzdHJ1Y3RfbXV0ZXggcnVsZXMsIHdlIGNhbid0IGNyZWF0ZSBtb3JlIHRoYW4gb25l
Cj4gcmVxdWVzdCBpbiBwYXJhbGxlbCwgYnV0IHRoYXQgYWdlIGlzIHNvb24gY29taW5nIHRvIGFu
IGVuZC4KPiAKPiB2MjogVGhvdWdoIGl0IGRvZXNuJ3QgYWZmZWN0IHRoZSBjdXJyZW50IHVzZXJz
LCBjb250ZXh0cyBtYXkgc2hhcmUKPiB0aW1lbGluZXMgc28gY2hlY2sgaWYgd2UgYWxyZWFkeSBo
b2xkIHRoZSByaWdodCBtdXRleC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Nv
bnRleHQuYyB8IDIzICsrKysrKysrKysrKysrKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jCj4gaW5kZXggOTI5MmI2Y2E1ZTljLi5kNjRiNDVmN2VjNmQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gQEAgLTI1NCwxMCAr
MjU0LDE4IEBAIGludCBpbnRlbF9jb250ZXh0X3ByZXBhcmVfcmVtb3RlX3JlcXVlc3Qoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLAo+ICAgCS8qIE9ubHkgc3VpdGFibGUgZm9yIHVzZSBpbiByZW1v
dGVseSBtb2RpZnlpbmcgdGhpcyBjb250ZXh0ICovCj4gICAJR0VNX0JVR19PTihycS0+aHdfY29u
dGV4dCA9PSBjZSk7Cj4gICAKPiAtCS8qIFF1ZXVlIHRoaXMgc3dpdGNoIGFmdGVyIGFsbCBvdGhl
ciBhY3Rpdml0eSBieSB0aGlzIGNvbnRleHQuICovCj4gLQllcnIgPSBpOTE1X2FjdGl2ZV9yZXF1
ZXN0X3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEpOwo+IC0JaWYgKGVycikKPiAtCQlyZXR1cm4g
ZXJyOwo+ICsJaWYgKHJxLT50aW1lbGluZSAhPSB0bCkgeyAvKiBiZXdhcmUgdGltZWxpbmUgc2hh
cmluZyAqLwo+ICsJCWVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZV9uZXN0ZWQoJnRsLT5t
dXRleCwKPiArCQkJCQkJICAgICAgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwo+ICsJCWlmIChlcnIp
Cj4gKwkJCXJldHVybiBlcnI7Cj4gKwo+ICsJCS8qIFF1ZXVlIHRoaXMgc3dpdGNoIGFmdGVyIGN1
cnJlbnQgYWN0aXZpdHkgYnkgdGhpcyBjb250ZXh0LiAqLwo+ICsJCWVyciA9IGk5MTVfYWN0aXZl
X3JlcXVlc3Rfc2V0KCZ0bC0+bGFzdF9yZXF1ZXN0LCBycSk7Cj4gKwkJaWYgKGVycikKPiArCQkJ
Z290byB1bmxvY2s7Cj4gKwl9Cj4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ0bC0+bXV0ZXgpOwo+
ICAgCj4gICAJLyoKPiAgIAkgKiBHdWFyYW50ZWUgY29udGV4dCBpbWFnZSBhbmQgdGhlIHRpbWVs
aW5lIHJlbWFpbnMgcGlubmVkIHVudGlsIHRoZQo+IEBAIC0yNjcsNyArMjc1LDEyIEBAIGludCBp
bnRlbF9jb250ZXh0X3ByZXBhcmVfcmVtb3RlX3JlcXVlc3Qoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlLAo+ICAgCSAqIHdvcmRzIHRyYW5zZmVyIHRoZSBwaW5uZWQgY2Ugb2JqZWN0IHRvIHRyYWNr
ZWQgYWN0aXZlIHJlcXVlc3QuCj4gICAJICovCj4gICAJR0VNX0JVR19PTihpOTE1X2FjdGl2ZV9p
c19pZGxlKCZjZS0+YWN0aXZlKSk7Cj4gLQlyZXR1cm4gaTkxNV9hY3RpdmVfcmVmKCZjZS0+YWN0
aXZlLCBycS0+ZmVuY2UuY29udGV4dCwgcnEpOwo+ICsJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZj
ZS0+YWN0aXZlLCBycS0+ZmVuY2UuY29udGV4dCwgcnEpOwo+ICsKPiArdW5sb2NrOgo+ICsJaWYg
KHJxLT50aW1lbGluZSAhPSB0bCkKPiArCQltdXRleF91bmxvY2soJnRsLT5tdXRleCk7Cj4gKwly
ZXR1cm4gZXJyOwo+ICAgfQo+ICAgCj4gICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICppbnRlbF9jb250
ZXh0X2NyZWF0ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAKClJldmlld2Vk
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywK
ClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
