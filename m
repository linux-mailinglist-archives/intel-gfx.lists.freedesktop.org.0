Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AF6DBB8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 07:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D193F89160;
	Mon, 29 Apr 2019 05:57:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B862489160
 for <Intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 05:57:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Apr 2019 22:57:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,408,1549958400"; d="scan'208";a="139669264"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 28 Apr 2019 22:57:42 -0700
To: Anuj Phogat <anuj.phogat@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
References: <20190415114307.1356-1-tvrtko.ursulin@linux.intel.com>
 <20190418100634.984-1-tvrtko.ursulin@linux.intel.com>
 <e1cd2a87-02ac-78d8-ea03-f92bd0ac5f06@intel.com>
 <155626751547.18613.8543320833419448551@jlahtine-desk.ger.corp.intel.com>
 <89f0b59e-29e3-1259-2549-f2daa0b4c00c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <836034a4-4060-9f40-3a63-729e7b1d4a72@linux.intel.com>
Date: Mon, 29 Apr 2019 06:57:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <89f0b59e-29e3-1259-2549-f2daa0b4c00c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Whitelist
 GEN9_SLICE_COMMON_ECO_CHICKEN1
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
Cc: kevin.ma@intel.com, xiaogang.li@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzA0LzIwMTkgMTc6NTgsIEFudWogUGhvZ2F0IHdyb3RlOgo+IAo+IEpvb25hcywKPiAK
PiBNZXNhIG5vdyBhcHBsaWVzIHRoaXMgV0Egb24gSUNMIGFuZCB3ZSdyZSBub3Qgc2VlaW5nIGFu
eSByZWdyZXNzaW9ucyBpbiBDSS4KPiBJIHRlc3RlZCBNZXNhIHdpdGggYW5kIHdpdGhvdXQgdGhp
cyBwYXRjaCBhcHBsaWVkIHRvIGtlcm5lbC4gSSBkb24ndCBzZWUgCj4gYW55Cj4gcGVyZm9ybWFu
Y2UgaW1wYWN0IHRvIE1hbmhhdHRhbiBmcm9tIEdmeEJlbmNoNS4gSSdtIGxpdHRsZSBzdXJwcmlz
ZWQgdG8KPiBzZWUgaXQncyBub3QgcmVhbGx5IGhlbHBpbmcgYmVuY2htYXJrIHBlcmZvcm1hbmNl
IGluIE1lc2EuIEknbGwgZGlnIGJpdCAKPiBtb3JlCj4gdG8gZmlndXJlIG91dCBhIHBvc3NpYmxl
IGV4cGxhbmF0aW9uLiBJIGhhdmVuJ3QgdHJpZWQgYW55IG90aGVyIGJlbmNobWFya3MKPiB3aXRo
IHRoaXMgcGF0Y2guCgpJIHRoaW5rIHRoZSBjb25jZXJuIHdhcywgaWYgdXNlciBpcyBydW5uaW5n
IG9sZCBNZXNhIChubyBXQSkgb24gbmV3IAprZXJuZWwgKG5vIFdBKSB0aGVyZSB3b3VsZG4ndCBi
ZSBhbnkgR1BVIGhhbmdzLCBqdXN0IHRoZW9yZXRpY2FsICh5ZXQgCnVubWVhc3VyZWQpIHBlcmYg
ZHJvcD8KClJlZ2FyZHMsCgpUdnJ0a28KCj4gCj4gVGhhbmtzCj4gQW51ago+IE9uIDA0LzI2LzIw
MTkgMDE6MzEgQU0sIEpvb25hcyBMYWh0aW5lbiB3cm90ZToKPj4gKyBBbnVqCj4+Cj4+IFF1b3Rp
bmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTktMDQtMjYgMTE6MTM6NTgpCj4+PiBPbiAxOC8wNC8y
MDE5IDE4OjA2LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+PiBGcm9tOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4+Cj4+Pj4gV2FFbmFibGVTdGF0ZUNhY2hl
UmVkaXJlY3RUb0NTIGNvbnRleHQgd29ya2Fyb3VuZCBjb25maWd1cmVzIHRoZSBMMyAKPj4+PiBj
YWNoZQo+Pj4+IHRvIGJlbmVmaXQgM2Qgd29ya2xvYWRzIGJ1dCBtZWRpYSBoYXMgZGlmZmVyZW50
IHJlcXVpcmVtZW50cy4KPj4+Pgo+Pj4+IFJlbW92ZSB0aGUgd29ya2Fyb3VuZCBhbmQgd2hpdGVs
aXN0IHRoZSByZWdpc3RlciB0byBhbGxvdyBhbnkgdXNlcnNwYWNlCj4+Pj4gY29uZmlndXJlIHRo
ZSBiZWhhdmlvdXIgdG8gdGhlaXIgbGlraW5nLgo+Pj4+Cj4+Pj4gdjI6Cj4+Pj4gwqDCoCAqIFJl
bW92ZSB0aGUgd29ya2Fyb3VuZCBhcGFydCBmcm9tIGFkZGluZyB0aGUgd2hpdGVsaXN0Lgo+Pj4+
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KPj4+PiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50
ZWwuY29tPgo+Pj4+IENjOiBrZXZpbi5tYUBpbnRlbC5jb20KPj4+PiBDYzogeGlhb2dhbmcubGlA
aW50ZWwuY29tCj4+Pgo+Pj4gQWNrZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5s
YW5kd2VybGluQGludGVsLmNvbT4KPj4+Cj4+Pgo+Pj4gTWVzYSBjb21taXRzIDoKPj4+Cj4+PiBj
b21taXQgZGI1YjM3MmJiOWY1YTBkZmVhODY2MThmOGY5ODMyZjI1ZDllYWY3MSAoYW52KQo+Pj4K
Pj4+IGNvbW1pdCBlYWFkYjYyYzllYTk4Zjg0MWQ3ZmZjMjZjMTQzNDFhYmRmODRkMmQ2IChpOTY1
KQo+Pj4KPj4+IGNvbW1pdCBkMWJlNjdkYjM5NDYzYjQ4MzY5Y2I3MTk3OWVkMTg2NjJiMmMxNTdl
IChpcmlzKQo+PiBDb3VsZCBzb21lYm9keSBjb25maXJtIHRoYXQgYXBwbHlpbmcgdGhpcyBwYXRj
aCBkb2VzIG5vdCBjYXVzZSBoYW5ncyBpbgo+PiBvbGRlciBtZXNhLCBhbmQgdGhlIHBlcmZvcm1h
bmNlIGRyb3AgKGlmIGFueSkgaXMgaW5zaWduaWZpY2FudD8KPj4KPj4gQmVzdCBSZWdhcmRzLAo+
PiBKb29uYXMKPiAKPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
