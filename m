Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4360A39EF7D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CAC76EAD0;
	Tue,  8 Jun 2021 07:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4CE66EAD0;
 Tue,  8 Jun 2021 07:26:13 +0000 (UTC)
IronPort-SDR: 7Yg6wR7OKCcqTABQJBqq9I2Tk2UJUlSNdS4u48lPykdQ/5aZ19cjuuSAo8a1HB/THxUw4rGxmc
 4n2dvX1qryCg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="191898581"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="191898581"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:26:13 -0700
IronPort-SDR: DpzJw+QhUy01TxzSUWWyK/xL7EEADHuFh3ABYewH5Q+4ANAyKKv5VogFEXXanDVIlk92It8XEr
 fShPsOvUYOKQ==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="440361268"
Received: from delmer-mobl.ger.corp.intel.com (HELO [10.249.254.231])
 ([10.249.254.231])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:26:11 -0700
Message-ID: <044baf68ef8e6fe11941fdb43a9ad404f46c6d3a.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 09:26:09 +0200
In-Reply-To: <20210607182210.99036-5-matthew.auld@intel.com>
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-5-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/ttm: pass along the
 I915_BO_ALLOC_CONTIGUOUS
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBNb24sIDIwMjEtMDYtMDcgYXQgMTk6MjIgKzAxMDAsIE1hdHRoZXcgQXVsZCB3cm90
ZToKPiBDdXJyZW50bHkgd2UganVzdCBpZ25vcmUgdGhlIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9V
UyBmbGFnLCB3aGljaCBpcwo+IGZpbmUgc2luY2UgZXZlcnl0aGluZyBpcyBhbHJlYWR5IGNvbnRp
Z3VvdXMgd2l0aCB0aGUgdHRtIHJhbmdlCj4gbWFuYWdlci4KPiBIb3dldmVyIGluIHRoZSBuZXh0
IHBhdGNoIHdlIHdhbnQgdG8gc3dpdGNoIG92ZXIgdG8gdGhlIHR0bSBidWRkeQo+IG1hbmFnZXIs
IHdoZXJlIGFsbG9jYXRpb25zIGFyZSBieSBkZWZhdWx0IG5vdCBjb250aWd1b3VzLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzog
VGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0t
LQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIHwgMTUgKysrKysr
KysrKysrLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3R0bS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiBpbmRl
eCA3M2Q1MmRmOGYyYmUuLjBiMGZjZTQ0NWU5YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fdHRtLmMKPiBAQCAtODYsMTAgKzg2LDE4IEBAIGk5MTVfdHRtX3NlbGVjdF90
dF9jYWNoaW5nKGNvbnN0IHN0cnVjdAo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiDCoAo+
IMKgc3RhdGljIHZvaWQKPiDCoGk5MTVfdHRtX3BsYWNlX2Zyb21fcmVnaW9uKGNvbnN0IHN0cnVj
dCBpbnRlbF9tZW1vcnlfcmVnaW9uICptciwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHR0bV9wbGFjZSAqcGxhY2UpCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCB0dG1f
cGxhY2UgKnBsYWNlLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoG1l
bXNldChwbGFjZSwgMCwgc2l6ZW9mKCpwbGFjZSkpOwo+IMKgwqDCoMKgwqDCoMKgwqBwbGFjZS0+
bWVtX3R5cGUgPSBpbnRlbF9yZWdpb25fdG9fdHRtX3R5cGUobXIpOwo+ICsKPiArwqDCoMKgwqDC
oMKgwqBzd2l0Y2gobXItPnR5cGUpIHsKPiArwqDCoMKgwqDCoMKgwqBjYXNlIElOVEVMX01FTU9S
WV9MT0NBTDoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGZsYWdzICYgSTkx
NV9CT19BTExPQ19DT05USUdVT1VTKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcGxhY2UtPmZsYWdzID0gVFRNX1BMX0ZMQUdfQ09OVElHVU9VUzsKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4gK8KgwqDCoMKgwqDCoMKgfQoK
RG8gd2UgbmVlZCB0byByZXN0cmljdCB0aGlzIHRvIElOVEVMX01FTU9SWV9MT0NBTD8gV2hpbGUg
aXQgZG9lc24ndApjdXJyZW50bHkgbWFrZSBtdWNoIHNlbnNlIGZvciBvdGhlciBtZW1vcnkgcmVn
aW9ucywgbm8gcG9pbnQgaW4gbm90CmZvcndhcmRpbmcgZm9yIGFsbD8KCi9UaG9tYXMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
