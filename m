Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE38113F4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 09:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD894890B8;
	Thu,  2 May 2019 07:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054F6890B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 07:13:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 00:13:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,420,1549958400"; d="scan'208";a="169831077"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 00:13:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Summers\, Stuart" <stuart.summers@intel.com>, "Ceraolo Spurio\,
 Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <970d6582f0c5a02c73fabd11631ebfec192b387e.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-6-stuart.summers@intel.com>
 <c317779d-6a9e-1959-4aa4-bac720eb8ef2@intel.com>
 <4991fb9bebabff1f1abd194e4fe688fad35feb7b.camel@intel.com>
 <7584219d-2cea-14c1-abec-555d49910c91@intel.com>
 <970d6582f0c5a02c73fabd11631ebfec192b387e.camel@intel.com>
Date: Thu, 02 May 2019 10:15:43 +0300
Message-ID: <87muk5pbs0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Remove inline from sseu
 helper functions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwMSBNYXkgMjAxOSwgIlN1bW1lcnMsIFN0dWFydCIgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCAyMDE5LTA1LTAxIGF0IDE0OjE5IC0wNzAwLCBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+PiAKPj4gT24gNS8xLzE5IDI6MDQgUE0sIFN1bW1l
cnMsIFN0dWFydCB3cm90ZToKPj4gPiBPbiBXZWQsIDIwMTktMDUtMDEgYXQgMTM6MDQgLTA3MDAs
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+ID4gPiBDYW4geW91IGVsYWJvcmF0ZSBh
IGJpdCBtb3JlIG9uIHdoYXQncyB0aGUgcmF0aW9uYWxlIGZvciB0aGlzPyBkbwo+PiA+ID4geW91
IGp1c3Qgd2FudCB0byBhdm9pZCBoYXZpbmcgdG9vIG1hbnkgaW5saW5lcyBzaW5jZSB0aGUgcGF0
aHMKPj4gPiA+IHRoZXkncmUgdXNlZCBpbiBhcmUgbm90IGNyaXRpY2FsLCBvciBkbyB5b3UgaGF2
ZSBzb21lIG1vcmUKPj4gPiA+IGZ1bmN0aW9uYWwgcmVhc29uPyAgVGhpcyBpcyBub3QgYSBjcml0
aWMgdG8gdGhlIHBhdGNoLCBJIGp1c3QKPj4gPiA+IHdhbnQgdG8gdW5kZXJzdGFuZCB3aGVyZSB5
b3UncmUgY29taW5nIGZyb20gOykKPj4gPiAKPj4gPiBUaGlzIHdhcyBhIHJlcXVlc3QgZnJvbSBK
YW5pIE5pa3VsYSBpbiBhIHByZXZpb3VzIHNlcmllcyB1cGRhdGUuIEkKPj4gPiBkb24ndCBoYXZl
IGEgc3Ryb25nIHByZWZlcmVuY2UgZWl0aGVyIHdheSBwZXJzb25hbGx5LiBJZiB5b3UgZG9uJ3QK
Pj4gPiBoYXZlIGFueSBtYWpvciBjb25jZXJucywgSSdkIHByZWZlciB0byBrZWVwIHRoZSBzZXJp
ZXMgYXMtaXMgdG8KPj4gPiBwcmV2ZW50IHRvbyBtdWNoIHRocmFzaCBoZXJlLCBidXQgbGV0IG1l
IGtub3cuCj4+ID4gCj4+IAo+PiBObyBjb25jZXJucywganVzdCBwbGVhc2UgdXBkYXRlIHRoZSBj
b21taXQgbWVzc2FnZSB0byBleHBsYWluIHRoYXQKPj4gd2UncmUgbW92aW5nIHRoZW0gYmVjYXVz
ZSB0aGVyZSBpcyBubyBuZWVkIGZvciB0aGVtIHRvIGJlIGlubGluZQo+PiBzaW5jZSB0aGV5J3Jl
IG5vdCBvbiBhIGNyaXRpY2FsIHBhdGggd2hlcmUgd2UgbmVlZCBwcmVmb3JtYW5jZS4KPgo+IFNv
dW5kcyBncmVhdC4KCkkndmUgYmVjb21lIGNyaXRpY2FsIG9mIHN1cGVyZmx1b3VzIGlubGluZXMu
IFRoZXkgYnJlYWsgdGhlIGFic3RyYWN0aW9uCmJ5IGV4cG9zaW5nIHRoZSBpbnRlcm5hbHMgaW4g
dGhlIGhlYWRlciwgYW5kIG1ha2UgdGhlIGludGVyZGVwZW5kZW5jaWVzCm9mIGhlYWRlcnMgaGFy
ZGVyIHRvIHJlc29sdmUuCgpBcyB0aGUgZHJpdmVyIGtlZXBzIGdyb3dpbmcgYW5kIG1vcmUgcGVv
cGxlIGNvbnRyaWJ1dGUgdG8gaXQsIEkgdGhpbmsgd2UKbmVlZCB0byBwYXkgbW9yZSBhdHRlbnRp
b24gb24gaG93IHdlIHN0cnVjdHVyZSB0aGUgc291cmNlLiBUbyB0aGlzIGVuZAp3ZSd2ZSBhZGRl
ZCBuZXcgZ3QvIHN1YmRpciwgYXJlIGFib3V0IHRvIGFkZCBnZW0vIGFuZCBsaWtlbHkgZGlzcGxh
eS8KdG9vIGJlZm9yZSBsb25nLCBhbmQgd2UndmUgc2lnbmlmaWNhbnRseSBzcGxpdCBvZmYgdGhl
IG1vbnN0ZXIKaTkxNV9kcnYuaCBhbmQgaW50ZWxfZHJ2LmggaGVhZGVycy4KCk9idmlvdXNseSBp
bmxpbmVzIGhhdmUgdGhlaXIgcGxhY2UgYW5kIHB1cnBvc2UsIGJ1dCBJIHRoaW5rIHdlIHNwcmlu
a2xlCnRoZW0gYSBiaXQgdG9vIGVhZ2VybHkgd2l0aG91dCBwYXlpbmcgYXR0ZW50aW9uLgoKSSBs
aWtlIHRoZSBwYXRjaC4KCkFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
