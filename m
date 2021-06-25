Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7603B4880
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 19:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CBA6EE2F;
	Fri, 25 Jun 2021 17:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6F66EE2D;
 Fri, 25 Jun 2021 17:52:37 +0000 (UTC)
IronPort-SDR: YfOI9sG85FlZvLk8HI7IP3AQe9g74uI6dkEXDjXJZVbFlSgOXK9Hn7Yk9qlWglMfJP7eQkNice
 urHsilI6xk9g==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="195011826"
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="195011826"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 10:52:34 -0700
IronPort-SDR: cQ16GZc9Pqc0rvymdcrJw1hhojInv7WYueZE/TwYZXeI3UdHZZY4Fef/+PnRu8htEvtiw+DZ+u
 IWCEtNRNQPXg==
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="455514711"
Received: from liordavi-mobl.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 10:52:30 -0700
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
References: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
 <20210624183110.22582-5-thomas.hellstrom@linux.intel.com>
 <5304ae661abb43a0816a485db9d3bbb5@intel.com>
 <cd90ba70-15f8-af0a-8810-2ee7939622a2@linux.intel.com>
 <5e9a46340f254928be6264e4e61eeab8@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <8cffb2f2-4401-2cdf-1ab3-98cc2d879b00@linux.intel.com>
Date: Fri, 25 Jun 2021 19:52:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <5e9a46340f254928be6264e4e61eeab8@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Migrate to system at
 dma-buf map time
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjUvMjEgNzozOCBQTSwgUnVobCwgTWljaGFlbCBKIHdyb3RlOgo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+IFNlbnQ6IEZyaWRheSwgSnVuZSAyNSwgMjAyMSAxMjox
OCBQTQo+PiBUbzogUnVobCwgTWljaGFlbCBKIDxtaWNoYWVsLmoucnVobEBpbnRlbC5jb20+OyBp
bnRlbC0KPj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+PiBDYzogQXVsZCwgTWF0dGhldyA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4K
Pj4gU3ViamVjdDogUmU6IFtQQVRDSCA0LzRdIGRybS9pOTE1L2dlbTogTWlncmF0ZSB0byBzeXN0
ZW0gYXQgZG1hLWJ1ZiBtYXAKPj4gdGltZQo+Pgo+PiBIaSwgTWljaGFlbCwKPj4KPj4gdGhhbmtz
IGZvciBsb29raW5nIGF0IHRoaXMuCj4+Cj4+IE9uIDYvMjUvMjEgNjowMiBQTSwgUnVobCwgTWlj
aGFlbCBKIHdyb3RlOgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4gRnJvbTog
ZHJpLWRldmVsIDxkcmktZGV2ZWwtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJl
aGFsZiBPZgo+Pj4+IFRob21hcyBIZWxsc3Ryw7ZtCj4+Pj4gU2VudDogVGh1cnNkYXksIEp1bmUg
MjQsIDIwMjEgMjozMSBQTQo+Pj4+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
OyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4gQ2M6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT47IEF1bGQsCj4+IE1hdHRoZXcK
Pj4+PiA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4+PiBTdWJqZWN0OiBbUEFUQ0ggNC80XSBk
cm0vaTkxNS9nZW06IE1pZ3JhdGUgdG8gc3lzdGVtIGF0IGRtYS1idWYgbWFwCj4+IHRpbWUKPj4+
PiBVbnRpbCB3ZSBzdXBwb3J0IHAycCBkbWEgb3IgYXMgYSBjb21wbGVtZW50IHRvIHRoYXQsIG1p
Z3JhdGUgZGF0YQo+Pj4+IHRvIHN5c3RlbSBtZW1vcnkgYXQgZG1hLWJ1ZiBtYXAgdGltZSBpZiBw
b3NzaWJsZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4+PiAtLS0KPj4+PiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgfCA5ICsrKysrKysrLQo+Pj4+IDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Pgo+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPj4+PiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+Pj4+IGluZGV4IDYxNmMz
YTJmMWJhZi4uYTUyZjg4NWJjMDlhIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+Pj4+IEBAIC0yNSw3ICsyNSwxNCBAQCBzdGF0aWMgc3Ry
dWN0IHNnX3RhYmxlCj4+ICppOTE1X2dlbV9tYXBfZG1hX2J1ZihzdHJ1Y3QKPj4+PiBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaG1lCj4+Pj4gCXN0cnVjdCBzY2F0dGVybGlzdCAqc3JjLCAqZHN0
Owo+Pj4+IAlpbnQgcmV0LCBpOwo+Pj4+Cj4+Pj4gLQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfcGlu
X3BhZ2VzX3VubG9ja2VkKG9iaik7Cj4+Pj4gKwlyZXQgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19p
bnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7Cj4+PiBIbW0sIEkgYmVsaWV2ZSBpbiBtb3N0IGNhc2Vz
IHRoYXQgdGhlIGNhbGxlciBzaG91bGQgYmUgaG9sZGluZyB0aGUKPj4+IGxvY2sgKG9iamVjdCBk
bWEtcmVzdikgb24gdGhpcyBvYmplY3QgYWxyZWFkeS4KPj4gWWVzLCBJIGFncmVlLCBJbiBwYXJ0
aWN1bGFyIGZvciBvdGhlciBpbnN0YW5jZXMgb2Ygb3VyIG93biBkcml2ZXIswqAgYXQKPj4gbGVh
c3Qgc2luY2UgdGhlIGRtYV9yZXN2IGludHJvZHVjdGlvbi4KPj4KPj4gQnV0IEkgYWxzbyB0aGlu
ayB0aGF0J3MgYSBwcmUtZXhpc3RpbmcgYnVnLCBzaW5jZQo+PiBpOTE1X2dlbV9vYmplY3RfcGlu
X3BhZ2VzX3VubG9ja2VkKCkgd2lsbCBhbHNvIHRha2UgdGhlIGxvY2suCj4gT3VjaCB5ZXMuICBN
aXNzZWQgdGhhdC4KPgo+PiBJIFRoaW5rIHdlIG5lZWQgdG8gaW5pdGlhbGx5IG1ha2UgdGhlIGV4
cG9ydGVyIGR5bmFtaWMtY2FwYWJsZSB0bwo+PiByZXNvbHZlIHRoaXMsIGFuZCBkcm9wIHRoZSBs
b2NraW5nIGhlcmUgY29tcGxldGVseSwgYXMgZG1hLWJ1ZiBkb2NzIHNheXMKPj4gdGhhdCB3ZSdy
ZSB0aGVuIGd1YXJhbnRlZWQgdG8gZ2V0IGNhbGxlZCB3aXRoIHRoZSBvYmplY3QgbG9jayBoZWxk
Lgo+Pgo+PiBJIGZpZ3VyZSBpZiB3ZSBtYWtlIHRoZSBleHBvcnRlciBkeW5hbWljLCB3ZSBuZWVk
IHRvIG1pZ3JhdGUgYWxyZWFkeSBhdAo+PiBkbWFfYnVmX3BpbiB0aW1lIHNvIHdlIGRvbid0IHBp
biB0aGUgb2JqZWN0IGluIHRoZSB3cm9uZyBsb2NhdGlvbi4KPiBUaGUgZXhwb3J0ZXIgYXMgZHlu
YW1pYyAgKG9wcy0+cGluIGlzIGF2YWlsYWJsZSkgaXMgb3B0aW9uYWwsIGJ1dCBpbXBvcnRlcgo+
IGR5bmFtaWMgKG9wcy0+bW92ZV9ub3RpZnkpIGlzIHJlcXVpcmVkLgo+Cj4gV2l0aCB0aGF0IGlu
IG1pbmQsIGl0IHdvdWxkIHNlZW0gdGhhdCB0aGVyZSBhcmUgdGhyZWUgcG9zc2libGUgY29tYmlu
YXRpb25zCj4gZm9yIHRoZSBtaWdyYXRlIHRvIGJlIGF0dGVtcHRlZDoKPgo+IDEpIGluIHRoZSBv
cHMtPnBpbiBmdW5jdGlvbiAoZXhwb3J0X2R5bmFtaWMgIT0gaW1wb3J0X2R5bmFtaWMsIGR1cmlu
ZyBhdHRhY2gpCj4gMikgaW4gdGhlIG9wcy0+cGluIGZ1bmN0aW9uIChleHBvcnRfZHluYW1pYyBh
bmQgIUNPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkpIGR1cmluZyBtYXBwaW5nCj4gMykgYW5kIHBv
c3NpYmx5IGluIG9wcy0+bWFwX2RtYV9idWYgKGV4b3J0X2R5bmFtaWMgaWFuZCBDT05GSUdfRE1B
QlVGX01PVkVfTk9USUZZKQo+Cj4gU2luY2Ugb25lIHBvc3NpYmlsaXR5IGhhcyB0byBiZSBpbiB0
aGUgbWFwcGluZyBmdW5jdGlvbiwgaXQgc2VlbXMgdGhhdCBpZiB3ZQo+IGNhbiBmaWd1cmUgb3V0
IHRoZSBsb2NraW5nLCB0aGF0IHRoZSBtaWdyYXRlIHNob3VsZCBwcm9iYWJseSBiZSBhdmFpbGFi
bGUgaGVyZS4KPgo+IE1pa2UKClNvIHBlcmhhcHMganVzdCB0byBpbml0aWFsbHkgZml4IHRoZSBi
dWcsIHdlIGNvdWxkIGp1c3QgaW1wbGVtZW50IE5PUCAKcGluKCkgYW5kIHVucGluKCkgY2FsbGJh
Y2tzIGFuZCBkcm9wIHRoZSBsb2NraW5nIGluIG1hcF9hdHRhY2goKSBhbmQgCnJlcGxhY2UgaXQg
d2l0aCBhbiBhc3NlcnRfb2JqZWN0X2hlbGQoKTsKCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
