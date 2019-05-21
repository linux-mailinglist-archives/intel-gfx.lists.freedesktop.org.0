Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534D925724
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 19:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37BAF88A72;
	Tue, 21 May 2019 17:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC0688A72
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 17:59:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 10:59:30 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.239.89]) ([10.103.239.89])
 by orsmga006.jf.intel.com with ESMTP; 21 May 2019 10:59:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
 <155845847818.23981.11970035434652441216@skylake-alporthouse-com>
 <da6d6099-8996-1539-690d-3822faef4547@intel.com>
 <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a7fccb08-cb42-5cc9-745a-3b1d336f0d50@intel.com>
Date: Tue, 21 May 2019 18:59:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

T24gMjEvMDUvMjAxOSAxODo0OCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjEgMTg6MTk6NTApCj4+IE9uIDIxLzA1LzIwMTkgMTg6MDcs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjEgMTU6MDg6NTQpCj4+Pj4gKyAgICAgICBpZiAoZWItPm9hX2NvbmZpZyAmJgo+Pj4+ICsg
ICAgICAgICAgIGViLT5vYV9jb25maWcgIT0gZWItPmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0
cmVhbS0+b2FfY29uZmlnKSB7Cj4+PiBCdXQgdGhlIG9hX2NvbmZpZyBpcyBub3Qgb3JkZXJlZCB3
aXRoIHJlc3BlY3QgdG8gcmVxdWVzdHMsIGFuZCB0aGUKPj4+IHJlZ2lzdGVycyBjaGFuZ2VkIGhl
cmUgYXJlIG5vdCBjb250ZXh0IHNhdmVkIGFuZCBzbyBtYXkgYmUgY2hhbmdlZCBieSBhCj4+PiB0
aGlyZCBwYXJ0eSBiZWZvcmUgZXhlY3V0aW9uLiBUaGUgZmlyc3QgcGFydHkgbXVzdCBwcmVzdW1h
Ymx5IGRyb3BwZWQKPj4+IHRoZSBwZXJmX2ZkIGJlZm9yZSB0aGVuLCBzbyBtYXliZSB5b3UgZG9u
J3QgY2FyZT8gSG1tLCBkb2Vzbid0IGV2ZW4gdGFrZQo+Pj4gYSB0aGlyZCBwYXJ0eSBhcyB0aGUg
cGVyZl9mZCBvd25lciBtYXkgY2hhbmdlIHRoZWlyIG1pbmQgZm9yIGRpZmZlcmVudAo+Pj4gY29u
dGV4dHMgYW5kIGJlIHN1cnByaXNlZCB3aGVuIHRoZSB3cm9uZyBzZXQgaXMgdXNlZC4KPj4KPj4g
VGhlIE9BIGNvbmZpZyBiYXRjaCBzaG91bGQgYmUgb3JkZXJlZCB3aXRoIHJlZ2FyZCB0byB0aGUg
TUlfQkJTIHdlJ3JlCj4+IGRvaW5nIGp1c3QgYmVsb3cgcmlnaHQ/Cj4gQnV0IHlvdSBvbmx5IGVt
aXQgaWYgdGhlIG9hX2NvbmZpZyBoYXMgY2hhbmdlZC4gRXJnbywgaXQgbWF5IGhhdmUKPiBjaGFu
Z2VkIGJldHdlZW4gc3VibWlzc2lvbiBhbmQgZXhlY3V0aW9uLgo+Cj4+IEl0J3Mgd3JpdHRlbiBi
ZWZvcmUgaW4gdGhlIHJpbmcgYnVmZmVyLgo+Pgo+Pgo+PiBUaGF0IGVzc2VudGlhbGx5IGFsbCB3
ZSBuZWVkIHNvIHRoYXQgYXMgdGhlIHBlcmYgcXVlcmllcyBydW4gaW4gdGhlCj4+IGJhdGNoIHN1
cHBsaWVkIGJ5IHRoZSBhcHBsaWNhdGlvbiBydW5zIHdpdGggdGhlIGNvbmZpZ3VyYXRpb24gbmVl
ZGVkLgo+Pgo+PiBJZiB0aGUgYXBwbGljYXRpb24gc2hhcmVzIHRoZSBwZXJmIEZEIGFuZCBzb21l
b25lIGVsc2UgcnVucyBhbm90aGVyCj4+IGNvbmZpZ3VyYXRpb24sIGl0J3MgdGhlIGFwcGxpY2F0
aW9uIGZhdWx0Lgo+Pgo+PiBJdCBuZWVkcyB0byBob2xkIHRoZSBwZXJmIEZEIGZvciBhcyBsb25n
IGFzIGl0J3MgZG9pbmcgcGVyZiBxdWVyaWVzIGFuZAo+PiBub3QgYWxsb3cgYW55Ym9keSBlbHNl
IHRvIGludGVyYWN0IHdpdGggdGhlIE9BIGNvbmZpZ3VyYXRpb24uCj4gSWYgb25lIGFwcCBpcyB0
cnlpbmcgdG8gdXNlIGRpZmZlcmVudCBjb25maWdzIG9uIGRpZmZlcmVudCBjb250ZXh0cwo+ICh3
aGljaCBzZWVtcyByZWFzb25hYmxlIGlmIGl0IGlzIHRyeWluZyB0byBzYW1wbGUgZGlmZmVyZW50
IHN0YXRzPykgdGhlbgo+IGl0IGNhbiBiZSBjYXVnaHQgb3V0LiBUaGUgb3JkZXIgb2YgZXhlY3V0
aW9uIGlzIG5vdCB0aGUgc2FtZSBhcyB0aGUKPiBvcmRlciBvZiBzdWJtaXNzaW9uICh1bmxlc3Mg
d2UgZW5mb3JjZSBpdCBieSBlLmcuIGRlZmluaW5nIHRoZQo+IHBlcmYub2FfY29uZmlnIGFzIGEg
YmFycmllcikuCgoKVGhhbmtzLCBJIHRoaW5rIEkgc2VlIHRoZSBwcm9ibGVtLiBJdCdzIHByZXR0
eSBtdWNoIHRoZSBzYW1lIGFzIHRoZSBzc2V1IApyZWNvbmZpZ3VyYXRpb24uCgpMb29raW5nIGF0
IHRoZSBjb2RlIGl0IHNlZW1zIHRoYXQgdGhlIGJhcnJpZXIgaXMgZ29uZSBmb3Igc3NldSBhbmQg
SSdtIAphZnJhaWQgdGhhdCBzb3VuZHMgbGlrZSB3aGF0J3MgbmVlZGVkIGhlcmUgOigKCgotTGlv
bmVsCgo+Cj4KPiBBbm90aGVyIHdheSB3b3VsZCBiZSB0byB1bmNvbmRpdGlvbmFsbHkgZW1pdCB0
aGUgQkJfU1RBUlQgZm9yIHRoZQo+IG9hX3ZtYSwgYW5kIGluc3RlYWQgZG8gdGhlIGVhcmx5IGV4
aXQgd2l0aCBhIE1JX0NPTkRJVElPTkFMX0JCX0VORCBieQo+IGNvbXBhcmluZyBhZ2FpbnN0IGEg
dmFsdWUgc3Rhc2hlZCBpbiB0aGUgZW5naW5lIGh3c3AuIFlvdSBjb3VsZCBkbyBhCj4gcHJlZGlj
YXRlZCBCQl9TVEFSVCBpbnN0ZWFkLCBidXQgdGhhdCBsb29rcyB0byBiZSBtb3JlIG9mIGEgbnVp
c2FuY2UuCj4gLUNocmlzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
