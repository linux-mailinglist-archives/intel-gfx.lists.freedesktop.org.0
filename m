Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3231ED10FD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 16:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC066E9AB;
	Wed,  9 Oct 2019 14:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDC46E9AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 14:15:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 07:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="187634587"
Received: from sviswa2-mobl.ger.corp.intel.com (HELO [10.252.54.89])
 ([10.252.54.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Oct 2019 07:15:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
 <f81948d2-c2f1-3ed7-6949-cf6376c31ad9@intel.com>
 <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
 <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
 <157062842201.18808.5895278051708134552@skylake-alporthouse-com>
 <7faf81f6-33a5-bad1-6f6c-a6c7252536b5@intel.com>
 <157063022485.18808.17487424164878345808@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <20baa165-5e0a-bb23-a97e-86b967606544@intel.com>
Date: Wed, 9 Oct 2019 17:15:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157063022485.18808.17487424164878345808@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/perf: store the associated
 engine of a stream
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

T24gMDkvMTAvMjAxOSAxNzoxMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMDkgMTQ6NDg6NDIpCj4+IE9uIDA5LzEwLzIwMTkgMTY6NDAs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MTAtMDkgMTQ6MzQ6NDkpCj4+Pj4gT24gMDkvMTAvMjAxOSAxNTo0NSwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGluICgyMDE5LTEwLTA5IDEzOjQzOjMy
KQo+Pj4+Pj4gRG8geW91IGhhdmUgYnJhbmNoIHNvbWV3aGVyZSB3aXRoIHRoaXMgc2VyaWVzPwo+
Pj4+PiBodHRwczovL2NnaXQuZnJlZWRlc2t0b3Aub3JnL35pY2tsZS9saW51eC0yLjYvbG9nLz9o
PXdpcC1wZXJmCj4+Pj4+IC1DaHJpcwo+Pj4+Pgo+Pj4+IENoZWVycywKPj4+Pgo+Pj4+Cj4+Pj4g
SSd2ZSBtb2RpZmllZCB0aGUgdG9wIHBhdGNoIHRvIHNldCB0aGUgbm9wcmVlbXB0IGZsYWcgZm9y
IGFzIGxvbmcgYXMgdGhlCj4+Pj4gY29udGV4dCBoYXMgYmVlbiBmbGFnZ2VkIChhcyBsb25nIGF0
IHRoZSBwZXJmIHN0cmVhbSBpcyBvcGVuZWQpIDoKPj4+PiBodHRwczovL2dpdGh1Yi5jb20vZGpk
ZWF0aC9saW51eC9jb21taXQvZDMzMjdiMzBjNjE0MWZhYzk4YTNkNDZmMzM5OGM4N2ZlNzA5NzZh
YQo+Pj4gVGhhdCBtZWFucyB5b3UgYXJlIG5vdCBwYXNzaW5nIGluIHRoZSBleHRfcGVyZl9jb25m
aWcgdG8gZXZlcnkgYmF0Y2ggdGhhdAo+Pj4gaXMgdXNpbmcgaXQsIHJpZ2h0PyBUaGUgb2FfY29u
ZmlnIHRyYWNraW5nIGFsc28gaGluZ2VzIG9uIHRoYXQgeW91IGRvLgo+Pj4gLUNocmlzCj4+Pgo+
PiBMaWtlIEkgbWVudGlvbmVkLCB0aGVyZSBhcmUgZW1wdHkgYmF0Y2ggdG8gZHJhaW4gdGhlIGNv
bnRleHQgdGhhdCB3ZQo+PiBlbWl0IHdpdGhvdXQgT0EgcmVjb25maWd1cmF0aW9uLgo+Pgo+PiBU
aGVyZSBjb3VsZCBhbHNvIGJlIGEgc2VxdWVuY2Ugc3VjaCBhcyA6Cj4+Cj4+ICAgwqDCoMKgIC0g
YmF0Y2gwIChpbmNsdWRlcyBwZXJmIHF1ZXJ5IGNvbmZpZz00MikKPj4KPj4gICDCoMKgwqAgLSBi
YXRjaDEgKG5vIHBlcmYgcXVlcnksIGluY2x1ZGVzIHRpbWVzdGFtcCBvciBwaXBlbGluZSBxdWVy
eSkKPiBCdXQgdGhpcyBleGVjYnVmIGlzIG5vdCB1c2luZyB0aGUgb2FfY29uZmlnLCBzbyB3aHkg
c2hvdWxkIGl0PwoKCkkgd2FzIGp1c3Qgd29ya2luZyBhYm91dCB0aGUgcHJvYmxlbSBJIGd1ZXNz
LgoKV2l0aCB0aGUgcGF0Y2ggeW91IHNlbnQgZWFybGllciB0byBub3QgbWVyZ2UgcmVxdWVzdCB3
aXRoIGRpZmZlcmVudCAKZmxhZ3MsIHRoYXQncyBwcm9iYWJseSB1c2VsZXNzLgoKCj4gICBUaGUK
PiBkaXJlY3Rpb24geW91J3ZlIHN1Z2dlc3RlZCBpcyB0aGF0IHdlIHNob3VsZCBhdHRhY2ggdGhl
IHBlcmYgc3RhdGUgdG8KPiB0aGUgY29udGV4dC4KPgo+IGViX29hX2NvbmZpZygpOgo+IAlzdHJ1
Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtOwo+Cj4gCS8qIGF0dGFjaGVkL3JlbW92ZWQgYnkg
cGVyZl9pb2N0bCAqLwo+IAlzdHJlYW0gPSByY3VfZ2V0KGViLT5nZW1fY29udGV4dC0+cGVyZik7
Cj4gCWlmICghc3RyZWFtKQo+IAkJcmV0dXJuOwo+Cj4gCWlmIChzdHJlYW0tPm9hX2NvbmZpZyAh
PSBzdHJlYW0tPnBlcmYtPm9hX2NvbmZpZykgewo+IAkJbXV0ZXhfbG9jaygmcGVyZi0+bG9jayk7
Cj4gCQkuLi4KPiAJCW11dGV4X3VubG9jaygmcGVyZi0+bG9jayk7Cj4gCX0KPgo+IAlpZiAoc3Ry
ZWFtLT5ob2xkX3ByZWVtcHRpb24pCj4gCQllYi0+cmVxdWVzdC0+ZmxhZ3MgfD0gTk9QUkVFTVBU
Owo+IAkKPiAJaTkxNV9wZXJmX3N0cmVhbV9wdXQoc3RyZWFtKTsKPgo+IFRoZW4gaW5zdGVhZCBv
ZiBhbiBleGVjYnVmIGV4dGVuc2lvbiBpdCB3b3VsZCBlaXRoZXIgYmUgYSBwZXJmIGlvY3RsIHRv
Cj4gdXBkYXRlIHRoZSBvYV9jb25maWcgb24gdGhlIGF0dGFjaGVkIHNwZWNpZmllZCBjb250ZXh0
LCBvciBhIGNvbnRleHQKPiBwYXJhbS4gVXNpbmcgdGhlIHBlcmYgaW9jdGwgZG9lcyBub3Qgc2Vl
bSBhbWlzcy4KPgo+PiAgIMKgwqDCoCAtIGJhdGNoMiAoaW5jbHVkZXMgcGVyZiBxdWVyeSBjb25m
aWc9NDIpCj4+Cj4+ICAgwqDCoMKgIC0gYmF0Y2gzIChpbmNsdWRlcyBwZXJmIHF1ZXJ5IGNvbmZp
Zz00MykKPj4KPj4KPj4gSXQgc291bmRzIHJlYXNvbmFibGUgdG8gZW5zdXJlIHRoYXQgYWxsIHRo
ZSByZXF1ZXN0cyBhcmUgZmxhZ2dlZCB3aXRoCj4+IG5vcHJlZW1wdCB0byBlbnN1cmUgd2UgZG9u
J3QgcHJlZW1wdCBvbmUgYmVjYXVzZSB3ZSBkb24ndCBoYXZlCj4+IHZpc2liaWxpdHkgb24gd2hh
dCdzIGNvbXBsZXRlZCB3aGVuIHJlbG9hZGluZyB0aGUgZXhlY2xpc3RzIHBvcnRzLgo+Pgo+PiBU
aGlzIGVudGlyZSBzZXF1ZW5jZSBhYm92ZSB3b3VsZCBiZSBzdXJyb3VuZGVkIGJ5IG9wZW4vY2xv
c2Ugb2YgdGhlIHBlcmYKPj4gc3RyZWFtLiBPbmNlIGNsb3NlKCkgcmV0dXJucywgdGhlbiBhbnkg
bmV3IHJlcXVlc3Qgd29uJ3QgYmUgZmxhZ2dlZCB3aXRoCj4+IG5vcHJlZW1wdCBidXQgaXQncyB0
aGUgYXBwbGljYXRpb24ncyByZXNwb25zYWJpbGl0eSB0byBoYXZlIGNvbGxlY3RlZAo+PiBhbGwg
dGhlIHF1ZXJpZXMnIHJlc3VsdHMgYmVmb3JlIGNsb3NpbmcgdGhlIHN0cmVhbS4KPiBBcmUgeW91
IGhhcHB5IHdpdGggYXNzb2NpYXRpbmcgdGhlIGk5MTVfcGVyZl9zdHJlYW0gd2l0aCB0aGUKPiBz
cGVjaWZpY19jdHggYW5kIGNvbnRyb2xsaW5nIGFsbCB0aGUgcGFyYW1ldGVycyB2aWEgcGVyZi1p
b2N0bD8KPiAtQ2hyaXMKPgoKWWVhaCBzb3VuZHMgbGlrZSBpdCBzaG91bGQgd29yaywgSSB3b3Vs
ZCBsaWtlIHRvIHRlc3QgdGhlIHdob2xlIHNldHVwLgoKSWYgeW91IGNhbiBzaGFyZSB0aGUgcGF0
Y2hlcyBjaGFuZ2luZyB0aGUgY29uZmlnIHRocm91Z2ggYSBwZXJmIHN0cmVhbSAKaW9jdGwsIEkn
bGwgdXBkYXRlIG15IGRyaXZlciBhbmQgdGVzdC4KCgpUaGFua3MgYSBsb3QsCgoKLUxpb25lbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
