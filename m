Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D344139B93B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 14:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95EE66E408;
	Fri,  4 Jun 2021 12:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5906E418;
 Fri,  4 Jun 2021 12:53:20 +0000 (UTC)
IronPort-SDR: AubuWmhDw3Yo6rQO5zJT7sD3pvpMkSGEovvKqPjf8vKU9J4ZtPZK3mF93VHZJ39w9RJ+SciA+x
 8OaTq9xdiA4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="204261142"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="204261142"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 05:53:19 -0700
IronPort-SDR: 6164XZxGRCG/sRuFoQKNG1Z4imWGj8+18dzLn8D1q13mkBJ3KdctpmJUdKEsF6Rkt3VxdmU5ah
 ZRxtXk2hhRAg==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="480624846"
Received: from seanmc5x-mobl5.ger.corp.intel.com (HELO [10.213.231.164])
 ([10.213.231.164])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 05:53:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210525135508.244659-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20210525135508.244659-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <b9ae1daa-6add-1c67-58b4-16491f2e1431@linux.intel.com>
 <YK0OHJcSwWY1mm7v@phenom.ffwll.local>
 <8cf2c5f4-87a3-ce6b-150c-65fa054586a4@linux.intel.com>
 <YK9wrCayUwSDzMWG@phenom.ffwll.local>
 <59d2eee9-35c1-01fc-c226-50ad98aadb99@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <036d1a59-e78a-3eb2-c9e7-ff6909002124@linux.intel.com>
Date: Fri, 4 Jun 2021 13:53:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <59d2eee9-35c1-01fc-c226-50ad98aadb99@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] Let userspace know if they can trust
 timeslicing by including it as part of the
 I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
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
Cc: intel-gfx@lists.freedesktop.org,
 DRI Development <dri-devel@lists.freedesktop.org>, mahesh.meena@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzA1LzIwMjEgMTE6MjIsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDI3LzA1
LzIwMjEgMTE6MTMsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+IE9uIFdlZCwgTWF5IDI2LCAyMDIx
IGF0IDExOjIwOjEzQU0gKzAxMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Pj4KPj4+IE9uIDI1
LzA1LzIwMjEgMTU6NDcsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4gT24gVHVlLCBNYXkgMjUs
IDIwMjEgYXQgMDM6MTk6NDdQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pj4+Cj4+
Pj4+ICsgZHJpLWRldmVsIGFzIHBlciBwcm9jZXNzCj4+Pj4+Cj4+Pj4+IE9uIDI1LzA1LzIwMjEg
MTQ6NTUsIFRlamFzIFVwYWRoeWF5IHdyb3RlOgo+Pj4+Pj4gdjI6IE9ubHkgZGVjbGFyZSB0aW1l
c2xpY2luZyBpZiB3ZSBjYW4gc2FmZWx5IHByZWVtcHQgdXNlcnNwYWNlLgo+Pj4+Pgo+Pj4+PiBD
b21taXQgbWVzc2FnZSBnb3QgYnV0Y2hlcmVkIHVwIHNvbWVob3cgc28geW91J2xsIG5lZWQgdG8g
Zml4IHRoYXQgCj4+Pj4+IGF0IHNvbWUKPj4+Pj4gcG9pbnQuCj4+Pj4+Cj4+Pj4+IFJlZ2FyZHMs
Cj4+Pj4+Cj4+Pj4+IFR2cnRrbwo+Pj4+Pgo+Pj4+Pj4gRml4ZXM6IDhlZTM2ZTA0OGM5OCAoImRy
bS9pOTE1L2V4ZWNsaXN0czogTWluaW1hbGlzdGljIHRpbWVzbGljaW5nIikKPj4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+Pj4g
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Pj4+PiBSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Pj4+
IC0tLQo+Pj4+Pj4gwqDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91
c2VyLmMgfCAxICsKPj4+Pj4+IMKgwqDCoCBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEgKwo+Pj4+Pj4gwqDCoMKgIDIgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMgCj4+Pj4+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKPj4+Pj4+IGluZGV4IDNjY2E3ZWEy
ZDZlYS4uMTJkMTY1NTY2ZWQyIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYwo+Pj4+Pj4gQEAgLTk4LDYgKzk4LDcgQEAgc3RhdGlj
IHZvaWQgc2V0X3NjaGVkdWxlcl9jYXBzKHN0cnVjdCAKPj4+Pj4+IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1BUChIQVNfUFJFRU1QVElPTiwg
UFJFRU1QVElPTiksCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1BUChIQVNfU0VNQVBI
T1JFUywgU0VNQVBIT1JFUyksCj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1BUChTVVBQ
T1JUU19TVEFUUywgRU5HSU5FX0JVU1lfU1RBVFMpLAo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIE1B
UChUSU1FU0xJQ0VfQklULCBUSU1FU0xJQ0lORyksCj4+Pj4+PiDCoMKgwqAgI3VuZGVmIE1BUAo+
Pj4+Pj4gwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZTsKPj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmggCj4+Pj4+PiBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+Pj4+Pj4g
aW5kZXggYzJjNzc1OWI3ZDJlLi5hZjIyMTJkNjExM2MgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9pbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPj4+Pj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaAo+Pj4+Pj4gQEAgLTU3Miw2ICs1NzIsNyBAQCB0eXBlZGVmIHN0cnVjdCBkcm1faTkx
NV9pcnFfd2FpdCB7Cj4+Pj4+PiDCoMKgwqAgI2RlZmluZcKgwqAgSTkxNV9TQ0hFRFVMRVJfQ0FQ
X1BSRUVNUFRJT07CoMKgwqAgKDF1bCA8PCAyKQo+Pj4+Pj4gwqDCoMKgICNkZWZpbmXCoMKgIEk5
MTVfU0NIRURVTEVSX0NBUF9TRU1BUEhPUkVTwqDCoMKgICgxdWwgPDwgMykKPj4+Pj4+IMKgwqDC
oCAjZGVmaW5lwqDCoCBJOTE1X1NDSEVEVUxFUl9DQVBfRU5HSU5FX0JVU1lfU1RBVFPCoMKgwqAg
KDF1bCA8PCA0KQo+Pj4+Pj4gKyNkZWZpbmXCoMKgIEk5MTVfU0NIRURVTEVSX0NBUF9USU1FU0xJ
Q0lOR8KgwqDCoCAoMXVsIDw8IDUpCj4+Pj4KPj4+PiBTaW5jZSB0aGlzIGlzIHVhcGkgSSB0aGlu
ayB3ZSBzaG91bGQgYXQgbGVhc3QgaGF2ZSBzb21lIG5pY2Uga2VybmVsZG9jCj4+Pj4gdGhhdCBl
eHBsYWlucyB3aGF0IGV4YWN0bHkgdGhpcyBpcywgd2hhdCBmb3IgKGxpbmsgdG8gdXNlcnNwYWNl
KSBhbmQgCj4+Pj4gYWxsCj4+Pj4gdGhhdC4gSWRlYWxseSBhbHNvIG1pbmltYWxseSBmaWxpbmcg
aW4gdGhlIGdhcHMgaW4gb3VyIHVhcGkgZG9jcyBmb3IgCj4+Pj4gc3R1ZmYKPj4+PiB0aGlzIHJl
ZmVyZW5jZXMuCj4+Pgo+Pj4gSUlVQyB0aGVyZSBpcyBubyB1c2Vyc3BhY2UgYXBhcnQgZnJvbSBJ
R1QgbmVlZGluZyBpdCBub3QgdG8gZmFpbCAKPj4+IHNjaGVkdWxpbmcKPj4+IHRlc3RzIG9uIEFE
TC4KPj4+Cj4+PiBDdXJyZW50IHRlc3RzIHVzZSAiaGFzIHByZWVtcHRpb24gKyBoYXMgc2VtYXBo
b3JlcyIgYXMgYSBwcm94eSB0byAKPj4+IGFuc3dlciB0aGUKPj4+ICJkb2VzIHRoZSBrZXJuZWwg
c3VwcG9ydCB0aW1lc2xpY2luZyIgcXVlc3Rpb24uIFRoaXMgc3RvcHMgd29ya2luZyAKPj4+IHdp
dGggdGhlCj4+PiBHdWMgYmFja2VuZCBiZWNhdXNlIEd1QyBkZWNpZGVkIG5vdCB0byBzdXBwb3J0
IHNlbWFwaG9yZXMgKGZvciAKPj4+IHJlYXNvbnMgeWV0Cj4+PiB1bmtub3duLCBzZWUgb3RoZXIg
dGhyZWFkKSwgc28gZXhwbGljaXQgImhhcyB0aW1lc2xpY2luZyIgZmxhZyBpcyAKPj4+IG5lZWRl
ZCBpbgo+Pj4gb3JkZXIgZm9yIHRlc3RzIHRvIGtub3cgdGhhdCBHdUMgaXMgc3VwcG9zZWQgdG8g
c3VwcG9ydCB0aW1lc2xpY2luZywgCj4+PiBldmVuIGlmCj4+PiBpdCBkb2Vzbid0IHVzZSBzZW1h
cGhvcmVzIGZvciBpbnRlci1yaW5nIHN5bmNocm9uaXNhdGlvbi4KPj4KPj4gU2luY2UgdGhpcyBp
ZiBmb3IgaWd0IG9ubHk6IENhbnQgd2UgZG8ganVzdCBleHRlbmQgdGhlIGNoZWNrIGluIGlndCB3
aXRoCj4+IGFuIHx8IEdFTiA+PSAxMj8gSSByZWFsbHkgaG9wZSB0aGF0IG91ciBmdXR1cmUgaHcg
d2lsbCBjb250aW51ZSB0byAKPj4gc3VwcG9ydAo+PiB0aW1lc2xpY2luZyAuLi4KPiAKPiBOb3Qg
dGhlIGdlbiAxMiBjaGVjaywgYnV0IHBvc3NpYmxlIEkgdGhpbmsuIEV4cGxpY2l0IGZlYXR1cmUg
dGVzdCB3b3VsZCAKPiBiZSBiZXR0ZXIsIGJ1dCBpZiBkZWZpbml0ZWx5IG5vdCBhbGxvd2VkIHRo
ZW4gYWxvbmcgdGhlIGxpbmVzIG9mOgo+IAo+IGhhc190aW1lc2xpY2luZyA9Cj4gIMKgwqDCoMKg
KGhhc19wcmVlbXB0aW9uICYmIGhhc19zZW1hcGhvcmVzKSB8fCB1c2VzX2d1Y19zdWJtaXNzaW9u
OwoKT25lIGNhdGNoIGlzIHRoYXQgdGltZXNsaWNpbmcgaW4gR3VDIHdpbGwgYmUgZGlzYWJsZWQg
Ym90aCBpZiBhdCBjb21waWxlIAp0aW1lIENPTkZJR19EUk1fSTkxNV9USU1FU0xJQ0VfRFVSQVRJ
T04gaXMgc2V0IHRvIHplcm8sIG9yIGlmIGF0IHJ1bnRpbWUgCmVuZ2luZS0+cHJvcHMudGltZXNs
aWNlX2R1cmF0aW9uX21zIGlzIGVxdWFsbHkgc2V0IHRvIHplcm8uCgpTbyBJIHRoaW5rIHdoYXQg
aXMgbmVlZGVkIG9uIHRvcCBvZiB0aGUgYWJvdmUgY2hlY2sgaXMgdG8gd2FsayBhbGwgCmVuZ2lu
ZXMgaW4gc3lzZnMgYW5kIGNoZWNrIHRoYXQgdGltZXNsaWNpbmcgaGFzbid0IGV4cGxpY2l0bHkg
YmVlbiAKZGlzYWJsZWQgZm9yIGFueSBvbmUgb2YgdGhlbS4KCklmIHdlIGFyZSB0YWxraW5nIGFi
b3V0IHRoZSBnbG9iYWwgZmxhZyBhdCBsZWFzdC4gUGVyIGVuZ2luZSB0ZXN0cyBjb3VsZCAKZG8g
YmV0dGVyIEkgZ3Vlc3MsIGJ1dCBJIGRvbid0IHRoaW5rIHRoYXQgY29tcGxpY2F0aW9uIGlzIHdv
cnRoIHRoZSBlZmZvcnQuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
