Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA54E9648
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 07:10:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D0A6E876;
	Wed, 30 Oct 2019 06:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B392B6E876
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 06:10:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 23:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,246,1569308400"; d="scan'208";a="211258658"
Received: from nambar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.56.203])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2019 23:10:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <34a277b3-820b-f077-b7e8-b4d633f30576@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190808014423.20377-1-daniele.ceraolospurio@intel.com>
 <87ftjbaor7.fsf@intel.com> <34a277b3-820b-f077-b7e8-b4d633f30576@intel.com>
Date: Wed, 30 Oct 2019 08:11:08 +0200
Message-ID: <87o8xykbk3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 0/3] Display uncore
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyOSBPY3QgMjAxOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gT24gMTAvMjkvMTkgMjoyMyBBTSwgSmFuaSBO
aWt1bGEgd3JvdGU6Cj4+IE9uIFdlZCwgMDcgQXVnIDIwMTksIERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+Pj4gSSd2ZSBiZWVu
IHRyeWluZyB0byBpZGVudGlmeSBNTUlPIHJhbmdlcyB0byBjbGVhcmx5IGRlZmluZSB3aGF0IGJl
bG9uZ3MKPj4+IHRvIGRpc3BsYXlfdW5jb3JlIHRvIGRvIGEgY2hlY2sgb24gYWNjZXNzLCBidXQg
dGhlcmUgYXJlIGxvdHMgb2YKPj4+IGV4Y2VwdGlvbnMgYW5kIGRpZmZlcmVuY2VzIGFjcm9zcyBn
ZW5zICh3aXRoIGEgZmV3IG1vcmUgY29taW5nIHdpdGggVEdMKSwKPj4+IHNvIEkgZG9uJ3QgdGhp
bmsgdGhhdCdzIGEgdmlhYmxlIHdheS4gVGhlIGFsdGVybmF0aXZlIG9wdGlvbiBpbXBsZW1lbnRl
ZAo+Pj4gaGVyZSBpcyB0byBkaWZmZXJlbnRpYXRlIHRoZSByZWdpc3RlciBieSB0eXBlLCB3aGlj
aCBzaG91bGQgZW5zdXJlIHdlCj4+PiBuZXZlciBtaXggdGhlbSB1cCwgYnV0IGF0IHRoZSBjb3N0
IG9mIGEgbW9yZSBjb21wbGV4IHRyYW5zaXRpb24uCj4+Pgo+Pj4gVGhvdWdodHM/IEknbSB2ZXJ5
IG9wZW4gdG8gKGFuZCBJIGFjdHVhbGx5IGhvcGUgZm9yKSBiZXR0ZXIgaWRlYXMuCj4+IAo+PiBI
YXMgdGhlcmUgYmVlbiBhbnkgcHJvZ3Jlc3MgaW4gdGhpcyBmcm9udCBsYXRlbHksIG9yIGhhdmUg
SSBqdXN0IG1pc3NlZAo+PiBpdD8KPj4gCj4KPiBObyBwcm9ncmVzcyBvbiB0aGUgTUwuIEkndmUg
YmVlbiBsb2NhbGx5IHRyeWluZyBvbiBhbmQgb2ZmIHRvIGJyZWFrIAo+IGk5MTVfcmVnLmggaW4g
bW9yZSBtYW5hZ2VhYmxlIGNodW5rcyB0byBiZSBhYmxlIHRvIG1vcmUgZWFzaWx5IG1hcmsgdGhl
IAo+IGRpc3BsYXkgcmVnaXN0ZXJzLCBidXQgSSBrZWVwIGZpbmRpbmcgc3BlY2lhbCBjYXNlcywg
ZXNwZWNpYWxseSBhcm91bmQgCj4gVkxWL0NIVi4gSSdsbCB0cnkgdG8gcHJpb3JpdGl6ZSB0aGlz
IHRhc2sgbW9yZSBhbmQgZ2V0IHNvbWV0aGluZyBvdXQsIGF0IAo+IGxlYXN0IGFzIGEgUkZDLgoK
T2theS4gQXMgeW91IHNhdywgSSBkZWNpZGVkIHRvIHN0YXJ0IG1vdmluZyBmb3J3YXJkIHdpdGgg
ZGlzcGxheSB1bmNvcmUKaGVscGVycyBbMV0uIFdlJ2xsIG5lZWQgdGhlbSBhbnl3YXksIGFuZCB3
ZSBjYW4gYWRkIHRoZSBkaXNwbGF5IGNoZWNrcwp0aGVyZSBhZnRlcndhcmRzLiBJZiBhbnl0aGlu
ZywgdGhleSBzaG91bGQgbWFrZSB5b3VyIGpvYiBlYXNpZXIsIG5vdApoYXJkZXIuCgpCUiwKSmFu
aS4KCgpbMV0gaHR0cDovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAx
OTEwMjkxMDUxNTYuMjE2NTgtMS1qYW5pLm5pa3VsYUBpbnRlbC5jb20KCi0tIApKYW5pIE5pa3Vs
YSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
