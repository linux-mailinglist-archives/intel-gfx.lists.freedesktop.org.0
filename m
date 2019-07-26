Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6CD7679B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C5196ED63;
	Fri, 26 Jul 2019 13:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B656ED63
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:34:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 06:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="345826187"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 26 Jul 2019 06:34:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-3-lucas.demarchi@intel.com>
 <156409982772.30723.16146937485087701539@skylake-alporthouse-com>
 <54eaffac-0d15-109d-6d9b-98eb6b2a604f@linux.intel.com>
 <156414725474.30723.10098194461695043311@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <829d0b40-7f49-c388-336b-cb8b542e7a9b@linux.intel.com>
Date: Fri, 26 Jul 2019 14:34:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156414725474.30723.10098194461695043311@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzA3LzIwMTkgMTQ6MjAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTI2IDE0OjE1OjUxKQo+Pgo+PiBPbiAyNi8wNy8yMDE5IDAxOjEw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIEx1Y2FzIERlIE1hcmNoaSAoMjAxOS0w
Ny0yNiAwMTowMjoyNSkKPj4+PiBGcm9tOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlA
aW50ZWwuY29tPgo+Pj4+Cj4+Pj4gSW1wbGVtZW50IFdhXzE2MDQ1NTU2MDcgKHNldCB0aGUgRFMg
cGFpcmluZyB0aW1lciB0byAxMjggY3ljbGVzKS4KPj4+PiBGRl9NT0RFMiBpcyBwYXJ0IG9mIHRo
ZSByZWdpc3RlciBzdGF0ZSBjb250ZXh0LCB0aGF0J3Mgd2h5IGl0IGlzCj4+Pj4gaW1wbGVtZW50
ZWQgaGVyZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwu
dGhpZXJyeUBpbnRlbC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDcgKysrKysrKwo+Pj4+ICAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCA1ICsrKysrCj4+Pj4gICAgMiBm
aWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4+PiBpbmRleCBhNmViOWM2ZTg3ZWMuLjMy
MzVlZjM1NWRmZCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+Pj4+IEBAIC01NzIsNiArNTcyLDEzIEBAIHN0YXRpYyB2b2lkIGljbF9j
dHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4+Pj4g
ICAgc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4+Pj4gICAgewo+Pj4+ICsgICAgICAgdTMyIHZh
bDsKPj4+PiArCj4+Pj4gKyAgICAgICAvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+Pj4+ICsgICAg
ICAgdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUyKTsKPj4+
PiArICAgICAgIHZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7Cj4+Pj4gKyAgICAgICB2
YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPj4+PiArICAgICAgIHdhX3dyaXRlX21hc2tl
ZF9vcih3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKPj4+Cj4+
PiBJdCB3aWxsIGRvIGEgcm13IG9uIGFwcGxpY2F0aW9uLCBzbyB5b3UganVzdCBuZWVkCj4+PiAg
ICAgICAgd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgRkZfTU9ERTIsCj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEZGX01PREUyX1REU19USU1FUl9NQVNLLCBGRl9NT0RFMl9URFNfVElNRVJf
MTI4KTsKPj4KPj4gTm90IHdpdGggY3R4IHdhcyB1bmZvcnR1bmF0ZWx5LCBubyBybXcgdGhlcmUs
IGp1c3QgbHJpLgo+IAo+IE9kZCB0aGF0IHdlIHJlYWQgZnJvbSBvdXRzaWRlIHRoZSBjdHggdGhl
biwgbm8/CgpQZXJoYXBzLiBXZSBoYXZlIHRvIGdldCB0aGUgZGVmYXVsdCB2YWx1ZSBmcm9tIHNv
bWV3aGVyZS4gVGhlcmUgaXMgb25lIApsaWtlIHRoaXMgYWxyZWFkeSwgR0VOOF9MM0NOVExSRUcs
IGZyb20gbm90IHRvbyBsb25nIGFnby4KCj4gV2UgY2FuIGRvIHJtdyBpbnNpZGUgY3R4X3dhIGlm
IHdlIGhhdmUgdG8gdGhhbmtzIHRvIE1JX01BVEguIFNob3VsZCB3ZQo+IHN0YXJ0IHByZXBhcmlu
ZyBmb3IgdGhhdCBuaWdodG1hcmU/IDopCgpXaGVuIHlvdSBzYXkgcHJlcGFyaW5nIGl0IG1ha2Vz
IGl0IHNvdW5kcyBjb21wbGljYXRlZCBzbyBJIHdhbnQgdG8gc2F5IApuby4gQnV0IHN1cmUsIGlm
IHlvdSBoYXZlIGV4dHJhIHRpbWUgZ28gZm9yIGl0LgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
