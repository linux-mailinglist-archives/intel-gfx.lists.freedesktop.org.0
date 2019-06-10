Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654BF3B3C3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7CA89124;
	Mon, 10 Jun 2019 11:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FFB89124
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 11:08:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 04:08:42 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO [10.252.8.43])
 ([10.252.8.43])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2019 04:08:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190610103610.19883-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f09f32c-9520-28a4-3f90-5ffa09c6d67d@linux.intel.com>
Date: Mon, 10 Jun 2019 12:08:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610103610.19883-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow interrupts when taking the
 timeline->mutex
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

Ck9uIDEwLzA2LzIwMTkgMTE6MzYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZWZvcmUgd2UgY29t
bWl0IG91cnNlbHZlcyB0byB3cml0aW5nIGNvbW1hbmRzIGludG8gdGhlCj4gcmluZ2J1ZmZlciBh
bmQgc3VibWl0dGluZyB0aGUgcmVxdWVzdCwgYWxsb3cgc2lnbmFscyB0byBpbnRlcnJ1cHQKPiBh
Y3F1aXNpdGlvbiBvZiB0aGUgdGltZWxpbmUgbXV0ZXguIFdlIGFsbG93IG91cnNlbHZlcyB0byBi
ZSBpbnRlcnJ1cHRlZAo+IGF0IGFueSB0aW1lIGxhdGVyIGlmIHdlIG5lZWQgdG8gYmxvY2sgZm9y
IHNwYWNlIGluIHRoZSByaW5nLCBhbnl3YXkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9jb250ZXh0LmggfCA1ICsrKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYyAgICAgfCA1ICsrKystCj4gICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfY29udGV4dC5oCj4gaW5kZXggNjMzOTJjODhjZDk4Li42ZDU0NTNiYTJjMWUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCj4gQEAgLTExMywxMCArMTEzLDEx
IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250ZXh0X3B1dChzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCj4gICAJa3JlZl9wdXQoJmNlLT5yZWYsIGNlLT5vcHMtPmRlc3Ryb3kpOwo+ICAg
fQo+ICAgCj4gLXN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250ZXh0X3RpbWVsaW5lX2xvY2so
c3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICtzdGF0aWMgaW5saW5lIGludCBfX211c3RfY2hl
Y2sKPiAraW50ZWxfY29udGV4dF90aW1lbGluZV9sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSkKPiAgIAlfX2FjcXVpcmVzKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KQo+ICAgewo+IC0J
bXV0ZXhfbG9jaygmY2UtPnJpbmctPnRpbWVsaW5lLT5tdXRleCk7Cj4gKwlyZXR1cm4gbXV0ZXhf
bG9ja19pbnRlcnJ1cHRpYmxlKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KTsKPiAgIH0KPiAg
IAo+ICAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+
IGluZGV4IGRhMWU2OTg0YThjYy4uZTliNTllZWE0ZjEwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMKPiBAQCAtNzg0LDggKzc4NCwxMSBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICoKPiAgIGk5MTVfcmVxdWVzdF9jcmVhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICAg
ewo+ICAgCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICsJaW50IGVycjsKPiAgIAo+IC0JaW50
ZWxfY29udGV4dF90aW1lbGluZV9sb2NrKGNlKTsKPiArCWVyciA9IGludGVsX2NvbnRleHRfdGlt
ZWxpbmVfbG9jayhjZSk7Cj4gKwlpZiAoZXJyKQo+ICsJCXJldHVybiBFUlJfUFRSKGVycik7Cj4g
ICAKPiAgIAkvKiBNb3ZlIG91ciBvbGRlc3QgcmVxdWVzdCB0byB0aGUgc2xhYi1jYWNoZSAoaWYg
bm90IGluIHVzZSEpICovCj4gICAJcnEgPSBsaXN0X2ZpcnN0X2VudHJ5KCZjZS0+cmluZy0+cmVx
dWVzdF9saXN0LCB0eXBlb2YoKnJxKSwgcmluZ19saW5rKTsKPiAKClBhdGNoIHRyaWdnZXJlZCBi
eSBhIGJ1ZywgaXNzdWUsIHJlcG9ydD8KCldlIGhhZCB0aGlzIGNvbnVuZHJ1bSBpbiBhIGZldyBv
ZiB0aGUgb3RoZXIgcGF0Y2hlcyB3aGljaCBhZGRlZCBuZXcgCm11dGV4ZXMuIFNvbWV0aW1lcyBp
dCBpcyBsZXNzIGltcG9ydGFudCwgYnV0IGluIHRoaXMgY2FzZSBJIHN1cHBvc2UgaXQgCmlzIGJl
dHRlciB0byBoYW5kbGUgc2lnbmFscy4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
