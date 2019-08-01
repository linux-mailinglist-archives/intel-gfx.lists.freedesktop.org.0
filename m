Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2027D8B1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 11:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D744E6E43D;
	Thu,  1 Aug 2019 09:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911746E43D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 09:37:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 02:37:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="372551611"
Received: from ssauty-mobl.ger.corp.intel.com (HELO [10.249.34.96])
 ([10.249.34.96])
 by fmsmga006.fm.intel.com with ESMTP; 01 Aug 2019 02:37:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
 <20190731140733.23373-3-lionel.g.landwerlin@intel.com>
 <156460343987.15787.2880473369100261078@skylake-alporthouse-com>
 <6627af91-1f1c-c0ae-7526-25408ae86811@intel.com>
 <156464688459.2512.18044771787416479897@skylake-alporthouse-com>
 <e6f97cd6-3e0b-0a6d-fa3b-3341b0ccd555@intel.com>
 <156465133388.2512.9224045476475482021@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <33ba6b18-bc06-34fc-bf64-3064c9d62062@intel.com>
Date: Thu, 1 Aug 2019 12:37:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156465133388.2512.9224045476475482021@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: add syncobj timeline
 support
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

T24gMDEvMDgvMjAxOSAxMjoyMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDgtMDEgMTA6MDE6NDQpCj4+IE9uIDAxLzA4LzIwMTkgMTE6MDgs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDgtMDEgMDg6NDM6MjQpCj4+Pj4gT24gMzEvMDcvMjAxOSAyMzowMywgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGluICgyMDE5LTA3LTMxIDE1OjA3OjMz
KQo+Pj4+PiBJIHRoaW5rIEkgaGF2ZSBjb252aW5jZWQgbXlzZWxmIHRoYXQgd2l0aCB0aGUgc3Bs
aXQgYmV0d2VlbiB3YWl0IGJlZm9yZSwKPj4+Pj4gc2lnbmFsIGFmdGVyIGNvbWJpbmVkIHdpdGgg
dGhlIHJ1bGUgdGhhdCBzZXFubyBwb2ludCBhbG9uZyB0aGUgc3luY29iago+Pj4+PiBhcmUgbW9u
b3RvbmljLCB5b3Ugc2hvdWxkIG5vdCBiZSBhYmxlIHRvIGdlbmVyYXRlIGFuIEFCLUJBIGRlYWRs
b2NrCj4+Pj4+IGJldHdlZW4gY29uY3VycmVudCBjbGllbnRzLgo+Pj4+Pgo+Pj4+PiBFeGNlcHQg
dGhhdCB3ZSBuZWVkIHRvIGZpeHVwIGRybV9zeW5jb2JqX2FkZF9wb2ludCgpIHRvIGFjdHVhbGx5
IGFwcGx5Cj4+Pj4+IHRoYXQgcnVsZS4gVGhyb3dpbmcgYW4gZXJyb3IgYW5kIGxlYXZpbmcgdGhl
IGNsaWVudCBzdHVjayBpcyBsZXNzIHRoYW4KPj4+Pj4gaWRlYWwsIHdlIGNhbid0IGV2ZW4gcmVj
b3ZlciB3aXRoIGEgR1BVIHJlc2V0LCBhbmQgYXMgdGhleSBhcmUgbmF0aXZlCj4+Pj4+IGZlbmNl
cyB3ZSBkb24ndCBlbXBsb3kgYSBmYWlsc2FmZSB0aW1lci4KPj4+PiBVbmZvcnR1bmF0ZWx5IHdl
J3JlIG5vdCB0aGUgb25seSB1c2VyIG9mIGFkZF9wb2ludCgpIGFuZCBhbWRncHUgZG9lc24ndAo+
Pj4+IHdhbnQgaXQgdG8gZmFpbC4KPj4+IEl0J3MgZGFuZ2Vyb3VzbHkgZXhwb3NpbmcgdGhlIGRl
YWRsb2NrIGZyb20gaW5jb3JyZWN0IHNlcW5vIG9yZGVyaW5nIHRvCj4+PiB1c2Vyc3BhY2UuIFdl
IHNob3VsZCBiZSBhYmxlIHRvIGhpdCB0aGF0IERSTV9FUlJPUigpIGluIHRlc3RpbmcsIGFuZCBi
ZQo+Pj4gYWJsZSB0byBkZXRlY3QgdGhlIG91dC1vZi1zZXF1ZW5jZSB0aW1lbGluZS4KPj4+Cj4+
Pj4gQmVzdCBJIGNhbiBjb21lIHVwIHdpdGggaXMgdGFrZSB0aGUgc3luY29iaiBsb2NrIHdoZW4g
c2lnbmFsaW5nIGluCj4+Pj4gZ2V0X3RpbWVsaW5lX2ZlbmNlX2FycmF5KCkgZG8gdGhlIGNoZWNr
IHRoZXJlLCB1bmxvY2sgaW4gX19mcmVlX2ZlbmNlX2FycmF5Lgo+Pj4gSSB0aGluayB0aGUgaW50
ZXJtZWRpYXRlIHN0ZXAgaXMgYSAic2FmZSIgdmVyc2lvbiBvZiBhZGRfcG9pbnQgdGhhdAo+Pj4g
ZG9lc24ndCBsZWF2ZSB0aGUgdGltZWxpbmUgYnJva2VuLiBUaGF0IHN0aWxsIGxlYXZlcyBhIGds
aXRjaCB2aXNpYmxlIHRvCj4+PiB1c2Vyc3BhY2UsIGJ1dCBpdCBzaG91bGQgbm90IGRlYWRsb2Nr
Lgo+Pgo+PiBSaWdodCwgc291bmRzIGRvYWJsZS4gV2hhdCBoYXBwZW5zIGluIGV4ZWNidWYgYWZ0
ZXIgYWRkX3BvaW50KCkgZmFpbHM/Cj4+Cj4+IFdlJ3ZlIGFscmVhZHkgaGFuZGVkIHRoZSByZXF1
ZXN0IHRvIHRoZSBzY2hlZHVsZXIgYW5kIHBvdGVudGlhbGx5IGl0Cj4+IG1pZ2h0IGJlIHJ1bm5p
bmcgYWxyZWFkeS4KPiBSaWdodCwgYXQgcHJlc2VudCB3ZSd2ZSBhbHJlYWR5IHN1Ym1pdHRlZCB0
aGUgcmVxdWVzdCwgc28gdGhlIGJhdGNoIHdpbGwKPiBiZSBydW4gYW5kIGZlbmNlIHdpbGwgYmUg
c2lnbmFsZWQuIFRoZSBmYWlsdXJlIHRvIGFkZCB0byBpdCB0aGUKPiB0aW1lbGluZSBtZWFucyB0
aGF0IHNvbWVvbmUgZWxzZSBhbHJlYWR5IHN1Ym1pdHRlZCBhIGxhdGVyIGZlbmNlIGFuZAo+IHNv
bWUgdGhpcmQgcGFydHkgaXMgdXNpbmcgdGhhdCBzeW5jcHQgaW5zdGVhZCBvZiBvdXJzIGZvciB0
aGVpcgo+IGRlcGVuZGVuY3kuIFNvIHRoYXQgdGhpcmQgcGFydHkgd2lsbCBiZSBkZWxheWVkLCBi
dXQgc28gbG9uZyBhcyB0aGV5IGtlcHQKPiB0aGVpciBkZXBlbmRlbmNpZXMgaW4gb3JkZXIgaXQg
c2hvdWxkIGp1c3QgYmUgYSBkZWxheS4KCgpCdXQgc2hvdWxkIHdlIHJldHVybiBhbiBlcnJvciB0
byB1c2Vyc3BhY2U/CgoKLUxpb25lbAoKCj4KPiBUaGUgcHJvYmxlbSBjb21lcyBpbnRvIHBsYXkg
aWYgd2UgZ28gYWhlYWQgYW5kIGluc2VydCBvdXIgZmVuY2UgaW50byB0aGUKPiBkbWFfZmVuY2Vf
Y2hhaW4gb3V0IG9mIG9yZGVyLCBicmVha2luZyBhbGwgdGhlIG1vbm90b25pYyBndWFyYW50ZWVz
IGFuZAo+IGZsaXBwaW5nIHRoZSBvcmRlciBvZiB0aGUgZmVuY2VzLiAoVGhlIGVxdWl2YWxlbnQg
dG8gdGFraW5nIG11dGV4ZXMgb3V0Cj4gb2Ygb3JkZXIuKQo+Cj4+PiBUaGUgd2F5IEkgd2FzIGxv
b2tpbmcgYXQgaXQgd2FzIHRvIHJlc2VydmUgYSBwbGFjZWhvbGRlciBzeW5jcHQgYmVmb3JlCj4+
PiBidWlsZGluZyB0aGUgcmVxdWVzdCBhbmQgYWxsb3cgcmVwbGFjaW5nIHRoZSBwbGFjZWhvbGRl
ciBhZnRlcndhcmRzLgo+Pgo+PiBUaGF0IHNvdW5kcyBmYWlybHkgdHJpY2t5IHRvIGdldCByaWdo
dCA6KAo+IEludmFzaXZlLCB5ZWFoLCB0dXJucyBvdXQgb25lIG5lZWRzIHRvIHN0YXJ0IHdhbGtp
bmcgdGhlIGZlbmNlIGNoYWluCj4gbW9yZSBjYXJlZnVsbHkuIFRoZSBhY3R1YWwgcGxhY2Vob2xk
ZXIgZmVuY2UgaXMgcHJldHR5IHJ1biBvZiB0aGUgbWlsbAo+IGFzIGZhciBhcyBkbWEtZmVuY2Uq
LmMgZ29lcywgd2hpY2ggaXMgc2F5Li4uCj4gICAKPj4gVGhlIGZlbmNlIHN0dWZmIGlzIGFscmVh
ZHkgZnVsbCBvZiBtYWdpYy4KPiBJdCdzIGZ1bGwgb2YgbWFnaWMuCj4gLUNocmlzCj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
