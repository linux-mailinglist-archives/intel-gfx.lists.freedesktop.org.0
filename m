Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B76A791B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 05:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFB789954;
	Wed,  4 Sep 2019 03:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7988489954
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 03:02:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 20:02:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="266503758"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.252.76.92])
 ([10.252.76.92])
 by orsmga001.jf.intel.com with ESMTP; 03 Sep 2019 20:02:10 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
 <20190903172057.GZ7482@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <599fbdf3-e1b9-92e5-3303-58a1a8a83a55@intel.com>
Date: Wed, 4 Sep 2019 08:32:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903172057.GZ7482@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 0/2] Enable Nearest-neighbor for Integer mode
 scaling
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

SGVsbG8gVmlsbGUsCgpPbiA5LzMvMjAxOSAxMDo1MCBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3Rl
Ogo+IE9uIFR1ZSwgU2VwIDAzLCAyMDE5IGF0IDEwOjIyOjI1UE0gKzA1MzAsIFNoYXNoYW5rIFNo
YXJtYSB3cm90ZToKPj4gQmx1cnJ5IG91dHB1dHMgZHVyaW5nIHVwc2NhbGluZyB0aGUgYnVmZmVy
LCBpcyBhIGdlbmVyaWMgcHJvYmxlbSBvZiBnZngKPj4gaW5kdXN0cnkuIE9uZSBvZiB0aGUgbWFq
b3IgcmVhc29uIGJlaGluZCB0aGlzIGJsdXJyaW5lc3MgaXMgdGhlCj4+IGludGVycG9sYXRpb24g
b2YgcGl4ZWwgdmFsdWVzIHVzZWQgYnkgbW9zdCBvZiB0aGUgdXBzY2FsaW5nIGhhcmR3YXJlcy4K
Pj4KPj4gTmVhcmVzdC1uZWlnaGJvciBpcyBhIHNjYWxpbmcgbW9kZSwgd2hpY2ggd29ya3MgYnkg
ZmlsbGluZyBpbiB0aGUgbWlzc2luZwo+PiBjb2xvciB2YWx1ZXMgaW4gdGhlIHVwc2NhbGVkIGlt
YWdlIHdpdGggdGhhdCBvZiB0aGUgY29vcmRpbmF0ZS1tYXBwZWQKPj4gbmVhcmVzdCBzb3VyY2Ug
cGl4ZWwgdmFsdWUuCj4+Cj4+IE5lYXJlc3QtbmVpZ2hib3IgY2FuIHByb2R1Y2UgKGFsbW9zdCkg
bm9uLWJsdXJyeSBzY2FsaW5nIG91dHB1dHMgd2hlbgo+PiB0aGUgc2NhbGluZyByYXRpbyBpcyBj
b21wbGV0ZSBpbnRlZ2VyLiBGb3IgZXhhbXBsZToKPj4gLSBpbnB1dCBidWZmZXIgcmVzb2x1dGlv
bjogMTI4MHg3MjAoSEQpCj4+IC0gb3V0cHV0IGJ1ZmZlciByZXNvbHV0aW9uOiAzODQweDIxNjAo
VUhELzRLKQo+PiAtIHNjYWxpbmcgcmF0aW8gKGgpID0gMzg0MC8xMjgwID0gMwo+PiAgICBzY2Fs
aW5nIHJhdGlvICh2KSA9IDIxNjAvNzIwID0gMwo+PiBJbiBzdWNoIHNjZW5hcmlvcywgd2Ugc2hv
dWxkIHRyeSB0byBwaWNrIE5lYXJlc3QtbmVpZ2hib3IgYXMgc2NhbGluZwo+PiBtZXRob2Qgd2hl
biBwb3NzaWJsZS4KPj4KPj4gTWFueSBnYW1pbmcgY29tbXVuaXRpZXMgaGF2ZSBiZWVuIGFza2lu
ZyBmb3IgaW50ZWdlci1tb2RlIHNjYWxpbmcKPj4gc3VwcG9ydCwgc29tZSBsaW5rcyBhbmQgYmFj
a2dyb3VuZDoKPj4gaHR0cHM6Ly9zb2Z0d2FyZS5pbnRlbC5jb20vZW4tdXMvYXJ0aWNsZXMvaW50
ZWdlci1zY2FsaW5nLXN1cHBvcnQtb24taW50ZWwtZ3JhcGhpY3MKPj4gaHR0cDovL3RhbmFsaW4u
Y29tL2VuL2FydGljbGVzL2xvc3NsZXNzLXNjYWxpbmcvCj4+IGh0dHBzOi8vY29tbXVuaXR5LmFt
ZC5jb20vdGhyZWFkLzIwOTEwNwo+PiBodHRwczovL3d3dy5udmlkaWEuY29tL2VuLXVzL2dlZm9y
Y2UvZm9ydW1zL2dhbWUtcmVhZHktZHJpdmVycy8xMy8xMDAyL2ZlYXR1cmUtcmVxdWVzdC1ub25i
bHVycnktdXBzY2FsaW5nLWF0LWludGVnZXItcmF0Lwo+Pgo+PiBUaGlzIHBhdGNoIHNlcmllcyBl
bmFibGVzIE5OIHNjYWxpbmcgb24gSW50ZWwgZGlzcGxheSAoSUNMKSwgd2hlbiB0aGUgdXBzY2Fs
aW5nCj4+IHJhdGlvIGlzIGludGVnZXIuCj4gSSB0aGluayB3ZSdkIHByb2JhYmx5IHdhbnQgYSBw
cm9wZXJ0eSBmb3IgdGhpcyBzb3J0IG9mIHN0dWZmLiBpZ3QKPiBjb3VsZCBwZXJoYXBzIGFsc28g
dXNlIGl0IHRvIGVuYWJsZSBjcmMgYmFzZWQgc2NhbGluZyB0ZXN0cy4KSSB3YXMgaW5pdGlhbGx5
IHBsYW5uaW5nIHRvIGF0dGFjaCB0aGlzIHRvIHNjYWxpbmcgbW9kZSBwcm9wZXJ0eSwgCnByb2Jh
Ymx5IGNyZWF0ZSBhIG5ldyBvcHRpb24gaW4gdGhlcmUgY2FsbGVkICJJbnRlZ2VyIG1vZGUgc2Nh
bGluZyIgb3IgCndlIGNhbiB1c2UgdGhlICJtYWludGFpbiBhc3BlY3QgcmF0aW8iIHN1Yi1vcHRp
b24gdG9vLiBEbyB5b3UgdGhpbmsgaXQgCndvdWxkIG1ha2Ugc2Vuc2UgPyBPciBzaG91bGQgd2Ug
Y3JlYXRlIGEgbmV3IHByb3BlcnR5IGFsdG9nZXRoZXIgPwo+IEFub3RoZXIgcHJvYmxlbSBpcyB0
aGF0IHdlIGN1cnJlbnRseSBkb24ndCBleHBvc2UgdGhlIHBhbmVsIGZpdHRlcgo+IGZvciBleHRl
cm5hbCBkaXNwbGF5cyBzbyB0aGlzIHdvdWxkIGJlIGxpbWl0ZWQgdG8gZURQL0RTSSBvbmx5Lgo+
IEkgaGF2ZSBhIGJyYW5jaCB0aGF0IGltcGxlbWVudHMgYm9yZGVycyAoZm9yIHVuZGVyc2Nhbikg
Zm9yIERQL0hETUkKPiB3aGljaCBpcyBhdCBsZWFzdCBtb3ZpbmcgdGhlIGNvZGUgYSBsaXR0bGUg
Yml0IGludG8gYSBkaXJlY3Rpb24gd2hlcmUKPiB3ZSBjb3VsZCBjb25zaWRlciBleHBvc2luZyB0
aGUgcGFuZWwgZml0dGVyIGZvciBleHRlcm5hbCBkaXNwbGF5cy4KClRoaXMgd291bGQgYmUgdmVy
eSBpbnRlcmVzdGluZywgZG8geW91IGhhdmUgYW55IHBsYW5zIHRvIHB1Ymxpc2ggdGhpcyBzb29u
ID8KCi0gU2hhc2hhbmsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
