Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B586C0CF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F020D89598;
	Wed, 17 Jul 2019 18:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE04689598
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 18:09:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 11:09:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="158539171"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 11:09:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
 <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
 <951e2751-15d7-9ca8-ef6f-299ba59c47a6@linux.intel.com>
 <156337241401.4375.2377981562987470090@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d867c0e8-e2e1-fff6-d073-3d5d98335712@linux.intel.com>
Date: Wed, 17 Jul 2019 19:09:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156337241401.4375.2377981562987470090@skylake-alporthouse-com>
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

Ck9uIDE3LzA3LzIwMTkgMTU6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjQ2OjE1KQo+Pgo+PiBPbiAxNy8wNy8yMDE5IDE0OjM1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTE3IDE0OjIzOjU1KQo+Pj4+Cj4+Pj4gT24gMTcvMDcvMjAxOSAxNDoxNywgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjA5OjAw
KQo+Pj4+Pj4KPj4+Pj4+IE9uIDE2LzA3LzIwMTkgMTY6MzcsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE2IDE2OjI1OjIyKQo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBPbiAxNi8wNy8yMDE5IDEzOjQ5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+
Pj4+Pj4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5tYXAoKSB3ZSBtYXkgd2FudCB0byByZW1vdmUg
dGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPj4+Pj4+Pj4+IHB1dF9wYWdlcygpLiBIb3dldmVyLCB0
cnlfdG9fdW5tYXAoKSBhY3F1aXJlcyB0aGUgcGFnZSBsb2NrIGFuZCBzbyB3ZQo+Pj4+Pj4+Pj4g
bXVzdCBhdm9pZCByZWN1cnNpdmVseSBsb2NraW5nIHRoZSBwYWdlcyBvdXJzZWx2ZXMgLS0gd2hp
Y2ggbWVhbnMgdGhhdAo+Pj4+Pj4+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRoZSBsb2Nr
IGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+Pj4+Pj4+Pj4gY2FuJ3QgYmUgc3Vy
ZSBvZiB0aGUgbG9jaywgd2UgaGF2ZSB0byByaXNrIHNraXAgZGlydHlpbmcgdGhlIHBhZ2UsIG9y
Cj4+Pj4+Pj4+PiBlbHNlIHJpc2sgY2FsbGluZyBzZXRfcGFnZV9kaXJ0eSgpIHdpdGhvdXQgYSBs
b2NrIGFuZCBzbyByaXNrIGZzCj4+Pj4+Pj4+PiBjb3JydXB0aW9uLgo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBTbyBpZiB0cnlsb2NrIHJhbmRvbWx5IGZhaWwgd2UgZ2V0IGRhdGEgY29ycnVwdGlvbiBpbiB3
aGF0ZXZlciBkYXRhIHNldAo+Pj4+Pj4+PiBhcHBsaWNhdGlvbiBpcyB3b3JraW5nIG9uLCB3aGlj
aCBpcyB3aGF0IHRoZSBvcmlnaW5hbCBwYXRjaCB3YXMgdHJ5aW5nCj4+Pj4+Pj4+IHRvIGF2b2lk
PyBBcmUgd2UgYWJsZSB0byBkZXRlY3QgdGhlIGJhY2tpbmcgc3RvcmUgdHlwZSBzbyBhdCBsZWFz
dCB3ZQo+Pj4+Pj4+PiBkb24ndCByaXNrIHNraXBwaW5nIHNldF9wYWdlX2RpcnR5IHdpdGggYW5v
bnltb3VzL3NobWVtZnM/Cj4+Pj4+Pj4KPj4+Pj4+PiBwYWdlLT5tYXBwaW5nPz8/Cj4+Pj4+Pgo+
Pj4+Pj4gV291bGQgcGFnZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/Cj4+
Pj4+Cj4+Pj4+IEl0IGJhc2ljYWxseSB0ZWxscyB1cyBpZiB0aGVyZSBpcyBhIGZzIGFyb3VuZDsg
YW55dGhpbmcgdGhhdCBpcyB0aGUgbW9zdAo+Pj4+PiBiYXNpYyBvZiBtYWxsb2MgKGV2ZW4gdG1w
ZnMvc2htZW1mcyBoYXMgcGFnZS0+bWFwcGluZykuCj4+Pj4KPj4+PiBOb3JtYWwgbWFsbG9jIHNv
IGFub255bW91cyBwYWdlcz8gT3IgeW91IG1lYW50IGV2ZXJ5dGhpbmcgX2FwYXJ0XyBmcm9tCj4+
Pj4gdGhlIG1vc3QgYmFzaWMgbWFsbG9jPwo+Pj4KPj4+IEF5ZSBtaXNzZWQgdGhlIG5vdC4KPj4+
Cj4+Pj4+Pj4gV2Ugc3RpbGwgaGF2ZSB0aGUgaXNzdWUgdGhhdCBpZiB0aGVyZSBpcyBhIG1hcHBp
bmcgd2Ugc2hvdWxkIGJlIHRha2luZwo+Pj4+Pj4+IHRoZSBsb2NrLCBhbmQgd2UgbWF5IGhhdmUg
Ym90aCBhIG1hcHBpbmcgYW5kIGJlIGluc2lkZSB0cnlfdG9fdW5tYXAoKS4KPj4+Pj4+Cj4+Pj4+
PiBJcyB0aGlzIGEgcHJvYmxlbT8gT24gYSBwYXRoIHdpdGggbWFwcGluZ3Mgd2UgdHJ5bG9jayBh
bmQgc28gc29sdmUgdGhlCj4+Pj4+PiBzZXRfZGlydHlfbG9ja2VkIGFuZCByZWN1cnNpdmUgZGVh
ZGxvY2sgaXNzdWVzLCBhbmQgd2l0aCBubyBtYXBwaW5ncwo+Pj4+Pj4gd2l0aCBhbHdheXMgZGly
dHkgdGhlIHBhZ2UgYW5kIGF2b2lkIGRhdGEgY29ycnVwdGlvbi4KPj4+Pj4KPj4+Pj4gVGhlIHBy
b2JsZW0gYXMgSSBzZWUgaXQgaXMgIXBhZ2UtPm1hcHBpbmcgYXJlIGxpa2VseSBhbiBpbnNpZ25p
ZmljYW50Cj4+Pj4+IG1pbm9yaXR5IG9mIHVzZXJwdHI7IGFzIEkgdGhpbmsgZXZlbiBtZW1mZCBh
cmUgZXNzZW50aWFsbHkgc2htZW1mcyAob3IKPj4+Pj4gaHVnZXRsYmZzKSBhbmQgc28gaGF2ZSBt
YXBwaW5ncy4KPj4+Pgo+Pj4+IEJldHRlciB0aGVuIG5vdGhpbmcsIG5vPyBJZiBlYXN5IHRvIGRv
Li4KPj4+Cj4+PiBBY3R1YWxseSwgSSBlcnJpbmcgb24gdGhlIG9wcG9zaXRlIHNpZGUuIFBlZWtp
bmcgYXQgbW0vIGludGVybmFscyBkb2VzCj4+PiBub3QgYm9kZSBjb25maWRlbmNlIGFuZCBmZWVs
cyBpbmRlZmVuc2libGUuIEknZCBtdWNoIHJhdGhlciB0aHJvdyBteQo+Pj4gaGFuZHMgdXAgYW5k
IHNheSAidGhpcyBpcyB0aGUgYmVzdCB3ZSBjYW4gZG8gd2l0aCB0aGUgQVBJIHByb3ZpZGVkLAo+
Pj4gcGxlYXNlIHRlbGwgdXMgd2hhdCB3ZSBzaG91bGQgaGF2ZSBkb25lLiIgVG8gd2hpY2ggdGhl
IGFuc3dlciBpcwo+Pj4gcHJvYmFibHkgdG8gbm90IGhhdmUgdXNlZCBndXAgaW4gdGhlIGZpcnN0
IHBsYWNlIDp8Cj4+Cj4+ICIiIgo+PiAvKgo+PiAgICogc2V0X3BhZ2VfZGlydHkoKSBpcyByYWN5
IGlmIHRoZSBjYWxsZXIgaGFzIG5vIHJlZmVyZW5jZSBhZ2FpbnN0Cj4+ICAgKiBwYWdlLT5tYXBw
aW5nLT5ob3N0LCBhbmQgaWYgdGhlIHBhZ2UgaXMgdW5sb2NrZWQuICBUaGlzIGlzIGJlY2F1c2Ug
YW5vdGhlcgo+PiAgICogQ1BVIGNvdWxkIHRydW5jYXRlIHRoZSBwYWdlIG9mZiB0aGUgbWFwcGlu
ZyBhbmQgdGhlbiBmcmVlIHRoZSBtYXBwaW5nLgo+PiAgICoKPj4gICAqIFVzdWFsbHksIHRoZSBw
YWdlIF9pc18gbG9ja2VkLCBvciB0aGUgY2FsbGVyIGlzIGEgdXNlci1zcGFjZSBwcm9jZXNzIHdo
aWNoCj4+ICAgKiBob2xkcyBhIHJlZmVyZW5jZSBvbiB0aGUgaW5vZGUgYnkgaGF2aW5nIGFuIG9w
ZW4gZmlsZS4KPj4gICAqCj4+ICAgKiBJbiBvdGhlciBjYXNlcywgdGhlIHBhZ2Ugc2hvdWxkIGJl
IGxvY2tlZCBiZWZvcmUgcnVubmluZyBzZXRfcGFnZV9kaXJ0eSgpLgo+PiAgICovCj4+IGludCBz
ZXRfcGFnZV9kaXJ0eV9sb2NrKHN0cnVjdCBwYWdlICpwYWdlKQo+PiAiIiIKPj4KPj4gQ291bGQg
d2UgaG9sZCBhIHJlZmVyZW5jZSB0byBwYWdlLT5tYXBwaW5nLT5ob3N0IHdoaWxlIGhhdmluZyBw
YWdlcyBhbmQgdGhlbiB3b3VsZCBiZSBva2F5IHRvIGNhbGwgcGxhaW4gc2V0X3BhZ2VfZGlydHk/
Cj4gCj4gV2Ugd291bGQgdGhlbiBiZSBoaXR0aW5nIHRoZSB3YXJuaW5ncyBpbiBleHQ0IGZvciB1
bmxvY2tlZCBwYWdlcyBhZ2Fpbi4KCkFoIHRydWUuLgoKPiBFc3NlbnRpYWxseSB0aGUgYXJndW1l
bnQgaXMgd2hldGhlciBvciBub3QgdGhhdCB3YXJuIGlzIHZhbGlkLCB0byB3aGljaCBJCj4gdGhp
bmsgcmVxdWlyZXMgaW5uZXIga25vd2xlZGdlIG9mIHZmcyArIGV4dDQuIFRvIGhvbGQgYSByZWZl
cmVuY2Ugb24gdGhlCj4gaG9zdCB3b3VsZCByZXF1aXJlIHVzIHRyYWNraW5nIHBhZ2UtPm1hcHBp
bmcgKHJlYXNvbmFibGUgc2luY2Ugd2UKPiBhbHJlYWR5IGhvb2tlZCBpbnRvIG1tdSBhbmQgc28g
d2lsbCBnZXQgYW4gaW52YWxpZGF0ZSArIGZyZXNoIGd1cCBvbgo+IGFueSBjaGFuZ2VzKSwgcGx1
cyBpdGVyYXRpbmcgb3ZlciBhbGwgdG8gYWNxdWlyZSB0aGUgZXh0cmEgcmVmZXJlbmNlIGlmCj4g
YXBwbGljYWJsZSAtLSBhbmQgSSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgc2lkZS1lZmZlY3RzIG9m
IHRoYXQgd291bGQgYmUuCj4gQ291bGQgd2VsbCBiZSBwb3NpdGl2ZSBzaWRlLWVmZmVjdHMuIEp1
c3QgZmVlbHMgbGlrZSB3YW5kZXJpbmcgZXZlbgo+IGZ1cnRoZXIgb2ZmIHRoZSBiZWF0ZW4gcGF0
aCB3aXRob3V0IGEgbWFwLiBHb29kIG5ld3MgaG1tIGlzIGp1c3QgYXJvdW5kCj4gdGhlIGNvcm5l
ciAod2hpY2ggd2lsbCBwcm9iYWJseSBwcm9oaWJpdCB0aGlzIHVzZS1jYXNlKSA6fAoKLi4uIGNh
biB3ZSByZWFjaCBvdXQgdG8gc29tZW9uZSBtb3JlIGtub3dsZWRnZWFibGUgaW4gbW0gbWF0dGVy
cyB0byAKcmVjb21tZW5kIHVzIHdoYXQgdG8gZG8/CgpSZWdhcmRzLAoKVHZydGtvCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
