Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8592620337
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 12:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B88891D1;
	Thu, 16 May 2019 10:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6C6891CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 10:10:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 03:10:30 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 03:10:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190515150042.8409-3-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190515150042.8409-1-chris@chris-wilson.co.uk>
 <20190515150042.8409-3-chris@chris-wilson.co.uk>
Date: Thu, 16 May 2019 13:13:53 +0300
Message-ID: <87d0kiaeqm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Disable active links before
 rebooting
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
Cc: janusz.krzysztofik@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNSBNYXkgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IENlcnRhaW4gbW9uaXRvcnMsIGUuZy4gRGVsbCwgZG8gbm90IGxpa2UgaXQg
d2hlbiB3ZSByZWJvb3Qgd2l0aCBhbgo+IGFjdGl2ZSBsaW5rLCBsZWF2aW5nIHRoZW0gaW4gYSBj
b25mdXNlZCBzdGF0ZSB3aGVyZSB0aGV5IHJlZnVzZSB0bwo+IHJlbmVnb3RpYXRlIHRoZSBsaW5r
IGFmdGVyIHRoZSByZWJvb3QuIElmIHdlIGhvb2sgaW50byB0aGUgcmVib290Cj4gbm90aWZpZXIs
IHdlIGNhbiBzd2l0Y2ggb2ZmIGFueSBhY3RpdmUgbGluayBiZWZvcmUgcmVib290aW5nLCBsZWF2
aW5nCj4gZXZlcnl0aGluZyBpbiBhIGNvbnNpc3RlbnQsIGhvcGVmdWxseSBoYXBweSwgc3RhdGUu
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDQgKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBp
bmRleCA0MDFlYjZjNzFhZTEuLjdiMmRjOGQ2NmYzNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYwo+IEBAIC0yNiw2ICsyNiw3IEBACj4gICNpbmNsdWRlIDxsaW51eC92Z2FhcmIuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L3ZnYV9zd2l0Y2hlcm9vLmg+Cj4gIAo+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9hdG9taWNfaGVscGVyLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX2Rydi5oPgo+ICAKPiAgI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCj4gQEAgLTkwOSw2ICs5MTAsOSBAQCBzdGF0aWMgdm9pZCBpOTE1
X3BjaV9zaHV0ZG93bihzdHJ1Y3QgcGNpX2RldiAqcGRldikKPiAgCS8qIENhbmNlbCBhbnkgb3V0
c3RhbmRpbmcgcmVuZGVyaW5nICovCj4gIAlpZiAoUkVBRF9PTkNFKGk5MTUtPmd0LmF3YWtlKSkK
PiAgCQlpOTE1X2dlbV9zZXRfd2VkZ2VkKGk5MTUpOwo+ICsKPiArCS8qIERpc2FibGUgYWN0aXZl
IGxpbmtzIHRvIGF2b2lkIGNvbmZ1c2luZyBjZXJ0YWluIChEZWxsKSBtb25pdG9ycyAqLwo+ICsJ
ZHJtX2F0b21pY19oZWxwZXJfc2h1dGRvd24oJmk5MTUtPmRybSk7CgpJIHRoaW5rIHdlIGNvdWxk
IHVzZSB0aGlzIHRvIHJlcGxhY2UgZWRwX25vdGlmeV9oYW5kbGVyKCkuIEJ1dCB0aGUgYWJvdmUK
YWxvbmUgaXMgbm90IGVub3VnaCBiZWNhdXNlIGl0IHdvbid0IGRvIHRoZSB3YWl0LCBhcyB3ZSBk
byB0aGUgd2FpdHMgaW4KZW5hYmxlLCBhbmQgYWZ0ZXIgYm9vdCB3ZSd2ZSBsb3N0IHRyYWNrIG9m
IHdoZW4gdGhlIGxhc3QgZGlzYWJsZSB3YXMuCgpCUiwKSmFuaS4KCj4gIH0KPiAgCj4gIHN0YXRp
YyBzdHJ1Y3QgcGNpX2RyaXZlciBpOTE1X3BjaV9kcml2ZXIgPSB7CgotLSAKSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
