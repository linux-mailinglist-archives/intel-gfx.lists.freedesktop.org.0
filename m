Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E61C24EAD0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 16:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E6E6E859;
	Fri, 21 Jun 2019 14:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C3D6E859
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 14:35:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 07:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,400,1557212400"; d="scan'208";a="165665318"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2019 07:35:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190621135246.20683-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <049fd6f3-f8f9-8a0c-6ac6-20a944ea7ace@linux.intel.com>
Date: Fri, 21 Jun 2019 15:35:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621135246.20683-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent dereference of engine
 before NULL check in error capture
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

Ck9uIDIxLzA2LzIwMTkgMTQ6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS8vaTkxNV9ncHVfZXJyb3IuYzoxNDE4IGdlbV9yZWNvcmRfcmluZ3MoKSB3YXJuOiB2
YXJpYWJsZSBkZXJlZmVyZW5jZWQgYmVmb3JlIGNoZWNrICdlbmdpbmUnIChzZWUgbGluZSAxNDEz
KQo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyB8IDMgKy0tCj4gICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCj4gaW5kZXggNTlmNWIwMjY1ZWUzLi41NDg5Y2Q4
NzkzMTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3Iu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiBAQCAtMTQx
MCw3ICsxNDEwLDYgQEAgc3RhdGljIHZvaWQgZ2VtX3JlY29yZF9yaW5ncyhzdHJ1Y3QgaTkxNV9n
cHVfc3RhdGUgKmVycm9yKQo+ICAgCWZvciAoaSA9IDA7IGkgPCBJOTE1X05VTV9FTkdJTkVTOyBp
KyspIHsKPiAgIAkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gaTkxNS0+ZW5naW5l
W2ldOwo+ICAgCQlzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfZW5naW5lICplZSA9ICZlcnJvci0+ZW5n
aW5lW2ldOwo+IC0JCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSBlbmdpbmUtPmd0LT5nZ3R0Owo+
ICAgCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0Owo+ICAgCj4gICAJCWVlLT5lbmdpbmVf
aWQgPSAtMTsKPiBAQCAtMTQyOCw3ICsxNDI3LDcgQEAgc3RhdGljIHZvaWQgZ2VtX3JlY29yZF9y
aW5ncyhzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQo+ICAgCQkJc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCA9IHJlcXVlc3QtPmdlbV9jb250ZXh0Owo+ICAgCQkJc3RydWN0IGludGVs
X3JpbmcgKnJpbmc7Cj4gICAKPiAtCQkJZWUtPnZtID0gY3R4LT52bSA/OiAmZ2d0dC0+dm07Cj4g
KwkJCWVlLT52bSA9IGN0eC0+dm0gPzogJmVuZ2luZS0+Z3QtPmdndHQtPnZtOwo+ICAgCj4gICAJ
CQlyZWNvcmRfY29udGV4dCgmZWUtPmNvbnRleHQsIGN0eCk7Cj4gICAKPiAKClJldmlld2VkLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2
cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
