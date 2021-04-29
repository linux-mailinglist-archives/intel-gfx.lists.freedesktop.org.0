Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A8B36E6AB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 10:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADF06EDA6;
	Thu, 29 Apr 2021 08:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C80E6EDA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 08:14:12 +0000 (UTC)
IronPort-SDR: ua+5cV3uFPpmwrVeVvhYpJBb5Zgq0Db1exnwYHe5F0iXh+3P9YJsRAyFg1A4Ih6+7A2eJx9v/7
 8mIDgrGllpMA==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="184086399"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="184086399"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:13:58 -0700
IronPort-SDR: DTVj368UwGsLVsDXmk7DqEWN0j7NANEoM+uvBPlIur1jvNRb9rQ134hCqBVCb1C1y7Ka24PXOF
 Pp4CKh3mi4JQ==
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="430732645"
Received: from auchter-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:13:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mario =?utf-8?Q?H=C3=BCttel?= <mario.huettel@gmx.net>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <1bef246953fedcc0a028df144cb7dfbb8308169c.camel@gmx.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
 <87a6pl5ch0.fsf@intel.com>
 <1bef246953fedcc0a028df144cb7dfbb8308169c.camel@gmx.net>
Date: Thu, 29 Apr 2021 11:13:53 +0300
Message-ID: <87o8dx33um.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] BUG in i915/i915_pci.c, commit fe0f1e3
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyOCBBcHIgMjAyMSwgTWFyaW8gSMO8dHRlbCA8bWFyaW8uaHVldHRlbEBnbXgubmV0
PiB3cm90ZToKPiBIaSwKPgo+IHllcy4gVGhlIGJ1ZyBpcyBzdGlsbCBwcmVzZW50IHdpdGggYSBy
ZWNlbnQga2VybmVsLgo+IEkgZ290IHRoZSB0aXAgZnJvbSBJbXJlIERlYWsgdG8gdHJ5IG91dAo+
Cj4gNzk2Mjg5M2VjYjg1MyAoImRybS9pOTE1OiBEaXNhYmxlIHJ1bnRpbWUgcG93ZXIgbWFuYWdl
bWVudCBkdXJpbmcKPiBzaHV0ZG93biIpCj4KPiBUaGlzIGZpeGVzIHRoZSBpc3N1ZSBmb3IgbWUu
IERvIEkgc3RpbGwgaGF2ZSB0byBmaWxlIGEgYnVnIHJlcG9ydCBvcgo+IHdpbGwgdGhpcyBwYXRj
aCBldmVudHVhbGx5IGZpbmQgaXRzIHdheSB1cHN0cmVhbT8KClRoYXQncyBpbiBMaW51cycgdXBz
dHJlYW0gbm93LCBidXQgbm90IGluIGFueSByZWxlYXNlIHlldC4KCkltcmUsIFZpbGxlLCBzaG91
bGQgd2UgYXNrIGZvciBhIENjOiBzdGFibGU/CgpCUiwKSmFuaS4KCgo+Cj4gVGhhbmtzCj4gTWFy
aW8KPgo+IE9uIE1vbiwgMjAyMS0wNC0yNiBhdCAxNzo0NyArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4+IE9uIFNhdCwgMTMgTWFyIDIwMjEsIE1hcmlvIEjDvHR0ZWwgPG1hcmlvLmh1ZXR0ZWxA
Z214Lm5ldD4gd3JvdGU6Cj4+ID4gSGVsbG8sCj4+ID4KPj4gPiBJIHdhbnQgdG8gcmVwb3J0IGEg
YnVnLiBJIGhhdmUgYSBQQyB3aXRoIEludGVsIGk3LTY3MDBLIHByb2Nlc3Nvcgo+PiA+ICh3aXRo
Cj4+ID4gaW50ZWdyYXRlZCBncmFwaGljcykgYW5kIGFuIEFzUm9jayBGYXRhbDF0eSBaMTcwIEdh
bWluZyBLNgo+PiA+IG1haW5ib2FyZC4gSQo+PiA+IHVzZSB0aGUgQ1BVJ3MgaW50ZWdyYXRlZCBn
cmFwaGljcy4KPj4gPiBNeSBzeXN0ZW0gaXMgQXJjaGxpbnV4IHdpdGggS2VybmVsIHY1LjExLjYu
Cj4+ID4KPj4gPiBVc2luZyB0aGlzIHNldHVwLCBteSBQQyB3b3JrcyBub3JtYWxseS4gSG93ZXZl
ciwgd2hlbiBJIHNodXQgaXQKPj4gPiBkb3duLAo+PiA+IHRoZSBwb3dlciBpcyBub3QgY3V0LiBG
YW5zIGFuZCBMRURzIGtlZXAgc3Bpbm5pbmcuIEkgY291bGRuJ3QKPj4gPiBkZXRlY3QKPj4gPiBh
bnkgb3RoZXIgcHJvYmxlbSB3aGVuIHNodXR0aW5nIGRvd24uIERyaXZlcyBldGMuIHN0b3AgYXMg
ZXhwZWN0ZWQKPj4gPiBhbmQKPj4gPiB0aGUgdmlkZW8gaXMgYmxhbmsuIEV2ZW4gYWZ0ZXIgd2Fp
dGluZyBzZXZlcmFsIGhvdXJzLCB0aGUgc3lzdGVtCj4+ID4gZG9lc24ndCBwb3dlciBkb3duLgo+
PiA+IEkgaGF2ZW4ndCB5ZXQgZm91bmQgYW55IG90aGVyIHBlb3BsZSBvbiB0aGUgaW50ZXJuZXQg
dGhhdCBoYXZlIHRoZQo+PiA+IHNhbWUKPj4gPiBidWcuCj4+ID4KPj4gPiBJIHVzZWQgZ2l0IGJp
c2VjdCB0byBmaW5kIHRoZSBjb21taXQgdGhhdCBjYXVzZXMgdGhpcyBiZWhhdmlvciBvbgo+PiA+
IG15Cj4+ID4gbWFjaGluZS4gVGhlIHJlc3VsdCBpczogZmUwZjFlM2JmZGZlYjUzZTE4ZjEyMDZh
ZWE0ZjQwYjliZDFmMjkxYyBpcwo+PiA+IHRoZQo+PiA+IGZpcnN0IGJhZCBjb21taXQuCj4+ID4K
Pj4gPiBJIGhvcGUgdGhpcyBpcyB0aGUgY29ycmVjdCBtYWlsaW5nIGxpc3QgZm9yIHRoaXMgaXNz
dWUuCj4+ID4KPj4gPiBMZXQgbWUga25vdyBpZiB5b3UgbmVlZCBtb3JlIGluZm9ybWF0aW9uIG9y
IHNvbWVvbmUgdG8gdGVzdCBpdC4KPj4KPj4gVGhpcyBzZWVtcyB0byBoYXZlIGZhbGxlbiBiZXR3
ZWVuIHRoZSBjcmFja3MsIGFwb2xvZ2llcy4gSXMgdGhpcwo+PiBzdGlsbAo+PiBhbiBpc3N1ZSB3
aXRoIG5ld2VyIGtlcm5lbHM/IElmIHllcywgcGxlYXNlIGZpbGUgYSBidWcgYXQgWzFdLgo+Pgo+
PiBCUiwKPj4gSmFuaS4KPj4KPj4KPj4gWzFdCj4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvd2lraXMvSG93LXRvLWZpbGUtaTkxNS1idWdzCj4+Cj4KPgoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
