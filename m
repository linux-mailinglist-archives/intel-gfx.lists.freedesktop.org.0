Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97BA1052B9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 14:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45316E0D1;
	Thu, 21 Nov 2019 13:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F496E0C8;
 Thu, 21 Nov 2019 13:11:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 05:11:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="197237316"
Received: from fbielich-mobl2.ger.corp.intel.com (HELO [10.249.33.14])
 ([10.249.33.14])
 by orsmga007.jf.intel.com with ESMTP; 21 Nov 2019 05:11:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
 <20191113125240.3781-4-chris@chris-wilson.co.uk>
 <9e91663f-584e-ff16-f314-e196f66f82d1@intel.com>
 <157433827365.29262.646303708638576671@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <f14e1e52-9437-9777-7788-2dccc8e5dbe8@intel.com>
Date: Thu, 21 Nov 2019 15:11:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <157433827365.29262.646303708638576671@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/9] i915: Start putting the
 mmio_base to wider use
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEvMTEvMjAxOSAxNDoxMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTEtMjEgMTI6MDQ6NDIpCj4+IE9uIDEzLzExLzIwMTkgMTQ6NTIs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFNldmVyYWwgdGVzdHMgZGVwZW5kIHVwb24gdGhlIGlt
cGxpY2l0IGVuZ2luZS0+bW1pb19iYXNlIGJ1dCBoYXZlIG5vCj4+PiBtZWFucyBvZiBkZXRlcm1p
bmluZyB0aGUgcGh5c2ljYWwgbGF5b3V0LiBTaW5jZSB0aGUga2VybmVsIGhhcyBzdGFydGVkCj4+
PiBwcm92aWRpbmcgdGhpcyBpbmZvcm1hdGlvbiwgc3RhcnQgcHV0dGluZyBpdCB0byB1c2UuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4+PiAtLS0KPj4+ICAgIGxpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYyB8IDg0ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgIGxpYi9pOTE1L2dlbV9lbmdp
bmVfdG9wb2xvZ3kuaCB8ICA1ICsrCj4+PiAgICB0ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMg
ICAgfCAzOCArKysrKy0tLS0tLS0tLS0KPj4+ICAgIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfbGF0ZW5j
eS5jICB8IDE3ICsrKystLS0KPj4+ICAgIDQgZmlsZXMgY2hhbmdlZCwgMTExIGluc2VydGlvbnMo
KyksIDMzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9saWIvaTkxNS9nZW1fZW5n
aW5lX3RvcG9sb2d5LmMgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKPj4+IGluZGV4
IDc5MGQ0NTVmZi4uYmQyMDBhNGI5IDEwMDY0NAo+Pj4gLS0tIGEvbGliL2k5MTUvZ2VtX2VuZ2lu
ZV90b3BvbG9neS5jCj4+PiArKysgYi9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKPj4+
IEBAIC0yMSw3ICsyMSwxMiBAQAo+Pj4gICAgICogSU4gVEhFIFNPRlRXQVJFLgo+Pj4gICAgICov
Cj4+PiAgICAKPj4+ICsjaW5jbHVkZSA8ZmNudGwuaD4KPj4+ICsjaW5jbHVkZSA8dW5pc3RkLmg+
Cj4+PiArCj4+PiAgICAjaW5jbHVkZSAiZHJtdGVzdC5oIgo+Pj4gKyNpbmNsdWRlICJpZ3Rfc3lz
ZnMuaCIKPj4+ICsjaW5jbHVkZSAiaW50ZWxfY2hpcHNldC5oIgo+Pj4gICAgI2luY2x1ZGUgImlv
Y3RsX3dyYXBwZXJzLmgiCj4+PiAgICAKPj4+ICAgICNpbmNsdWRlICJpOTE1L2dlbV9lbmdpbmVf
dG9wb2xvZ3kuaCIKPj4+IEBAIC0zMzcsMyArMzQyLDgyIEBAIGJvb2wgZ2VtX2VuZ2luZV9pc19l
cXVhbChjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmUxLAo+Pj4gICAgewo+
Pj4gICAgICAgIHJldHVybiBlMS0+Y2xhc3MgPT0gZTItPmNsYXNzICYmIGUxLT5pbnN0YW5jZSA9
PSBlMi0+aW5zdGFuY2U7Cj4+PiAgICB9Cj4+PiArCj4+PiArc3RhdGljIGludCBkZXNjZW5kKGlu
dCBkaXIsIGNvbnN0IGNoYXIgKnBhdGgpCj4+PiArewo+Pj4gKyAgICAgaW50IGZkOwo+Pj4gKwo+
Pj4gKyAgICAgZmQgPSBvcGVuYXQoZGlyLCBwYXRoLCBPX1JET05MWSk7Cj4+PiArICAgICBjbG9z
ZShkaXIpOwo+Pj4gKwo+Pj4gKyAgICAgcmV0dXJuIGZkOwo+Pj4gK30KPj4+ICsKPj4KPj4gTm90
IHN1cmUgSSB1bmRlcnN0YW5kIHdoYXQgZmlsZSB0aGUgZnVuY3Rpb24gYmVsb3cgaXMgc3VwcG9z
ZWQgdG8gcGFyc2UuCj4+Cj4+IElzIHRoYXQgL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAvaTkxNV9l
bmdpbmVfaW5mbz8KPiAvc3lzL2NsYXNzL2RybS9jYXJkMC9lbmdpbmUvKi9tbWlvX2Jhc2UKPiAt
Q2hyaXMKCkJ1dCB0aGF0J3Mgbm90IGluIGRybS10aXAgcmlnaHQ/CgotTGlvbmVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
