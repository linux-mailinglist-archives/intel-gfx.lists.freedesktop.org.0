Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DE125AA65
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 13:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CF06E4AF;
	Wed,  2 Sep 2020 11:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CFFD6E4AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 11:35:01 +0000 (UTC)
IronPort-SDR: hfOkLZhbmTW/w2G5jhUUQSoRoLbrPSjKnB08si2GSdLfj7a9Vb3G0wFDVRh8lPYxZQ50EZnukt
 I2s0ezyvks+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="218918447"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="218918447"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 04:34:59 -0700
IronPort-SDR: GUZUNNZImNmwnSHUm42tuwEOP4CCxxK46glSp4emc/S7K4KthEGCq+2XwgqjmliiHwvKzhR8bE
 uGZ2YG8yc4TA==
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="477605963"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.95.101])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 04:34:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200902101125.GL6112@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200828061941.17051-1-jani.nikula@intel.com>
 <20200831133905.GW6112@intel.com> <87imcy4qus.fsf@intel.com>
 <87ft814ov8.fsf@intel.com> <20200902101125.GL6112@intel.com>
Date: Wed, 02 Sep 2020 14:34:55 +0300
Message-ID: <878sds4dk0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add support for
 mailbox #5 EDID
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwMiBTZXAgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBTZXAgMDEsIDIwMjAgYXQgMDQ6MTg6MTlQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIE1vbiwgMzEgQXVnIDIwMjAsIEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+IHdyb3RlOgo+PiA+IE9uIE1vbiwgMzEgQXVnIDIw
MjAsIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3Rl
Ogo+PiA+PiBPbiBGcmksIEF1ZyAyOCwgMjAyMCBhdCAwOToxOTo0MEFNICswMzAwLCBKYW5pIE5p
a3VsYSB3cm90ZToKPj4gPj4+IFRoZSBBQ1BJIE9wUmVnaW9uIE1haWxib3ggIzUgQVNMRSBleHRl
bnNpb24gbWF5IGNvbnRhaW4gYW4gRURJRCB0byBiZQo+PiA+Pj4gdXNlZCBmb3IgdGhlIGVtYmVk
ZGVkIGRpc3BsYXkuIEFkZCBzdXBwb3J0IGZvciB1c2luZyBpdCB2aWEgdGhlIEVESUQKPj4gPj4+
IG92ZXJyaWRlIG1lY2hhbmlzbS4KPj4gPj4KPj4gPj4gQWJ1c2luZyB0aGUgb3ZlcnJpZGUgZm9y
IHRoaXMgZmVlbHMgYSBiaXQgb2RkLgo+PiA+Cj4+ID4gSXQncyB0aGUgbGVhc3QgaW50cnVzaXZl
IHdheSB0byBtYWtlIHRoaXMgd29yayBhY3Jvc3MgdGhlIGRybSBhbmQgZHJpdmVyCj4+ID4gRURJ
RCBjb2RlIHRoYXQgSSBjb3VsZCB0aGluayBvZi4KPj4gPgo+PiA+IEJSLAo+PiA+IEphbmkuCj4+
ID4KPj4gPgo+PiA+Pgo+PiA+PiBBbHNvIEkgaGF2ZSBhIHZhZ3VlIHJlY29sbGVjdGlvbiB0aGF0
IHRoZXJlIHdhcyBwZXJoYXBzIHNvbWUKPj4gPj4gbGlua2FnZSBiZXR3ZWVuIHRoZSBtYWlsYm94
IGFuZCB0aGUgQUNQSSBfRERDIHN0dWZmOgo+PiA+PiBnaXQ6Ly9naXRodWIuY29tL3ZzeXJqYWxh
L2xpbnV4LmdpdCBhY3BpX2VkaWQKPj4gCj4+IE9ubHkgbG9va2VkIGF0IHRoaXMgbm93LiBUaGUg
cGF0Y2ggYXQgaGFuZCBpcyBmb3IgYWN0dWFsbHkgb3ZlcnJpZGluZwo+PiB0aGUgRURJRCBmcm9t
IHRoZSBwYW5lbCwgYmVjYXVzZSB0aGUgcGFuZWwgRURJRCBpcyByZWFkYWJsZSBidXQgYm9ndXMu
Cj4KPiBEbyB3ZSBoYXZlIGFuIGFjdHVhbCB1c2UgY2FzZSBmb3IgdGhpcz8gVGhlIGNvbW1pdCBt
c2cgZG9lc24ndCBzYXkgc28uCgpJdCdzIGEgYml0IGhhenkgc3RpbGwsIGJ1dCBwb3RlbnRpYWxs
eSB5ZXMsIHdpdGggYSBuZWVkIHRvIGJhY2twb3J0IHRvCnN0YWJsZSBhcyB3ZWxsLgoKPj4gSQo+
PiBoYXZlIG5vIGlkZWEgaG93IHRoZSBBQ1BJIF9EREMgc3R1ZmYgd291bGQgd29yayBpbiB0aGlz
IGNhc2UuIFdvdWxkIGl0Cj4+IHJldHVybiB0aGUgRURJRCBmcm9tIHRoZSBwYW5lbCBvciBmcm9t
IG1haWxib3ggIzUgb3Igc29tZXRoaW5nCj4+IGNvbXBsZXRlbHkgZGlmZmVyZW50PyBXaG8ga25v
d3MuCj4+IAo+PiBVc2luZyBkcm1fZG9fZ2V0X2VkaWQoKSB3b3VsZCBvZiBjb3Vyc2UgYmUgZG9h
YmxlIGZvciByZWFkaW5nIG1haWxib3ggIzUKPj4gZGlyZWN0bHkgYXMgd2VsbCwgYnV0IHlvdSdk
IGhhdmUgdG8gbWFrZSB0aGF0IHRoZSAicHJpbWFyeSIgbWV0aG9kIGFuZAo+PiBmYWxsIGJhY2sg
dG8gdGhlIHVzdWFsIGRybV9nZXRfZWRpZCgpLiBOb3RlIHRoYXQgdGhpcyBjb21wbGV0ZWx5Cj4+
IHByZXZlbnRzIHlvdSBmcm9tIGV2ZXIgcmVhZGluZyB0aGUgYWN0dWFsIHBhbmVsIEVESUQuIFVz
aW5nCj4+IGVkaWRfb3ZlcnJpZGUgbGV0cyB5b3UgZ2V0IGF0IHRoZSBwYW5lbCBFRElEIHRvby4K
Pgo+IE1pZ2h0IGJlIG5pY2UgdG8gbWFrZSAuZ2V0X2VkaWQoKSBhIGNvbm5lY3RvciB2ZnVuYyBh
bmQgbGV0IGVhY2ggZHJpdmVyCj4gaW1wbGVtZW50IGl0IGhvd2V2ZXIgdGhleSB3YW50LiBUaGF0
IHdheSB0aGUgZHJpdmVyIHdvdWxkIGJlIGluIHRvdGFsCj4gY29udHJvbCBvdmVyIHRoZSBwcmlv
cml0eSBvZiBkaWZmZXJlbnQgRURJRCBzb3VyY2VzLiBCdXQgaGF2ZW4ndCByZWFsbHkKPiBsb29r
ZWQgYXQgd2hhdCB0aGF0IHdvdWxkIHRha2UuIE5vdCBldmVuIHN1cmUgaWYgYSB2ZnVuYyBpcyB0
b3RhbGx5Cj4gcmVxdWlyZWQgYXMgSSB0aGluayBtb3N0IEVESUQgcmVhZHMgc2hvdWxkIGJlIGlu
IHNvbWUgY29ubmVjdG9yIHNwZWNpZmljCj4gZHJpdmVyIGNvZGUuCgotLSAKSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
