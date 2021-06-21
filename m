Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 554693AE9CC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 15:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13886E07D;
	Mon, 21 Jun 2021 13:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57406E07D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 13:12:30 +0000 (UTC)
IronPort-SDR: 7eXPy0TFP5R8fZeJu9r1YBO9Z2RuL89rnLjaQvzp9r71GxJvT4+VGzUEFMckO3Ix8mvHxNpndZ
 a3cGSVWCJDjQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="205015096"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="205015096"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:12:30 -0700
IronPort-SDR: sCIBemryZysXfDWg04HnS+GUWhLp4/aT79UvdFbK7A3RiOdIqj7EVlyFxnPrQGNXxWQfSRBlyb
 +qRG+XmmHq2w==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="405955827"
Received: from bchikkop-mobl.ger.corp.intel.com (HELO [10.213.238.150])
 ([10.213.238.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:12:29 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
 <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
 <74c6afe5-a76f-1895-d37b-d738978e2804@linux.intel.com>
 <1d7486eb-27df-17cd-e4a6-3ac45ecf7a36@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7c012b08-eebc-ceba-7fa7-be2a0a830b25@linux.intel.com>
Date: Mon, 21 Jun 2021 14:12:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <1d7486eb-27df-17cd-e4a6-3ac45ecf7a36@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Do not allow setting ring
 size for legacy ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIxLzA2LzIwMjEgMTQ6MDcsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IE9wIDIxLTA2
LTIwMjEgb20gMTQ6NTIgc2NocmVlZiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMjEvMDYvMjAy
MSAxMzowOCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pgo+Pj4gSSBoYWQgc29tZSBxdWVzdGlv
bnMgb24gdGhlIHRyeWJvdCBtYWlsaW5nIGxpc3QsIGxldCBtZSBjb3B5JnBhc3RlLi4KPj4+Cj4+
PiBPbiAyMS8wNi8yMDIxIDEyOjQxLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+PiBJdCBk
b2Vzbid0IHdvcmsgZm9yIGxlZ2FjeSByaW5nIHN1Ym1pc3Npb24sIGFuZCBpcyBpbiB0aGUgYmVz
dCBjYXNlCj4+Pj4gaWdub3JlZC4KPj4+Cj4+PiBMb29rcyByZWplY3RlZCBpbnN0ZWFkIG9mIGln
bm9yZWQ6Cj4+Pgo+Pj4gc3RhdGljIGludCBzZXRfcmluZ3NpemUoc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKmN0eCwKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1
X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQo+Pj4gewo+Pj4gIMKgwqDCoMKgIGlmICghSEFTX0xP
R0lDQUxfUklOR19DT05URVhUUyhjdHgtPmk5MTUpKQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9ERVY7Cj4+Pj4KPj4+PiBJbiB0aGUgd29yc3QgY2FzZSB3ZSBlbmQgdXAgZnJlZWlu
ZyBlbmdpbmUtPmxlZ2FjeS5yaW5nIGZvciBhbGwgb3RoZXIKPj4+PiBhY3RpdmUgZW5naW5lcywg
cmVzdWx0aW5nIGluIGEgdXNlLWFmdGVyLWZyZWUuCj4+Pgo+Pj4gV29yc3QgY2FzZSBpcyBjbG9u
aW5nIGJlY2F1c2UgcmluZ19jb250ZXh0X2FsbG9jIGlzIG5vdCB0YWtpbmcgYSByZWZlcmVuY2Ug
dG8gZW5naW5lLT5sZWdhY3kucmluZywgb3Igc29tZXRoaW5nIGVsc2U/Cj4+Cj4+IE5vIGNhbid0
IGJlIHRoYXQsIGl0IHdhcyBteSBpbmNvbXBsZXRlIGFuYWx5c2lzIGxhc3Qgd2Vlay4gU2luY2Ug
cmluZ19jb250ZXh0X2Rlc3Ryb3kgZG9lcyBub3QgYWN0dWFsbHkgZnJlZSB0aGUgbGVnYWN5IHJp
bmcgSSBkb24ndCBzZWUgYW55IHVzZSBhZnRlciBmcmVlIHBhdGhzLgo+Pgo+PiBSZWdhcmRzLAo+
IAo+IEhtbSwgaXQgZ2V0cyBzdHVjayBpbnNpZGUgaW50ZWxfY29udGV4dF9zZXRfcmluZ19zaXpl
IHdoZW4gY2xvbmluZyBlbmdpbmVzLi4KPiAKPiBJIGd1ZXNzIGl0IGNhbid0IGhhcHBlbiBpbiBw
cmFjdGljZSwganVzdCB0aGUgY29kZSBpbnRyb2R1Y2VzIHRoZSByYWNlIGJ5IHByZWFsbG9jYXRp
bmcKPiBpbnNpZGUgaW50ZWxfY29udGV4dF9sb2NrX3Bpbm5lZCgpLi4KCiJUaGUgY29kZSIgYmVp
bmcgdGhlIHJlc3Qgb2YgeW91ciBzZXJpZXM/IEhhdmVuJ3QgbG9va2VkIGluIHRoZXJlLCBidXQg
CmNhbid0IGZpbmQgYSBwcm9ibGVtIGluIHVwc3RyZWFtLiBTaW5jZSBhcyB5b3Ugc2F5LCBjb3B5
X3Jpbmdfc2l6ZSB3aWxsIApydW4gYnV0IGludGVsX2NvbnRleHRfc2V0X3Jpbmdfc2l6ZSB3aWxs
IG5vdCBmcmVlLWFuZC1hbGxvY2F0ZSBvbGQvbmV3IApyaW5nIHNpbmNlIGNsb25lZCBjb250ZXh0
IGRvZXMgbm90IGhhdmUgYSBzdGF0ZSBhbGxvY2F0ZWQgeWV0LgoKUmVnYXJkcywKClR2cnRrbwoK
PiBjb3B5X3Jpbmdfc2l6ZSgpIHNob3VsZCBvbmx5IGJlIGNhbGxlZCBmb3IgSEFTX0xPR0lDQUxf
UklOR19DT05URVhUUygpLgo+IEkgZ3Vlc3MgdGhhdCBtYWtlcyB0aGlzIHBhdGNoIG9ic29sZXRl
LiBJdCBjYW4gc2FmZWx5IGJlIGRyb3BwZWQgZnJvbSB0aGUgc2VyaWVzLAo+IEkgdGhpbmsgSSBz
aG91bGQgcHJvYmFibHkgaW50cm9kdWNlIGEgY2hlY2sgdG8gb25seSBzZXQgdGhlIHNpemUgd2hl
biBIQVNfTE9HSUNBTF9SSU5HX0NPTlRFWFRTCj4gZXZhbHVhdGVzIHRvIHRydWUsIGJ1dCB0aGF0
IHdvdWxkbid0IGJsb2NrIHRoZSByZXN0IG9mIHRoaXMgc2VyaWVzLgo+IAo+IH5NYWFydGVuCj4g
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
