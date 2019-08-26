Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682FB9CB60
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 10:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B396E1F5;
	Mon, 26 Aug 2019 08:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049086E1F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 08:15:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 01:15:34 -0700
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174133517"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 01:15:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Date: Mon, 26 Aug 2019 10:15:21 +0200
Message-ID: <7536805.yzB8ZXLclH@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <00f1a3a7-7ff6-e9a0-d9de-a177af6fd64b@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <00f1a3a7-7ff6-e9a0-d9de-a177af6fd64b@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not
 populated on device hot re-plug
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTHUsCgpPbiBGcmlkYXksIEF1Z3VzdCAyMywgMjAxOSAzOjUxOjExIEFNIENFU1QgTHUgQmFv
bHUgd3JvdGU6Cj4gSGksCj4gCj4gT24gOC8yMi8xOSAxMDoyOSBQTSwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+ID4gV2hlbiBhIHBlcmZlY3RseSB3b3JraW5nIGk5MTUgZGV2aWNlIGlzIGhv
dCB1bnBsdWdnZWQgKHZpYSBzeXNmcykgYW5kCj4gPiBob3QgcmUtcGx1Z2dlZCBhZ2FpbiwgaXRz
IGRldi0+YXJjaGRhdGEuaW9tbXUgZmllbGQgaXMgbm90IHBvcHVsYXRlZAo+ID4gYWdhaW4gd2l0
aCBhbiBJT01NVSBwb2ludGVyLiAgQXMgYSByZXN1bHQsIHRoZSBkZXZpY2UgcHJvYmUgZmFpbHMg
b24KPiA+IERNQSBtYXBwaW5nIGVycm9yIGR1cmluZyBzY3JhdGNoIHBhZ2Ugc2V0dXAuCj4gPiAK
PiA+IEl0IGxvb2tzIGxpa2UgdGhhdCBoYXBwZW5zIGJlY2F1c2UgZGV2aWNlcyBhcmUgbm90IGRl
dGFjaGVkIGZyb20gdGhlaXIKPiA+IE1NVUlPIGJ1cyBiZWZvcmUgdGhleSBhcmUgcmVtb3ZlZCBv
biBkZXZpY2UgdW5wbHVnLiAgVGhlbiwgd2hlbiBhbgo+ID4gYWxyZWFkeSByZWdpc3RlcmVkIGRl
dmljZS9JT01NVSBhc3NvY2lhdGlvbiBpcyBpZGVudGlmaWVkIGJ5IHRoZQo+ID4gcmVpbnN0YW50
aWF0ZWQgZGV2aWNlJ3MgYnVzIGFuZCBmdW5jdGlvbiBJRHMgb24gSU9NTVUgYnVzIHJlLWF0dGFj
aAo+ID4gYXR0ZW1wdCwgdGhlIGRldmljZSdzIGFyY2hkYXRhIGlzIG5vdCBwb3B1bGF0ZWQgd2l0
aCBJT01NVSBpbmZvcm1hdGlvbgo+ID4gYW5kIHRoZSBiYWQgaGFwcGVucy4KPiA+IAo+ID4gSSdt
IG5vdCBzdXJlIGlmIHRoaXMgaXMgYSBwcm9wZXIgZml4IGJ1dCBpdCB3b3JrcyBmb3IgbWUgc28g
YXQgbGVhc3QgaXQKPiA+IGNvbmZpcm1zIGNvcnJlY3RuZXNzIG9mIG15IGFuYWx5c2lzIHJlc3Vs
dHMsIEkgYmVsaWV2ZS4gIFNvIGZhciBJCj4gPiBoYXZlbid0IGJlZW4gYWJsZSB0byBpZGVudGlm
eSBhIGdvb2QgcGxhY2Ugd2hlcmUgdGhlIHBvc3NpYmx5IG1pc3NpbmcKPiA+IElPTU1VIGJ1cyBk
ZXRhY2ggb24gZGV2aWNlIHVucGx1ZyBvcGVyYXRpb24gY291bGQgYmUgYWRkZWQuCj4gCj4gV2hp
Y2gga2VybmVsIHZlcnNpb24gYXJlIHlvdSB0ZXN0aW5nIHdpdGg/IERvZXMgaXQgY29udGFpbiBi
ZWxvdyBjb21taXQ/Cj4gCj4gY29tbWl0IDQ1OGI3YzhlMGRkZTEyZDE0MGUzNDcyYjgwOTE5Y2Ji
OWFlNzkzZjQKPiBBdXRob3I6IEx1IEJhb2x1IDxiYW9sdS5sdUBsaW51eC5pbnRlbC5jb20+Cj4g
RGF0ZTogICBUaHUgQXVnIDEgMTE6MTQ6NTggMjAxOSArMDgwMAoKSSB3YXMgdXNpbmcgYW4gaW50
ZXJuYWwgYnJhbmNoIGJhc2VkIG9uIGRybS10aXAgd2hpY2ggZGlkbid0IGNvbnRhaW4gdGhpcyAK
Y29tbWl0IHlldC4gIEZvcnR1bmF0ZWx5IGl0IGhhcyBiZWVuIGFscmVhZHkgbWVyZ2VkIGludG8g
ZHJtLXRpcCBvdmVyIGxhc3QgCndlZWtlbmQgYW5kIGhhcyBlZmZlY3RpdmVseSBmaXhlZCB0aGUg
aXNzdWUuCgpUaGFua3MsCkphbnVzegoKPiAgICAgIGlvbW11L3Z0LWQ6IERldGFjaCBkb21haW4g
d2hlbiBtb3ZlIGRldmljZSBvdXQgb2YgZ3JvdXAKPiAKPiAgICAgIFdoZW4gcmVtb3ZpbmcgYSBk
ZXZpY2UgZnJvbSBhbiBpb21tdSBncm91cCwgdGhlIGRvbWFpbiBzaG91bGQKPiAgICAgIGJlIGRl
dGFjaGVkIGZyb20gdGhlIGRldmljZS4gT3RoZXJ3aXNlLCB0aGUgc3RhbGUgZG9tYWluIGluZm8K
PiAgICAgIHdpbGwgc3RpbGwgYmUgY2FjaGVkIGJ5IHRoZSBkcml2ZXIgYW5kIHRoZSBkcml2ZXIg
d2lsbCByZWZ1c2UKPiAgICAgIHRvIGF0dGFjaCBhbnkgZG9tYWluIHRvIHRoZSBkZXZpY2UgYWdh
aW4uCj4gCj4gICAgICBDYzogQXNob2sgUmFqIDxhc2hvay5yYWpAaW50ZWwuY29tPgo+ICAgICAg
Q2M6IEphY29iIFBhbiA8amFjb2IuanVuLnBhbkBsaW51eC5pbnRlbC5jb20+Cj4gICAgICBDYzog
S2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+Cj4gICAgICBGaXhlczogYjcyOTc3ODNj
MmJiNiAoImlvbW11L3Z0LWQ6IFJlbW92ZSBkdXBsaWNhdGVkIGNvZGUgZm9yIAo+IGRldmljZSBo
b3RwbHVnIikKPiAgICAgIFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IFZsYWQgQnVzbG92IDx2bGFk
YnVAbWVsbGFub3guY29tPgo+ICAgICAgU3VnZ2VzdGVkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmlu
Lm11cnBoeUBhcm0uY29tPgo+ICAgICAgTGluazogaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkv
Ny8yNi8xMTMzCj4gICAgICBTaWduZWQtb2ZmLWJ5OiBMdSBCYW9sdSA8YmFvbHUubHVAbGludXgu
aW50ZWwuY29tPgo+ICAgICAgU2lnbmVkLW9mZi1ieTogSm9lcmcgUm9lZGVsIDxqcm9lZGVsQHN1
c2UuZGU+Cj4gCj4gQmVzdCByZWdhcmRzLAo+IEx1IEJhb2x1Cj4gCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVs
LmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmMgfCAzICsrKwo+
ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmMgYi9kcml2ZXJzL2lvbW11L2ludGVsLWlvbW11
LmMKPiA+IGluZGV4IDEyZDA5NGQwOGMwYS4uN2NkY2QwNTk1NDA4IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9pb21tdS9pbnRlbC1pb21tdS5jCj4gPiArKysgYi9kcml2ZXJzL2lvbW11L2ludGVs
LWlvbW11LmMKPiA+IEBAIC0yNDc3LDYgKzI0NzcsOSBAQCBzdGF0aWMgc3RydWN0IGRtYXJfZG9t
YWluIAoqZG1hcl9pbnNlcnRfb25lX2Rldl9pbmZvKHN0cnVjdCBpbnRlbF9pb21tdSAqaW9tbXUs
Cj4gPiAgIAkJaWYgKGluZm8yKSB7Cj4gPiAgIAkJCWZvdW5kICAgICAgPSBpbmZvMi0+ZG9tYWlu
Owo+ID4gICAJCQlpbmZvMi0+ZGV2ID0gZGV2Owo+ID4gKwo+ID4gKwkJCWlmIChkZXYgJiYgIWRl
di0+YXJjaGRhdGEuaW9tbXUpCj4gPiArCQkJCWRldi0+YXJjaGRhdGEuaW9tbXUgPSBpbmZvMjsK
PiA+ICAgCQl9Cj4gPiAgIAl9Cj4gPiAgIAo+ID4gCj4gCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
