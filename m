Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B55839F345
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 12:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8580B6EBA4;
	Tue,  8 Jun 2021 10:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B6E6EBA3;
 Tue,  8 Jun 2021 10:14:28 +0000 (UTC)
IronPort-SDR: IA3p/xn+7u+u85zKGDUOfAhG+QiWGO2pSAX2x8ma7wTSt3eDnAbylq1pbHzwWHKkKQZLL74NAT
 Z5opBW79MBhg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="191923706"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="191923706"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:14:14 -0700
IronPort-SDR: MumC4M/Rq+BplrmJKAM9a1WWQMvndxpmWwbeVdIye9oYv5/R8hFscKI+xrZJDJOs44SFd8kfEl
 o0yIz9T8dckA==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="418848559"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO [10.249.254.115])
 ([10.249.254.115])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:14:13 -0700
Message-ID: <5ff9b7296d0c98149b4c265f9b2549eea9bec345.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 12:14:11 +0200
In-Reply-To: <cf0408ac-75ed-f00a-369b-db6cb2000587@intel.com>
References: <20210608084428.142676-1-matthew.auld@intel.com>
 <20210608084428.142676-6-matthew.auld@intel.com>
 <8e8a5115-730e-c892-a241-c69a5662b2c7@linux.intel.com>
 <cf0408ac-75ed-f00a-369b-db6cb2000587@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/ttm: switch over to
 ttm_buddy_man
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA2LTA4IGF0IDExOjA4ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gMDgvMDYvMjAyMSAxMDo1MywgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gPiAKPiA+IE9u
IDYvOC8yMSAxMDo0NCBBTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4gPiBNb3ZlIGJhY2sgdG8g
dGhlIGJ1ZGR5IGFsbG9jYXRvciBmb3IgbWFuYWdpbmcgZGV2aWNlIGxvY2FsCj4gPiA+IG1lbW9y
eSwgYW5kCj4gPiA+IHJlc3RvcmUgdGhlIGxvc3QgbW9jayBzZWxmdGVzdHMuIEtlZXAgYXJvdW5k
IHRoZSByYW5nZSBtYW5hZ2VyCj4gPiA+IHJlbGF0ZWQKPiA+ID4gYml0cywgc2luY2Ugd2UgbGlr
ZWx5IG5lZWQgdGhpcyBmb3IgbWFuYWdpbmcgc3RvbGVuIGF0IHNvbWUKPiA+ID4gcG9pbnQuIEZv
cgo+ID4gPiBzdG9sZW4gd2UgYWxzbyBkb24ndCBuZWVkIHRvIHJlc2VydmUgYW55dGhpbmcgc28g
bm8gbmVlZCB0bwo+ID4gPiBzdXBwb3J0IGEKPiA+ID4gZ2VuZXJpYyByZXNlcnZlIGludGVyZmFj
ZS4KPiA+ID4gCj4gPiA+IHYyKFRob21hcyk6Cj4gPiA+IMKgwqDCoMKgIC0gYm8tPnBhZ2VfYWxp
Z25tZW50IGlzIGluIHBhZ2UgdW5pdHMsIG5vdCBieXRlcwo+ID4gPiAKPiA+ID4gU2lnbmVkLW9m
Zi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+ID4gPiBDYzogVGhv
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+ID4gPiBS
ZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50
ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3R0bS5jwqDCoMKgwqDCoMKgIHzCoCAyNiArLS0KPiA+ID4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jwqDCoMKgIHzCoCA1NSArLS0tLS0KPiA+ID4gwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5owqDCoMKgIHzCoCAxNyAt
LQo+ID4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmPCoMKgwqDC
oMKgwqAgfCAxMDAgKysrLS0tLS0tLS0KPiA+ID4gwqAgLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9p
bnRlbF9tZW1vcnlfcmVnaW9uLmPCoCB8IDE3MAo+ID4gPiArKysrKysrKysrKystLS0tLS0KPiA+
ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfcmVnaW9uLmPCoCB8wqAg
MTUgKy0KPiA+ID4gwqAgNiBmaWxlcyBjaGFuZ2VkLCAxNjggaW5zZXJ0aW9ucygrKSwgMjE1IGRl
bGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyAKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMKPiA+ID4gaW5kZXggYzYxMjI3NWMzNmM5Li41YmYxZDE5NDVkZDYgMTAwNjQ0
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiA+ID4gQEAg
LTE4MSwxMSArMTgxLDcgQEAgc3RhdGljIGJvb2wKPiA+ID4gaTkxNV90dG1fZXZpY3Rpb25fdmFs
dWFibGUoc3RydWN0IAo+ID4gPiB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4gPiA+IMKgwqDCoMKg
wqAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGk5MTVfdHRtX3RvX2dlbShibyk7
Cj4gPiA+IMKgwqDCoMKgwqAgLyogV2lsbCBkbyBmb3Igbm93LiBPdXIgcGlubmVkIG9iamVjdHMg
YXJlIHN0aWxsIG9uIFRUTSdzCj4gPiA+IExSVSAKPiA+ID4gbGlzdHMgKi8KPiA+ID4gLcKgwqDC
oCBpZiAoIWk5MTVfZ2VtX29iamVjdF9ldmljdGFibGUob2JqKSkKPiA+ID4gLcKgwqDCoMKgwqDC
oMKgIHJldHVybiBmYWxzZTsKPiA+ID4gLQo+ID4gPiAtwqDCoMKgIC8qIFRoaXMgaXNuJ3QgdmFs
aWQgd2l0aCBhIGJ1ZGR5IGFsbG9jYXRvciAqLwo+ID4gPiAtwqDCoMKgIHJldHVybiB0dG1fYm9f
ZXZpY3Rpb25fdmFsdWFibGUoYm8sIHBsYWNlKTsKPiA+ID4gK8KgwqDCoCByZXR1cm4gaTkxNV9n
ZW1fb2JqZWN0X2V2aWN0YWJsZShvYmopOwo+ID4gPiDCoCB9Cj4gPiA+IMKgIHN0YXRpYyB2b2lk
IGk5MTVfdHRtX2V2aWN0X2ZsYWdzKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4gPiA+
IEBAIC0zMjgsMTEgKzMyNCwxNSBAQCBpOTE1X3R0bV9yZXNvdXJjZV9nZXRfc3Qoc3RydWN0IAo+
ID4gPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gPiA+IMKgwqDCoMKgwqAgc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibyA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOwo+ID4gPiDCoMKgwqDC
oMKgIHN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlciAqbWFuID0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgIHR0bV9tYW5hZ2VyX3R5cGUoYm8tPmJkZXYsIHJlcy0+bWVtX3R5cGUpOwo+ID4gPiAr
wqDCoMKgIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptciA9IG9iai0+bW0ucmVnaW9uOwo+
ID4gPiDCoMKgwqDCoMKgIGlmIChtYW4tPnVzZV90dCkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiBpOTE1X3R0bV90dF9nZXRfc3QoYm8tPnR0bSk7Cj4gPiA+IC3CoMKgwqAgcmV0dXJu
IGludGVsX3JlZ2lvbl90dG1fbm9kZV90b19zdChvYmotPm1tLnJlZ2lvbiwgcmVzLQo+ID4gPiA+
bW1fbm9kZSk7Cj4gPiA+ICvCoMKgwqAgaWYgKG1yLT5pc19yYW5nZV9tYW5hZ2VyKQo+ID4gCj4g
PiBEaWQgeW91IGxvb2sgYXQgbW92aW5nIHRoaXMgdGVzdCBpbnRvCj4gPiBpbnRlbF9yZWdpb25f
dHRtX25vZGVfdG9fc3QoKSkKPiAKPiBJIGd1ZXNzIEkgZGlkbid0IGxpa2UgdGhlIF9ub2RlIHNp
bmNlIHRoYXQgc2VlbXMgdG8gc3VnZ2VzdAo+IGRybV9tbV9ub2RlIAo+IHRvIG1lLgo+IAo+IFdo
YXQgYWJvdXQgc29tZXRoaW5nIGxpa2U6Cj4gaTkxNV90dG1fcmVzb3VyY2VfdG9fc3QocmVzLCBt
cikKPiBpbnRlbF9yZWdpb25fdHRtX3Jlc291cmNlX3RvX3N0KG1yLCByZXMpCgppbnRlbF9yZWdp
b25fdHRtX3Jlc291cmNlX3RvX3N0KCkgd291bGQgYmUgbmljZSBJIHRoaW5rLiBJIHRoaW5rIGl0
CndvdWxkIGJlIG5pY2UgaWYgdGhlIHJlZ2lvbiB0dG0gY29kZSBjb3VsZCBoaWRlIHRoZSBtYW5h
Z2VyIHNlbGVjdGlvbi4KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
