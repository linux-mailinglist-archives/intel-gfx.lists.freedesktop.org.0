Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6FB3931B5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258B86F3FE;
	Thu, 27 May 2021 15:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959E46F3FA;
 Thu, 27 May 2021 15:05:12 +0000 (UTC)
IronPort-SDR: ruK5SZTlAJbtuWWruQFoxuFuIlqGer/0i9JSeTl5xc+s5HfMgdve8rhlZKjFg5RSCnnk4G06S8
 y1lSr0Hnk3YA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="183090380"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="183090380"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:05:11 -0700
IronPort-SDR: rX0iP5n4vxkD8U6eoadxTbMGWSM0uO0cFv5k4VCfkp7Khj0slTX2ncW5ygf082L6L2HNdxSPmA
 XaZgVOXPsylQ==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="414942024"
Received: from ibanaga-mobl.ger.corp.intel.com ([10.249.254.58])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:05:08 -0700
Message-ID: <e594a1d45b22e92e052d1070beadc5928e5c0ba1.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 17:05:06 +0200
In-Reply-To: <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
References: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
 <883eab20-4326-d14a-2eb0-5e95f174a0d9@amd.com>
 <8b3382726763050334a6cb214f7ba560eebf8f28.camel@linux.intel.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] drm/ttm: Fix swapping dereferences of
 freed memory
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

T24gVGh1LCAyMDIxLTA1LTI3IGF0IDE3OjAxICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90
ZToKPiBPbiBUaHUsIDIwMjEtMDUtMjcgYXQgMTY6NTQgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6Cj4gPiBBbSAyNy4wNS4yMSB1bSAxNjoxOSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7Zt
Ogo+ID4gPiBUaGUgc3dhcHBpbmcgY29kZSB3YXMgZGVyZWZlcmVuY2UgYm8tPnR0bSBwb2ludGVy
cyB3aXRob3V0IGhhdmluZwo+ID4gPiB0aGUKPiA+ID4gZG1hLXJlc3YgbG9jayBoZWxkLiBBbHNv
IGl0IG1pZ2h0IHRyeSB0byBzd2FwIG91dCB1bnBvcHVsYXRlZAo+ID4gPiBib3MuCj4gPiA+IAo+
ID4gPiBGaXggdGhpcyBieSBtb3ZpbmcgdGhlIGJvLT50dG0gZGVyZWZlcmVuY2UgdW50aWwgd2Ug
aGF2ZSB0aGUKPiA+ID4gcmVzZXJ2YXRpb24KPiA+ID4gbG9jay4gQ2hlY2sgdGhhdCB0aGUgdHRt
X3R0IGlzIHBvcHVsYXRlZCBhZnRlciB0aGUgc3dhcF9ub3RpZnkKPiA+ID4gY2FsbGJhY2suCj4g
PiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bQo+ID4gPiA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiDCoCBkcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9iby5jwqDCoMKgwqAgfCAxNiArKysrKysrKysrKysrKystCj4gPiA+IMKg
IGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2RldmljZS5jIHzCoCA4ICsrKy0tLS0tCj4gPiA+IMKg
IDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+ID4g
Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+ID4gPiBpbmRleCA5ZjUzNTA2YTgyZmMuLjg2
MjEzZDM3NjU3YiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8u
Ywo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gPiA+IEBAIC0xMTYz
LDYgKzExNjMsMTYgQEAgaW50IHR0bV9ib19zd2Fwb3V0KHN0cnVjdAo+ID4gPiB0dG1fYnVmZmVy
X29iamVjdAo+ID4gPiAqYm8sIHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKCF0dG1fYm9fZXZpY3Rfc3dhcG91dF9hbGxvd2FibGUoYm8sIGN0
eCwgJnBsYWNlLAo+ID4gPiAmbG9ja2VkLCBOVUxMKSkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gLUVCVVNZOwo+ID4gPiDCoCAKPiA+ID4gK8KgwqDCoMKgwqDC
oMKgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYm8tPmJhc2UucmVzdik7Cj4gPiA+ICsKPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKCFiby0+dHRtIHx8Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
by0+dHRtLT5wYWdlX2ZsYWdzICYgVFRNX1BBR0VfRkxBR19TRyB8fAo+ID4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqAgYm8tPnR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU1dBUFBFRCkg
ewo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGxvY2tlZCkKPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl91
bmxvY2soYm8tPmJhc2UucmVzdik7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gLUVCVVNZOwo+ID4gPiArwqDCoMKgwqDCoMKgwqB9Cj4gPiA+ICsKPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoGlmICghdHRtX2JvX2dldF91bmxlc3NfemVybyhibykpIHsKPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobG9ja2VkKQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl91bmxvY2soYm8t
PmJhc2UucmVzdik7Cj4gPiA+IEBAIC0xMjE1LDcgKzEyMjUsOCBAQCBpbnQgdHRtX2JvX3N3YXBv
dXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0Cj4gPiA+ICpibywgc3RydWN0IHR0bV9vcGVyYXRp
b25fY3R4ICpjdHgsCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoYm8tPmJkZXYtPmZ1bmNzLT5z
d2FwX25vdGlmeSkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBiby0+YmRl
di0+ZnVuY3MtPnN3YXBfbm90aWZ5KGJvKTsKPiA+ID4gwqAgCj4gPiA+IC3CoMKgwqDCoMKgwqDC
oHJldCA9IHR0bV90dF9zd2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLCBnZnBfZmxhZ3MpOwo+ID4g
PiArwqDCoMKgwqDCoMKgwqBpZiAodHRtX3R0X2lzX3BvcHVsYXRlZChiby0+dHRtKSkKPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IHR0bV90dF9zd2Fwb3V0KGJvLT5i
ZGV2LCBiby0+dHRtLAo+ID4gPiBnZnBfZmxhZ3MpOwo+ID4gCj4gPiBFeGFjdGx5IHRoYXQgaXMg
d2hhdCBJIHdvbid0IHJlY29tbWVuZC4gV2Ugd291bGQgdHJ5IHRvIHN3YXAgb3V0Cj4gPiB0aGUg
Cj4gPiBzYW1lIEJPIG92ZXIgYW5kIG92ZXIgYWdhaW4gd2l0aCB0aGF0Lgo+IAo+IEJ1dCB3ZSB3
b3VsZG4ndCBzaW5jZSB0aGUgQk8gaXMgdGFrZW4gb2ZmIHRoZSBMUlUgYW5kIG5ldmVyIHJlLWFk
ZGVkLAo+IAo+IApJbiBmYWN0LCB3ZSdkIHByb2JhYmx5IG1pZ2h0IHdhbnQgdG8gdGFrZSB0aGUg
IWJvLT50dG0gYm9zIG9mZiB0aGUgTFJVCmFzIHdlbGwuLgoKL1Rob21hcwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
