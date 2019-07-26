Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCEE767AE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE906ED65;
	Fri, 26 Jul 2019 13:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADEB6ED65
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:38:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 06:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="198321941"
Received: from soegtrop-mobl1.ger.corp.intel.com (HELO [10.252.37.234])
 ([10.252.37.234])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2019 06:38:40 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
 <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
 <951e2751-15d7-9ca8-ef6f-299ba59c47a6@linux.intel.com>
 <156337241401.4375.2377981562987470090@skylake-alporthouse-com>
 <d867c0e8-e2e1-fff6-d073-3d5d98335712@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4a90e8f9-694c-8dea-45b6-e5ea5677df64@intel.com>
Date: Fri, 26 Jul 2019 16:38:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d867c0e8-e2e1-fff6-d073-3d5d98335712@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTcvMDcvMjAxOSAyMTowOSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4KPiBPbiAxNy8wNy8y
MDE5IDE1OjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4g
KDIwMTktMDctMTcgMTQ6NDY6MTUpCj4+Pgo+Pj4gT24gMTcvMDcvMjAxOSAxNDozNSwgQ2hyaXMg
V2lsc29uIHdyb3RlOgo+Pj4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDctMTcgMTQ6
MjM6NTUpCj4+Pj4+Cj4+Pj4+IE9uIDE3LzA3LzIwMTkgMTQ6MTcsIENocmlzIFdpbHNvbiB3cm90
ZToKPj4+Pj4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDctMTcgMTQ6MDk6MDApCj4+
Pj4+Pj4KPj4+Pj4+PiBPbiAxNi8wNy8yMDE5IDE2OjM3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+
Pj4+Pj4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDctMTYgMTY6MjU6MjIpCj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4gT24gMTYvMDcvMjAxOSAxMzo0OSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+
Pj4+Pj4+Pj4+IEZvbGxvd2luZyBhIHRyeV90b191bm1hcCgpIHdlIG1heSB3YW50IHRvIHJlbW92
ZSB0aGUgdXNlcnB0ciAKPj4+Pj4+Pj4+PiBhbmQgc28gY2FsbAo+Pj4+Pj4+Pj4+IHB1dF9wYWdl
cygpLiBIb3dldmVyLCB0cnlfdG9fdW5tYXAoKSBhY3F1aXJlcyB0aGUgcGFnZSBsb2NrIAo+Pj4+
Pj4+Pj4+IGFuZCBzbyB3ZQo+Pj4+Pj4+Pj4+IG11c3QgYXZvaWQgcmVjdXJzaXZlbHkgbG9ja2lu
ZyB0aGUgcGFnZXMgb3Vyc2VsdmVzIC0tIHdoaWNoIAo+Pj4+Pj4+Pj4+IG1lYW5zIHRoYXQKPj4+
Pj4+Pj4+PiB3ZSBjYW5ub3Qgc2FmZWx5IGFjcXVpcmUgdGhlIGxvY2sgYXJvdW5kIHNldF9wYWdl
X2RpcnR5KCkuIAo+Pj4+Pj4+Pj4+IFNpbmNlIHdlCj4+Pj4+Pj4+Pj4gY2FuJ3QgYmUgc3VyZSBv
ZiB0aGUgbG9jaywgd2UgaGF2ZSB0byByaXNrIHNraXAgZGlydHlpbmcgdGhlIAo+Pj4+Pj4+Pj4+
IHBhZ2UsIG9yCj4+Pj4+Pj4+Pj4gZWxzZSByaXNrIGNhbGxpbmcgc2V0X3BhZ2VfZGlydHkoKSB3
aXRob3V0IGEgbG9jayBhbmQgc28gcmlzayBmcwo+Pj4+Pj4+Pj4+IGNvcnJ1cHRpb24uCj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4gU28gaWYgdHJ5bG9jayByYW5kb21seSBmYWlsIHdlIGdldCBkYXRhIGNv
cnJ1cHRpb24gaW4gd2hhdGV2ZXIgCj4+Pj4+Pj4+PiBkYXRhIHNldAo+Pj4+Pj4+Pj4gYXBwbGlj
YXRpb24gaXMgd29ya2luZyBvbiwgd2hpY2ggaXMgd2hhdCB0aGUgb3JpZ2luYWwgcGF0Y2ggCj4+
Pj4+Pj4+PiB3YXMgdHJ5aW5nCj4+Pj4+Pj4+PiB0byBhdm9pZD8gQXJlIHdlIGFibGUgdG8gZGV0
ZWN0IHRoZSBiYWNraW5nIHN0b3JlIHR5cGUgc28gYXQgCj4+Pj4+Pj4+PiBsZWFzdCB3ZQo+Pj4+
Pj4+Pj4gZG9uJ3QgcmlzayBza2lwcGluZyBzZXRfcGFnZV9kaXJ0eSB3aXRoIGFub255bW91cy9z
aG1lbWZzPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBwYWdlLT5tYXBwaW5nPz8/Cj4+Pj4+Pj4KPj4+Pj4+
PiBXb3VsZCBwYWdlLT5tYXBwaW5nIHdvcms/IFdoYXQgaXMgaXQgdGVsbGluZyB1cz8KPj4+Pj4+
Cj4+Pj4+PiBJdCBiYXNpY2FsbHkgdGVsbHMgdXMgaWYgdGhlcmUgaXMgYSBmcyBhcm91bmQ7IGFu
eXRoaW5nIHRoYXQgaXMgCj4+Pj4+PiB0aGUgbW9zdAo+Pj4+Pj4gYmFzaWMgb2YgbWFsbG9jIChl
dmVuIHRtcGZzL3NobWVtZnMgaGFzIHBhZ2UtPm1hcHBpbmcpLgo+Pj4+Pgo+Pj4+PiBOb3JtYWwg
bWFsbG9jIHNvIGFub255bW91cyBwYWdlcz8gT3IgeW91IG1lYW50IGV2ZXJ5dGhpbmcgX2FwYXJ0
XyAKPj4+Pj4gZnJvbQo+Pj4+PiB0aGUgbW9zdCBiYXNpYyBtYWxsb2M/Cj4+Pj4KPj4+PiBBeWUg
bWlzc2VkIHRoZSBub3QuCj4+Pj4KPj4+Pj4+Pj4gV2Ugc3RpbGwgaGF2ZSB0aGUgaXNzdWUgdGhh
dCBpZiB0aGVyZSBpcyBhIG1hcHBpbmcgd2Ugc2hvdWxkIGJlIAo+Pj4+Pj4+PiB0YWtpbmcKPj4+
Pj4+Pj4gdGhlIGxvY2ssIGFuZCB3ZSBtYXkgaGF2ZSBib3RoIGEgbWFwcGluZyBhbmQgYmUgaW5z
aWRlIAo+Pj4+Pj4+PiB0cnlfdG9fdW5tYXAoKS4KPj4+Pj4+Pgo+Pj4+Pj4+IElzIHRoaXMgYSBw
cm9ibGVtPyBPbiBhIHBhdGggd2l0aCBtYXBwaW5ncyB3ZSB0cnlsb2NrIGFuZCBzbyAKPj4+Pj4+
PiBzb2x2ZSB0aGUKPj4+Pj4+PiBzZXRfZGlydHlfbG9ja2VkIGFuZCByZWN1cnNpdmUgZGVhZGxv
Y2sgaXNzdWVzLCBhbmQgd2l0aCBubyAKPj4+Pj4+PiBtYXBwaW5ncwo+Pj4+Pj4+IHdpdGggYWx3
YXlzIGRpcnR5IHRoZSBwYWdlIGFuZCBhdm9pZCBkYXRhIGNvcnJ1cHRpb24uCj4+Pj4+Pgo+Pj4+
Pj4gVGhlIHByb2JsZW0gYXMgSSBzZWUgaXQgaXMgIXBhZ2UtPm1hcHBpbmcgYXJlIGxpa2VseSBh
biAKPj4+Pj4+IGluc2lnbmlmaWNhbnQKPj4+Pj4+IG1pbm9yaXR5IG9mIHVzZXJwdHI7IGFzIEkg
dGhpbmsgZXZlbiBtZW1mZCBhcmUgZXNzZW50aWFsbHkgCj4+Pj4+PiBzaG1lbWZzIChvcgo+Pj4+
Pj4gaHVnZXRsYmZzKSBhbmQgc28gaGF2ZSBtYXBwaW5ncy4KPj4+Pj4KPj4+Pj4gQmV0dGVyIHRo
ZW4gbm90aGluZywgbm8/IElmIGVhc3kgdG8gZG8uLgo+Pj4+Cj4+Pj4gQWN0dWFsbHksIEkgZXJy
aW5nIG9uIHRoZSBvcHBvc2l0ZSBzaWRlLiBQZWVraW5nIGF0IG1tLyBpbnRlcm5hbHMgZG9lcwo+
Pj4+IG5vdCBib2RlIGNvbmZpZGVuY2UgYW5kIGZlZWxzIGluZGVmZW5zaWJsZS4gSSdkIG11Y2gg
cmF0aGVyIHRocm93IG15Cj4+Pj4gaGFuZHMgdXAgYW5kIHNheSAidGhpcyBpcyB0aGUgYmVzdCB3
ZSBjYW4gZG8gd2l0aCB0aGUgQVBJIHByb3ZpZGVkLAo+Pj4+IHBsZWFzZSB0ZWxsIHVzIHdoYXQg
d2Ugc2hvdWxkIGhhdmUgZG9uZS4iIFRvIHdoaWNoIHRoZSBhbnN3ZXIgaXMKPj4+PiBwcm9iYWJs
eSB0byBub3QgaGF2ZSB1c2VkIGd1cCBpbiB0aGUgZmlyc3QgcGxhY2UgOnwKPj4+Cj4+PiAiIiIK
Pj4+IC8qCj4+PiDCoCAqIHNldF9wYWdlX2RpcnR5KCkgaXMgcmFjeSBpZiB0aGUgY2FsbGVyIGhh
cyBubyByZWZlcmVuY2UgYWdhaW5zdAo+Pj4gwqAgKiBwYWdlLT5tYXBwaW5nLT5ob3N0LCBhbmQg
aWYgdGhlIHBhZ2UgaXMgdW5sb2NrZWQuIFRoaXMgaXMgCj4+PiBiZWNhdXNlIGFub3RoZXIKPj4+
IMKgICogQ1BVIGNvdWxkIHRydW5jYXRlIHRoZSBwYWdlIG9mZiB0aGUgbWFwcGluZyBhbmQgdGhl
biBmcmVlIHRoZSAKPj4+IG1hcHBpbmcuCj4+PiDCoCAqCj4+PiDCoCAqIFVzdWFsbHksIHRoZSBw
YWdlIF9pc18gbG9ja2VkLCBvciB0aGUgY2FsbGVyIGlzIGEgdXNlci1zcGFjZSAKPj4+IHByb2Nl
c3Mgd2hpY2gKPj4+IMKgICogaG9sZHMgYSByZWZlcmVuY2Ugb24gdGhlIGlub2RlIGJ5IGhhdmlu
ZyBhbiBvcGVuIGZpbGUuCj4+PiDCoCAqCj4+PiDCoCAqIEluIG90aGVyIGNhc2VzLCB0aGUgcGFn
ZSBzaG91bGQgYmUgbG9ja2VkIGJlZm9yZSBydW5uaW5nIAo+Pj4gc2V0X3BhZ2VfZGlydHkoKS4K
Pj4+IMKgICovCj4+PiBpbnQgc2V0X3BhZ2VfZGlydHlfbG9jayhzdHJ1Y3QgcGFnZSAqcGFnZSkK
Pj4+ICIiIgo+Pj4KPj4+IENvdWxkIHdlIGhvbGQgYSByZWZlcmVuY2UgdG8gcGFnZS0+bWFwcGlu
Zy0+aG9zdCB3aGlsZSBoYXZpbmcgcGFnZXMgCj4+PiBhbmQgdGhlbiB3b3VsZCBiZSBva2F5IHRv
IGNhbGwgcGxhaW4gc2V0X3BhZ2VfZGlydHk/Cj4+Cj4+IFdlIHdvdWxkIHRoZW4gYmUgaGl0dGlu
ZyB0aGUgd2FybmluZ3MgaW4gZXh0NCBmb3IgdW5sb2NrZWQgcGFnZXMgYWdhaW4uCj4KPiBBaCB0
cnVlLi4KPgo+PiBFc3NlbnRpYWxseSB0aGUgYXJndW1lbnQgaXMgd2hldGhlciBvciBub3QgdGhh
dCB3YXJuIGlzIHZhbGlkLCB0byAKPj4gd2hpY2ggSQo+PiB0aGluayByZXF1aXJlcyBpbm5lciBr
bm93bGVkZ2Ugb2YgdmZzICsgZXh0NC4gVG8gaG9sZCBhIHJlZmVyZW5jZSBvbiB0aGUKPj4gaG9z
dCB3b3VsZCByZXF1aXJlIHVzIHRyYWNraW5nIHBhZ2UtPm1hcHBpbmcgKHJlYXNvbmFibGUgc2lu
Y2Ugd2UKPj4gYWxyZWFkeSBob29rZWQgaW50byBtbXUgYW5kIHNvIHdpbGwgZ2V0IGFuIGludmFs
aWRhdGUgKyBmcmVzaCBndXAgb24KPj4gYW55IGNoYW5nZXMpLCBwbHVzIGl0ZXJhdGluZyBvdmVy
IGFsbCB0byBhY3F1aXJlIHRoZSBleHRyYSByZWZlcmVuY2UgaWYKPj4gYXBwbGljYWJsZSAtLSBh
bmQgSSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgc2lkZS1lZmZlY3RzIG9mIHRoYXQgd291bGQgYmUu
Cj4+IENvdWxkIHdlbGwgYmUgcG9zaXRpdmUgc2lkZS1lZmZlY3RzLiBKdXN0IGZlZWxzIGxpa2Ug
d2FuZGVyaW5nIGV2ZW4KPj4gZnVydGhlciBvZmYgdGhlIGJlYXRlbiBwYXRoIHdpdGhvdXQgYSBt
YXAuIEdvb2QgbmV3cyBobW0gaXMganVzdCBhcm91bmQKPj4gdGhlIGNvcm5lciAod2hpY2ggd2ls
bCBwcm9iYWJseSBwcm9oaWJpdCB0aGlzIHVzZS1jYXNlKSA6fAo+Cj4gLi4uIGNhbiB3ZSByZWFj
aCBvdXQgdG8gc29tZW9uZSBtb3JlIGtub3dsZWRnZWFibGUgaW4gbW0gbWF0dGVycyB0byAKPiBy
ZWNvbW1lbmQgdXMgd2hhdCB0byBkbz8KPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KCgpKdXN0IGEg
cmVtaW5kZXIgdG8gbm90IGxldCB0aGlzIHNsaXAuCldlIHJ1biBpbnRvIHVzZXJwdHIgYnVncyBp
biBDSSBxdWl0ZSByZWd1bGFybHkuCgpUaGFua3MsCgotTGlvbmVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
