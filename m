Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB16A3A2C81
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 15:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A702C6ED0B;
	Thu, 10 Jun 2021 13:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3FE6E84E;
 Thu, 10 Jun 2021 13:08:15 +0000 (UTC)
IronPort-SDR: E+3TqlJLhaWmAM1DzLXh+6E140ApVwnaDMbeHRckckW96LkIzytqSGWxelTmcv+UgvEa2xz1rN
 C1OIUIz1B6aQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="192405513"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="192405513"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 06:08:14 -0700
IronPort-SDR: M92i3q6wu+AEiimedRl6u2xRm7iD/20I8pzS4r3gTQHb/qkqqZM5vauCUkFIw3HfaTazqFvLwG
 hzz3aEv1hNtQ==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="448710251"
Received: from rabolton-mobl.ger.corp.intel.com (HELO [10.213.197.140])
 ([10.213.197.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 06:08:11 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210609212959.471209-1-jason@jlekstrand.net>
 <ae289388-911f-2928-d695-050863ee1007@linux.intel.com>
 <f9be43e3-4107-3742-a11b-8021b2c19e32@amd.com>
 <CAKMK7uFMEdFjUSphcyxuKMW8HfLOWQAE2iw-Fei+SRTDwUbRdQ@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <829bf753-35b3-d306-3749-f4d8c3ead948@linux.intel.com>
Date: Thu, 10 Jun 2021 14:07:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFMEdFjUSphcyxuKMW8HfLOWQAE2iw-Fei+SRTDwUbRdQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/5] dma-fence,
 i915: Stop allowing SLAB_TYPESAFE_BY_RCU for dma_fence
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
Cc: Dave Airlie <airlied@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA2LzIwMjEgMTI6MjksIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gVGh1LCBKdW4g
MTAsIDIwMjEgYXQgMTE6MzkgQU0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOgo+PiBBbSAxMC4wNi4yMSB1bSAxMToyOSBzY2hyaWViIFR2cnRrbyBV
cnN1bGluOgo+Pj4gT24gMDkvMDYvMjAyMSAyMjoyOSwgSmFzb24gRWtzdHJhbmQgd3JvdGU6Cj4+
Pj4gRXZlciBzaW5jZSAwZWFmZWM2ZDMyNDQgKCJkcm0vaTkxNTogRW5hYmxlIGxvY2tsZXNzIGxv
b2t1cCBvZiByZXF1ZXN0Cj4+Pj4gdHJhY2tpbmcgdmlhIFJDVSIpLCB0aGUgaTkxNSBkcml2ZXIg
aGFzIHVzZWQgU0xBQl9UWVBFU0FGRV9CWV9SQ1UgKGl0Cj4+Pj4gd2FzIGNhbGxlZCBTTEFCX0RF
U1RST1lfQllfUkNVIGF0IHRoZSB0aW1lKSBpbiBvcmRlciB0byBhbGxvdyBSQ1Ugb24KPj4+PiBp
OTE1X3JlcXVlc3QuICBBcyBuaWZ0eSBhcyBTTEFCX1RZUEVTQUZFX0JZX1JDVSBtYXkgYmUsIGl0
IGNvbWVzIHdpdGgKPj4+PiBzb21lIHNlcmlvdXMgZGlzY2xhaW1lcnMuICBJbiBwYXJ0aWN1bGFy
LCBvYmplY3RzIGNhbiBnZXQgcmVjeWNsZWQgd2hpbGUKPj4+PiBSQ1UgcmVhZGVycyBhcmUgc3Rp
bGwgaW4tZmxpZ2h0LiAgVGhpcyBjYW4gYmUgb2sgaWYgZXZlcnlvbmUgd2hvIHRvdWNoZXMKPj4+
PiB0aGVzZSBvYmplY3RzIGtub3dzIGFib3V0IHRoZSBkaXNjbGFpbWVycyBhbmQgaXMgY2FyZWZ1
bC4gSG93ZXZlciwKPj4+PiBiZWNhdXNlIHdlJ3ZlIGNob3NlbiB0byB1c2UgU0xBQl9UWVBFU0FG
RV9CWV9SQ1UgZm9yIGk5MTVfcmVxdWVzdCBhbmQKPj4+PiBiZWNhdXNlIGk5MTVfcmVxdWVzdCBj
b250YWlucyBhIGRtYV9mZW5jZSwgd2UndmUgbGVha2VkCj4+Pj4gU0xBQl9UWVBFU0FGRV9CWV9S
Q1UgYW5kIGl0cyB3aG9sZSBwaWxlIG9mIGRpc2NsYWltZXJzIHRvIGV2ZXJ5IGRyaXZlcgo+Pj4+
IGluIHRoZSBrZXJuZWwgd2hpY2ggbWF5IGNvbnN1bWUgYSBkbWFfZmVuY2UuCj4+Pgo+Pj4gSSBk
b24ndCB0aGluayB0aGUgcGFydCBhYm91dCBsZWFraW5nIGlzIHRydWUuLi4KPj4+Cj4+Pj4gV2Un
dmUgdHJpZWQgdG8ga2VlcCBpdCBzb21ld2hhdCBjb250YWluZWQgYnkgZG9pbmcgbW9zdCBvZiB0
aGUgaGFyZCB3b3JrCj4+Pj4gdG8gcHJldmVudCBhY2Nlc3Mgb2YgcmVjeWNsZWQgb2JqZWN0cyB2
aWEgZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZSgpLgo+Pj4+IEhvd2V2ZXIsIGEgcXVpY2sgZ3JlcCBv
ZiBrZXJuZWwgc291cmNlcyBzYXlzIHRoYXQsIG9mIHRoZSAzMCBpbnN0YW5jZXMKPj4+PiBvZiBk
bWFfZmVuY2VfZ2V0X3JjdSosIG9ubHkgMTEgb2YgdGhlbSB1c2UgZG1hX2ZlbmNlX2dldF9yY3Vf
c2FmZSgpLgo+Pj4+IEl0J3MgbGlrZWx5IHRoZXJlIGJlYXIgdHJhcHMgaW4gRFJNIGFuZCByZWxh
dGVkIHN1YnN5c3RlbXMganVzdCB3YWl0aW5nCj4+Pj4gZm9yIHNvbWVvbmUgdG8gYWNjaWRlbnRh
bGx5IHN0ZXAgaW4gdGhlbS4KPj4+Cj4+PiAuLi5iZWNhdXNlIGRtYV9mZW5jZV9nZXRfcmN1X3Nh
ZmUgYXBlYXJzIHRvIGJlIGFib3V0IHdoZXRoZXIgdGhlCj4+PiAqcG9pbnRlciogdG8gdGhlIGZl
bmNlIGl0c2VsZiBpcyByY3UgcHJvdGVjdGVkLCBub3QgYWJvdXQgdGhlIGZlbmNlCj4+PiBvYmpl
Y3QgaXRzZWxmLgo+Pgo+PiBZZXMsIGV4YWN0bHkgdGhhdC4KPiAKPiBXZSBkbyBsZWFrLCBhbmQg
YmFkbHkuIEFueSBfX3JjdSBwcm90ZWN0ZWQgZmVuY2UgcG9pbnRlciB3aGVyZSBhCj4gc2hhcmVk
IGZlbmNlIGNvdWxkIHNob3cgdXAgaXMgYWZmZWN0ZWQuIEFuZCB0aGUgcG9pbnQgb2YgZG1hX2Zl
bmNlIGlzCj4gdGhhdCB0aGV5J3JlIHNoYXJlYWJsZSwgYW5kIHdlJ3JlIGludmVudGluZyBldmVy
IG1vcmUgd2F5cyB0byBkbyBzbwo+IChzeW5jX2ZpbGUsIGRybV9zeW5jb2JqLCBpbXBsaWNpdCBm
ZW5jaW5nIG1heWJlIHNvb24gd2l0aAo+IGltcG9ydC9leHBvcnQgaW9jdGwgb24gdG9wLCBpbi9v
dXQgZmVuY2VzIGluIENTIGlvY3RsLCBhdG9taWMgaW9jdGwsCj4gLi4uKS4KPiAKPiBTbyB3aXRo
b3V0IGEgZnVsbCBhdWRpdCBhbnl0aGluZyB0aGF0IHVzZXMgdGhlIGZvbGxvd2luZyBwYXR0ZXJu
IGlzCj4gcHJvYmFibHkgYnVzdGVkOgo+IAo+IHJjdV9yZWFkX2xvY2soKTsKPiBmZW5jZSA9IHJj
dV9kZXJlZmVyZW5jZSgpOwo+IGZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3UoKTsKPiByY3VfcmVh
ZF9sb2NrKCk7CgpXaGF0IGRvIHlvdSBtZWFuIGJ5IF9wcm9iYWJseV8gYnVzdGVkPyBUaGlzIHNo
b3VsZCBlaXRoZXIgZmFpbCBpbiAKa3JlZl9nZXRfdW5sZXNzX3plcm8gZm9yIGZyZWVkIGZlbmNl
cyBvciBpdCBncmFicyB0aGUgd3JvbmcgZmVuY2Ugd2hpY2ggCmRtYV9mZW5jZV9nZXRfcmN1X3Nh
ZmUoKSBpcyBzdXBwb3NlZCB0byBkZXRlY3QuCgo+IC8qIHVzZSB0aGUgZmVuY2Ugbm93IHRoYXQg
d2UgYWNxdWlyZWQgYSBmdWxsIHJlZmVyZW5jZSAqLwo+IAo+IEFuZCBJIGRvbid0IG1lYW4gInlv
dSBtaWdodCB3YWl0IGEgYml0IHRvbyBtdWNoIiBidXN0ZWQsIGJ1dCAidGhpcyBjYW4KPiBsZWFk
IHRvIGxvb3BzIGluIHRoZSBkbWFfZmVuY2UgZGVwZW5kZW5jeSBjaGFpbiwgcmVzdWx0aW5nIGlu
Cj4gZGVhZGxvY2tzIiBraW5kIG9mIGJ1c3RlZC4gV2hhdCdzIHdvcnNlLCB0aGUgc3RhbmRhcmQg
cmN1IGxvY2tsZXNzCgpJIGRvbid0IGhhdmUgdGhlIHN0b3J5IG9uIGRtYV9mZW5jZSBkZXBlbmRl
bmN5IGNoYWluIGRlYWRsb2Nrcy4gTWF5YmUgCnB1dCBhIGZldyBtb3JlIHdvcmRzIGFib3V0IHRo
YXQgaW4gdGhlIGNvdmVyIGxldHRlciBzaW5jZSBpdCB3b3VsZCBiZSAKZ29vZCB0byB1bmRlcnN0
YW5kIHRoZSByZWFsIG1vdGl2YXRpb24gYmVoaW5kIHRoZSBjaGFuZ2UuCgpBcmUgdGhlcmUgZXZl
biBidWdzIGFib3V0IGRlYWRsb2NrcyB3aGljaCBzaG91bGQgYmUgbWVudGlvbmVkPwoKT3Igd2h5
IGlzIG5vdCB0aGUgYWN0IG9mIGZlbmNlIGJlaW5nIHNpZ25hbGVkIHJlbW92aW5nIHRoZSBmZW5j
ZSBmcm9tIAp0aGUgcmN1IHByb3RlY3RlZCBjb250YWluZXJzLCBwcmV2ZW50aW5nIHRoZSBzdGFs
ZSBwb2ludGVyIHByb2JsZW0/Cgo+IGFjY2VzcyBwYXR0ZXJuIGlzIGFsc28gYnVzdGVkIGNvbXBs
ZXRlbHk6Cj4gCj4gcmN1X3JlYWRfbG9jaygpOwo+IGZlbmNlID0gcmN1X2RlcmVmZW5jZSgpOwo+
IC8qIGxvY2tsZXNzbHkgY2hlY2sgdGhlIHN0YXRlIG9mIGZlbmNlICovCj4gcmN1X3JlYWRfdW5s
b2NrKCk7CgpNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgbG9ja2xlc3MsIGVnLiBubyByZWZlcmVu
Y2UgdGFrZW4sIGFjY2VzcyBjYW4gCmFjY2VzcyBhIGRpZmZlcmVudCBmZW5jZSBvciBhIGZyZWVk
IGZlbmNlLCBidXQgd29uJ3QgY2F1c2UgdXNlIGFmdGVyIApmcmVlIHdoZW4gdW5kZXIgdGhlIHJj
dSBsb2NrLgoKQXMgbG9uZyBhcyBkbWEgZmVuY2UgdXNlcnMgYXJlIGdvaW5nIHRocm91Z2ggdGhl
IEFQSSBlbnRyeSBwb2ludHMgCmluZGl2aWR1YWwgZHJpdmVycyBzaG91bGQgYmUgYWJsZSB0byBo
YW5kbGUgdGhpbmdzIGNvcnJlY3RseS4KCj4gYmVjYXVzZSBvbmNlIHlvdSBoYXZlIFRZUEVTQUZF
X0JZX1JDVSByY3VfcmVhZF9sb2NrIGRvZXNuJ3QgcHJldmVudCBhCj4gdXNlLWFmdGVyLWZyZWUg
YW55bW9yZS4gVGhlIG9ubHkgdGhpbmcgaXQgZ3VhcmFudGVlcyBpcyB0aGF0IHlvdXIKPiBmZW5j
ZSBwb2ludGVyIGtlZXBzIHBvaW50aW5nIGF0IGVpdGhlciBmcmVlZCBtZW1vcnksIG9yIGEgZmVu
Y2UsIGJ1dAoKQWdhaW4sIEkgdGhpbmsgaXQgY2FuJ3QgYmUgZnJlZWQgbWVtb3J5IGluc2lkZSB0
aGUgcmN1IGxvY2sgc2VjdGlvbi4gSXQgCmNhbiBvbmx5IGJlIHJlLWFsbG9jYXRlZCBvciB1bnVz
ZWQgb2JqZWN0LgoKT3ZlcmFsbCBpdCBsb29rcyBsaWtlIHRoZXJlIGlzIHNvbWUgY29tcGxpY2F0
aW9uIGludm9sdmluZyB0aGUgCmludGVyYWN0aW9uIGJldHdlZW4gcmN1IHByb3RlY3RlZCBwb2lu
dGVycyBhbmQgU0xBQl9UWVBFU0FGRV9CWV9SQ1UsIApyYXRoZXIgdGhhbiBhIHNpbXBsZSBzdGF0
ZW1lbnQgaTkxNSBsZWFrZWQvYnJva2Ugc29tZXRoaW5nIGZvciBvdGhlciAKZHJpdmVycy4gQW5k
IGNoYWxsZW5nZSBvZiBhdWRpdGluZyBkcml2ZXJzIHRvIG1ha2UgYWxsIHVzZSAKZG1hX2ZlbmNl
X2dldF9yY3Vfc2FmZSgpIHdoZW4gZGVhbGluZyB3aXRoIHN1Y2ggc3RvcmFnZS4KClRvIGJlIGNs
ZWFyIEkgZG9uJ3QgbWluZCBzaW1wbGlmaWNhdGlvbnMgaW4gcHJpbmNpcGxlIGFzIGxvbmcgYXMg
dGhlIApwcm9ibGVtIHN0YXRlbWVudCBpcyBhY2N1cmF0ZS4KCkFuZCBzb21lIGJlbmNobWFya3Mg
ZGVmaW5pdGVseSBuZWVkIHRvIGJlIHJhbiBoZXJlLiBBdCBsZWFzdCB0aGF0IHdhcyAKdGhlIHVz
dWFsIHRoaW5nIGluIHRoZSBwYXN0IHdoZW4gc3VjaCBsYXJnZSBjaGFuZ2VzIHdlcmUgYmVpbmcg
cHJvcG9zZWQuCgpSZWdhcmRzLAoKVHZydGtvCgo+IG5vdGhpbmcgZWxzZS4gWW91IGhhdmUgdG8g
d3JhcCB5b3VyIHJjdV9kZXJlZmVuY2UgYW5kIGNvZGUgaW50byBhCj4gc2VxbG9jayBvZiBzb21l
IGtpbmQsIGVpdGhlciBhIHJlYWwgb25lIGxpa2UgZG1hX3Jlc3YsIG9yIGFuCj4gb3Blbi1jb2Rl
ZCBvbmUgbGlrZSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIHVzZXMuIEFuZCB5ZXMgdGhlIGxhdHRl
ciBpcwo+IGEgc3BlY2lhbGl6ZWQgc2VxbG9jaywgZXhjZXB0IGl0IGZhaWxzIHRvIHByb3Blcmx5
IGRvY3VtZW50IGluCj4gY29tbWVudHMgd2hlcmUgYWxsIHRoZSByZXF1aXJlZCBiYXJyaWVycyBh
cmUuCj4gCj4gdGxkcjsgYWxsIHRoZSBjb2RlIHVzaW5nIGRtYV9mZW5jZV9nZXRfcmN1IG5lZWRz
IHRvIGJlIGFzc3VtZWQgdG8gYmUgYnJva2VuLgo+IAo+IEhlY2sgdGhpcyBpcyBmcmFnaWxlIGFu
ZCB0cmlja3kgZW5vdWdoIHRoYXQgaTkxNSBzaG90IGl0cyBvd24gbGVnIG9mZgo+IHJvdXRpbmVs
eSAodGhlcmUncyBhIGJ1Z2ZpeCBmbG9hdGluZyBhcm91bmQganVzdCBub3cpLCBzbyBub3QgZXZl
bgo+IGludGVybmFsbHkgd2UncmUgdmVyeSBnb29kIGF0IGdldHRpbmcgdGhpcyByaWdodC4KPiAK
Pj4+IElmIG9uZSBoYXMgYSBzdGFibGUgcG9pbnRlciB0byBhIGZlbmNlIGRtYV9mZW5jZV9nZXRf
cmN1IGlzIEkgdGhpbmsKPj4+IGVub3VnaCB0byBkZWFsIHdpdGggU0xBQl9UWVBFU0FGRV9CWV9S
Q1UgdXNlZCBieSBpOTE1X3JlcXVlc3QgKGFzIGRtYQo+Pj4gZmVuY2UgaXMgYSBiYXNlIG9iamVj
dCB0aGVyZSkuIFVubGVzcyB5b3UgZm91bmQgYSBidWcgaW4gcnEgZmllbGQKPj4+IHJlY3ljbGlu
Zy4gQnV0IGFjY2VzcyB0byB0aGUgZG1hIGZlbmNlIGlzIGFsbCB0aWdodGx5IGNvbnRyb2xsZWQg
c28gSQo+Pj4gZG9uJ3QgZ2V0IHdoYXQgbGVha3MuCj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggc2VyaWVz
IHN0b3BzIHVzIHVzaW5nIFNMQUJfVFlQRVNBRkVfQllfUkNVIGZvciBpOTE1X3JlcXVlc3QKPj4+
PiBhbmQsIGluc3RlYWQsIGRvZXMgYW4gUkNVLXNhZmUgc2xhYiBmcmVlIHZpYSByY3VfY2FsbCgp
LiAgVGhpcyBzaG91bGQKPj4+PiBsZXQgdXMga2VlcCBtb3N0IG9mIHRoZSBwZXJmIGJlbmVmaXRz
IG9mIHNsYWIgYWxsb2NhdGlvbiB3aGlsZSBhdm9pZGluZwo+Pj4+IHRoZSBiZWFyIHRyYXBzIGlu
aGVyZW50IGluIFNMQUJfVFlQRVNBRkVfQllfUkNVLiAgSXQgdGhlbiByZW1vdmVzCj4+Pj4gc3Vw
cG9ydAo+Pj4+IGZvciBTTEFCX1RZUEVTQUZFX0JZX1JDVSBmcm9tIGRtYV9mZW5jZSBlbnRpcmVs
eS4KPj4+Cj4+PiBBY2NvcmRpbmcgdG8gdGhlIHJhdGlvbmFsZSBiZWhpbmQgU0xBQl9UWVBFU0FG
RV9CWV9SQ1UgdHJhZGl0aW9uYWwgUkNVCj4+PiBmcmVlaW5nIGNhbiBiZSBhIGxvdCBtb3JlIGNv
c3RseSBzbyBJIHRoaW5rIHdlIG5lZWQgYSBjbGVhcgo+Pj4ganVzdGlmaWNhdGlvbiBvbiB3aHkg
dGhpcyBjaGFuZ2UgaXMgYmVpbmcgY29uc2lkZXJlZC4KPj4KPj4gVGhlIHByb2JsZW0gaXMgdGhh
dCBTTEFCX1RZUEVTQUZFX0JZX1JDVSByZXF1aXJlcyB0aGF0IHdlIHVzZSBhIHNlcXVlbmNlCj4+
IGNvdW50ZXIgdG8gbWFrZSBzdXJlIHRoYXQgd2UgZG9uJ3QgZ3JhYiB0aGUgcmVmZXJlbmNlIHRv
IGEgcmVhbGxvY2F0ZWQKPj4gZG1hX2ZlbmNlLgo+Pgo+PiBVcGRhdGluZyB0aGUgc2VxdWVuY2Ug
Y291bnRlciBldmVyeSB0aW1lIHdlIGFkZCBhIGZlbmNlIG5vdyBtZWFucyB0d28KPj4gYWRkaXRp
b25zIHdyaXRlcyBhbmQgb25lIGFkZGl0aW9uYWwgYmFycmllciBmb3IgYW4gZXh0cmVtZWx5IGhv
dCBwYXRoLgo+PiBUaGUgZXh0cmEgb3ZlcmhlYWQgb2YgUkNVIGZyZWVpbmcgaXMgY29tcGxldGVs
eSBuZWdsaWdpYmxlIGNvbXBhcmVkIHRvIHRoYXQuCj4+Cj4+IFRoZSBnb29kIG5ld3MgaXMgdGhh
dCBJIHRoaW5rIGlmIHdlIGFyZSBqdXN0IGEgYml0IG1vcmUgY2xldmVyIGFib3V0IG91cgo+PiBo
YW5kbGUgd2UgY2FuIGJvdGggYXZvaWQgdGhlIHNlcXVlbmNlIGNvdW50ZXIgYW5kIGtlZXAKPj4g
U0xBQl9UWVBFU0FGRV9CWV9SQ1UgYXJvdW5kLgo+IAo+IFlvdSBzdGlsbCBuZWVkIGEgc2VxbG9j
aywgb3Igc29tZXRoaW5nIGVsc2UgdGhhdCdzIHNlcnZpbmcgYXMgeW91cgo+IHNlcWxvY2suIGRt
YV9mZW5jZV9saXN0IGJlaGluZCBhIHNpbmdsZSBfX3JjdSBwcm90ZWN0ZWQgcG9pbnRlciwgd2l0
aAo+IGFsbCBzdWJzZXF1ZW50IGZlbmNlIHBvaW50ZXJzIF9ub3RfIGJlaW5nIHJjdSBwcm90ZWN0
ZWQgKGkuZS4gZnVsbAo+IHJlZmVyZW5jZSwgb24gZXZlcnkgY2hhbmdlIHdlIGFsbG9jYXRlIG1p
Z2h0IHdvcmsuIFdoaWNoIGlzIGEgdmVyeQo+IGZ1bm55IHdheSBvZiBpbXBsZW1lbnRpbmcgc29t
ZXRoaW5nIGxpa2UgYSBzZXFsb2NrLgo+IAo+IEFuZCB0aGF0IG9ubHkgY292ZXJzIGRtYV9yZXN2
LCB5b3UgX2hhdmVfIHRvIGRvIHRoaXMgX2V2ZXJ5d2hlcmVfIGluCj4gZXZlcnkgZHJpdmVyLiBF
eGNlcHQgaWYgeW91IGNhbiBwcm9vZiB0aGF0IHlvdXIgX19yY3UgZmVuY2UgcG9pbnRlcgo+IG9u
bHkgZXZlciBwb2ludHMgYXQgeW91ciBvd24gZHJpdmVyJ3MgZmVuY2VzLgo+IAo+IFNvIHVubGVz
cyB5b3UncmUgdm9sdW50ZWVyaW5nIHRvIGF1ZGl0IGFsbCB0aGUgZHJpdmVycywgYW5kIGNvbnN0
YW50bHkKPiByZS1hdWRpdCB0aGVtIChiZWNhdXNlIHJjdSBvbmx5IGd1YXJhbnRlZWluZyB0eXBl
LXNhZmV0eSBidXQgbm90Cj4gYWN0dWFsbHkgcHJldmVudGluZyB1c2UtYWZ0ZXItZnJlZSBpcyB2
ZXJ5IHVudXN1YWwgaW4gdGhlIGtlcm5lbCkganVzdAo+IGZpeGluZyBkbWFfcmVzdiBkb2Vzbid0
IHNvbHZlIHRoZSBwcm9ibGVtIGhlcmUgYXQgYWxsLgo+IAo+PiBCdXQgdGhpcyBuZWVkcyBtb3Jl
IGNvZGUgY2xlYW51cCBhbmQgYWJzdHJhY3RpbmcgdGhlIHNlcXVlbmNlIGNvdW50ZXIKPj4gdXNh
Z2UgaW4gYSBtYWNyby4KPiAKPiBUaGUgb3RoZXIgdGhpbmcgaXMgdGhhdCB0aGlzIGRvZXNuJ3Qg
ZXZlbiBtYWtlIHNlbnNlIGZvciBpOTE1IGFueW1vcmUuCj4gVGhlIHNvbHV0aW9uIHRvIHRoZSAi
dXNlcnNwYWNlIHdhbnRzIHRvIHN1Ym1pdCBiYXppbGxpb24gcmVxdWVzdHMiCj4gcHJvYmxlbSBp
cyBkaXJlY3QgdXNlcnNwYWNlIHN1Ym1pdC4gQ3VycmVudCBodyBkb2Vzbid0IGhhdmUgdXNlcnNw
YWNlCj4gcmluZ2J1ZmZlciwgYnV0IHdlIGhhdmUgYSBwcmV0dHkgY2xldmVyIHRyaWNrIGluIHRo
ZSB3b3JrcyB0byBtYWtlCj4gdGhpcyBwb3NzaWJsZSB3aXRoIGN1cnJlbnQgaHcsIGVzc2VudGlh
bGx5IGJ5IHN1Ym1pdHRpbmcgYSBDUyB0aGF0Cj4gbG9vcHMgb24gaXRzZWxmLCBhbmQgdGhlbiBp
bnNlcnRpbmcgYmF0Y2hlcyBpbnRvIHRoaXMgInJpbmciIGJ5Cj4gbGF0Y2hpbmcgYSBjb25kaXRp
b25hbCBicmFuY2ggaW4gdGhpcyBDUy4gSXQncyBub3QgcHJldHR5LCBidXQgaXQgZ2V0cwo+IHRo
ZSBqb2IgZG9uZSBhbmQgb3V0cmlnaHQgcmVtb3ZlcyB0aGUgbmVlZCBmb3IgcGxhaWQgbW9kZSB0
aHJvdWdocHV0Cj4gb2YgaTkxNV9yZXF1ZXN0IGRtYSBmZW5jZXMuCj4gLURhbmllbAo+IAo+Pgo+
PiBSZWdhcmRzLAo+PiBDaHJpc3RpYW4uCj4+Cj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+Cj4+PiBU
dnJ0a28KPj4+Cj4+Pj4KPj4+PiBOb3RlOiBUaGUgbGFzdCBwYXRjaCBpcyBsYWJsZWQgRE9OT1RN
RVJHRS4gIFRoaXMgd2FzIGF0IERhbmllbCBWZXR0ZXIncwo+Pj4+IHJlcXVlc3QgYXMgd2UgbWF5
IHdhbnQgdG8gbGV0IHRoaXMgYmFrZSBmb3IgYSBjb3VwbGUgcmVsZWFzZXMgYmVmb3JlIHdlCj4+
Pj4gcmlwIG91dCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIGVudGlyZWx5Lgo+Pj4+Cj4+Pj4gU2ln
bmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+Pj4+IENj
OiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+Pj4+IENjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+Pj4+IENjOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+Pj4gQ2M6IERhdmUgQWlybGllIDxhaXJs
aWVkQHJlZGhhdC5jb20+Cj4+Pj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KPj4+PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KPj4+Pgo+Pj4+IEphc29uIEVrc3RyYW5kICg1KToKPj4+PiAgICAgZHJtL2k5
MTU6IE1vdmUgaW50ZWxfZW5naW5lX2ZyZWVfcmVxdWVzdF9wb29sIHRvIGk5MTVfcmVxdWVzdC5j
Cj4+Pj4gICAgIGRybS9pOTE1OiBVc2UgYSBzaW1wbGVyIHNjaGVtZSBmb3IgY2FjaGluZyBpOTE1
X3JlcXVlc3QKPj4+PiAgICAgZHJtL2k5MTU6IFN0b3AgdXNpbmcgU0xBQl9UWVBFU0FGRV9CWV9S
Q1UgZm9yIGk5MTVfcmVxdWVzdAo+Pj4+ICAgICBkbWEtYnVmOiBTdG9wIHVzaW5nIFNMQUJfVFlQ
RVNBRkVfQllfUkNVIGluIHNlbGZ0ZXN0cwo+Pj4+ICAgICBET05PVE1FUkdFOiBkbWEtYnVmOiBH
ZXQgcmlkIG9mIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUKPj4+Pgo+Pj4+ICAgIGRyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyAgICAgICAgIHwgICA4ICstCj4+Pj4gICAgZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICAgICAgfCAgIDQgKy0KPj4+PiAgICBkcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMgICAgICB8ICAyNCArLS0tCj4+Pj4gICAgZHJp
dmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jICAgICAgICAgICAgfCAgMjcgKy0tLQo+Pj4+ICAg
IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIHwgICA0ICstCj4+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAgIDggLS0KPj4+
PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oICAgICAgICB8ICAgNCArLQo+
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgIHwgMTQ3ICsr
KysrKysrKysrKy0tLS0tLS0tLS0KPj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuaCAgICAgICB8ICAgMiAtCj4+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
bWEuYyAgICAgICAgICAgfCAgIDQgKy0KPj4+PiAgICBpbmNsdWRlL2RybS9kcm1fc3luY29iai5o
ICAgICAgICAgICAgICAgICB8ICAgNCArLQo+Pj4+ICAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmggICAgICAgICAgICAgICAgIHwgIDUwIC0tLS0tLS0tCj4+Pj4gICAgaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oICAgICAgICAgICAgICAgICAgfCAgIDQgKy0KPj4+PiAgICAxMyBmaWxlcyBjaGFu
Z2VkLCAxMTAgaW5zZXJ0aW9ucygrKSwgMTgwIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Cj4gCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
