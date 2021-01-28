Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E3306D1F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEE76E8CA;
	Thu, 28 Jan 2021 05:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD7F6E8CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:54:28 +0000 (UTC)
IronPort-SDR: IpUVtmskScoNJJz62k5vNO9bna2GoB3HEHbylH5/B+Jzar6NcWaqtmEF4RjQ6jvX/p48SOOKRi
 Mo+YxeO64TqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="180328414"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="180328414"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:54:26 -0800
IronPort-SDR: zp9vOzaWjSgSQjUW0Eux+OB4HxtNIM6KamlTp0Q7eZzUdt9QbKf6UxRcN4UOkSuLa4MAB/bL5X
 DrA0z0FeP9+A==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="362730297"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO [10.251.24.125])
 ([10.251.24.125])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:54:26 -0800
To: "Souza, Jose" <jose.souza@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-3-aditya.swarup@intel.com>
 <20210127150733.ntbtt2vrhw5aqpxx@ldmartin-desk1>
 <df70fa3d1af8bf8479b7baedf6b904d8ad59ff9b.camel@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <6d535e16-eb6a-8fbf-8c30-72f19db9138d@intel.com>
Date: Wed, 27 Jan 2021 21:54:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <df70fa3d1af8bf8479b7baedf6b904d8ad59ff9b.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/adl_s: MCHBAR memory info
 registers are moved
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMS8yNy8yMSA4OjQ4IEFNLCBTb3V6YSwgSm9zZSB3cm90ZToKPiBPbiBXZWQsIDIwMjEtMDEt
MjcgYXQgMDc6MDcgLTA4MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj4gT24gVHVlLCBKYW4g
MjYsIDIwMjEgYXQgMDg6MTE6NTJQTSAtMDgwMCwgQWRpdHlhIFN3YXJ1cCB3cm90ZToKPj4+IEZy
b206IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4KPj4+Cj4+PiBUaGUgY3J3
ZWJ2aWV3IGluZGljYXRlcyBvbiBBREwtUyB0aGF0IHNvbWUgb2Ygb3VyIE1DSEJBUgo+Pj4gcmVn
aXN0ZXJzIGhhdmUgbW92ZWQgZnJvbSB0aGVpciB0cmFkaXRpb25hbCAweDUwWFggb2Zmc2V0cyB0
bwo+Pj4gbmV3IGxvY2F0aW9ucy4gVGhlIG1lYW5pbmcgYW5kIGJpdCBsYXlvdXQgb2YgdGhlIHJl
Z2lzdGVycwo+Pj4gcmVtYWluIHNhbWUuCj4+Pgo+Pj4gdjI6IFNpbXBsaWZ5IGxvZ2ljIHRvIGEg
c2luZ2xlIGlmIGVsc2UgY2hhaW4gYW5kIGZpeCBpbmRlbnRzLihMdWNhcykKPj4+Cj4+PiBDYzog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+PiBDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KPj4+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29t
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5j
b20+Cj4+PiAtLS0KPj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICB8ICA1ICsr
KysrCj4+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgfCAyNCArKysrKysrKysr
KysrKysrKystLS0tLS0KPj4+IDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4+IGluZGV4IGFhODcy
NDQ2MzM3Yi4uMzAzMTg5NzIzOWEwIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
Pj4gQEAgLTEwOTE2LDYgKzEwOTE2LDggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4+PiAjZGVm
aW5lICBTS0xfRFJBTV9ERFJfVFlQRV9MUEREUjMJCSgyIDw8IDApCj4+PiAjZGVmaW5lICBTS0xf
RFJBTV9ERFJfVFlQRV9MUEREUjQJCSgzIDw8IDApCj4+Pgo+Pj4gKyNkZWZpbmUgQURMU19NQURf
SU5URVJfQ0hBTk5FTF8wXzBfMF9NQ0hCQVIgX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NOQiAr
IDB4NjA0OCkKPj4+ICsKPj4+ICNkZWZpbmUgU0tMX01BRF9ESU1NX0NIMF8wXzBfMF9NQ0hCQVJf
TUNNQUlOCV9NTUlPKE1DSEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDUwMEMpCj4+PiAjZGVmaW5l
IFNLTF9NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSX01DTUFJTglfTU1JTyhNQ0hCQVJfTUlSUk9S
X0JBU0VfU05CICsgMHg1MDEwKQo+Pj4gI2RlZmluZSAgU0tMX0RSQU1fU19TSElGVAkJCTE2Cj4+
PiBAQCAtMTA5NDMsNiArMTA5NDUsOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPj4+ICNkZWZp
bmUgIENOTF9EUkFNX1JBTktfMwkJCSgweDIgPDwgOSkKPj4+ICNkZWZpbmUgIENOTF9EUkFNX1JB
TktfNAkJCSgweDMgPDwgOSkKPj4+Cj4+PiArI2RlZmluZSBBRExTX01BRF9ESU1NX0NIMF8wXzBf
MF9NQ0hCQVIJCV9NTUlPKE1DSEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDYwNTQpCj4+PiArI2Rl
ZmluZSBBRExTX01BRF9ESU1NX0NIMV8wXzBfMF9NQ0hCQVIJCV9NTUlPKE1DSEJBUl9NSVJST1Jf
QkFTRV9TTkIgKyAweDYwNTgpCj4+PiArCj4+PiAvKgo+Pj4gwqAqIFBsZWFzZSBzZWUgaHN3X3Jl
YWRfZGNvbXAoKSBhbmQgaHN3X3dyaXRlX2Rjb21wKCkgYmVmb3JlIHVzaW5nIHRoaXMgcmVnaXN0
ZXIsCj4+PiDCoCogc2luY2Ugb24gSFNXIHdlIGNhbid0IHdyaXRlIHRvIGl0IHVzaW5nIGludGVs
X3VuY29yZV93cml0ZS4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMKPj4+IGluZGV4IDQ3
NTQyOTZhMjUwZS4uODRmODRlMTE4NTMxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHJhbS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cmFtLmMKPj4+IEBAIC0xODEsMTcgKzE4MSwyNCBAQCBza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5m
byhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4+IHsKPj4+IAlzdHJ1Y3QgZHJhbV9p
bmZvICpkcmFtX2luZm8gPSAmaTkxNS0+ZHJhbV9pbmZvOwo+Pj4gCXN0cnVjdCBkcmFtX2NoYW5u
ZWxfaW5mbyBjaDAgPSB7fSwgY2gxID0ge307Cj4+PiArCWk5MTVfcmVnX3QgY2gwX3JlZywgY2gx
X3JlZzsKPj4+IAl1MzIgdmFsOwo+Pj4gCWludCByZXQ7Cj4+Pgo+Pj4gLQl2YWwgPSBpbnRlbF91
bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLAo+Pj4gLQkJCQlTS0xfTUFEX0RJTU1fQ0gwXzBfMF8w
X01DSEJBUl9NQ01BSU4pOwo+Pj4gKwlpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkpIHsKPj4+ICsJ
CWNoMF9yZWcgPSBBRExTX01BRF9ESU1NX0NIMF8wXzBfMF9NQ0hCQVI7Cj4+PiArCQljaDFfcmVn
ID0gQURMU19NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSOwo+Pj4gKwl9IGVsc2Ugewo+Pj4gKwkJ
Y2gwX3JlZyA9IEFETFNfTUFEX0RJTU1fQ0gwXzBfMF8wX01DSEJBUjsKPj4+ICsJCWNoMV9yZWcg
PSBBRExTX01BRF9ESU1NX0NIMV8wXzBfMF9NQ0hCQVI7Cj4+Cj4+IEkgY29tbWVudGVkIG9uIHRo
ZSB3cm9uZyB2ZXJzaW9uIG9mIHRoZSBwYXRjaCwgYnV0IHRoZSBidWcgaXMgc3RpbGwKPj4gaGVy
ZS4gQW5kIHRoaXMgcGF0Y2ggY29uZmxpY3Qgd2l0aCBKb3NlJ3MgcGF0Y2guCj4gCj4gWWVwLCBm
b3IgR0VOMTIrIHdlIHNob3VsZCB1c2UgUENPREUgdG8gcmVhZCBEUkFNIGluZm9ybWF0aW9uLgo+
IEx1Y2FzIGxlZnQgc29tZSBjb21tZW50cywgd29ya2luZyBpbiB0aGUgZml4ZXMgYW5kIHNvb24g
YW5vdGhlciB2ZXJzaW9uIHdpbGwgYmUgc2VuZC4KPiBJdCBhbHJlYWR5IHRha2VzIGNhcmUgb2Yg
YWxsIEdFTjEyIHBsYXRmb3Jtcy4KPiAKPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzg2MDkyLwoKU2luY2UgSSBkaWRuJ3Qgc2VlIHRoZSByZW1vdmFsIG9mIGNvZGUg
CnNrbF9kcmFtX2dldF9jaGFubmVsc19pbmZvL2dldF9kcmFtX3R5cGUsIEkgaGF2ZSBjb3JyZWN0
ZWQgdGhpcyBwYXRjaCBhbmQgc3VibWl0dGVkIGFzIHBhcnQgb2YgcmV2MgpqdXN0IGluIGNhc2Ug
dG8gcGxlYXNlIENJIG5vdCB0byByZXBvcnQgZXJyb3JzIHdpdGggdGhlIG5leHQgcmV2aXNpb24u
IFBsZWFzZSBpZ25vcmUvZHJvcCB0aGUgTUNIQkFSIHBhdGNoCmlmIHlvdXIgcGF0Y2ggc2VyaWVz
IGhhcyBiZWVuIG1lcmdlZC4KCkFkaXR5YSAKCj4gCj4+Cj4+IEx1Y2FzIERlIE1hcmNoaQo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
