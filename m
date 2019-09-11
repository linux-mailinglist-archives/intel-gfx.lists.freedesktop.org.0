Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D9FAFC46
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 14:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0584B6EAD4;
	Wed, 11 Sep 2019 12:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 509EF6EAD4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 12:10:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 05:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="185802869"
Received: from avrahamr-mobl1.ger.corp.intel.com (HELO [10.252.3.203])
 ([10.252.3.203])
 by fmsmga007.fm.intel.com with ESMTP; 11 Sep 2019 05:10:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
 <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
 <951e2751-15d7-9ca8-ef6f-299ba59c47a6@linux.intel.com>
 <156337241401.4375.2377981562987470090@skylake-alporthouse-com>
 <d867c0e8-e2e1-fff6-d073-3d5d98335712@linux.intel.com>
 <4a90e8f9-694c-8dea-45b6-e5ea5677df64@intel.com>
 <156803716592.27961.18000112287811684297@skylake-alporthouse-com>
 <90d744ec-17ac-b8d1-e9c0-d34c16adcd4f@linux.intel.com>
 <156820191991.2643.4682362430205149096@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <eeb4eda8-aa0d-bbae-16cc-4849bac28026@linux.intel.com>
Date: Wed, 11 Sep 2019 13:10:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156820191991.2643.4682362430205149096@skylake-alporthouse-com>
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

Ck9uIDExLzA5LzIwMTkgMTI6MzgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTExIDEyOjMxOjMyKQo+Pgo+PiBPbiAwOS8wOS8yMDE5IDE0OjUy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGluICgyMDE5
LTA3LTI2IDE0OjM4OjQwKQo+Pj4+IE9uIDE3LzA3LzIwMTkgMjE6MDksIFR2cnRrbyBVcnN1bGlu
IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBPbiAxNy8wNy8yMDE5IDE1OjA2LCBDaHJpcyBXaWxzb24gd3Jv
dGU6Cj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjQ2OjE1KQo+
Pj4+Pj4+Cj4+Pj4+Pj4gT24gMTcvMDcvMjAxOSAxNDozNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+
Pj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjIzOjU1KQo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IE9uIDE3LzA3LzIwMTkgMTQ6MTcsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjA5OjAwKQo+
Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBPbiAxNi8wNy8yMDE5IDE2OjM3LCBDaHJpcyBXaWxzb24g
d3JvdGU6Cj4+Pj4+Pj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE2IDE2
OjI1OjIyKQo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gT24gMTYvMDcvMjAxOSAxMzo0OSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5t
YXAoKSB3ZSBtYXkgd2FudCB0byByZW1vdmUgdGhlIHVzZXJwdHIKPj4+Pj4+Pj4+Pj4+Pj4gYW5k
IHNvIGNhbGwKPj4+Pj4+Pj4+Pj4+Pj4gcHV0X3BhZ2VzKCkuIEhvd2V2ZXIsIHRyeV90b191bm1h
cCgpIGFjcXVpcmVzIHRoZSBwYWdlIGxvY2sKPj4+Pj4+Pj4+Pj4+Pj4gYW5kIHNvIHdlCj4+Pj4+
Pj4+Pj4+Pj4+IG11c3QgYXZvaWQgcmVjdXJzaXZlbHkgbG9ja2luZyB0aGUgcGFnZXMgb3Vyc2Vs
dmVzIC0tIHdoaWNoCj4+Pj4+Pj4+Pj4+Pj4+IG1lYW5zIHRoYXQKPj4+Pj4+Pj4+Pj4+Pj4gd2Ug
Y2Fubm90IHNhZmVseSBhY3F1aXJlIHRoZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLgo+
Pj4+Pj4+Pj4+Pj4+PiBTaW5jZSB3ZQo+Pj4+Pj4+Pj4+Pj4+PiBjYW4ndCBiZSBzdXJlIG9mIHRo
ZSBsb2NrLCB3ZSBoYXZlIHRvIHJpc2sgc2tpcCBkaXJ0eWluZyB0aGUKPj4+Pj4+Pj4+Pj4+Pj4g
cGFnZSwgb3IKPj4+Pj4+Pj4+Pj4+Pj4gZWxzZSByaXNrIGNhbGxpbmcgc2V0X3BhZ2VfZGlydHko
KSB3aXRob3V0IGEgbG9jayBhbmQgc28gcmlzayBmcwo+Pj4+Pj4+Pj4+Pj4+PiBjb3JydXB0aW9u
Lgo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gU28gaWYgdHJ5bG9jayByYW5kb21seSBmYWls
IHdlIGdldCBkYXRhIGNvcnJ1cHRpb24gaW4gd2hhdGV2ZXIKPj4+Pj4+Pj4+Pj4+PiBkYXRhIHNl
dAo+Pj4+Pj4+Pj4+Pj4+IGFwcGxpY2F0aW9uIGlzIHdvcmtpbmcgb24sIHdoaWNoIGlzIHdoYXQg
dGhlIG9yaWdpbmFsIHBhdGNoCj4+Pj4+Pj4+Pj4+Pj4gd2FzIHRyeWluZwo+Pj4+Pj4+Pj4+Pj4+
IHRvIGF2b2lkPyBBcmUgd2UgYWJsZSB0byBkZXRlY3QgdGhlIGJhY2tpbmcgc3RvcmUgdHlwZSBz
byBhdAo+Pj4+Pj4+Pj4+Pj4+IGxlYXN0IHdlCj4+Pj4+Pj4+Pj4+Pj4gZG9uJ3QgcmlzayBza2lw
cGluZyBzZXRfcGFnZV9kaXJ0eSB3aXRoIGFub255bW91cy9zaG1lbWZzPwo+Pj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+Pj4+IHBhZ2UtPm1hcHBpbmc/Pz8KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gV291
bGQgcGFnZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/Cj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+PiBJdCBiYXNpY2FsbHkgdGVsbHMgdXMgaWYgdGhlcmUgaXMgYSBmcyBhcm91bmQ7
IGFueXRoaW5nIHRoYXQgaXMKPj4+Pj4+Pj4+PiB0aGUgbW9zdAo+Pj4+Pj4+Pj4+IGJhc2ljIG9m
IG1hbGxvYyAoZXZlbiB0bXBmcy9zaG1lbWZzIGhhcyBwYWdlLT5tYXBwaW5nKS4KPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBOb3JtYWwgbWFsbG9jIHNvIGFub255bW91cyBwYWdlcz8gT3IgeW91IG1lYW50
IGV2ZXJ5dGhpbmcgX2FwYXJ0Xwo+Pj4+Pj4+Pj4gZnJvbQo+Pj4+Pj4+Pj4gdGhlIG1vc3QgYmFz
aWMgbWFsbG9jPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBBeWUgbWlzc2VkIHRoZSBub3QuCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+PiBXZSBzdGlsbCBoYXZlIHRoZSBpc3N1ZSB0aGF0IGlmIHRoZXJlIGlzIGEg
bWFwcGluZyB3ZSBzaG91bGQgYmUKPj4+Pj4+Pj4+Pj4+IHRha2luZwo+Pj4+Pj4+Pj4+Pj4gdGhl
IGxvY2ssIGFuZCB3ZSBtYXkgaGF2ZSBib3RoIGEgbWFwcGluZyBhbmQgYmUgaW5zaWRlCj4+Pj4+
Pj4+Pj4+PiB0cnlfdG9fdW5tYXAoKS4KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gSXMgdGhpcyBh
IHByb2JsZW0/IE9uIGEgcGF0aCB3aXRoIG1hcHBpbmdzIHdlIHRyeWxvY2sgYW5kIHNvCj4+Pj4+
Pj4+Pj4+IHNvbHZlIHRoZQo+Pj4+Pj4+Pj4+PiBzZXRfZGlydHlfbG9ja2VkIGFuZCByZWN1cnNp
dmUgZGVhZGxvY2sgaXNzdWVzLCBhbmQgd2l0aCBubwo+Pj4+Pj4+Pj4+PiBtYXBwaW5ncwo+Pj4+
Pj4+Pj4+PiB3aXRoIGFsd2F5cyBkaXJ0eSB0aGUgcGFnZSBhbmQgYXZvaWQgZGF0YSBjb3JydXB0
aW9uLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gVGhlIHByb2JsZW0gYXMgSSBzZWUgaXQgaXMgIXBh
Z2UtPm1hcHBpbmcgYXJlIGxpa2VseSBhbgo+Pj4+Pj4+Pj4+IGluc2lnbmlmaWNhbnQKPj4+Pj4+
Pj4+PiBtaW5vcml0eSBvZiB1c2VycHRyOyBhcyBJIHRoaW5rIGV2ZW4gbWVtZmQgYXJlIGVzc2Vu
dGlhbGx5Cj4+Pj4+Pj4+Pj4gc2htZW1mcyAob3IKPj4+Pj4+Pj4+PiBodWdldGxiZnMpIGFuZCBz
byBoYXZlIG1hcHBpbmdzLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEJldHRlciB0aGVuIG5vdGhpbmcs
IG5vPyBJZiBlYXN5IHRvIGRvLi4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQWN0dWFsbHksIEkgZXJyaW5n
IG9uIHRoZSBvcHBvc2l0ZSBzaWRlLiBQZWVraW5nIGF0IG1tLyBpbnRlcm5hbHMgZG9lcwo+Pj4+
Pj4+PiBub3QgYm9kZSBjb25maWRlbmNlIGFuZCBmZWVscyBpbmRlZmVuc2libGUuIEknZCBtdWNo
IHJhdGhlciB0aHJvdyBteQo+Pj4+Pj4+PiBoYW5kcyB1cCBhbmQgc2F5ICJ0aGlzIGlzIHRoZSBi
ZXN0IHdlIGNhbiBkbyB3aXRoIHRoZSBBUEkgcHJvdmlkZWQsCj4+Pj4+Pj4+IHBsZWFzZSB0ZWxs
IHVzIHdoYXQgd2Ugc2hvdWxkIGhhdmUgZG9uZS4iIFRvIHdoaWNoIHRoZSBhbnN3ZXIgaXMKPj4+
Pj4+Pj4gcHJvYmFibHkgdG8gbm90IGhhdmUgdXNlZCBndXAgaW4gdGhlIGZpcnN0IHBsYWNlIDp8
Cj4+Pj4+Pj4KPj4+Pj4+PiAiIiIKPj4+Pj4+PiAvKgo+Pj4+Pj4+ICAgwqAgKiBzZXRfcGFnZV9k
aXJ0eSgpIGlzIHJhY3kgaWYgdGhlIGNhbGxlciBoYXMgbm8gcmVmZXJlbmNlIGFnYWluc3QKPj4+
Pj4+PiAgIMKgICogcGFnZS0+bWFwcGluZy0+aG9zdCwgYW5kIGlmIHRoZSBwYWdlIGlzIHVubG9j
a2VkLiBUaGlzIGlzCj4+Pj4+Pj4gYmVjYXVzZSBhbm90aGVyCj4+Pj4+Pj4gICDCoCAqIENQVSBj
b3VsZCB0cnVuY2F0ZSB0aGUgcGFnZSBvZmYgdGhlIG1hcHBpbmcgYW5kIHRoZW4gZnJlZSB0aGUK
Pj4+Pj4+PiBtYXBwaW5nLgo+Pj4+Pj4+ICAgwqAgKgo+Pj4+Pj4+ICAgwqAgKiBVc3VhbGx5LCB0
aGUgcGFnZSBfaXNfIGxvY2tlZCwgb3IgdGhlIGNhbGxlciBpcyBhIHVzZXItc3BhY2UKPj4+Pj4+
PiBwcm9jZXNzIHdoaWNoCj4+Pj4+Pj4gICDCoCAqIGhvbGRzIGEgcmVmZXJlbmNlIG9uIHRoZSBp
bm9kZSBieSBoYXZpbmcgYW4gb3BlbiBmaWxlLgo+Pj4+Pj4+ICAgwqAgKgo+Pj4+Pj4+ICAgwqAg
KiBJbiBvdGhlciBjYXNlcywgdGhlIHBhZ2Ugc2hvdWxkIGJlIGxvY2tlZCBiZWZvcmUgcnVubmlu
Zwo+Pj4+Pj4+IHNldF9wYWdlX2RpcnR5KCkuCj4+Pj4+Pj4gICDCoCAqLwo+Pj4+Pj4+IGludCBz
ZXRfcGFnZV9kaXJ0eV9sb2NrKHN0cnVjdCBwYWdlICpwYWdlKQo+Pj4+Pj4+ICIiIgo+Pj4+Pj4+
Cj4+Pj4+Pj4gQ291bGQgd2UgaG9sZCBhIHJlZmVyZW5jZSB0byBwYWdlLT5tYXBwaW5nLT5ob3N0
IHdoaWxlIGhhdmluZyBwYWdlcwo+Pj4+Pj4+IGFuZCB0aGVuIHdvdWxkIGJlIG9rYXkgdG8gY2Fs
bCBwbGFpbiBzZXRfcGFnZV9kaXJ0eT8KPj4+Pj4+Cj4+Pj4+PiBXZSB3b3VsZCB0aGVuIGJlIGhp
dHRpbmcgdGhlIHdhcm5pbmdzIGluIGV4dDQgZm9yIHVubG9ja2VkIHBhZ2VzIGFnYWluLgo+Pj4+
Pgo+Pj4+PiBBaCB0cnVlLi4KPj4+Pj4KPj4+Pj4+IEVzc2VudGlhbGx5IHRoZSBhcmd1bWVudCBp
cyB3aGV0aGVyIG9yIG5vdCB0aGF0IHdhcm4gaXMgdmFsaWQsIHRvCj4+Pj4+PiB3aGljaCBJCj4+
Pj4+PiB0aGluayByZXF1aXJlcyBpbm5lciBrbm93bGVkZ2Ugb2YgdmZzICsgZXh0NC4gVG8gaG9s
ZCBhIHJlZmVyZW5jZSBvbiB0aGUKPj4+Pj4+IGhvc3Qgd291bGQgcmVxdWlyZSB1cyB0cmFja2lu
ZyBwYWdlLT5tYXBwaW5nIChyZWFzb25hYmxlIHNpbmNlIHdlCj4+Pj4+PiBhbHJlYWR5IGhvb2tl
ZCBpbnRvIG1tdSBhbmQgc28gd2lsbCBnZXQgYW4gaW52YWxpZGF0ZSArIGZyZXNoIGd1cCBvbgo+
Pj4+Pj4gYW55IGNoYW5nZXMpLCBwbHVzIGl0ZXJhdGluZyBvdmVyIGFsbCB0byBhY3F1aXJlIHRo
ZSBleHRyYSByZWZlcmVuY2UgaWYKPj4+Pj4+IGFwcGxpY2FibGUgLS0gYW5kIEkgaGF2ZSBubyBp
ZGVhIHdoYXQgdGhlIHNpZGUtZWZmZWN0cyBvZiB0aGF0IHdvdWxkIGJlLgo+Pj4+Pj4gQ291bGQg
d2VsbCBiZSBwb3NpdGl2ZSBzaWRlLWVmZmVjdHMuIEp1c3QgZmVlbHMgbGlrZSB3YW5kZXJpbmcg
ZXZlbgo+Pj4+Pj4gZnVydGhlciBvZmYgdGhlIGJlYXRlbiBwYXRoIHdpdGhvdXQgYSBtYXAuIEdv
b2QgbmV3cyBobW0gaXMganVzdCBhcm91bmQKPj4+Pj4+IHRoZSBjb3JuZXIgKHdoaWNoIHdpbGwg
cHJvYmFibHkgcHJvaGliaXQgdGhpcyB1c2UtY2FzZSkgOnwKPj4+Pj4KPj4+Pj4gLi4uIGNhbiB3
ZSByZWFjaCBvdXQgdG8gc29tZW9uZSBtb3JlIGtub3dsZWRnZWFibGUgaW4gbW0gbWF0dGVycyB0
bwo+Pj4+PiByZWNvbW1lbmQgdXMgd2hhdCB0byBkbz8KPj4+Pj4KPj4+Pj4gUmVnYXJkcywKPj4+
Pj4KPj4+Pj4gVHZydGtvCj4+Pj4KPj4+Pgo+Pj4+IEp1c3QgYSByZW1pbmRlciB0byBub3QgbGV0
IHRoaXMgc2xpcC4KPj4+PiBXZSBydW4gaW50byB1c2VycHRyIGJ1Z3MgaW4gQ0kgcXVpdGUgcmVn
dWxhcmx5Lgo+Pj4KPj4+IFJlbWluZCBhd2F5LiBSZXZlcnQgb3IgdHJ5bG9jaywgdGhlcmUgZG9l
c24ndCBzZWVtIHRvIGJlIGEgZ29vZCBhbnN3ZXIuCj4+Cj4+IFJvY2sgYW5kIGEgaGFyZCBwbGFj
ZS4gRGF0YSBjb3JydXB0aW9uIGZvciB1c2VycHRyIHVzZXJzICh3aXRoIGVpdGhlcgo+PiB0cnls
b2NrIG9yIG5vIGxvY2spIG9yIGEgZGVhZGxvY2sgKHdpdGggdGhlIGxvY2spLiBJIGhvbmVzdGx5
IGNhbid0Cj4+IGRlY2lkZSB3aGF0IGlzIHdvcnNlLiBUaW55IHByZWZlcmVuY2UgdG8gZGVhZGxv
Y2sgcmF0aGVyIHRoYW4gc2lsZW50Cj4+IGNvcnJ1cHRpb24uIE1pc2d1aWRlZD8gRG9uJ3Qga25v
dyByZWFsbHkuLgo+IAo+IFRoZSBkZWFkbG9jayBpcyBwcmV0dHkgZWFzeSB0byBoaXQgYXMgc29v
biBhcyB0aGUgc3lzdGVtIGlzIHVuZGVyCj4gbWVtcHJlc3N1cmUgYW5kIGl0IHRyaWVzIHRvIGZy
ZWUgcGFnZXMgYXMgd2UgZG8gdGhlIHVzZXJwdHIgZ3VwLi4uCj4gKEhhaCwgZWFzeSBpbiB0aGVv
cnksIGJ1dCBub3QgaW4gQ0kuKQoKSSBrbm93IHdoYXQncyB0aGUgYW5zd2VyISBQdXNoIHRoZSBw
b2xpY3kgdG8gdXNlcnNwYWNlISA6RAoKZWNobyAxID4gL3N5cy9jbGFzcy9kcm0vY2FyZDAvdXNl
cnB0cl9jb3JydXB0X29yX2RlYWRsb2NrCgpBbSBJIGpva2luZyBvciBub3Q/IFdpc2ggSSBrbmV3
ISA6KQoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
