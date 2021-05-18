Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D76C2387730
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACAA6E873;
	Tue, 18 May 2021 11:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A48C6E873;
 Tue, 18 May 2021 11:12:26 +0000 (UTC)
IronPort-SDR: X9b9lFgj+IPcyWknW7+f3yPAw1IlSxHdeKrpQY4YuxjUY3UqkDyi4bYKMLXRnZ0Ft+fVQQS7dy
 alKdU6h3RMjg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="188092907"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="188092907"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:12:25 -0700
IronPort-SDR: Y1FX7ZMijgBnWpRH4I2LwWHWC0K6tt+2/UsguJRekCgl4kCGbPdMaefUuznBNfc3fsyM2uuTTf
 34BptccjAIyQ==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="439388231"
Received: from cbackhau-mobl.ger.corp.intel.com (HELO [10.252.37.121])
 ([10.252.37.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:12:24 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-2-thomas.hellstrom@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <582d6629-1413-2c7f-d09d-aeef43f5c8c1@linux.intel.com>
Date: Tue, 18 May 2021 13:12:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210518082701.997251-2-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 01/15] drm/i915: Untangle the vma
 pages_mutex
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkhleSwKClRoaXMgbmVlZHMgYSBzbWFsbCBmaXgsIG90aGVyd2lzZSBsb29rcyBnb29kLgoKT3Ag
MTgtMDUtMjAyMSBvbSAxMDoyNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+IEZyb206IFRo
b21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KPgo+IEFueSBzbGVl
cGluZyBkbWFfcmVzdiBsb2NrIHRha2VuIHdoaWxlIHRoZSB2bWEgcGFnZXNfbXV0ZXggaXMgaGVs
ZAo+IHdpbGwgY2F1c2UgYSBsb2NrZGVwIHNwbGF0Lgo+IE1vdmUgdGhlIGk5MTVfZ2VtX29iamVj
dF9waW5fcGFnZXMoKSBjYWxsIG91dCBvZiB0aGUgcGFnZXNfbXV0ZXgKPiBjcml0aWNhbCBzZWN0
aW9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwg
MzMgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
Ywo+IGluZGV4IGE2Y2QwZmE2Mjg0Ny4uN2IxYzBmNGU2MGQ3IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jCj4gQEAgLTgwMCwzMiArODAwLDM3IEBAIHN0YXRpYyBib29sIHRyeV9xYWRfcGlu
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gIHN0YXRpYyBpbnQg
dm1hX2dldF9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgewo+ICAJaW50IGVyciA9IDA7
Cj4gKwlib29sIHBpbm5lZF9wYWdlcyA9IGZhbHNlOwo+ICAKPiAgCWlmIChhdG9taWNfYWRkX3Vu
bGVzcygmdm1hLT5wYWdlc19jb3VudCwgMSwgMCkpCj4gIAkJcmV0dXJuIDA7Cj4gIAo+ICsJaWYg
KHZtYS0+b2JqKSB7Cj4gKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyh2bWEtPm9i
aik7Cj4gKwkJaWYgKGVycikKPiArCQkJcmV0dXJuIGVycjsKPiArCQlwaW5uZWRfcGFnZXMgPSB0
cnVlOwo+ICsJfQo+ICsKPiAgCS8qIEFsbG9jYXRpb25zIGFob3khICovCj4gLQlpZiAobXV0ZXhf
bG9ja19pbnRlcnJ1cHRpYmxlKCZ2bWEtPnBhZ2VzX211dGV4KSkKPiAtCQlyZXR1cm4gLUVJTlRS
Owo+ICsJaWYgKG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmdm1hLT5wYWdlc19tdXRleCkpIHsK
PiArCQllcnIgPSAtRUlOVFI7Cj4gKwkJZ290byB1bnBpbjsKPiArCX0KPiAgCj4gIAlpZiAoIWF0
b21pY19yZWFkKCZ2bWEtPnBhZ2VzX2NvdW50KSkgewo+IC0JCWlmICh2bWEtPm9iaikgewo+IC0J
CQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKHZtYS0+b2JqKTsKPiAtCQkJaWYgKGVy
cikKPiAtCQkJCWdvdG8gdW5sb2NrOwo+IC0JCX0KPiAtCj4gIAkJZXJyID0gdm1hLT5vcHMtPnNl
dF9wYWdlcyh2bWEpOwo+IC0JCWlmIChlcnIpIHsKPiAtCQkJaWYgKHZtYS0+b2JqKQo+IC0JCQkJ
aTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZtYS0+b2JqKTsKPiArCQlpZiAoZXJyKQo+ICAJ
CQlnb3RvIHVubG9jazsKPiAtCQl9Cj4gKwkJcGlubmVkX3BhZ2VzID0gZmFsc2U7Cj4gIAl9Cj4g
IAlhdG9taWNfaW5jKCZ2bWEtPnBhZ2VzX2NvdW50KTsKPiAgCj4gIHVubG9jazoKPiAgCW11dGV4
X3VubG9jaygmdm1hLT5wYWdlc19tdXRleCk7Cj4gK3VucGluOgo+ICsJaWYgKHBpbm5lZF9wYWdl
cykKPiArCQlfX2k5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyh2bWEtPm9iaik7Cj4gIAo+ICAJ
cmV0dXJuIGVycjsKPiAgfQo+IEBAIC04MzgsMTAgKzg0MywxMCBAQCBzdGF0aWMgdm9pZCBfX3Zt
YV9wdXRfcGFnZXMoc3RydWN0IGk5MTVfdm1hICp2bWEsIHVuc2lnbmVkIGludCBjb3VudCkKPiAg
CWlmIChhdG9taWNfc3ViX3JldHVybihjb3VudCwgJnZtYS0+cGFnZXNfY291bnQpID09IDApIHsK
PiAgCQl2bWEtPm9wcy0+Y2xlYXJfcGFnZXModm1hKTsKPiAgCQlHRU1fQlVHX09OKHZtYS0+cGFn
ZXMpOwo+IC0JCWlmICh2bWEtPm9iaikKPiAtCQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2Vz
KHZtYS0+b2JqKTsKPiAgCX0KPiAgCW11dGV4X3VubG9jaygmdm1hLT5wYWdlc19tdXRleCk7Cj4g
KwlpZiAodm1hLT5vYmopCj4gKwkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZtYS0+b2Jq
KTsKCllvdSdyZSB1bmNvbmRpdGlvbmFsbHkgdW5waW5uaW5nIHBhZ2VzIGhlcmUsIGlmIHBhZ2Vz
X2NvdW50IHdhc24ndCBkcm9wcGVkIHRvIDAsIHdlIHdpbGwgZ28gbmVnYXRpdmUuCgpXaXRoIHRo
YXQgZml4ZWQ6CgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
