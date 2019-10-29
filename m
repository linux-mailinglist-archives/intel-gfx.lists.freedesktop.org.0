Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AA5E9262
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD35E6E7AB;
	Tue, 29 Oct 2019 21:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0FEE6E7AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:50:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 14:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="198497239"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2019 14:50:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-3-matthew.auld@intel.com>
 <4c986074-2364-5815-efde-6134a3ce741d@intel.com>
 <157238547307.2489.1734253925833176897@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <673e0a9a-939d-04cc-d4b9-b8d356920c0d@intel.com>
Date: Tue, 29 Oct 2019 14:50:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157238547307.2489.1734253925833176897@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: set num_fence_regs to 0 if
 there is no aperture
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8yOS8xOSAyOjQ0IFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTEwLTI5IDIxOjIzOjE2KQo+Pgo+Pgo+PiBPbiAxMC8y
OS8xOSAyOjU4IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+PiBGcm9tOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Pj4KPj4+IFdlIGNh
bid0IGZlbmNlIGFueXRoaW5nIHdpdGhvdXQgYXBlcnR1cmUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPj4+IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRl
bC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNl
X3JlZy5jIHwgNiArKysrLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVu
Y2VfcmVnLmMKPj4+IGluZGV4IDMyMTE4OWUxYjBmMi4uNzFlZmNjZmRlMTIyIDEwMDY0NAo+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKPj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCj4+PiBAQCAtODQ2LDgg
Kzg0NiwxMCBAQCB2b2lkIGk5MTVfZ2d0dF9pbml0X2ZlbmNlcyhzdHJ1Y3QgaTkxNV9nZ3R0ICpn
Z3R0KQo+Pj4gICAgCj4+PiAgICAgICAgZGV0ZWN0X2JpdF82X3N3aXp6bGUoZ2d0dCk7Cj4+PiAg
ICAKPj4+IC0gICAgIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNyAmJgo+Pj4gLSAgICAgICAgICEo
SVNfVkFMTEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllWSUVXKGk5MTUpKSkKPj4+ICsgICAgIGlm
ICghaTkxNV9nZ3R0X2hhc19hcGVydHVyZShnZ3R0KSkKPj4KPj4gRGFuaWVsIGhhZCBtZW50aW9u
ZWQgdGhhdCB0aGUgZmVuY2luZyBIVyBoYXMgYmVlbiBuZXJmZWQgaW4gZ2VuMTIgYW5kCj4+IHN1
Z2dlc3RlZCBzZXR0aW5ncyBudW1fZmVuY2VzIHRvIHplcm8gZm9yIGFsbCBnZW4xMisuIFNob3Vs
ZCB3ZSBnbwo+PiBkaXJlY3RseSB3aXRoIHRoYXQ/Cj4gCj4gRG8gZmVuY2VzIGV4aXN0LCB5ZXMv
bm8/IElmIHRoZXJlIGFyZSBsaXRlcmFsbHkgbm8gZmVuY2VzIGZvcmV2ZXJtb3JlLi4uCj4gdGds
IGJlZ3MgdG8gZGlmZmVyIHRob3VnaC4KPiAtQ2hyaXMKPiAKClRoZSByZWdpc3RlcnMgYXJlIHRo
ZXJlIGluIHRoZSBzcGVjcyBhbmQgSSBkb24ndCBzZWUgYW55IHNwZWNpYWwgbm90ZXMgCmFib3V0
IHRoZWlyIHVzYWdlLiBJJ2xsIGxlYXZlIGl0IHRvIERhbmllbCB0byBjb21tZW50IG9uIHRoZSBj
YXBhYmlsaXR5IApyZWR1Y3Rpb24gaGUgbWVudGlvbmVkLiBOb3QgYSBibG9ja2VyIGZvciB0aGlz
IHBhdGNoIGluIHRoZSBtZWFudGltZS4KCkRhbmllbGUKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
