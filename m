Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C8D6BD0D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB95E6E160;
	Wed, 17 Jul 2019 13:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F626E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:31:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158464271"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:31:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7d301fff-3bbe-eb05-2276-347c58b00d22@linux.intel.com>
Date: Wed, 17 Jul 2019 14:31:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716124931.5870-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/execlists: Process interrupted
 context on reset
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

Ck9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBCeSBzdG9wcGluZyB0
aGUgcmluZ3MsIHdlIG1heSB0cmlnZ2VyIGFuIGFyYml0cmF0aW9uIHBvaW50IHJlc3VsdGluZyBp
bgo+IGEgcHJlbWF0dXJlIGNvbnRleHQtc3dpdGNoIChpLmUuIGEgY29tcGxldGlvbiBldmVudCBi
ZWZvcmUgdGhlIHJlcXVlc3QKPiBpcyBhY3R1YWxseSBjb21wbGV0ZSkuIFRoaXMgY2xlYXJzIHRo
ZSBhY3RpdmUgY29udGV4dCBiZWZvcmUgdGhlIHJlc2V0LAo+IGJ1dCB3ZSBtdXN0IHJlbWVtYmVy
IHRvIHJld2luZCB0aGUgaW5jb21wbGV0ZSBjb250ZXh0IGZvciByZXBsYXkgdXBvbgo+IHJlc3Vt
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNiAr
KysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA5Yjg3YTJmYzE4NmMu
Ljc1NzBhOTI1NjAwMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAg
LTE0MTksNyArMTQxOSw4IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKPiAgIAkJCSAqIGNvaGVyZW50ICh2aXNpYmxlIGZyb20gdGhlIENQ
VSkgYmVmb3JlIHRoZQo+ICAgCQkJICogdXNlciBpbnRlcnJ1cHQgYW5kIENTQiBpcyBwcm9jZXNz
ZWQuCj4gICAJCQkgKi8KPiAtCQkJR0VNX0JVR19PTighaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZCgq
ZXhlY2xpc3RzLT5hY3RpdmUpKTsKPiArCQkJR0VNX0JVR19PTighaTkxNV9yZXF1ZXN0X2NvbXBs
ZXRlZCgqZXhlY2xpc3RzLT5hY3RpdmUpICYmCj4gKwkJCQkgICAhcmVzZXRfaW5fcHJvZ3Jlc3Mo
ZXhlY2xpc3RzKSk7Cj4gICAJCQlleGVjbGlzdHNfc2NoZWR1bGVfb3V0KCpleGVjbGlzdHMtPmFj
dGl2ZSsrKTsKPiAgIAo+ICAgCQkJR0VNX0JVR19PTihleGVjbGlzdHMtPmFjdGl2ZSAtIGV4ZWNs
aXN0cy0+aW5mbGlnaHQgPgo+IEBAIC0yMjU0LDcgKzIyNTUsNyBAQCBzdGF0aWMgdm9pZCBfX2V4
ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxl
ZCkKPiAgIAkgKi8KPiAgIAlycSA9IGV4ZWNsaXN0c19hY3RpdmUoZXhlY2xpc3RzKTsKPiAgIAlp
ZiAoIXJxKQo+IC0JCXJldHVybjsKPiArCQlnb3RvIHVud2luZDsKPiAgIAo+ICAgCWNlID0gcnEt
Pmh3X2NvbnRleHQ7Cj4gICAJR0VNX0JVR19PTihpOTE1X2FjdGl2ZV9pc19pZGxlKCZjZS0+YWN0
aXZlKSk7Cj4gQEAgLTIzMzEsNiArMjMzMiw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jl
c2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQo+ICAgCWlu
dGVsX3JpbmdfdXBkYXRlX3NwYWNlKGNlLT5yaW5nKTsKPiAgIAlfX2V4ZWNsaXN0c191cGRhdGVf
cmVnX3N0YXRlKGNlLCBlbmdpbmUpOwo+ICAgCj4gK3Vud2luZDoKPiAgIAkvKiBQdXNoIGJhY2sg
YW55IGluY29tcGxldGUgcmVxdWVzdHMgZm9yIHJlcGxheSBhZnRlciB0aGUgcmVzZXQuICovCj4g
ICAJX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhlbmdpbmUpOwo+ICAgfQo+IAoKU291bmRz
IHBsYXVzaWJsZS4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgoKU2hvdWxkbid0IHRoZXJlIGJlIGEgRml4ZXM6IHRhZyB0byBnbyB3aXRoIGl0
PwoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
