Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5203877F6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7588E6E87D;
	Tue, 18 May 2021 11:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FCB6E107;
 Tue, 18 May 2021 11:44:45 +0000 (UTC)
IronPort-SDR: jfEn8YzdpfBlHsstugyIxS81sYmoVSY4NdVmbe60j1ZafE3jGiS55VKTdB+UgImcePoQ0Pctg8
 13UG6Qp4hM5g==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198737821"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="198737821"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:44:44 -0700
IronPort-SDR: y0RAYaHjVUz9YEUa/3UsihrDAquGBM4pMCX7XZXXXORH/IoBznbUQd41k3srGw8khf644Yztnc
 aWTDShUHU3cQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439403255"
Received: from cbackhau-mobl.ger.corp.intel.com (HELO [10.252.37.121])
 ([10.252.37.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:44:43 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-7-thomas.hellstrom@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ce76a4ba-36a2-fb8c-bf47-366e8b030b29@linux.intel.com>
Date: Tue, 18 May 2021 13:44:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210518082701.997251-7-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 06/15] drm/i915/ttm: Embed a ttm buffer
 object in the i915 gem object
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTgtMDUtMjAyMSBvbSAxMDoyNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+IEVtYmVk
IGEgc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0IGludG8gdGhlIGk5MTUgZ2VtIG9iamVjdCwgbWFr
aW5nIHN1cmUKPiB3ZSBhbGlhcyB0aGUgZ2VtIG9iamVjdCBwYXJ0LiBJdCdzIGEgYml0IHVuZm9y
dHVuYXRlIHRoYXQgdGhlCj4gc3RydWN0IHR0bV9idWZmZXJfb2piZWN0IGVtYmVkcyBhIGdlbSBv
YmplY3Qgc2luY2Ugd2Ugb3RoZXJ3aXNlIGNvdWxkCj4gbWFrZSB0aGUgVFRNIHBhcnQgcHJpdmF0
ZSB0byB0aGUgVFRNIGJhY2tlbmQsIGFuZCB1c2UgdGhlIHVzdWFsCj4gaTkxNSBnZW0gb2JqZWN0
IGZvciB0aGUgb3RoZXIgYmFja2VuZHMuCj4gVG8gbWFrZSB0aGlzIGEgYml0IG1vcmUgc3RvcmFn
ZSBlZmZpY2llbnQgZm9yIHRoZSBvdGhlciBiYWNrZW5kcywKPiB3ZSdkIGhhdmUgdG8gdXNlIGEg
cG9pbnRlciBmb3IgdGhlIGdlbSBvYmplY3Qgd2hpY2ggd291bGQgcmVxdWlyZQo+IGEgbG90IG9m
IGNoYW5nZXMgaW4gdGhlIGRyaXZlci4gV2UgcG9zdHBvbmUgdGhhdCBmb3IgbGF0ZXIuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuYyAgICAgICB8ICA3ICsrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF90eXBlcy5oIHwgMTIgKysrKysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+IGluZGV4IGFiYWRmMDk5NGFkMC4uYzg5NTNlM2Y1Yzcw
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+IEBA
IC02Miw2ICs2MiwxMyBAQCB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0KHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCj4gIAkJCSAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3Rfb3BzICpvcHMsCj4gIAkJCSAgc3RydWN0IGxvY2tfY2xhc3Nfa2V5ICprZXksIHVuc2lnbmVk
IGZsYWdzKQo+ICB7Cj4gKwkvKgo+ICsJICogQSBnZW0gb2JqZWN0IGlzIGVtYmVkZGVkIGJvdGgg
aW4gYSBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgOi8gYW5kCj4gKwkgKiBpbiBhIGRybV9pOTE1
X2dlbV9vYmplY3QuIE1ha2Ugc3VyZSB0aGV5IGFyZSBhbGlhc2VkLgo+ICsJICovCj4gKwlCVUlM
RF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKCpvYmopLCBiYXNlKSAhPQo+ICsJCSAgICAgb2Zmc2V0
b2YodHlwZW9mKCpvYmopLCBfX2RvX25vdF9hY2Nlc3MuYmFzZSkpOwo+ICsKPiAgCXNwaW5fbG9j
a19pbml0KCZvYmotPnZtYS5sb2NrKTsKPiAgCUlOSVRfTElTVF9IRUFEKCZvYmotPnZtYS5saXN0
KTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
dHlwZXMuaAo+IGluZGV4IGRiZDdmZmZlOTU2ZS4uOThmNjlkOGZkMzdkIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+IEBAIC0x
MCw2ICsxMCw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9tbXVfbm90aWZpZXIuaD4KPiAgCj4gICNp
bmNsdWRlIDxkcm0vZHJtX2dlbS5oPgo+ICsjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fYXBpLmg+
Cj4gICNpbmNsdWRlIDx1YXBpL2RybS9pOTE1X2RybS5oPgo+ICAKPiAgI2luY2x1ZGUgImk5MTVf
YWN0aXZlLmgiCj4gQEAgLTk5LDcgKzEwMCwxNiBAQCBzdHJ1Y3QgaTkxNV9nZW1fb2JqZWN0X3Bh
Z2VfaXRlciB7Cj4gIH07Cj4gIAo+ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7Cj4gLQlz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgYmFzZTsKPiArCS8qCj4gKwkgKiBXZSBtaWdodCBoYXZlIHJl
YXNvbiB0byByZXZpc2l0IHRoZSBiZWxvdyBzaW5jZSBpdCB3YXN0ZXMKPiArCSAqIGEgbG90IG9m
IHNwYWNlIGZvciBub24tdHRtIGdlbSBvYmplY3RzLgo+ICsJICogSW4gYW55IGNhc2UsIGFsd2F5
cyB1c2UgdGhlIGFjY2Vzc29ycyBmb3IgdGhlIHR0bV9idWZmZXJfb2JqZWN0Cj4gKwkgKiB3aGVu
IGFjY2Vzc2luZyBpdC4KPiArCSAqLwo+ICsJdW5pb24gewo+ICsJCXN0cnVjdCBkcm1fZ2VtX29i
amVjdCBiYXNlOwo+ICsJCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCBfX2RvX25vdF9hY2Nlc3M7
Cj4gKwl9Owo+ICAKPiAgCWNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyAqb3Bz
Owo+ICAKCkNvbnNpZGVyaW5nIERhdmUgZGlkIHJvdWdobHkgdGhlIHNhbWUgaW4gaGlzIHBhdGNo
ZXMsIEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhIGJldHRlciB3YXkgdG8gZG8gdGhpcy4KCkFsdGhv
dWdoIGhlIGp1c3Qgd3JhcHBlZCBiYXNlLmJhc2UgdXNpbmcgc2l6ZXMuIFRoaXMgd29ya3MgdG9v
LiBJdCBwcm9iYWJseSBuZWVkcyBzb21lb25lIGVsc2UncyByLWIgdG9vLCB0byBlbnN1cmUgdGhp
cyBpcyBhbGxvd2VkLgoKQWNrZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
