Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4FC561B1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 07:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE3E6E27F;
	Wed, 26 Jun 2019 05:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 718066E27F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 05:21:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 22:21:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,418,1557212400"; d="scan'208";a="169971089"
Received: from auerbern-mobl.ger.corp.intel.com (HELO [10.252.1.199])
 ([10.252.1.199])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jun 2019 22:21:39 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>
References: <20190614213749.15870-1-jose.souza@intel.com>
 <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
 <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
 <1acd81a6-e891-01e8-dcfe-e6912670bdbb@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6f3e0d6b-cff1-6ba2-c7b6-4afe36bbbc66@linux.intel.com>
Date: Wed, 26 Jun 2019 06:21:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1acd81a6-e891-01e8-dcfe-e6912670bdbb@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
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

Ck9uIDI1LzA2LzIwMTkgMjI6NDgsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gT24g
Ni8yNS8xOSA4OjI2IEFNLCBNYXR0IFJvcGVyIHdyb3RlOgo+PiBPbiBGcmksIEp1biAxNCwgMjAx
OSBhdCAwMzoxNzozOVBNIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOgo+Pj4gT24gRnJpLCBKdW4g
MTQsIDIwMTkgYXQgMDI6Mzc6NDlQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90
ZToKPj4+PiBFSEwgY2FuIGhhdmUgdXAgdG8gb25lIFZFQ1ModmlkZW8gZW5oYW5jZW1lbnQpIGVu
Z2luZSwgc28gYWRkIGl0IHRvCj4+Pj4gdGhlIGRldmljZV9pbmZvLgo+Pj4KPj4+IEJzcGVjIDI5
MTUwIGhhcyBhIGZvb3Rub3RlIG9uIFZFYm94IHRoYXQgaW5kaWNhdGVzICJQYXNzLXRocm91Z2gg
b25seSwKPj4+IG5vIFZFYm94IHByb2Nlc3NpbmcgbG9naWMuIsKgIFRoYXQgbm90ZSBzZWVtcyBh
IGJpdCB2YWd1ZSwgYnV0IEkgdGhpbmsgSQo+Pj4gc2F3IHNvbWUgbW9yZSBkZXRhaWxlZCBpbmZv
IGluIHRoZSBwYXN0IHNvbWV3aGVyZSB0aGF0IGluZGljYXRlZCB0aGUKPj4+IFZFQ1MgY29tbWFu
ZCBzdHJlYW1lciBpcyBzdGlsbCB0ZWNobmljYWxseSBwcmVzZW50IGJ1dCBkb2Vzbid0IGFjdHVh
bGx5Cj4+PiBkbyBhbnkgdmlkZW8gZW5oYW5jZW1lbnQgb24gRUhMOyBpdCBqdXN0IHBhc3NlcyBj
b250ZW50IHRocm91Z2ggdG8gU0ZDLgo+Pj4KPj4+IEknbSBub3QgdGVycmlibHkgcGx1Z2dlZCBp
bnRvIHRoZSBtZWRpYSBzaWRlIG9mIHRoZSB3b3JsZCwgc28gSSdtIG5vdAo+Pj4gc3VyZSBpZiB3
ZSB3YW50IHRvIGV4cG9zZSBWRUNTIHRvIHVzZXJzcGFjZSBpZiBpdCdzIGJhc2ljYWxseSBhIG5v
b3AgYW5kCj4+PiBkb2Vzbid0IGRvIHdoYXQgaXQgbm9ybWFsbHkgZG9lcyBvbiBvdGhlciBwbGF0
Zm9ybXMuwqAgQnNwZWMgcGFnZSA1MjI5Cj4+PiBpbXBsaWVzIHRoYXQgU0ZDIGNhbiBiZSBmZWQg
ZGlyZWN0bHkgYnkgdGhlIGRlY29kZSBlbmdpbmUgd2l0aG91dCBnb2luZwo+Pj4gdGhyb3VnaCBW
RUJPWCwgc28gSSdtIG5vdCBzdXJlIGlmIG1lZGlhIHVzZXJzcGFjZSB3b3VsZCBldmVyIGhhdmUg
YSB1c2UKPj4+IGZvciB0aGUgcGFzc3Rocm91Z2gtb25seSBWRUNTIHN0cmVhbWVyLgo+Pj4KPj4+
IFdlIHNob3VsZCBwcm9iYWJseSBhc2sgc29tZW9uZSBvbiB0aGUgbWVkaWEgdGVhbSB3aGF0IHRo
ZWlyIHRob3VnaHRzIGFyZQo+Pj4gb24gdGhpcy4KPj4KPj4gU2luY2UgdGhlIG1lZGlhIHRlYW0g
Y29uZmlybWVkIHRoYXQgdGhlcmUgaXMgaW5kZWVkIGEgdXNlIGNhc2UgZm9yIGEKPj4gcGFzc3Ro
cm91Z2gtb25seSBWRUNTLAo+Pgo+PiBSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KPj4KPiAKPiBBIGJpdCBsYXRlIGZvciBhIHF1ZXN0aW9uLCBidXQg
aG93IGRvZXMgdXNlcnNwYWNlIGtub3cgdGhhdCB0aGlzIGlzIGp1c3QgCj4gYSBwYXNzLXRocm91
Z2ggVkVDUz8gQXJlIHdlIGV4cGVjdGluZyB0aGVtIHRvIHN3aXRjaCBiYXNlZCBvbiBwbGF0Zm9y
bSAKPiBpbnN0ZWFkIG9mIGp1c3QgdXNpbmcgdGhlIGtlcm5lbCBBUEk/IElNTyBpdCdkIGJlIGJl
dHRlciB0byBoaWRlIHRoZSAKPiBlbmdpbmUgaW4gdGhlIHF1ZXJ5IGlvY3RsIGJ5IGRlZmF1bHQg
YW5kIG9ubHkgc2hvdyBpdCBpZiB1c2Vyc3BhY2UgCj4gcGFzc2VzIGFuIGFwcHJvcHJpYXRlIGZs
YWcsIG90aGVyd2lzZSBsZWdhY3kgYXBwcyBjb3VsZCB0cnkgdG8gc3VibWl0IAo+IFZFQ1Mtc3Bl
Y2lmaWMgY29tbWFuZHMgdG8gdGhlIGVuZ2luZS4KCkkgaGF2ZSBhIHBhdGNoIHdoaWNoIHdvdWxk
IGVuYWJsZSB0aGlzLCBndWVzcyBpdCdzIHRpbWUgdG8gc2VuZCBpdC4uCgpJZiB3ZSBnbyB0aGlz
IHJvdXRlIChoaWRlIHRoZSBlbmdpbmUgYnkgZGVmYXVsdCksIHRoaXMgcGF0Y2ggd291bGQgbmVl
ZCAKdG8gYWRkIGEgbmV3IGNhcGFiaWxpdHkgZmxhZy4gQnV0IHdoYXQgdG8gY2FsbCBpdD8gCkk5
MTVfVklERU9fRU5IQU5DRV9DTEFTU19QQVNTVEhST1VHSD8KClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
