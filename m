Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1E8392B6D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 12:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8ED6EDD5;
	Thu, 27 May 2021 10:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEBDB6EC6A;
 Thu, 27 May 2021 10:06:42 +0000 (UTC)
IronPort-SDR: w+XplF6wTmRQ8LzcD2k7BRd9cRzPtGapdITgTHgUB3wgNIFxLcWpyj0yjsw8Y0PJDXuhIi4TXT
 njObIOnMKX4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="183032794"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="183032794"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 03:06:42 -0700
IronPort-SDR: 48GBcqqqT2nbP52op4rKXRLE2kKCMC9pCwxTeKxTq7efC8gCyBtfIHw0YmIFvH12pOvFuD39ry
 jyvbk3DVqR8g==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="547742390"
Received: from amoses-mobl1.ger.corp.intel.com (HELO [10.213.211.53])
 ([10.213.211.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 03:06:40 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210526233357.9165-1-matthew.brost@intel.com>
 <20210526233357.9165-2-matthew.brost@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5a4ae6d0-cb47-fb8a-1f07-4f22f64cb919@linux.intel.com>
Date: Thu, 27 May 2021 11:06:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210526233357.9165-2-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] drm/doc/rfc: i915 GuC submission /
 DRM scheduler
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
Cc: jason.ekstrand@intel.com, mesa-dev@lists.freedesktop.org,
 christian.koenig@amd.com, daniel.vetter@intel.com, carl.zhang@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzA1LzIwMjEgMDA6MzMsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6Cj4gQWRkIGVudHJ5IGZv
ciBpOTE1IEd1QyBzdWJtaXNzaW9uIC8gRFJNIHNjaGVkdWxlciBpbnRlZ3JhdGlvbiBwbGFuLgo+
IEZvbGxvdyB1cCBwYXRjaCB3aXRoIGRldGFpbHMgb2YgbmV3IHBhcmFsbGVsIHN1Ym1pc3Npb24g
dUFQSSB0byBjb21lLgo+IAo+IHYyOgo+ICAgKERhbmllbCBWZXR0ZXIpCj4gICAgLSBFeHBhbmQg
ZXhwbGFpbmF0aW9uIG9mIHdoeSBib25kaW5nIGlzbid0IHN1cHBvcnRlZCBmb3IgR3VDCj4gICAg
ICBzdWJtaXNzaW9uCj4gICAgLSBDQyBzb21lIG9mIHRoZSBEUk0gc2NoZWR1bGVyIG1haW50YWlu
ZXJzCj4gICAgLSBBZGQgcHJpb3JpdHkgaW5oZXJpdGFuY2UgLyBib29zdGluZyB1c2UgY2FzZQo+
ICAgIC0gQWRkIHJlYXNvbmluZyBmb3IgcmVtb3ZpbmcgaW4gb3JkZXIgYXNzdW1wdGlvbnMKPiAg
IChEYW5pZWwgU3RvbmUpCj4gICAgLSBBZGQgbGlua3MgdG8gcHJpb3JpdHkgc3BlYwoKV2hlcmUg
d2lsbCB0aGUgb3V0c3RhbmRpbmcgaXRlbXMgbGlrZSwgZnJvbSB0aGUgdG9wIG9mIG15IGhlYWQg
b25seSwgCmVycm9yIGNhcHR1cmUgYW5kIG9wZW4gc291cmNlIGxvZ2dpbmcgdG9vbCBiZSB0cmFj
a2VkPyBJIHRob3VnaHQgaGVyZSAKYnV0IG1heWJlIG5vdC4KClJlZ2FyZHMsCgpUdnJ0a28KCj4g
Q2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogTHVi
ZW4gVHVpa292IDxsdWJlbi50dWlrb3ZAYW1kLmNvbT4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4
YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBh
cm0uY29tPgo+IENjOiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+
IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gQ2M6IERhdmUgQWly
bGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+Cj4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IFNpZ25lZC1vZmYtYnk6IE1h
dHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+IC0tLQo+ICAgRG9jdW1lbnRh
dGlvbi9ncHUvcmZjL2k5MTVfc2NoZWR1bGVyLnJzdCB8IDg1ICsrKysrKysrKysrKysrKysrKysr
KysrKwo+ICAgRG9jdW1lbnRhdGlvbi9ncHUvcmZjL2luZGV4LnJzdCAgICAgICAgICB8ICA0ICsr
Cj4gICAyIGZpbGVzIGNoYW5nZWQsIDg5IGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9zY2hlZHVsZXIucnN0Cj4gCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L3JmYy9pOTE1X3NjaGVkdWxlci5yc3QgYi9Eb2N1bWVu
dGF0aW9uL2dwdS9yZmMvaTkxNV9zY2hlZHVsZXIucnN0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwMDAwMDAuLjdmYWE0NmNkZTA4OAo+IC0tLSAvZGV2L251bGwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9zY2hlZHVsZXIucnN0Cj4gQEAgLTAsMCArMSw4
NSBAQAo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICtJOTE1
IEd1QyBTdWJtaXNzaW9uL0RSTSBTY2hlZHVsZXIgU2VjdGlvbgo+ICs9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICsKPiArVXBzdHJlYW0gcGxhbgo+ICs9PT09PT09
PT09PT09Cj4gK0ZvciB1cHN0cmVhbSB0aGUgb3ZlcmFsbCBwbGFuIGZvciBsYW5kaW5nIEd1QyBz
dWJtaXNzaW9uIGFuZCBpbnRlZ3JhdGluZyB0aGUKPiAraTkxNSB3aXRoIHRoZSBEUk0gc2NoZWR1
bGVyIGlzOgo+ICsKPiArKiBNZXJnZSBiYXNpYyBHdUMgc3VibWlzc2lvbgo+ICsJKiBCYXNpYyBz
dWJtaXNzaW9uIHN1cHBvcnQgZm9yIGFsbCBnZW4xMSsgcGxhdGZvcm1zCj4gKwkqIE5vdCBlbmFi
bGVkIGJ5IGRlZmF1bHQgb24gYW55IGN1cnJlbnQgcGxhdGZvcm1zIGJ1dCBjYW4gYmUgZW5hYmxl
ZCB2aWEKPiArCSAgbW9kcGFyYW0gZW5hYmxlX2d1Ywo+ICsJKiBMb3RzIG9mIHJld29yayB3aWxs
IG5lZWQgdG8gYmUgZG9uZSB0byBpbnRlZ3JhdGUgd2l0aCBEUk0gc2NoZWR1bGVyIHNvCj4gKwkg
IG5vIG5lZWQgdG8gbml0IHBpY2sgZXZlcnl0aGluZyBpbiB0aGUgY29kZSwgaXQganVzdCBzaG91
bGQgYmUKPiArCSAgZnVuY3Rpb25hbCwgbm8gbWFqb3IgY29kaW5nIHN0eWxlIC8gbGF5ZXJpbmcg
ZXJyb3JzLCBhbmQgbm90IHJlZ3Jlc3MKPiArCSAgZXhlY2xpc3RzCj4gKwkqIFVwZGF0ZSBJR1Rz
IC8gc2VsZnRlc3RzIGFzIG5lZWRlZCB0byB3b3JrIHdpdGggR3VDIHN1Ym1pc3Npb24KPiArCSog
RW5hYmxlIENJIG9uIHN1cHBvcnRlZCBwbGF0Zm9ybXMgZm9yIGEgYmFzZWxpbmUKPiArCSogUmV3
b3JrIC8gZ2V0IENJIGhlYXRobHkgZm9yIEd1QyBzdWJtaXNzaW9uIGluIHBsYWNlIGFzIG5lZWRl
ZAo+ICsqIE1lcmdlIG5ldyBwYXJhbGxlbCBzdWJtaXNzaW9uIHVBUEkKPiArCSogQm9uZGluZyB1
QVBJIGNvbXBsZXRlbHkgaW5jb21wYXRpYmxlIHdpdGggR3VDIHN1Ym1pc3Npb24sIHBsdXMgaXQg
aGFzCj4gKwkgIHNldmVyZSBkZXNpZ24gaXNzdWVzIGluIGdlbmVyYWwsIHdoaWNoIGlzIHdoeSB3
ZSB3YW50IHRvIHJldGlyZSBpdCBubwo+ICsJICBtYXR0ZXIgd2hhdAo+ICsJKiBOZXcgdUFQSSBh
ZGRzIEk5MTVfQ09OVEVYVF9FTkdJTkVTX0VYVF9QQVJBTExFTCBjb250ZXh0IHNldHVwIHN0ZXAK
PiArCSAgd2hpY2ggY29uZmlndXJlcyBhIHNsb3Qgd2l0aCBOIGNvbnRleHRzCj4gKwkqIEFmdGVy
IEk5MTVfQ09OVEVYVF9FTkdJTkVTX0VYVF9QQVJBTExFTCBhIHVzZXIgY2FuIHN1Ym1pdCBOIGJh
dGNoZXMgdG8KPiArCSAgYSBzbG90IGluIGEgc2luZ2xlIGV4ZWNidWYgSU9DVEwgYW5kIHRoZSBi
YXRjaGVzIHJ1biBvbiB0aGUgR1BVIGluCj4gKwkgIHBhcmFsbGxlbAo+ICsJKiBJbml0aWFsbHkg
b25seSBmb3IgR3VDIHN1Ym1pc3Npb24gYnV0IGV4ZWNsaXN0cyBjYW4gYmUgc3VwcG9ydGVkIGlm
Cj4gKwkgIG5lZWRlZAo+ICsqIENvbnZlcnQgdGhlIGk5MTUgdG8gdXNlIHRoZSBEUk0gc2NoZWR1
bGVyCj4gKwkqIEd1QyBzdWJtaXNzaW9uIGJhY2tlbmQgZnVsbHkgaW50ZWdyYXRlZCB3aXRoIERS
TSBzY2hlZHVsZXIKPiArCQkqIEFsbCByZXF1ZXN0IHF1ZXVlcyByZW1vdmVkIGZyb20gYmFja2Vu
ZCAoZS5nLiBhbGwgYmFja3ByZXNzdXJlCj4gKwkJICBoYW5kbGVkIGluIERSTSBzY2hlZHVsZXIp
Cj4gKwkJKiBSZXNldHMgLyBjYW5jZWxzIGhvb2sgaW4gRFJNIHNjaGVkdWxlcgo+ICsJCSogV2F0
Y2hkb2cgaG9va3MgaW50byBEUk0gc2NoZWR1bGVyCj4gKwkJKiBMb3RzIG9mIGNvbXBsZXhpdHkg
b2YgdGhlIEd1QyBiYWNrZW5kIGNhbiBiZSBwdWxsZWQgb3V0IG9uY2UKPiArCQkgIGludGVncmF0
ZWQgd2l0aCBEUk0gc2NoZWR1bGVyIChlLmcuIHN0YXRlIG1hY2hpbmUgZ2V0cwo+ICsJCSAgc2lt
cGxpZXIsIGxvY2tpbmcgZ2V0cyBzaW1wbGllciwgZXRjLi4uKQo+ICsJKiBFeGVjbGlzdCBiYWNr
ZW5kIHdpbGwgZG8gdGhlIG1pbmltdW0gcmVxdWlyZWQgdG8gaG9vayBpbiB0aGUgRFJNCj4gKwkg
IHNjaGVkdWxlciBzbyBpdCBjYW4gbGl2ZSBuZXh0IHRvIHRoZSBmdWxseSBpbnRlZ3JhdGVkIEd1
QyBiYWNrZW5kCj4gKwkJKiBMZWdhY3kgaW50ZXJmYWNlCj4gKwkJKiBGZWF0dXJlcyBsaWtlIHRp
bWVzbGljaW5nIC8gcHJlZW1wdGlvbiAvIHZpcnR1YWwgZW5naW5lcyB3b3VsZAo+ICsJCSAgYmUg
ZGlmZmljdWx0IHRvIGludGVncmF0ZSB3aXRoIHRoZSBEUk0gc2NoZWR1bGVyIGFuZCB0aGVzZQo+
ICsJCSAgZmVhdHVyZXMgYXJlIG5vdCByZXF1aXJlZCBmb3IgR3VDIHN1Ym1pc3Npb24gYXMgdGhl
IEd1QyBkb2VzCj4gKwkJICB0aGVzZSB0aGluZ3MgZm9yIHVzCj4gKwkJKiBST0kgbG93IG9uIGZ1
bGx5IGludGVncmF0aW5nIGludG8gRFJNIHNjaGVkdWxlcgo+ICsJCSogRnVsbHkgaW50ZWdyYXRp
bmcgd291bGQgYWRkIGxvdHMgb2YgY29tcGxleGl0eSB0byBEUk0KPiArCQkgIHNjaGVkdWxlcgo+
ICsJKiBQb3J0IGk5MTUgcHJpb3JpdHkgaW5oZXJpdGFuY2UgLyBib29zdGluZyBmZWF0dXJlIGlu
IERSTSBzY2hlZHVsZXIKPiArCQkqIFVzZWQgZm9yIGk5MTUgcGFnZSBmbGlwLCBtYXkgYmUgdXNl
ZnVsIHRvIG90aGVyIERSTSBkcml2ZXJzIGFzCj4gKwkJICB3ZWxsCj4gKwkJKiBXaWxsIGJlIGFu
IG9wdGlvbmFsIGZlYXR1cmUgaW4gdGhlIERSTSBzY2hlZHVsZXIKPiArCSogUmVtb3ZlIGluLW9y
ZGVyIGNvbXBsZXRpb24gYXNzdW1wdGlvbnMgZnJvbSBEUk0gc2NoZWR1bGVyCj4gKwkJKiBFdmVu
IHdoZW4gdXNpbmcgdGhlIERSTSBzY2hlZHVsZXIgdGhlIGJhY2tlbmRzIHdpbGwgaGFuZGxlCj4g
KwkJICBwcmVlbXB0aW9uLCB0aW1lc2xpY2luZywgZXRjLi4uIHNvIGl0IGlzIHBvc3NpYmxlIGZv
ciBqb2JzIHRvCj4gKwkJICBmaW5pc2ggb3V0IG9mIG9yZGVyCj4gKwkqIFB1bGwgb3V0IGk5MTUg
cHJpb3JpdHkgbGV2ZWxzIGFuZCB1c2UgRFJNIHByaW9yaXR5IGxldmVscwo+ICsJKiBPcHRpbWl6
ZSBEUk0gc2NoZWR1bGVyIGFzIG5lZWRlZAo+ICsKPiArTmV3IHVBUEkgZm9yIGJhc2ljIEd1QyBz
dWJtaXNzaW9uCj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICtObyBtYWpv
ciBjaGFuZ2VzIGFyZSByZXF1aXJlZCB0byB0aGUgdUFQSSBmb3IgYmFzaWMgR3VDIHN1Ym1pc3Np
b24uIFRoZSBvbmx5Cj4gK2NoYW5nZSBpcyBhIG5ldyBzY2hlZHVsZXIgYXR0cmlidXRlOiBJOTE1
X1NDSEVEVUxFUl9DQVBfU1RBVElDX1BSSU9SSVRZX01BUC4KPiArVGhpcyBhdHRyaWJ1dGUgaW5k
aWNhdGVzIHRoZSAyayBpOTE1IHVzZXIgcHJpb3JpdHkgbGV2ZWxzIGFyZSBzdGF0aWNhbGx5IG1h
cHBlZAo+ICtpbnRvIDMgbGV2ZWxzIGFzIGZvbGxvd3M6Cj4gKwo+ICsqIC0xayB0byAtMSBMb3cg
cHJpb3JpdHkKPiArKiAwIE1lZGl1bSBwcmlvcml0eQo+ICsqIDEgdG8gMWsgSGlnaCBwcmlvcml0
eQo+ICsKPiArVGhpcyBpcyBuZWVkZWQgYmVjYXVzZSB0aGUgR3VDIG9ubHkgaGFzIDQgcHJpb3Jp
dHkgYmFuZHMuIFRoZSBoaWdoZXN0IHByaW9yaXR5Cj4gK2JhbmQgaXMgcmVzZXJ2ZWQgd2l0aCB0
aGUga2VybmVsLiBUaGlzIGFsaWducyB3aXRoIHRoZSBEUk0gc2NoZWR1bGVyIHByaW9yaXR5Cj4g
K2xldmVscyB0b28uCj4gKwo+ICtTcGVjIHJlZmVyZW5jZXM6Cj4gKy0tLS0tLS0tLS0tLS0tLS0K
PiAraHR0cHM6Ly93d3cua2hyb25vcy5vcmcvcmVnaXN0cnkvRUdML2V4dGVuc2lvbnMvSU1HL0VH
TF9JTUdfY29udGV4dF9wcmlvcml0eS50eHQKPiAraHR0cHM6Ly93d3cua2hyb25vcy5vcmcvcmVn
aXN0cnkvdnVsa2FuL3NwZWNzLzEuMi1leHRlbnNpb25zL2h0bWwvY2hhcDUuaHRtbCNkZXZzYW5k
cXVldWVzLXByaW9yaXR5Cj4gK2h0dHBzOi8vc3BlYy5vbmVhcGkuY29tL2xldmVsLXplcm8vbGF0
ZXN0L2NvcmUvYXBpLmh0bWwjemUtY29tbWFuZC1xdWV1ZS1wcmlvcml0eS10Cj4gKwo+ICtOZXcg
cGFyYWxsZWwgc3VibWlzc2lvbiB1QVBJCj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
PiArRGV0YWlscyB0byBjb21lIGluIGEgZm9sbG93aW5nIHBhdGNoLgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2dwdS9yZmMvaW5kZXgucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvcmZjL2lu
ZGV4LnJzdAo+IGluZGV4IDA1NjcwNDQyY2ExYi4uOTFlOTNhNzA1MjMwIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZ3B1L3JmYy9pbmRleC5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2dw
dS9yZmMvaW5kZXgucnN0Cj4gQEAgLTE5LDMgKzE5LDcgQEAgaG9zdCBzdWNoIGRvY3VtZW50YXRp
b246Cj4gICAuLiB0b2N0cmVlOjoKPiAgIAo+ICAgICAgIGk5MTVfZ2VtX2xtZW0ucnN0Cj4gKwo+
ICsuLiB0b2N0cmVlOjoKPiArCj4gKyAgICBpOTE1X3NjaGVkdWxlci5yc3QKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
