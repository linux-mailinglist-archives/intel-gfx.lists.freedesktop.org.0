Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C8145900
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55DC6893A8;
	Fri, 14 Jun 2019 09:42:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003CA893A8
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:42:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 02:42:12 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 02:42:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-7-tvrtko.ursulin@linux.intel.com>
 <156043374038.16925.16516920630664771480@skylake-alporthouse-com>
 <6186c719-417f-53d0-c37c-640c0f341be5@linux.intel.com>
 <156050427156.12188.12057320062082265893@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3cc42950-14cd-6e7a-d4ef-2b485b12d0af@linux.intel.com>
Date: Fri, 14 Jun 2019 10:42:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156050427156.12188.12057320062082265893@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 06/28] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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

Ck9uIDE0LzA2LzIwMTkgMTA6MjQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE0IDEwOjA2OjQxKQo+Pgo+PiBPbiAxMy8wNi8yMDE5IDE0OjQ5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTEzIDE0OjM1OjE3KQo+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4+Pj4KPj4+PiBTdGFydCB1c2luZyB0aGUgbmV3bHkgaW50cm9kdWNlZCBzdHJ1
Y3QgaW50ZWxfZ3QgdG8gZnVzZSB0b2dldGhlciBjb3JyZWN0Cj4+Pj4gbG9naWNhbCBpbml0IGZs
b3cgd2l0aCB1bmNvcmUgZm9yIG1vcmUgcmVtb3ZhbCBvZiBpbXBsaWNpdCBkZXZfcHJpdiBpbgo+
Pj4+IG1taW8gYWNjZXNzLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Cj4+PiBMb29rcyBmaW5lLCBJIG1pZ2h0IG1v
dmUgaXQgYWdhaW4gbGF0ZXIgbmV4dCB0byB0aGUgZmVuY2UgcmVnaXN0ZXJzLCBvcgo+Pj4gYXQg
bGVhc3QgcHVsbCB0aGlzIGFuZCB0aGUgZGV0ZWN0aW9uIGludG8gaXRzIG93biBpbnRlbF9ndF9z
d2l6emxpbmcuYwo+Pj4KPj4+IEhtbSwgbm93IHRoYXQgSSBzYWlkIHRoYXQsIGRvZXMgdGhhdCBz
ZWVtIGxpa2UgYSByZWFzb25hYmxlIHRoaW5nIHRvIGRvCj4+PiByaWdodCBhd2F5LCBzZWUgaTkx
NV9nZW1fZmVuY2VfcmVncy5jIGZvciB0aGUgc3dpenpsZSBwcm9iZT8KPj4KPj4gSXMgc3dpenps
aW5nIGdsb2JhbCBmb3IgdGhlIG1lbW9yeSBjb250cm9sbGVyIG9yIGFwcGxpY2FibGUgb25seSBm
b3IKPj4gZmVuY2VkIHJlZ2lvbnM/Cj4gCj4gQXMgZmFyIGFzIG15IHVuZGVyc3RhbmRpbmcgZ29l
cywgaXQgdXNlZCB0byBiZSBvbmx5IGZvciBmZW5jZWQgcmVnaW9ucwo+IHdoZW4gdGhlIGdwdSB3
YXMgdGhlIGdtY2gsIGJ1dCBjb21wbGV0ZWx5IG1pZ3JhdGVkIHRvIHRoZSBtZW1vcnkKPiBjb250
cm9sbGVyIGFyb3VuZCBzbmIgKHdpdGggdGhlIHJpbmcgYXJjaGl0ZWN0dXJlLCB0aGUgR1BVIHdh
cyBqdXN0Cj4gYW5vdGhlciBjbGllbnQpLiBUaGlzIGNvaW5jaWRlcyB3aXRoIHN3aXp6bGluZyBi
ZWNvbWluZyBkZWZ1bmN0IGFzIHBhcnQKPiBvZiB0aWxpbmcuIFRvIGZ1cnRoZXIgbXVkZHkgdGhl
IHBpY3R1cmVzLCBhbGwgdGhlIHRpbWUgdGhlIG1lbW9yeQo+IGNvbnRyb2xsZXIgaXMgaW50ZXJs
ZWF2aW5nIGFjcm9zcyB0aGUgY2hhbm5lbHMuIEkgYW0gcHJldHR5IGNlcnRhaW4KPiBhcm91bmQg
Z2VuMyB0aGlzIHdhcyBleHBsaWNpdGx5IGNvbnRyb2xsZWQgYnkgdGhlIEdQVSBmb3IgaXRzIHBh
Z2VzLCBidXQKPiBieSBnZW41IHRoaXMgaXMgdHJhbnNwYXJlbnQgdG8gdGhlIEdQVS4gKFNlZSB0
aGUgaXNzdWVzIHdpdGggTC1zaGFwZWQKPiBtZW1vcnkgY29uZmlndXJhdGlvbnMgd2hlcmUgdGhl
IG1hZ2ljIHdhcyBub3QgaGlkZGVuIGZyb20gdGhlIEdQVS4pCj4gCj4gU28sIGFpdWksIGZvciBv
dXIgd29ybGQgdmlldyB0aWxpbmcgYW5kIHN3aXp6bGluZyBhcmUgY29tcGxpY2l0LgoKSG1tLi4g
bG9va2luZyBhdCB0aGUgY29kZSBjb21wbGljaXQgYnV0IHN0aWxsIHNlZW0gc2VwYXJhdGUuIFNv
IEkgY291bGQgCmJlIG1vcmUgZWFzaWx5IGNvbnZpbmNlZCB0aGUgc3dpenpsaW5nIGNvZGUgZG9l
cyBub3QgYWN0dWFsbHkgYmVsb25nIGluIAppOTE1X2dlbV9mZW5jZV9yZWcuYyBhbmQgd2Ugc2hv
dWxkIG1heWJlIGhhdmUgaW50ZWxfZ3Rfc3dpenpsZS5ofGMuCgpIb3dldmVyLCBzaW5jZSBpdCdz
IGFsbCBhbHJlYWR5IGluIHRoaXMgZmlsZSBJIGNhbiBtb3ZlIAppbnRlbF9ndF9pbml0X3N3aXp6
bGluZyB0aGVyZSBhcyB3ZWxsLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
