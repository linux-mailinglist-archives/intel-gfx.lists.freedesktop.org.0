Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A545A1051A3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 12:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3C76E0A5;
	Thu, 21 Nov 2019 11:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD056E0A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 11:47:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 03:47:55 -0800
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="201098052"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 21 Nov 2019 03:47:53 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191121071044.97798-1-chris@chris-wilson.co.uk>
 <20191121071044.97798-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <33ea4233-8a3c-b103-ae48-3151707e3f4e@linux.intel.com>
Date: Thu, 21 Nov 2019 11:47:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121071044.97798-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Serialise with remote
 retirement
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

Ck9uIDIxLzExLzIwMTkgMDc6MTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSByZXRpcmVt
ZW50IG1heSBiZSBydW5uaW5nIGluIGEgd29ya2VyIG9uIGFub3RoZXIgQ1BVLCBpdCBtYXkgYmUK
PiBza2lwcGVkIGluIHRoZSBsb2NhbCBpbnRlbF9ndF93YWl0X2Zvcl9pZGxlKCkuIFRvIGVuc3Vy
ZSB0aGUgc3RhdGUgaXMKPiBjb25zaXN0ZW50IGZvciBvdXIgc2FuaXR5IGNoZWNrcyB1cG9uIGxv
YWQsIHNlcmlhbGlzZSB3aXRoIHRoZSByZW1vdGUKPiByZXRpcmVyIGJ5IHdhaXRpbmcgb24gdGhl
IHRpbWVsaW5lLT5tdXRleC4KPiAKPiBPdXRzaWRlIG9mIHRoaXMgdXNlIGNhc2UsIGUuZy4gb24g
c3VzcGVuZCBvciBtb2R1bGUgdW5sb2FkLCB3ZSBleHBlY3QgdGhlCj4gc2xhY2sgdG8gYmUgcGlj
a2VkIHVwIGJ5IGludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUoKSBhbmQgc28gcHJlZmVyIHRvCj4g
cHV0IHRoZSBzcGVjaWFsIGNhc2Ugc2VyaWFsaXNhdGlvbiB3aXRoIHJldGlyZW1lbnQgaW4gaXRz
IHNpbmdsZSB1c2VyLAo+IGZvciBub3cgYXQgbGVhc3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKystLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+IGluZGV4IDFiYTVmMjY3MDBiMC4uNjEzOTViMDM0NDNlIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAgLTQ1LDYgKzQ1LDcgQEAKPiAgICNpbmNsdWRlICJnZW0v
aTkxNV9nZW1fY29udGV4dC5oIgo+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIK
PiAgICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKPiArI2luY2x1ZGUgImd0L2ludGVsX2Nv
bnRleHQuaCIKPiAgICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfdXNlci5oIgo+ICAgI2luY2x1
ZGUgImd0L2ludGVsX2d0LmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKPiBAQCAt
MTA0MSw2ICsxMDQyLDE4IEBAIGk5MTVfZ2VtX21hZHZpc2VfaW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgIAlyZXR1cm4gZXJyOwo+ICAgfQo+ICAgCj4gK3N0YXRp
YyBpbnQgX19pbnRlbF9jb250ZXh0X2ZsdXNoX3JldGlyZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4gKwo+ICsJdGwgPSBpbnRl
bF9jb250ZXh0X3RpbWVsaW5lX2xvY2soY2UpOwo+ICsJaWYgKElTX0VSUih0bCkpCj4gKwkJcmV0
dXJuIFBUUl9FUlIodGwpOwo+ICsKPiArCWludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHRs
KTsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGludCBfX2ludGVsX2VuZ2luZXNf
cmVjb3JkX2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICB7Cj4gICAJc3RydWN0IGk5
MTVfcmVxdWVzdCAqcmVxdWVzdHNbSTkxNV9OVU1fRU5HSU5FU10gPSB7fTsKPiBAQCAtMTEwOSwx
MyArMTEyMiwyMCBAQCBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMo
c3RydWN0IGludGVsX2d0ICpndCkKPiAgIAkJaWYgKCFycSkKPiAgIAkJCWNvbnRpbnVlOwo+ICAg
Cj4gLQkJLyogV2Ugd2FudCB0byBiZSBhYmxlIHRvIHVuYmluZCB0aGUgc3RhdGUgZnJvbSB0aGUg
R0dUVCAqLwo+IC0JCUdFTV9CVUdfT04oaW50ZWxfY29udGV4dF9pc19waW5uZWQocnEtPmh3X2Nv
bnRleHQpKTsKPiAtCj4gKwkJR0VNX0JVR19PTighdGVzdF9iaXQoQ09OVEVYVF9BTExPQ19CSVQs
Cj4gKwkJCQkgICAgICZycS0+aHdfY29udGV4dC0+ZmxhZ3MpKTsKPiAgIAkJc3RhdGUgPSBycS0+
aHdfY29udGV4dC0+c3RhdGU7Cj4gICAJCWlmICghc3RhdGUpCj4gICAJCQljb250aW51ZTsKPiAg
IAo+ICsJCS8qIFNlcmlhbGlzZSB3aXRoIHJldGlyZW1lbnQgb24gYW5vdGhlciBDUFUgKi8KPiAr
CQllcnIgPSBfX2ludGVsX2NvbnRleHRfZmx1c2hfcmV0aXJlKHJxLT5od19jb250ZXh0KTsKPiAr
CQlpZiAoZXJyKQo+ICsJCQlnb3RvIG91dDsKPiArCj4gKwkJLyogV2Ugd2FudCB0byBiZSBhYmxl
IHRvIHVuYmluZCB0aGUgc3RhdGUgZnJvbSB0aGUgR0dUVCAqLwo+ICsJCUdFTV9CVUdfT04oaW50
ZWxfY29udGV4dF9pc19waW5uZWQocnEtPmh3X2NvbnRleHQpKTsKPiArCj4gICAJCS8qCj4gICAJ
CSAqIEFzIHdlIHdpbGwgaG9sZCBhIHJlZmVyZW5jZSB0byB0aGUgbG9naWNhbCBzdGF0ZSwgaXQg
d2lsbAo+ICAgCQkgKiBub3QgYmUgdG9ybiBkb3duIHdpdGggdGhlIGNvbnRleHQsIGFuZCBpbXBv
cnRhbnRseSB0aGUKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
