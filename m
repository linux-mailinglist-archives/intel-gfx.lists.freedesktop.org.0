Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592EA34D1E4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 15:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4DE6E417;
	Mon, 29 Mar 2021 13:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18EBD6E417
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 13:55:08 +0000 (UTC)
IronPort-SDR: 7uGTad8XZS5UJXki9OYIJDIYZx7wFS5e5yHrw1Uy8jBE2yT9m9jH/o8sRcZIBMaUkJBpGKf8bT
 woRbF1pJj/Vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="179095388"
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; d="scan'208";a="179095388"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 06:55:05 -0700
IronPort-SDR: ZImm4Aj5lodF9RO7sOQMnvHy3XQJSLO5lYy0AA6oekdsJvadpAZcQvTkB/CNFzxUzsobYhNx3A
 Fg3CTQzA6Gqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; d="scan'208";a="393184662"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 29 Mar 2021 06:55:04 -0700
Received: from [10.249.145.145] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.145.145])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 12TDt3oD001657
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 14:55:04 +0100
To: intel-gfx@lists.freedesktop.org
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-2-daniele.ceraolospurio@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <44b1a6ba-44fc-4a8d-d35b-c44e59849edf@intel.com>
Date: Mon, 29 Mar 2021 15:55:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210328225709.18541-2-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 01/16] drm/i915/pxp: Define PXP component
 interface
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

CgpPbiAyOS4wMy4yMDIxIDAwOjU2LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IFRo
aXMgd2lsbCBiZSB1c2VkIGZvciBjb21tdW5pY2F0aW9uIGJldHdlZW4gdGhlIGk5MTUgZHJpdmVy
IGFuZCB0aGUgbWVpCj4gb25lLiBEZWZpbmluZyBpdCBpbiBhIHN0YW5kLWFsb25lIHBhdGNoIHRv
IGF2b2lkIGNpcmN1YWxyIGRlcGVuZGVkZW5jaWVzCgp0eXBvcwoKPiBiZXR3ZWVuIHRoZSBwYXRj
aGVzIG1vZGlmeWluZyB0aGUgMiBkcml2ZXJzLgo+IAo+IFNwbGl0IG91dCBmcm9tIGFuIG9yaWdp
bmFsIHBhdGNoIGZyb20gIEh1YW5nLCBTZWFuIFoKPiAKPiB2MjogcmVuYW1lIHRoZSBjb21wb25l
bnQgc3RydWN0IChSb2RyaWdvKQo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IC0tLQo+ICBpbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVu
dC5oICAgICAgICAgfCAgMSArCj4gIGluY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9pbnRlcmZhY2Uu
aCB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
NiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS9pOTE1X3B4
cF90ZWVfaW50ZXJmYWNlLmgKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9jb21w
b25lbnQuaCBiL2luY2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50LmgKPiBpbmRleCA1NWMzYjEyMzU4
MWIuLmMxZTJhNDNkMmQxZSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVu
dC5oCj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaAo+IEBAIC0yOSw2ICsyOSw3
IEBACj4gIGVudW0gaTkxNV9jb21wb25lbnRfdHlwZSB7Cj4gIAlJOTE1X0NPTVBPTkVOVF9BVURJ
TyA9IDEsCj4gIAlJOTE1X0NPTVBPTkVOVF9IRENQLAo+ICsJSTkxNV9DT01QT05FTlRfUFhQCj4g
IH07Cj4gIAo+ICAvKiBNQVhfUE9SVCBpcyB0aGUgbnVtYmVyIG9mIHBvcnQKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9kcm0vaTkxNV9weHBfdGVlX2ludGVyZmFjZS5oIGIvaW5jbHVkZS9kcm0vaTkx
NV9weHBfdGVlX2ludGVyZmFjZS5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAw
MDAwMDAwMDAuLjA5YjgzODkxNTJhZgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9pbmNsdWRlL2Ry
bS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmgKPiBAQCAtMCwwICsxLDQ1IEBACj4gKy8qIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KPiArLyoKPiArICogQ29weXJpZ2h0IMKpIDIwMjAg
SW50ZWwgQ29ycG9yYXRpb24KPiArICoKPiArICogQXV0aG9yczoKPiArICogVml0YWx5IEx1YmFy
dCA8dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+CgpzaG91bGRuJ3QgYmUgYXQgbGVhc3Qgb24gY2M6
ID8KCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfSTkxNV9QWFBfVEVFX0lOVEVSRkFDRV9IXwo+ICsj
ZGVmaW5lIF9JOTE1X1BYUF9URUVfSU5URVJGQUNFX0hfCj4gKwo+ICsjaW5jbHVkZSA8bGludXgv
bXV0ZXguaD4KPiArI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ICsKPiArLyoqCj4gKyAqIHN0
cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfb3BzIC0gb3BzIGZvciBQWFAgc2VydmljZXMuCj4gKyAq
IEBvd25lcjogTW9kdWxlIHByb3ZpZGluZyB0aGUgb3BzCj4gKyAqIEBzZW5kOiBzZW5kcyBkYXRh
IHRvIFBYUAo+ICsgKiBAcmVjZWl2ZTogcmVjZWl2ZXMgZGF0YSBmcm9tIFBYUAo+ICsgKi8KPiAr
c3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9vcHMgewo+ICsJLyoqCj4gKwkgKiBAb3duZXI6IG93
bmVyIG9mIHRoZSBtb2R1bGUgcHJvdmRpbmcgdGhlIG9wcwoKdHlwbwoKPiArCSAqLwo+ICsJc3Ry
dWN0IG1vZHVsZSAqb3duZXI7CgpobW0sIHVzdWFsbHkgb3BzIHN0cnVjdHMgaGF2ZSBvbmx5IGZ1
bmN0aW9uIHBvaW50ZXJzLCB3aHkgZG8gd2UgbmVlZApvd25lciBoZXJlID8gYW5kIGFyZSB5b3Ug
c3VyZSBpcyBpdCBhIHJpZ2h0IHBsYWNlIGlmIHN0aWxsIG5lZWRlZCA/Cgo+ICsKPiArCWludCAo
KnNlbmQpKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qgdm9pZCAqbWVzc2FnZSwgc2l6ZV90IHNp
emUpOwo+ICsJaW50ICgqcmVjdikoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpidWZmZXIsIHNp
emVfdCBzaXplKTsKPiArfTsKPiArCj4gKy8qKgo+ICsgKiBzdHJ1Y3QgaTkxNV9weHBfY29tcG9u
ZW50IC0gVXNlZCBmb3IgY29tbXVuaWNhdGlvbiBiZXR3ZWVuIGk5MTUgYW5kIFRFRQo+ICsgKiBk
cml2ZXJzIGZvciB0aGUgUFhQIHNlcnZpY2VzCj4gKyAqIEB0ZWVfZGV2OiBkZXZpY2UgdGhhdCBw
cm92aWRlIHRoZSBQWFAgc2VydmljZSBmcm9tIFRFRSBCdXMuCj4gKyAqIEBweHBfb3BzOiBPcHMg
aW1wbGVtZW50ZWQgYnkgVEVFIGRyaXZlciwgdXNlZCBieSBpOTE1IGRyaXZlci4KPiArICovCj4g
K3N0cnVjdCBpOTE1X3B4cF9jb21wb25lbnQgewo+ICsJc3RydWN0IGRldmljZSAqdGVlX2RldjsK
PiArCWNvbnN0IHN0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfb3BzICpvcHM7Cj4gKwo+ICsJLyog
VG8gcHJvdGVjdCB0aGUgYWJvdmUgbWVtYmVycy4gKi8KPiArCXN0cnVjdCBtdXRleCBtdXRleDsK
PiArfTsKPiArCj4gKyNlbmRpZiAvKiBfSTkxNV9URUVfUFhQX0lOVEVSRkFDRV9IXyAqLwo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
