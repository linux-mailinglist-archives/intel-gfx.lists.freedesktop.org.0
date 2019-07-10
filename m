Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E79C464377
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 10:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551B96E0C0;
	Wed, 10 Jul 2019 08:21:18 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9BE6E0C0
 for <Intel-GFX@lists.freedesktop.org>; Wed, 10 Jul 2019 08:21:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 01:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,473,1557212400"; d="scan'208";a="166006344"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jul 2019 01:21:14 -0700
To: John Harrison <John.C.Harrison@Intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Intel-GFX@Lists.FreeDesktop.Org
References: <20190703020604.20369-1-John.C.Harrison@Intel.com>
 <20190703020604.20369-3-John.C.Harrison@Intel.com>
 <156214277736.2466.571113921317258469@skylake-alporthouse-com>
 <364de560-d346-049d-a00a-f664d7ef738c@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cfb1e0f4-b682-0409-21b7-5594d78a56b0@linux.intel.com>
Date: Wed, 10 Jul 2019 09:21:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <364de560-d346-049d-a00a-f664d7ef738c@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement read-only support
 in whitelist selftest
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

T24gMDMvMDcvMjAxOSAyMDo0MywgSm9obiBIYXJyaXNvbiB3cm90ZToKPiBPbiA3LzMvMjAxOSAw
MTozMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIEpvaG4uQy5IYXJyaXNvbkBJbnRl
bC5jb20gKDIwMTktMDctMDMgMDM6MDY6MDQpCj4+PiBGcm9tOiBKb2huIEhhcnJpc29uIDxKb2hu
LkMuSGFycmlzb25ASW50ZWwuY29tPgo+Pj4KPj4+IE5ld2VyIGhhcmR3YXJlIHN1cHBvcnRzIGV4
dHJhIGZlYXR1cmUgaW4gdGhlIHdoaXRlbGlzdCByZWdpc3RlcnMuIFRoaXMKPj4+IHBhdGNoIHVw
ZGF0ZXMgdGhlIHNlbGZ0ZXN0IHRvIHRlc3QgdGhhdCBlbnRyaWVzIG1hcmtlZCBhcyByZWFkIG9u
bHkKPj4+IGFyZSBhY3R1YWxseSByZWFkIG9ubHkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9o
biBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4+IENDOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiDCoCAuLi4vZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmPCoMKgwqAgfCA0MyArKysrKysrKysrKysr
LS0tLS0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X3dvcmthcm91bmRzLmMgCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X3dvcmthcm91bmRzLmMKPj4+IGluZGV4IGY4MTUxZDU5NDZjOC4uNWNkMmIxNzEwNWJhIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMu
Ywo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMu
Ywo+Pj4gQEAgLTQ4MiwxMiArNDgyLDEyIEBAIHN0YXRpYyBpbnQgY2hlY2tfZGlydHlfd2hpdGVs
aXN0KHN0cnVjdCAKPj4+IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBzcm0sIGxybSwgcnN2ZDsKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBleHBlY3Q7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpbnQgaWR4Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9v
bCByb19yZWc7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAod29fcmVn
aXN0ZXIoZW5naW5lLCByZWcpKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOwo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaWYgKHJvX3JlZ2lzdGVyKHJlZykpCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByb19yZWcgPSByb19yZWdpc3RlcihyZWcpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3JtID0gTUlfU1RPUkVfUkVHSVNURVJfTUVNOwo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbHJtID0gTUlfTE9BRF9SRUdJU1RFUl9NRU07Cj4+PiBAQCAt
NTg4LDI0ICs1ODgsMzcgQEAgc3RhdGljIGludCBjaGVja19kaXJ0eV93aGl0ZWxpc3Qoc3RydWN0
IAo+Pj4gaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgR0VNX0JVR19P
Tih2YWx1ZXNbQVJSQVlfU0laRSh2YWx1ZXMpIC0gMV0gIT0gCj4+PiAweGZmZmZmZmZmKTsKPj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJzdmQgPSByZXN1bHRzW0FSUkFZX1NJWkUo
dmFsdWVzKV07IC8qIGRldGVjdCB3cml0ZSAKPj4+IG1hc2tpbmcgKi8KPj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICghcnN2ZCkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByX2VycigiJXM6IFVuYWJsZSB0byB3cml0ZSB0byB3
aGl0ZWxpc3RlZCAKPj4+IHJlZ2lzdGVyICV4XG4iLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5naW5lLT5uYW1lLCByZWcp
Owo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9
IC1FSU5WQUw7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZ290byBvdXRfdW5waW47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
cm9fcmVnKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcnN2ZCA9IDB4RkZGRkZGRkY7Cj4+IHJzdmQgPSAwOwo+Pgo+PiByZWdfd3JpdGUoKSB3aWxs
IHRoZW4gZHRydC4KPiBJdCBzZWVtZWQgdG9vIHN1c3BpY2lvdXNseSBicm9rZW4gdG8gaGF2ZSB0
aGUgdGVzdCBjbGFpbSBhIHJlYWQtb25seSAKPiByZWdpc3RlciB3YXMgc3VjY2Vzc2Z1bGx5IHdy
aXR0ZW4gdG8uIFRoaXMgd2F5IG1ha2VzIGl0IGNsZWFyIHRoYXQgdGhlIAo+IHRlc3QgZXhwZWN0
cyByZWFkLW9ubHkgdG8gYWx3YXlzIHJldHVybiB0aGUgZmlyc3QgdmFsdWUgcmVhZC4KCkkgc3Vn
Z2VzdCB3ZSBnbyB3aXRoIHRoaXMgdmVyc2lvbiBpZiBpdCBpcyBub3QgdG9vLWRpc2FncmVlYWJs
ZS4gQ2hyaXM/CgpKb2huIGNhbiBvbmx5IGhvcGUgaXQgc3RpbGwgYXBwbGllcy4KClJlZ2FyZHMs
CgpUdnJ0a28KCj4+IERvZXMgdGhpcyBub3QgcmVwbGFjZSB0aGUgc2tpcCBwbGFjZWQgaW4gY2hl
Y2tfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzKCk/Cj4gVGhlIHR3byB2ZXJzaW9ucyBvZiB0aGF0IHRl
c3QgbG9va3MgbGlrZSB0aGV5IG5lZWQgdG8gYmUgYWJsZSB0byBzZXQgCj4gdmFsdWVzLiBTbyB0
aGV5IGNhbid0IGJlIHJ1biBvbiByZWFkLW9ubHkgcmVnaXN0ZXJzLgo+IAo+PiBXZSBzdGlsbCBu
ZWVkIGEgd2F5IHRvIHZlcmlmeSB0aGF0IHRoZSByZWdpc3RlciBleGlzdHMsIGFzIGV2ZW4gd3Jp
dGluZwo+PiBmcm9tIGEgc2VjdXJlIGJhdGNoIGZhaWxzIChub3QgdHJpZWQgcmluZyB0aG91Z2gp
LiBEbyB3ZSBsb2FkIGEgc3Bpbm5lciwKPj4gdHdlYWsgdmlhIG1taW8/Cj4gCj4gSSBkb24ndCB0
aGluayB0aGVyZSBpcyBhIHJlbGlhYmxlLCBnZW5lcmljIG1lY2hhbmlzbSB0byB0ZXN0IHRoYXQg
eW91IAo+IGNhbiBhY3R1YWxseSByZWFkIGZyb20gYSByZWFkIG9ubHkgcmVnaXN0ZXIuIFlvdSBu
ZWVkIHRvIGtub3cgd2hhdCAKPiBjb250ZW50IGl0IHNob3VsZCBwcm92aWRlLiBFdmVuIHRoZSBj
dXJyZW50IHRlc3QgKHRoYXQgaXQgYWx3YXlzIHJldHVybnMgCj4gdGhlIHNhbWUgdmFsdWUpIHdv
dWxkIGJyZWFrIGlmIHRoZSByZWdpc3RlciBjaGFuZ2VzIGR5bmFtaWNhbGx5IChlLmcuIAo+IGl0
J3MgYSBoYXJkd2FyZSBjb3VudGVyKS4KPiAKPiBKb2huLgo+IAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
