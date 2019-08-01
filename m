Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E57297DF1C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCCD6E6F1;
	Thu,  1 Aug 2019 15:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45E36E6F1
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:29:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 08:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,334,1559545200"; d="scan'208";a="184276288"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 08:29:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-3-chris@chris-wilson.co.uk>
 <7a17fe1a-4972-658a-3e9d-550ceb788201@linux.intel.com>
 <0f4b8c49-ffe3-87a5-6abb-dffa6f9fef8b@linux.intel.com>
 <156464886350.2512.13201380958664478117@skylake-alporthouse-com>
 <340df1ef-0d75-131d-cc39-b3d9edb9c3ec@linux.intel.com>
 <156465702635.2512.9932000772655773495@skylake-alporthouse-com>
 <156465803327.5400.3625959459348155022@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1fcdbd8b-acf4-5493-24b5-16eca782d997@linux.intel.com>
Date: Thu, 1 Aug 2019 16:29:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156465803327.5400.3625959459348155022@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915: Remove lrc default desc
 from GEM context
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

Ck9uIDAxLzA4LzIwMTkgMTI6MTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOC0wMSAxMTo1NzowNikKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0wOC0wMSAwOTo1MzoxNSkKPj4+IFdlIGNvdWxkIHN0b3JlIGl0IGluIGNlIHRoZW4uIFdl
IGFscmVhZHkgaGF2ZSB3ZWxsIGRlZmluZWQgY29udHJvbAo+Pj4gcG9pbnRzIGZvciB3aGVuIHZt
IGNoYW5nZXMgd2hlbiBhbGwgYXJlIHVwZGF0ZWQuCj4+Cj4+IFdlIGFyZSBzdG9yaW5nIGl0IGlu
IGNlOyBpdCdzIG5vdCBsaWtlIHdlIHJlY29tcHV0ZSBpdCBhbGwgdGhhdCBvZnRlbiwKPj4gYW5k
IHdoZW4gd2UgZG8gaXQncyBiZWNhdXNlIHdlIGhhdmUgcmVib3VuZCB0aGUgdm1hLgo+Pgo+Pj4g
SWYgZG9uZSBsaWtlIHRoaXMgdGhlbiBpdCBsb29rcyBsaWtlIGFzc2lnbmluZyBjdHgtPmh3X2lk
IGNvdWxkIGFsc28gZG8KPj4+IHRoZSBkZWZhdWx0X2Rlc2MgdXBkYXRlLCBzbyB0aGF0IHdlIGNh
biBhdm9pZCBldmVuIG1vcmUgd29yayBkb25lIGF0IHBpbgo+Pj4gdGltZS4KPj4KPj4gV2hhdCBj
dHgtPmh3X2lkPyBZb3UgYXJlIGltYWdpbmluZyB0aGluZ3MgYWdhaW4gOi1wCj4+Cj4+IFJlbWVt
YmVyIHRoYXQgd2Ugb25seSBkbyB0aGlzIG9uIGZpcnN0IHBpbiBmcm9tIGlkbGUsIG5vdCBldmVy
eSBwaW4uCj4gCj4gRndpdywgSSBxdWlja2x5IGxvb2tlZCBhdCBvbmx5IGRvaW5nIGl0IGlmIHRo
ZSB2bWEgaXMgcmVib3VuZCwgYnV0Cj4gdGhhdCdzIG1vdmUgYnJhbmNoZXMganVzdCB0byBzYXZl
IGEgY291cGxlLiBUaGUgbG93IGZyZXF1ZW5jeSBhdCB3aGljaAo+IHdlIGhhdmUgdG8gYWN0dWFs
bHkgY29tcHV0ZSB0aGlzICh3YWxrIGEgZmV3IG1vcmUgYnJhbmNoZXMgaW5zaWRlIGFuCj4gYWxy
ZWFkeSBicmFuY2h5IGNvbnR4dF9waW4pIGRvZXNuJ3Qgc2VlbSB0byBqdXN0aWZ5IHRoZSBleHRy
YSBzdG9yYWdlIGZvcgo+IG1lLiBJdCdzIG5vdCBsaWtlIHdlIGFyZSByZWNvbXB1dGluZyBscmNf
ZGVzYyBvbiBldmVyeSBzdWJtaXQgYXMgaXQgb25jZQo+IHdhcy4KCk9uIGV2ZXJ5IHN1Ym1pdCBp
ZiBsYXN0IHJlcXVlc3QgZ290IHJldGlyZWQgaW4gdGhlIG1lYW50aW1lLCBubywgZm9yIAppbnN0
YW5jZSBidXJzdHkgbG9hZHM/IFllYWggaXQgaXMgdmVyeSBpbmNvbnNlcXVlbnRpYWwgYnV0IGF0
IHNvbWUgcG9pbnQgCndlIG1hZGUgYW4gZWZmb3J0IHRvIGNhY2hlIGFzIG11Y2ggYXMgcG9zc2li
bGUgd2hhdCBpcyBpbnZhcmlhbnQgc28gaXQgCnNhZGRlbnMgbWUgYSBiaXQgdG8gcmVtb3ZlIHRo
YXQuCgpGb3IgaW5zdGFuY2UgSWNlbGFrZSBlbmdpbmUgZGVwZW5kZW50IHN0dWZmIHNuZWFrZWQg
aW50byAKaW50ZWxfbHJjLmMvbHJjX2Rlc3JpcHRvcnMgYXQgc29tZSBwb2ludCwgd2hpY2ggaXMg
YWxzbyBhZ2FpbnN0IHRoZSAKc3Bpcml0IG9mIGNhY2hpbmcuIElmIHdlIHdlcmUgdG8gbW92ZSB0
aGUgY2FjaGVkIHZhbHVlIGluIGNlIHRoZW4gd2UgCndvdWxkIGJlIGFibGUgdG8gcmVtb3ZlIHRo
YXQgYW5kIGhhdmUgaXQgb25jZSBhZ2FpbiBtaW5pbWFsIGluIHRoZXJlLgoKTm90IG9ubHkganVz
dCBtaW5pbWFsLCBidXQgbm90IHNlcGFyYXRlZCBpbiB0d28gc2VwYXJhdGUgcGxhY2VzLiBJIGd1
ZXNzIAp0aGlzIHBhdGNoIGltcHJvdmVzIHRoaW5ncyBpbiB0aGF0IHJlc3BlY3QgLSBjb25zb2xp
ZGF0ZXMgdGhlIGxyY19kZXNjIApjb21wdXRhdGlvbiBvbmNlIGFnYWluLgoKSSBkaWQgbm90IGdl
dCB0aGUgcGFydCBhYm91dCBWTUEgcmUtYmluZGluZy4gSSBkaWQgbm90IHN1Z2dlc3QgdG8gbW92
ZSAKdGhlIGxyY2Egb2Zmc2V0IGludG8gY2FjaGUgYXMgd2VsbC4gSSB3YXMganVzdCB0aGlua2lu
ZyBhYm91dCB0aGUgZ2VuLCAKZW5naW5lIGFuZCB2bSBkZXBlbmRlbnQgYml0cyBjb3VsZCBuYXR1
cmFsbHkgZ28gaW50byAKaTkxNV9nZW1fY29udGV4dC5jL2RlZmF1bHRfZGVzY190ZW1wbGF0ZS4g
SnVzdCBuZWVkIHRvIHRha2UgKGVuZ2luZSwgCmh3X2lkLCB2bSkuCgpBbmQgdmlydHVhbCBlbmdp
bmUgd291bGQgaGF2ZSB0byByZS1jb21wdXRlIGl0IHdoZW4gbW92aW5nIGVuZ2luZXMuIEhtLi4g
CndlIGRvbid0IHNlZW0gdG8gZG8gdGhhdD8gT25seSB3aGVuIHBpbm5pbmcgd2Ugc2V0IGl0IHVw
IGJhc2VkIG9uIApzaWJsaW5nWzBdIHNvIGhvdyBpdCBhbGwgd29ya3M/IFdlIGRvbid0IHJlLXBp
biB3aGVuIG1vdmluZyBlbmdpbmUgSSAKdGhvdWdodC4KCkFzaWRlIHRoYXQsIGlmIHlvdSBhcmUg
c3RpbGwgbm90IGNvbnZpbmNlZCBteSBhcmd1bWVudCBtYWtlcyBzZW5zZSwgeW91IApjYW4gaGF2
ZSBteSBhY2suCgpSZWdhcmRzLAoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
