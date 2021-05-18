Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E51387C57
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 17:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FAF36EBA7;
	Tue, 18 May 2021 15:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813DF6EBA7;
 Tue, 18 May 2021 15:21:04 +0000 (UTC)
IronPort-SDR: g9jxznvzZFzp4eszGpJ+Hzd/2iexujVquefPTV8MYeIsaHv3Nh61wPmzEZydNLmyeF5/Nw9OWb
 BQ4LRbfr9C9g==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="198787268"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="198787268"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 08:21:03 -0700
IronPort-SDR: VMYsIPugjzcTr2Kd5Ff23dYiSu6h9yAWhpC8LEaNcX5B9hKm9YtAhxa2lT3TiDoRvweaKSTKBf
 sE4otHxCFfbQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439083808"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 08:21:01 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
Date: Tue, 18 May 2021 17:20:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 09/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgNToxOCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPgo+Cj4gQW0gMTgu
MDUuMjEgdW0gMTc6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4KPj4gT24gNS8xOC8y
MSAxMDoyNiBBTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+PiBXZSBhcmUgY2FsbGluZyB0
aGUgZXZpY3Rpb25fdmFsdWFibGUgZHJpdmVyIGNhbGxiYWNrIGF0IGV2aWN0aW9uIAo+Pj4gdGlt
ZSB0bwo+Pj4gZGV0ZXJtaW5lIHdoZXRoZXIgd2UgYWN0dWFsbHkgY2FuIGV2aWN0IGEgYnVmZmVy
IG9iamVjdC4KPj4+IFRoZSB1cGNvbWluZyBpOTE1IFRUTSBiYWNrZW5kIG5lZWRzIHRoZSBzYW1l
IGZ1bmN0aW9uYWxpdHkgZm9yIHN3YXBvdXQsCj4+PiBhbmQgdGhhdCBtaWdodCBhY3R1YWxseSBi
ZSBiZW5lZmljaWFsIHRvIG90aGVyIGRyaXZlcnMgYXMgd2VsbC4KPj4+Cj4+PiBBZGQgYW4gZXZp
Y3Rpb25fdmFsdWFibGUgY2FsbCBhbHNvIGluIHRoZSBzd2Fwb3V0IHBhdGguIFRyeSB0byBrZWVw
IHRoZQo+Pj4gY3VycmVudCBiZWhhdmlvdXIgZm9yIGFsbCBkcml2ZXJzIGJ5IHJldHVybmluZyB0
cnVlIGlmIHRoZSBidWZmZXIgCj4+PiBvYmplY3QKPj4+IGlzIGFscmVhZHkgaW4gdGhlIFRUTV9Q
TF9TWVNURU0gcGxhY2VtZW50LiBXZSBjaGFuZ2UgYmVoYXZpb3VyIGZvciB0aGUKPj4+IGNhc2Ug
d2hlcmUgYSBidWZmZXIgb2JqZWN0IGlzIGluIGEgVFQgYmFja2VkIHBsYWNlbWVudCB3aGVuIHN3
YXBwZWQgCj4+PiBvdXQsCj4+PiBpbiB3aGljaCBjYXNlIHRoZSBkcml2ZXJzIG5vcm1hbCBldmlj
dGlvbl92YWx1YWJsZSBwYXRoIGlzIHJ1bi4KPj4+Cj4+PiBGaW5hbGx5IGV4cG9ydCB0dG1fdHRf
dW5wb3B1bGF0ZSgpIGFuZCBkb24ndCBzd2FwIG91dCBib3MKPj4+IHRoYXQgYXJlIG5vdCBwb3B1
bGF0ZWQuIFRoaXMgYWxsb3dzIGEgZHJpdmVyIHRvIHB1cmdlIGEgYm8gYXQKPj4+IHN3YXBvdXQg
dGltZSBpZiBpdHMgY29udGVudCBpcyBubyBsb25nZXIgdmFsdWFibGUgcmF0aGVyIHRoYW4gdG8K
Pj4+IGhhdmUgVFRNIHN3YXAgdGhlIGNvbnRlbnRzIG91dC4KPj4+Cj4+PiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogVGhv
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+Pgo+PiBD
aHJpc3RpYW4sCj4+Cj4+IEhlcmUgd2UgaGF2ZSBhIHR0bV90dF91bnBvcHVsYXRlKCkgZXhwb3J0
IGFzIHdlbGwgYXQgdGhlIGVuZC4gSSAKPj4gZmlndXJlIHlvdSB3aWxsIHB1c2ggYmFjayBvbiB0
aGF0IG9uZS4gV2hhdCB3ZSByZWFsbHkgbmVlZCBpcyBhIAo+PiBmdW5jdGlvbmFsaXR5IHRvIGp1
c3QgZHJvcCB0aGUgYm8gY29udGVudHMgYW5kIGVuZCB1cCBpbiBzeXN0ZW0gCj4+IG1lbW9yeSB1
bnBvcHVsYXRlZC4gU2hvdWxkIEkgcGVyaGFwcyBhZGQgYSB1dGlsaXR5IGZ1bmN0aW9uIHRvIGRv
IAo+PiB0aGF0IGluc3RlYWQ/IGxpa2UgdHRtX2JvX3B1cmdlKCk/Cj4KPiBXZSBhbHJlYWR5IGhh
dmUgdGhhdC4gSnVzdCBjYWxsIHR0bV9ib192YWxpZGF0ZSgpIHdpdGhvdXQgYW55IHBsYWNlIHRv
IAo+IHB1dCB0aGUgYnVmZmVyLgo+Cj4gU2VlIGhvdyB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZygp
IGlzIHVzZWQuCj4KPiBDaHJpc3RpYW4uCgpPSywgc28gaXMgdGhhdCByZWVudHJhbnQgZnJvbSB0
aGUgbW92ZSgpIG9yIHN3YXBfbm90aWZ5KCkgY2FsbGJhY2suCgovVGhvbWFzCgoKCj4KPj4KPj4g
VGhhbmtzLAo+Pgo+PiBUaG9tYXMKPj4KPj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
