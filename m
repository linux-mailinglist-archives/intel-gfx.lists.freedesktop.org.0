Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E7010CD44
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 17:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33CB26E85F;
	Thu, 28 Nov 2019 16:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2D36E85F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 16:52:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 08:52:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203480181"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.118.148])
 ([10.66.118.148])
 by orsmga008.jf.intel.com with ESMTP; 28 Nov 2019 08:52:41 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191127221119.384754-1-lucas.demarchi@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <b0521a93-d82c-a6f9-37a4-d5dde84043c6@intel.com>
Date: Thu, 28 Nov 2019 22:22:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191127221119.384754-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: fix cmd_buf being wrongly set
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzI4LzIwMTkgMzo0MSBBTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IFRoZSAiZXJy
IiBsYWJlbCBpcyBub3QgcmVhbGx5ICJlcnIiLCBidXQgcmF0aGVyICJvdXQiIHNpbmNlIHRoZSBy
ZXR1cm4KPiBwYXRoIGlzIHNoYXJlZCBiZXR3ZWVuIGVycm9yIGNvbmRpdGlvbiBhbmQgbm9ybWFs
IHBhdGguIFRoaXMgYnJva2Ugd2hlbgo+IGNvbW1pdCAwM2NlYTYxMDc2ZjAgKCJkcm0vaTkxNS9k
c2I6IGZpeCBleHRyYSB3YXJuaW5nIG9uIGVycm9yIHBhdGgKPiBoYW5kbGluZyIpIGFkZGVkIGEg
ImRzYi0+Y21kX2J1ZiA9IE5VTEw7IiB0aGVyZSwgbWFraW5nIERTQiB0byBzdG9wCj4gd29ya2lu
ZyBzaW5jZSBub3cgYWxsIHdyaXRlcyB3b3VsZCBwYXNzLXRocm91Z2ggdmlhIG1taW8uCj4KPiBS
ZW1vdmUgdGhlIHNldCB0byBOVUxMIHNpbmNlIGl0J3MgYWN0dWFsbHkgbm90IG5lZWRlZDogd2Ug
b25seSBzZXQgaXQgaWYKPiBhbGwgc3RlcHMgYXJlIHN1Y2Nlc2Z1bC4gV2hpbGUgYXQgaXQsIHJl
bmFtZSB0aGUgbGFiZWwgc28gdGhpcyBjb25mdXNpb24KVHlwbyBhYm92ZSwgb3RoZXJ3aXNlIGxv
b2tzIGdvb2QuClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4KClF1aWNrIG1lcmdlIHdpbGwgaGVscCBpbiB2YWxpZGF0aW9uLgoKUmVnYXJkcywKQW5p
bWVzaAo+IGRvZXNuJ3QgaGFwcGVuIGFnYWluLgo+Cj4gRml4ZXM6IDAzY2VhNjEwNzZmMCAoImRy
bS9pOTE1L2RzYjogZml4IGV4dHJhIHdhcm5pbmcgb24gZXJyb3IgcGF0aCBoYW5kbGluZyIKPiBS
ZXNvbHZlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
OAo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgo+IC0tLQo+Cj4gUmlnaHQgbm93IEkgZG9uJ3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIGh3IHRv
IHJlcHJvZHVjZSBpdCwgc28gdGhpcyBpcwo+IGJ1aWxkLXRlc3RlZCBvbmx5Lgo+Cj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMTggKysrKysrKysrLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gaW5kZXggNWJmNjdi
ZGM4MTgyLi5hZGEwMDZhNjkwZGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMKPiBAQCAtMTE2LDM0ICsxMTYsMzQgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YykKPiAgIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVy
bmFsKGk5MTUsIERTQl9CVUZfU0laRSk7Cj4gICAJaWYgKElTX0VSUihvYmopKSB7Cj4gICAJCURS
TV9FUlJPUigiR2VtIG9iamVjdCBjcmVhdGlvbiBmYWlsZWRcbiIpOwo+IC0JCWdvdG8gZXJyOwo+
ICsJCWdvdG8gb3V0Owo+ICAgCX0KPiAgIAo+ICAgCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0
X3BpbihvYmosIE5VTEwsIDAsIDAsIDApOwo+ICAgCWlmIChJU19FUlIodm1hKSkgewo+ICAgCQlE
Uk1fRVJST1IoIlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOwo+ICAgCQlpOTE1X2dlbV9vYmplY3Rf
cHV0KG9iaik7Cj4gLQkJZ290byBlcnI7Cj4gKwkJZ290byBvdXQ7Cj4gICAJfQo+ICAgCj4gICAJ
YnVmID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAodm1hLT5vYmosIEk5MTVfTUFQX1dDKTsKPiAg
IAlpZiAoSVNfRVJSKGJ1ZikpIHsKPiAgIAkJRFJNX0VSUk9SKCJDb21tYW5kIGJ1ZmZlciBjcmVh
dGlvbiBmYWlsZWRcbiIpOwo+IC0JCWdvdG8gZXJyOwo+ICsJCWdvdG8gb3V0Owo+ICAgCX0KPiAg
IAo+ICAgCWRzYi0+aWQgPSBEU0IxOwo+ICAgCWRzYi0+dm1hID0gdm1hOwo+ICAgCWRzYi0+Y21k
X2J1ZiA9IGJ1ZjsKPiAgIAo+IC1lcnI6Cj4gK291dDoKPiAgIAkvKgo+IC0JICogU2V0IGNtZF9i
dWYgdG8gTlVMTCBzbyB0aGUgd3JpdGVzIHBhc3MtdGhyb3VnaCwgYnV0IGxlYXZlIHRoZQo+IC0J
ICogZGFuZ2xpbmcgcmVmY291bnQgdG8gYmUgcmVtb3ZlZCBsYXRlciBieSB0aGUgY29ycmVzcG9u
ZGluZwo+IC0JICogaW50ZWxfZHNiX3B1dCgpOiB0aGUgaW1wb3J0YW50IGVycm9yIG1lc3NhZ2Ug
d2lsbCBhbHJlYWR5IGJlCj4gLQkgKiBsb2dnZWQgYWJvdmUuCj4gKwkgKiBPbiBlcnJvciBkc2It
PmNtZF9idWYgd2lsbCBjb250aW51ZSB0byBiZSBOVUxMLCBtYWtpbmcgdGhlIHdyaXRlcwo+ICsJ
ICogcGFzcy10aHJvdWdoLiBMZWF2ZSB0aGUgZGFuZ2xpbmcgcmVmIHRvIGJlIHJlbW92ZWQgbGF0
ZXIgYnkgdGhlCj4gKwkgKiBjb3JyZXNwb25kaW5nIGludGVsX2RzYl9wdXQoKTogdGhlIGltcG9y
dGFudCBlcnJvciBtZXNzYWdlIHdpbGwKPiArCSAqIGFscmVhZHkgYmUgbG9nZ2VkIGFib3ZlLgo+
ICAgCSAqLwo+IC0JZHNiLT5jbWRfYnVmID0gTlVMTDsKPiArCj4gICAJaW50ZWxfcnVudGltZV9w
bV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOwo+ICAgCj4gICAJcmV0dXJuIGRzYjsK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
