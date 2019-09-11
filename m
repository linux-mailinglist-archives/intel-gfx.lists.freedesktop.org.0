Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA3BAFB65
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 13:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5CE6EA92;
	Wed, 11 Sep 2019 11:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBC86EA92
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 11:31:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 04:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="185795379"
Received: from avrahamr-mobl1.ger.corp.intel.com (HELO [10.252.3.203])
 ([10.252.3.203])
 by fmsmga007.fm.intel.com with ESMTP; 11 Sep 2019 04:31:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
 <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
 <951e2751-15d7-9ca8-ef6f-299ba59c47a6@linux.intel.com>
 <156337241401.4375.2377981562987470090@skylake-alporthouse-com>
 <d867c0e8-e2e1-fff6-d073-3d5d98335712@linux.intel.com>
 <4a90e8f9-694c-8dea-45b6-e5ea5677df64@intel.com>
 <156803716592.27961.18000112287811684297@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <90d744ec-17ac-b8d1-e9c0-d34c16adcd4f@linux.intel.com>
Date: Wed, 11 Sep 2019 12:31:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156803716592.27961.18000112287811684297@skylake-alporthouse-com>
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

Ck9uIDA5LzA5LzIwMTkgMTQ6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIExpb25l
bCBMYW5kd2VybGluICgyMDE5LTA3LTI2IDE0OjM4OjQwKQo+PiBPbiAxNy8wNy8yMDE5IDIxOjA5
LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+Cj4+PiBPbiAxNy8wNy8yMDE5IDE1OjA2LCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAx
NDo0NjoxNSkKPj4+Pj4KPj4+Pj4gT24gMTcvMDcvMjAxOSAxNDozNSwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDoyMzo1NSkK
Pj4+Pj4+Pgo+Pj4+Pj4+IE9uIDE3LzA3LzIwMTkgMTQ6MTcsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDowOTowMCkKPj4+
Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiAxNi8wNy8yMDE5IDE2OjM3LCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4+Pj4+Pj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNiAxNjoyNToyMikK
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gT24gMTYvMDcvMjAxOSAxMzo0OSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4gRm9sbG93aW5nIGEgdHJ5X3RvX3VubWFwKCkgd2UgbWF5IHdh
bnQgdG8gcmVtb3ZlIHRoZSB1c2VycHRyCj4+Pj4+Pj4+Pj4+PiBhbmQgc28gY2FsbAo+Pj4+Pj4+
Pj4+Pj4gcHV0X3BhZ2VzKCkuIEhvd2V2ZXIsIHRyeV90b191bm1hcCgpIGFjcXVpcmVzIHRoZSBw
YWdlIGxvY2sKPj4+Pj4+Pj4+Pj4+IGFuZCBzbyB3ZQo+Pj4+Pj4+Pj4+Pj4gbXVzdCBhdm9pZCBy
ZWN1cnNpdmVseSBsb2NraW5nIHRoZSBwYWdlcyBvdXJzZWx2ZXMgLS0gd2hpY2gKPj4+Pj4+Pj4+
Pj4+IG1lYW5zIHRoYXQKPj4+Pj4+Pj4+Pj4+IHdlIGNhbm5vdCBzYWZlbHkgYWNxdWlyZSB0aGUg
bG9jayBhcm91bmQgc2V0X3BhZ2VfZGlydHkoKS4KPj4+Pj4+Pj4+Pj4+IFNpbmNlIHdlCj4+Pj4+
Pj4+Pj4+PiBjYW4ndCBiZSBzdXJlIG9mIHRoZSBsb2NrLCB3ZSBoYXZlIHRvIHJpc2sgc2tpcCBk
aXJ0eWluZyB0aGUKPj4+Pj4+Pj4+Pj4+IHBhZ2UsIG9yCj4+Pj4+Pj4+Pj4+PiBlbHNlIHJpc2sg
Y2FsbGluZyBzZXRfcGFnZV9kaXJ0eSgpIHdpdGhvdXQgYSBsb2NrIGFuZCBzbyByaXNrIGZzCj4+
Pj4+Pj4+Pj4+PiBjb3JydXB0aW9uLgo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBTbyBpZiB0cnls
b2NrIHJhbmRvbWx5IGZhaWwgd2UgZ2V0IGRhdGEgY29ycnVwdGlvbiBpbiB3aGF0ZXZlcgo+Pj4+
Pj4+Pj4+PiBkYXRhIHNldAo+Pj4+Pj4+Pj4+PiBhcHBsaWNhdGlvbiBpcyB3b3JraW5nIG9uLCB3
aGljaCBpcyB3aGF0IHRoZSBvcmlnaW5hbCBwYXRjaAo+Pj4+Pj4+Pj4+PiB3YXMgdHJ5aW5nCj4+
Pj4+Pj4+Pj4+IHRvIGF2b2lkPyBBcmUgd2UgYWJsZSB0byBkZXRlY3QgdGhlIGJhY2tpbmcgc3Rv
cmUgdHlwZSBzbyBhdAo+Pj4+Pj4+Pj4+PiBsZWFzdCB3ZQo+Pj4+Pj4+Pj4+PiBkb24ndCByaXNr
IHNraXBwaW5nIHNldF9wYWdlX2RpcnR5IHdpdGggYW5vbnltb3VzL3NobWVtZnM/Cj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+PiBwYWdlLT5tYXBwaW5nPz8/Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gV291bGQg
cGFnZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/Cj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IEl0IGJhc2ljYWxseSB0ZWxscyB1cyBpZiB0aGVyZSBpcyBhIGZzIGFyb3VuZDsgYW55dGhp
bmcgdGhhdCBpcwo+Pj4+Pj4+PiB0aGUgbW9zdAo+Pj4+Pj4+PiBiYXNpYyBvZiBtYWxsb2MgKGV2
ZW4gdG1wZnMvc2htZW1mcyBoYXMgcGFnZS0+bWFwcGluZykuCj4+Pj4+Pj4KPj4+Pj4+PiBOb3Jt
YWwgbWFsbG9jIHNvIGFub255bW91cyBwYWdlcz8gT3IgeW91IG1lYW50IGV2ZXJ5dGhpbmcgX2Fw
YXJ0Xwo+Pj4+Pj4+IGZyb20KPj4+Pj4+PiB0aGUgbW9zdCBiYXNpYyBtYWxsb2M/Cj4+Pj4+Pgo+
Pj4+Pj4gQXllIG1pc3NlZCB0aGUgbm90Lgo+Pj4+Pj4KPj4+Pj4+Pj4+PiBXZSBzdGlsbCBoYXZl
IHRoZSBpc3N1ZSB0aGF0IGlmIHRoZXJlIGlzIGEgbWFwcGluZyB3ZSBzaG91bGQgYmUKPj4+Pj4+
Pj4+PiB0YWtpbmcKPj4+Pj4+Pj4+PiB0aGUgbG9jaywgYW5kIHdlIG1heSBoYXZlIGJvdGggYSBt
YXBwaW5nIGFuZCBiZSBpbnNpZGUKPj4+Pj4+Pj4+PiB0cnlfdG9fdW5tYXAoKS4KPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBJcyB0aGlzIGEgcHJvYmxlbT8gT24gYSBwYXRoIHdpdGggbWFwcGluZ3Mgd2Ug
dHJ5bG9jayBhbmQgc28KPj4+Pj4+Pj4+IHNvbHZlIHRoZQo+Pj4+Pj4+Pj4gc2V0X2RpcnR5X2xv
Y2tlZCBhbmQgcmVjdXJzaXZlIGRlYWRsb2NrIGlzc3VlcywgYW5kIHdpdGggbm8KPj4+Pj4+Pj4+
IG1hcHBpbmdzCj4+Pj4+Pj4+PiB3aXRoIGFsd2F5cyBkaXJ0eSB0aGUgcGFnZSBhbmQgYXZvaWQg
ZGF0YSBjb3JydXB0aW9uLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGUgcHJvYmxlbSBhcyBJIHNlZSBp
dCBpcyAhcGFnZS0+bWFwcGluZyBhcmUgbGlrZWx5IGFuCj4+Pj4+Pj4+IGluc2lnbmlmaWNhbnQK
Pj4+Pj4+Pj4gbWlub3JpdHkgb2YgdXNlcnB0cjsgYXMgSSB0aGluayBldmVuIG1lbWZkIGFyZSBl
c3NlbnRpYWxseQo+Pj4+Pj4+PiBzaG1lbWZzIChvcgo+Pj4+Pj4+PiBodWdldGxiZnMpIGFuZCBz
byBoYXZlIG1hcHBpbmdzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQmV0dGVyIHRoZW4gbm90aGluZywgbm8/
IElmIGVhc3kgdG8gZG8uLgo+Pj4+Pj4KPj4+Pj4+IEFjdHVhbGx5LCBJIGVycmluZyBvbiB0aGUg
b3Bwb3NpdGUgc2lkZS4gUGVla2luZyBhdCBtbS8gaW50ZXJuYWxzIGRvZXMKPj4+Pj4+IG5vdCBi
b2RlIGNvbmZpZGVuY2UgYW5kIGZlZWxzIGluZGVmZW5zaWJsZS4gSSdkIG11Y2ggcmF0aGVyIHRo
cm93IG15Cj4+Pj4+PiBoYW5kcyB1cCBhbmQgc2F5ICJ0aGlzIGlzIHRoZSBiZXN0IHdlIGNhbiBk
byB3aXRoIHRoZSBBUEkgcHJvdmlkZWQsCj4+Pj4+PiBwbGVhc2UgdGVsbCB1cyB3aGF0IHdlIHNo
b3VsZCBoYXZlIGRvbmUuIiBUbyB3aGljaCB0aGUgYW5zd2VyIGlzCj4+Pj4+PiBwcm9iYWJseSB0
byBub3QgaGF2ZSB1c2VkIGd1cCBpbiB0aGUgZmlyc3QgcGxhY2UgOnwKPj4+Pj4KPj4+Pj4gIiIi
Cj4+Pj4+IC8qCj4+Pj4+ICDCoCAqIHNldF9wYWdlX2RpcnR5KCkgaXMgcmFjeSBpZiB0aGUgY2Fs
bGVyIGhhcyBubyByZWZlcmVuY2UgYWdhaW5zdAo+Pj4+PiAgwqAgKiBwYWdlLT5tYXBwaW5nLT5o
b3N0LCBhbmQgaWYgdGhlIHBhZ2UgaXMgdW5sb2NrZWQuIFRoaXMgaXMKPj4+Pj4gYmVjYXVzZSBh
bm90aGVyCj4+Pj4+ICDCoCAqIENQVSBjb3VsZCB0cnVuY2F0ZSB0aGUgcGFnZSBvZmYgdGhlIG1h
cHBpbmcgYW5kIHRoZW4gZnJlZSB0aGUKPj4+Pj4gbWFwcGluZy4KPj4+Pj4gIMKgICoKPj4+Pj4g
IMKgICogVXN1YWxseSwgdGhlIHBhZ2UgX2lzXyBsb2NrZWQsIG9yIHRoZSBjYWxsZXIgaXMgYSB1
c2VyLXNwYWNlCj4+Pj4+IHByb2Nlc3Mgd2hpY2gKPj4+Pj4gIMKgICogaG9sZHMgYSByZWZlcmVu
Y2Ugb24gdGhlIGlub2RlIGJ5IGhhdmluZyBhbiBvcGVuIGZpbGUuCj4+Pj4+ICDCoCAqCj4+Pj4+
ICDCoCAqIEluIG90aGVyIGNhc2VzLCB0aGUgcGFnZSBzaG91bGQgYmUgbG9ja2VkIGJlZm9yZSBy
dW5uaW5nCj4+Pj4+IHNldF9wYWdlX2RpcnR5KCkuCj4+Pj4+ICDCoCAqLwo+Pj4+PiBpbnQgc2V0
X3BhZ2VfZGlydHlfbG9jayhzdHJ1Y3QgcGFnZSAqcGFnZSkKPj4+Pj4gIiIiCj4+Pj4+Cj4+Pj4+
IENvdWxkIHdlIGhvbGQgYSByZWZlcmVuY2UgdG8gcGFnZS0+bWFwcGluZy0+aG9zdCB3aGlsZSBo
YXZpbmcgcGFnZXMKPj4+Pj4gYW5kIHRoZW4gd291bGQgYmUgb2theSB0byBjYWxsIHBsYWluIHNl
dF9wYWdlX2RpcnR5Pwo+Pj4+Cj4+Pj4gV2Ugd291bGQgdGhlbiBiZSBoaXR0aW5nIHRoZSB3YXJu
aW5ncyBpbiBleHQ0IGZvciB1bmxvY2tlZCBwYWdlcyBhZ2Fpbi4KPj4+Cj4+PiBBaCB0cnVlLi4K
Pj4+Cj4+Pj4gRXNzZW50aWFsbHkgdGhlIGFyZ3VtZW50IGlzIHdoZXRoZXIgb3Igbm90IHRoYXQg
d2FybiBpcyB2YWxpZCwgdG8KPj4+PiB3aGljaCBJCj4+Pj4gdGhpbmsgcmVxdWlyZXMgaW5uZXIg
a25vd2xlZGdlIG9mIHZmcyArIGV4dDQuIFRvIGhvbGQgYSByZWZlcmVuY2Ugb24gdGhlCj4+Pj4g
aG9zdCB3b3VsZCByZXF1aXJlIHVzIHRyYWNraW5nIHBhZ2UtPm1hcHBpbmcgKHJlYXNvbmFibGUg
c2luY2Ugd2UKPj4+PiBhbHJlYWR5IGhvb2tlZCBpbnRvIG1tdSBhbmQgc28gd2lsbCBnZXQgYW4g
aW52YWxpZGF0ZSArIGZyZXNoIGd1cCBvbgo+Pj4+IGFueSBjaGFuZ2VzKSwgcGx1cyBpdGVyYXRp
bmcgb3ZlciBhbGwgdG8gYWNxdWlyZSB0aGUgZXh0cmEgcmVmZXJlbmNlIGlmCj4+Pj4gYXBwbGlj
YWJsZSAtLSBhbmQgSSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgc2lkZS1lZmZlY3RzIG9mIHRoYXQg
d291bGQgYmUuCj4+Pj4gQ291bGQgd2VsbCBiZSBwb3NpdGl2ZSBzaWRlLWVmZmVjdHMuIEp1c3Qg
ZmVlbHMgbGlrZSB3YW5kZXJpbmcgZXZlbgo+Pj4+IGZ1cnRoZXIgb2ZmIHRoZSBiZWF0ZW4gcGF0
aCB3aXRob3V0IGEgbWFwLiBHb29kIG5ld3MgaG1tIGlzIGp1c3QgYXJvdW5kCj4+Pj4gdGhlIGNv
cm5lciAod2hpY2ggd2lsbCBwcm9iYWJseSBwcm9oaWJpdCB0aGlzIHVzZS1jYXNlKSA6fAo+Pj4K
Pj4+IC4uLiBjYW4gd2UgcmVhY2ggb3V0IHRvIHNvbWVvbmUgbW9yZSBrbm93bGVkZ2VhYmxlIGlu
IG1tIG1hdHRlcnMgdG8KPj4+IHJlY29tbWVuZCB1cyB3aGF0IHRvIGRvPwo+Pj4KPj4+IFJlZ2Fy
ZHMsCj4+Pgo+Pj4gVHZydGtvCj4+Cj4+Cj4+IEp1c3QgYSByZW1pbmRlciB0byBub3QgbGV0IHRo
aXMgc2xpcC4KPj4gV2UgcnVuIGludG8gdXNlcnB0ciBidWdzIGluIENJIHF1aXRlIHJlZ3VsYXJs
eS4KPiAKPiBSZW1pbmQgYXdheS4gUmV2ZXJ0IG9yIHRyeWxvY2ssIHRoZXJlIGRvZXNuJ3Qgc2Vl
bSB0byBiZSBhIGdvb2QgYW5zd2VyLgoKUm9jayBhbmQgYSBoYXJkIHBsYWNlLiBEYXRhIGNvcnJ1
cHRpb24gZm9yIHVzZXJwdHIgdXNlcnMgKHdpdGggZWl0aGVyIAp0cnlsb2NrIG9yIG5vIGxvY2sp
IG9yIGEgZGVhZGxvY2sgKHdpdGggdGhlIGxvY2spLiBJIGhvbmVzdGx5IGNhbid0IApkZWNpZGUg
d2hhdCBpcyB3b3JzZS4gVGlueSBwcmVmZXJlbmNlIHRvIGRlYWRsb2NrIHJhdGhlciB0aGFuIHNp
bGVudCAKY29ycnVwdGlvbi4gTWlzZ3VpZGVkPyBEb24ndCBrbm93IHJlYWxseS4uCgpSZWdhcmRz
LAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
