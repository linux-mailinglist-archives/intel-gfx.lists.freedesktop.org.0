Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF6E7AAF0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5EB6E575;
	Tue, 30 Jul 2019 14:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA946E575
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 14:28:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 07:28:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="162593111"
Received: from jneville-mobl.ger.corp.intel.com (HELO [10.252.2.158])
 ([10.252.2.158])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 07:28:11 -0700
To: Daniel Vetter <daniel@ffwll.ch>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-30-matthew.auld@intel.com>
 <20190730094901.GQ15868@phenom.ffwll.local>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <cb58b75f-0951-6591-02ad-7055da8503c3@intel.com>
Date: Tue, 30 Jul 2019 15:28:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190730094901.GQ15868@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 29/37] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMzAvMDcvMjAxOSAxMDo0OSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBPbiBUaHUsIEp1biAy
NywgMjAxOSBhdCAwOTo1NjoyNVBNICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IEZyb206
IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPj4KPj4g
QWRkIGEgbmV3IENQVSBtbWFwIGltcGxlbWVudGF0aW9uIHRoYXQgYWxsb3dzIG11bHRpcGxlIGZh
dWx0IGhhbmRsZXJzCj4+IHRoYXQgZGVwZW5kcyBvbiB0aGUgb2JqZWN0J3MgYmFja2luZyBwYWdl
cy4KPj4KPj4gTm90ZSB0aGF0IHdlIG11bHRpcGxleCBtbWFwX2d0dCBhbmQgbW1hcF9vZmZzZXQg
dGhyb3VnaCB0aGUgc2FtZSBpb2N0bCwKPj4gYW5kIHVzZSB0aGUgemVybyBleHRlbmRpbmcgYmVo
YXZpb3VyIG9mIGRybSB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4KPj4gdGhlbSwgd2hlbiB3ZSBp
bnNwZWN0IHRoZSBmbGFncy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQWJkaWVsIEphbnVsZ3VlIDxh
YmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IENjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU28gSSB0aG91Z2h0IHRoYXQgdGhl
IHBsYW4gaXMgdG8gcmVqZWN0IGludmFsaWQgbW1hcHMsIGkuZS4gbW1hcCBtb2Rlcwo+IHdoaWNo
IGFyZSBub3QgY29tcGF0aWJhbGUgd2l0aCBhbGwgcGxhY2VtZW50IG9wdGlvbnMuIEdpdmVuIHRo
YXQsIHdoeSBkbwo+IHdlIG5lZWQgdGhpcz8KCldlIGFyZSBtZWFudCB0byByZWplY3QgYW55dGhp
bmcgIXdjIGZvciBMTUVNLiBUaGVyZSB3ZXJlIHNvbWUgcGF0Y2hlcyAKZm9yIHRoYXQgYnV0IEkg
Z3Vlc3MgZ290IGxvc3QgdW5kZXIgdGhlIHJhZGFyLi4uCgo+IAo+IC0gY3B1IG1tYXAgd2l0aCBh
bGwgdGhlIGZsYWdzIHN0aWxsIGtlZXAgd29ya2luZywgYXMgbG9uZyBhcyB0aGUgb25seQo+ICAg
IHBsYWNlbWVudCB5b3Ugc2VsZWN0IGlzIHNtZW0uCj4gCj4gLSBmb3IgbG1lbS9zdG9sZW4gdGhl
IG9ubHkgb3B0aW9uIHdlIGhhdmUgaXMgYSB3YyBtYXBwaW5nLCBlaXRoZXIgdGhyb3VnaAo+ICAg
IHRoZSBwY2kgYmFyIG9yIHRocm91Z2ggdGhlIGd0dC4gU28gZm9yIG9iamVjdHMgb25seSBzaXR0
aW5nIGluIHRoZXJlCj4gICAgYWxzbyBubyBwcm9ibGVtLCB3ZSBjYW4ganVzdCBrZWVwIHVzaW5n
IHRoZSBjdXJyZW50IGd0dCBtbWFwIHN0dWZmIChidXQKPiAgICByZWRpcmVjdCBpdCBpbnRlcm5h
bGx5KS4KPiAKPiAtIHRoYXQgbGVhdmVzIHVzIHdpdGggb2JqZWN0cyB3aGljaCBjYW4gbW92ZSBh
cm91bmQuIE9ubHkgb3B0aW9uIGFsbG93cyBpcwo+ICAgIFdDLCBhbmQgdGhlIGd0dCBtbWFwIGlv
Y3RsIGRvZXMgdGhhdCBhbHJlYWR5LiBXaGVuIHRoZSBvYmplY3QgaXMgaW4gc21lbQo+ICAgIHdl
J2xsIG5lZWQgdG8gcmVkaXJlY3QgaXQgdG8gYSBjcHUgd2MgbW1hcCwgYnV0IEkgdGhpbmsgd2Ug
bmVlZCB0byBkbwo+ICAgIHRoYXQgYW55d2F5LgoKU28gZm9yIGxlZ2FjeSwgZ3R0X21tYXAgd2ls
bCBzdGlsbCBnbyB0aHJvdWdoIHRoZSBhcGVydHVyZSwgb3RoZXJ3aXNlIGlmIApMTUVNIGlzIHN1
cHBvcnRlZCB0aGVuIHRoZXJlIGlzIG5vIGFwZXJ0dXJlLCBzbyB3ZSBqdXN0IHdjIG1tYXAgdmlh
IGNwdSAKb3IgTE1FTUJBUiBkZXBlbmRpbmcgb24gdGhlIGZpbmFsIG9iamVjdCBwbGFjZW1lbnQu
IEFuZCBjcHVfbW1hcCBzdGlsbCAKd29ya3MgaWYgd2UgZG9uJ3QgY2FyZSBhYm91dCBMTUVNLiBI
bW0sIHNvIGRvIHdlIGV2ZW4gbmVlZCBtb3N0IG9mIHRoZSAKcHJldmlvdXMgcGF0Y2ggdGhlbj8g
QUxzbyBkb2VzIHRoYXQgbWVhbiB3ZSBhbHNvIGhhdmUgdG8gdHJhY2sgdGhlIApwbGFjZW1lbnQg
b2YgYW4gb2JqZWN0IGluIGlndD8KCmdlbV9tbWFwX193YzoKCmlmIChzdXBwb3J0c19sbWVtKGRl
dikpCglndHRfbW1hcCgpOwplbHNlCglnZW1fbW1hcCh3Yyk7CgpnZW1fbW1hcF9fd2M6CgppZiAo
cGxhY2VtZW50X2NvbnRhaW5zKG9iaiwgTE1FTSkpCglndHRfbW1hcCgpOwplbHNlCglnZW1fbW1h
cCh3Yyk7Cgo/Cgo+IAo+IFNvIG5vdCByZWFsbHkgc2VlaW5nIHdoYXQgdGhlIHVhcGkgcHJvYmxl
bSBpcyB5b3UncmUgdHJ5aW5nIHRvIHNvbHZlIGhlcmU/Cj4gCj4gQ2FuIHlvdSBwbHMgZXhwbGFp
biB3aHkgd2UgbmVlZCB0aGlzPwoKVGhlIG5hbWluZyBvZiBndHRfbW1hcCBzZWVtZWQgY29uZnVz
aW5nLCBzaW5jZSB0aGVyZSBpcyBubyBhcGVydHVyZSwgYW5kIApoYXZpbmcgb25lIG1tYXAgaW9j
dGwgdG8gY292ZXIgYm90aCBzbWVtIGFuZCBsbWVtIHNlZW1lZCBsaWtlIGEgbmljZSAKaWRlYS4u
LmFsc28gSSB0aGluayB1bWQncyBzdG9wcGVkIHVzaW5nIGd0dF9tbWFwKG9yIHdlcmUgdG9sZCB0
bz8pIGJ1dCAKbWF5YmUgdGhvc2UgYXJlbid0IGdvb2QgZW5vdWdoIHJlYXNvbnMuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
