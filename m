Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D253C7B18
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 03:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A7989C07;
	Wed, 14 Jul 2021 01:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D409889C07
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 01:33:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232076251"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="232076251"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 18:33:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="465946175"
Received: from allen-box.sh.intel.com (HELO [10.239.159.118])
 ([10.239.159.118])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2021 18:33:41 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
 <20210709164750.9465-2-ville.syrjala@linux.intel.com>
 <ab04666c-229c-fbd2-07f3-6955b46985db@linux.intel.com>
 <YOxkBeICOosZcVEY@intel.com>
 <dcc41a8e-8076-5798-75da-1c356756d9b0@linux.intel.com>
 <YO330qFZi58X36PJ@intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <c7aa02e6-3023-24cf-adf6-e01a529b1324@linux.intel.com>
Date: Wed, 14 Jul 2021 09:31:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YO330qFZi58X36PJ@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] iommu/vt-d: Disable superpage for
 Geminilake igfx
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
Cc: intel-gfx@lists.freedesktop.org, David Woodhouse <dwmw2@infradead.org>,
 iommu@lists.linux-foundation.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNy8xNC8yMSA0OjMwIEFNLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gVHVlLCBKdWwg
MTMsIDIwMjEgYXQgMDk6MzQ6MDlBTSArMDgwMCwgTHUgQmFvbHUgd3JvdGU6Cj4+IE9uIDcvMTIv
MjEgMTE6NDcgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPj4+IE9uIE1vbiwgSnVsIDEyLCAy
MDIxIGF0IDA3OjIzOjA3QU0gKzA4MDAsIEx1IEJhb2x1IHdyb3RlOgo+Pj4+IE9uIDcvMTAvMjEg
MTI6NDcgQU0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4+Pj4+IEZyb206IFZpbGxlIFN5cmrDpGzD
pDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+Pj4KPj4+Pj4gV2hpbGUgcnVubmlu
ZyAiZ2VtX2V4ZWNfYmlnIC0tciBzaW5nbGUiIGZyb20gaWd0LWdwdS10b29scyBvbgo+Pj4+PiBH
ZW1pbmlsYWtlIGFzIHNvb24gYXMgYSAyTSBtYXBwaW5nIGlzIG1hZGUgSSB0ZW5kIHRvIGdldCBh
IERNQVIKPj4+Pj4gd3JpdGUgZmF1bHQuIFN0cmFuZ2VseSB0aGUgZmF1bHRpbmcgYWRkcmVzcyBp
cyBhbHdheXMgYSA0SyBwYWdlCj4+Pj4+IGFuZCB1c3VhbGx5IHZlcnkgZmFyIGF3YXkgZnJvbSB0
aGUgMk0gcGFnZSB0aGF0IGdvdCBtYXBwZWQuCj4+Pj4+IEJ1dCBpZiBubyAyTSBtYXBwaW5ncyBn
ZXQgdXNlZCBJIGNhbid0IHJlcHJvZHVjZSB0aGUgZmF1bHQuCj4+Pj4+Cj4+Pj4+IEkgYWxzbyB0
cmllZCB0byBkdW1wIHRoZSBQVEUgZm9yIHRoZSBmYXVsdGluZyBhZGRyZXNzIGJ1dCBpdCBhY3R1
YWxseQo+Pj4+PiBsb29rcyBjb3JyZWN0IHRvIG1lIChpZS4gZGVmaW5pdGVseSBzZWVtcyB0byBo
YXZlIHRoZSB3cml0ZSBiaXQgc2V0KToKPj4+Pj4gICAgIERNQVI6IERSSEQ6IGhhbmRsaW5nIGZh
dWx0IHN0YXR1cyByZWcgMgo+Pj4+PiAgICAgRE1BUjogW0RNQSBXcml0ZV0gUmVxdWVzdCBkZXZp
Y2UgWzAwOjAyLjBdIFBBU0lEIGZmZmZmZmZmIGZhdWx0IGFkZHIgN2ZhOGE3ODAwMCBbZmF1bHQg
cmVhc29uIDA1XSBQVEUgV3JpdGUgYWNjZXNzIGlzIG5vdCBzZXQKPj4+Pj4gICAgIERNQVI6IGZh
dWx0IDdmYThhNzgwMDAgKGxldmVsPTEpIFBURSA9IDE0OWVmYzAwMwo+Pj4+Pgo+Pj4+PiBTbyBu
b3QgcmVhbGx5IHN1cmUgd2hhdCdzIGdvaW5nIG9uIGFuZCB0aGlzIG1pZ2h0IGp1c3QgYmUgZnVs
bCBvbiBkdWN0Cj4+Pj4+IHRhcGUsIGJ1dCBpdCBzZWVtcyB0byB3b3JrIGhlcmUuIFRoZSBtYWNo
aW5lIGhhcyBub3cgc3Vydml2ZWQgYSB3aG9sZSBkYXkKPj4+Pj4gcnVubmluZyB0aGF0IHRlc3Qg
d2hlcmVhcyB3aXRoIHN1cGVycGFnZSBlbmFibGVkIGl0IGZhaWxzIGluIGxlc3MgdGhhbgo+Pj4+
PiBhIG1pbnV0ZSB1c3VhbGx5Lgo+Pj4+Pgo+Pj4+PiBUT0RPOiBtaWdodCBiZSBuaWNlIHRvIGRp
c2FibGUgc3VwZXJwYWdlIG9ubHkgZm9yIHRoZSBpZ2Z4IGlvbW11Cj4+Pj4+ICAgICAgICAgIGlu
c3RlYWQgb2YgYm90aCBpb21tdXMKPj4+PiBJZiBhbGwgdGhlc2UgcXVpcmtzIGFyZSBhYm91dCBp
Z2Z4IGRlZGljYXRlZCBpb21tdSdzLCBJIHdvdWxkIHN1Z2dlc3QgdG8KPj4+PiBkaXNhYmxlIHN1
cGVycGFnZSBvbmx5IGZvciB0aGUgaWdmeCBvbmVzLgo+Pj4gU3VyZS4gVW5mb3J0dW5hdGVseSB0
aGVyZSdzIG5vIGNvbnZlbmllbnQgbWVjaGFuaXNtIHRvIGRvIHRoYXQgaW4KPj4+IHRoZSBpb21t
dSBkcml2ZXIgdGhhdCBJIGNhbiBpbW1lZGlhdGVseSBzZWUuIFNvIG5vdCBzb21ldGhpbmcgSQo+
Pj4gY2FuIGp1c3Qgd2hpcCB1cCBlYXNpbHkuIFNpbmNlIHlvdSdyZSBhY3R1YWxseSBmYW1pbGlh
ciB3aXRoIHRoZQo+Pj4gZHJpdmVyIG1heWJlIHlvdSBjYW4gY29tZSB1cCB3aXRoIGEgZGVjZW50
IHNvbHV0aW9uIGZvciB0aGF0Pwo+Pj4KPj4gSG93IGFib3V0IHNvbWV0aGluZyBsaWtlIGJlbG93
PyBbbm8gY29tcGlsZSwgbm8gdGVzdC4uLl0KPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9t
bXUvaW50ZWwvaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUvaW50ZWwvaW9tbXUuYwo+PiBpbmRleCAx
MTMxYjhlZmIwNTAuLjJkNTFlZjI4OGE5ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pb21tdS9p
bnRlbC9pb21tdS5jCj4+ICsrKyBiL2RyaXZlcnMvaW9tbXUvaW50ZWwvaW9tbXUuYwo+PiBAQCAt
MzM4LDYgKzMzOCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfaW9tbXVfc3RyaWN0Owo+PiAgICBzdGF0
aWMgaW50IGludGVsX2lvbW11X3N1cGVycGFnZSA9IDE7Cj4+ICAgIHN0YXRpYyBpbnQgaW9tbXVf
aWRlbnRpdHlfbWFwcGluZzsKPj4gICAgc3RhdGljIGludCBpb21tdV9za2lwX3RlX2Rpc2FibGU7
Cj4+ICtzdGF0aWMgaW50IGlvbW11X3NraXBfaWdmeF9zdXBlcnBhZ2U7Cj4+Cj4+ICAgICNkZWZp
bmUgSURFTlRNQVBfR0ZYCQkyCj4+ICAgICNkZWZpbmUgSURFTlRNQVBfQVpBTElBCQk0Cj4+IEBA
IC02NTIsNiArNjUzLDI3IEBAIHN0YXRpYyBib29sIGRvbWFpbl91cGRhdGVfaW9tbXVfc25vb3Bp
bmcoc3RydWN0Cj4+IGludGVsX2lvbW11ICpza2lwKQo+PiAgICAJcmV0dXJuIHJldDsKPj4gICAg
fQo+Pgo+PiArc3RhdGljIGJvb2wgZG9tYWluX3VzZV9zdXBlcl9wYWdlKHN0cnVjdCBkbWFyX2Rv
bWFpbiAqZG9tYWluKQo+PiArewo+PiArCXN0cnVjdCBkbWFyX2RyaGRfdW5pdCAqZHJoZDsKPj4g
KwlzdHJ1Y3QgaW50ZWxfaW9tbXUgKmlvbW11Owo+PiArCWJvb2wgcmV0ID0gdHJ1ZTsKPj4gKwo+
PiArCWlmICghaW50ZWxfaW9tbXVfc3VwZXJwYWdlKQo+PiArCQlyZXR1cm4gZmFsc2U7Cj4+ICsK
Pj4gKwlyY3VfcmVhZF9sb2NrKCk7Cj4+ICsJZm9yX2VhY2hfYWN0aXZlX2lvbW11KGlvbW11LCBk
cmhkKSB7Cj4+ICsJCWlmIChkcmhkLT5nZnhfZGVkaWNhdGVkICYmIGlvbW11X3NraXBfaWdmeF9z
dXBlcnBhZ2UpIHsKPj4gKwkJCXJldCA9IGZhbHNlOwo+PiArCQkJYnJlYWsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBeCj4gTWlzc2luZyBzZW1pY29sb24uIE90aHdlcndpc2Ugc2Vl
bXMgdG8gd29yayBncmVhdCBoZXJlLiBUaGFua3MuCj4gCj4gQXJlIHlvdSBnb2luZyB0byB0dXJu
IHRoaXMgaW50byBhIHByb3BlciBwYXRjaCwgb3IgZG8geW91Cj4gd2FudCBtZSB0byBqdXN0IHNx
dWFzaCB0aGlzIGludG8gbXkgcGF0Y2hlcyBhbmQgcmVwb3N0Pwo+IAoKUGxlYXNlIGdvIGFoZWFk
IHdpdGggYSBuZXcgdmVyc2lvbi4KCkJlc3QgcmVnYXJkcywKYmFvbHUKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
