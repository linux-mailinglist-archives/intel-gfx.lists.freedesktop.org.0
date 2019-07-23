Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3B77188B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 14:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8A76E1D6;
	Tue, 23 Jul 2019 12:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E876E1D6;
 Tue, 23 Jul 2019 12:47:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 05:47:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="368361674"
Received: from jsartini-mobl.ger.corp.intel.com (HELO [10.252.0.141])
 ([10.252.0.141])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 05:47:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190723114709.26886-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3e0c81d7-dc9a-a6f5-ae3e-d077348862f3@linux.intel.com>
Date: Tue, 23 Jul 2019 13:47:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723114709.26886-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mocs_settings: Identify
 Cometlake
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

Ck9uIDIzLzA3LzIwMTkgMTI6NDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBDb21ldGxha2UgaXMg
eWV0IGFub3RoZXIgU2t5bGFrZSByZWZyZXNoIGFuZCB1c2VkIHRoZSBzYW1lIG1vY3MKPiByZWdp
c3RlcnMuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTExMzcKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGxpYi9pbnRlbF9jaGlwc2V0LmggICAgICAgICAg
ICB8IDMgKystCj4gICB0ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdzLmMgfCAyICstCj4gICAy
IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvbGliL2ludGVsX2NoaXBzZXQuaCBiL2xpYi9pbnRlbF9jaGlwc2V0LmgKPiBpbmRl
eCA3ODE0ODZkMDIuLjJiZDU3ZjRmMCAxMDA2NDQKPiAtLS0gYS9saWIvaW50ZWxfY2hpcHNldC5o
Cj4gKysrIGIvbGliL2ludGVsX2NoaXBzZXQuaAo+IEBAIC0xNjIsMTEgKzE2MiwxMiBAQCB2b2lk
IGludGVsX2NoZWNrX3BjaCh2b2lkKTsKPiAgICNkZWZpbmUgSVNfSEFTV0VMTChkZXZpZCkJKGlu
dGVsX2dldF9kZXZpY2VfaW5mbyhkZXZpZCktPmlzX2hhc3dlbGwpCj4gICAjZGVmaW5lIElTX0JS
T0FEV0VMTChkZXZpZCkJKGludGVsX2dldF9kZXZpY2VfaW5mbyhkZXZpZCktPmlzX2Jyb2Fkd2Vs
bCkKPiAgICNkZWZpbmUgSVNfQ0hFUlJZVklFVyhkZXZpZCkJKGludGVsX2dldF9kZXZpY2VfaW5m
byhkZXZpZCktPmlzX2NoZXJyeXZpZXcpCj4gLSNkZWZpbmUgSVNfS0FCWUxBS0UoZGV2aWQpCShp
bnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2aWQpLT5pc19rYWJ5bGFrZSkKPiAgICNkZWZpbmUgSVNf
U0tZTEFLRShkZXZpZCkJKGludGVsX2dldF9kZXZpY2VfaW5mbyhkZXZpZCktPmlzX3NreWxha2Up
Cj4gICAjZGVmaW5lIElTX0JST1hUT04oZGV2aWQpCShpbnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2
aWQpLT5pc19icm94dG9uKQo+ICsjZGVmaW5lIElTX0tBQllMQUtFKGRldmlkKQkoaW50ZWxfZ2V0
X2RldmljZV9pbmZvKGRldmlkKS0+aXNfa2FieWxha2UpCj4gICAjZGVmaW5lIElTX0dFTUlOSUxB
S0UoZGV2aWQpCShpbnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2aWQpLT5pc19nZW1pbmlsYWtlKQo+
ICAgI2RlZmluZSBJU19DT0ZGRUVMQUtFKGRldmlkKQkoaW50ZWxfZ2V0X2RldmljZV9pbmZvKGRl
dmlkKS0+aXNfY29mZmVlbGFrZSkKPiArI2RlZmluZSBJU19DT01FVExBS0UoZGV2aWQpCShpbnRl
bF9nZXRfZGV2aWNlX2luZm8oZGV2aWQpLT5pc19jb21ldGxha2UpCj4gICAjZGVmaW5lIElTX0NB
Tk5PTkxBS0UoZGV2aWQpCShpbnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2aWQpLT5pc19jYW5ub25s
YWtlKQo+ICAgI2RlZmluZSBJU19JQ0VMQUtFKGRldmlkKQkoaW50ZWxfZ2V0X2RldmljZV9pbmZv
KGRldmlkKS0+aXNfaWNlbGFrZSkKPiAgICNkZWZpbmUgSVNfVElHRVJMQUtFKGRldmlkKQkoaW50
ZWxfZ2V0X2RldmljZV9pbmZvKGRldmlkKS0+aXNfdGlnZXJsYWtlKQo+IGRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdzLmMgYi90ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRp
bmdzLmMKPiBpbmRleCAxYTMxMWI4YzAuLmYzZWU4YTdiYyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9p
OTE1L2dlbV9tb2NzX3NldHRpbmdzLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRp
bmdzLmMKPiBAQCAtMTM3LDcgKzEzNyw3IEBAIHN0YXRpYyBib29sIGdldF9tb2NzX3NldHRpbmdz
KGludCBmZCwgc3RydWN0IG1vY3NfdGFibGUgKnRhYmxlLCBib29sIGRpcnR5KQo+ICAgCXVpbnQz
Ml90IGRldmlkID0gaW50ZWxfZ2V0X2RybV9kZXZpZChmZCk7Cj4gICAJYm9vbCByZXN1bHQgPSBm
YWxzZTsKPiAgIAo+IC0JaWYgKElTX1NLWUxBS0UoZGV2aWQpIHx8IElTX0tBQllMQUtFKGRldmlk
KSkgewo+ICsJaWYgKElTX1NLWUxBS0UoZGV2aWQpIHx8IElTX0tBQllMQUtFKGRldmlkKSB8fCBJ
U19DT01FVExBS0UoZGV2aWQpKSB7Cj4gICAJCWlmIChkaXJ0eSkgewo+ICAgCQkJdGFibGUtPnNp
emUgID0gQVJSQVlfU0laRShkaXJ0eV9za3lsYWtlX21vY3NfdGFibGUpOwo+ICAgCQkJdGFibGUt
PnRhYmxlID0gZGlydHlfc2t5bGFrZV9tb2NzX3RhYmxlOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
