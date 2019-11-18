Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F1C1008E3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C159E89C93;
	Mon, 18 Nov 2019 16:07:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D61989C93
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:07:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:07:38 -0800
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="196171806"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:07:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20191115230407.wcywmy2coeks7gta@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191111205024.22853-1-lucas.demarchi@intel.com>
 <20191111205024.22853-3-lucas.demarchi@intel.com>
 <20191115205249.GA21445@mdroper-desk1.amr.corp.intel.com>
 <20191115230407.wcywmy2coeks7gta@ldmartin-desk1>
Date: Mon, 18 Nov 2019 18:07:33 +0200
Message-ID: <8736elyxq2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsb: fix extra warning on
 error path handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNSBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDEyOjUyOjQ5UE0gLTA4MDAs
IE1hdHQgUm9wZXIgd3JvdGU6Cj4+T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMTI6NTA6MjVQTSAt
MDgwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+Pj4gV2hlbiB3ZSBjYWxsIGludGVsX2RzYl9n
ZXQoKSwgdGhlIGRzYiBpbml0aWFsaXphdGlvbiBtYXkgZmFpbCBmb3IKPj4+IHZhcmlvdXMgcmVh
c29ucy4gV2UgYWxyZWFkeSBsb2cgdGhlIGVycm9yIG1lc3NhZ2UgaW4gdGhhdCBwYXRoLCBtYWtp
bmcKPj4+IGl0IHVubmVjZXNzYXJ5IHRvIHRyaWdnZXIgYSB3YXJuaW5nIHRoYXQgcmVmY291bnQg
PT0gMCB3aGVuIGNhbGxpbmcKPj4+IGludGVsX2RzYl9wdXQoKS4KPj4+Cj4+PiBTbyBoZXJlIHdl
IHNpbXBsaWZ5IHRoZSBsb2dpYyBhbmQgZG8gbGF6eSBzaHV0ZG93bjogbGVhdmluZyB0aGUgZXh0
cmEKPj4+IHJlZmNvdW50IGFsaXZlIHNvIHdoZW4gd2UgY2FsbCBpbnRlbF9kc2JfcHV0KCkgd2Ug
ZW5kIHVwIGNhbGxpbmcKPj4+IGk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCkuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj4+Cj4+RHVlIHRvIHRoZSBsYWNrIG9mIGFueSBhY3R1YWwgY29uY3VycmVuY3ksIGl0IHNlZW1z
IGxpa2Ugd2UgY291bGQKPj5ldmVudHVhbGx5IGdldCByaWQgb2YgdGhlIHdob2xlIGdldC9wdXQg
ZGVzaWduIGFuZCBqdXN0IGFsbG9jYXRlIHRoZQo+PmJ1ZmZlciBvbmNlIChhbmQgcGluIGl0IGR1
cmluZyB0aGUgcHJlcGFyZSBzdGVwKS4gIEJ1dCB0aGlzIHNlZW1zIGdvb2QKPgo+IEkgYXNzdW1l
ZCB0aGlzIHdhcyBkZXNpZ25lZCB0byBhY2NlcHQgdGhlIHBhdHRlcm4KPgo+IGludGVsX2RzYl9n
ZXQoKTsKPiBpbnRlbF9kc2JfZ2V0KCk7Cj4gaW50ZWxfZHNiX3B1dCgpOwo+IGludGVsX2RzYl9w
dXQoKTsKClllYWggaXQgd2Fzbid0IG5lY2Vzc2FyaWx5IGZvciBjb25jdXJyZW5jeS4gTW9yZSB0
byBlbnN1cmUgdGhlIGJ1ZmZlcgpkb2Vzbid0IHZhbmlzaCB1bmRlciB0aGUgZW5naW5lLgoKQlIs
CkphbmkuCgo+Cj4+ZW5vdWdoIGZvciBub3cuCj4+Cj4+UmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4KPiB0aGFua3MKPiBMdWNhcyBEZSBNYXJjaGkK
Pgo+Pgo+Pgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYyB8IDIxICsrKysrKysrKysrKysrLS0tLS0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYwo+Pj4gaW5kZXggNGZlZWJiZWIwYjBjLi44NThhZjZiZTljMzYg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
Cj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4+PiBA
QCAtMTAyLDYgKzEwMiw3IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMp
Cj4+PiAgCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9ICZjcnRjLT5kc2I7Cj4+PiAgCXN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+PiAgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+Pj4g
Kwl1MzIgKmJ1ZjsKPj4+ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4+Pgo+Pj4gIAlpZiAo
IUhBU19EU0IoaTkxNSkpCj4+PiBAQCAtMTEwLDcgKzExMSw2IEBAIGludGVsX2RzYl9nZXQoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCj4+PiAgCWlmICgrK2RzYi0+cmVmY291bnQgIT0gMSkKPj4+
ICAJCXJldHVybiBkc2I7Cj4+Pgo+Pj4gLQlkc2ItPmlkID0gRFNCMTsKPj4+ICAJd2FrZXJlZiA9
IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKPj4+Cj4+PiAgCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgRFNCX0JVRl9TSVpFKTsKPj4+
IEBAIC0xMjMsMjIgKzEyMywyOSBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQo+Pj4gIAlpZiAoSVNfRVJSKHZtYSkpIHsKPj4+ICAJCURSTV9FUlJPUigiVm1hIGNyZWF0
aW9uIGZhaWxlZFxuIik7Cj4+PiAgCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4+PiAtCQlk
c2ItPnJlZmNvdW50LS07Cj4+PiAgCQlnb3RvIGVycjsKPj4+ICAJfQo+Pj4KPj4+IC0JZHNiLT5j
bWRfYnVmID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAodm1hLT5vYmosIEk5MTVfTUFQX1dDKTsK
Pj4+IC0JaWYgKElTX0VSUihkc2ItPmNtZF9idWYpKSB7Cj4+PiArCWJ1ZiA9IGk5MTVfZ2VtX29i
amVjdF9waW5fbWFwKHZtYS0+b2JqLCBJOTE1X01BUF9XQyk7Cj4+PiArCWlmIChJU19FUlIoYnVm
KSkgewo+Pj4gIAkJRFJNX0VSUk9SKCJDb21tYW5kIGJ1ZmZlciBjcmVhdGlvbiBmYWlsZWRcbiIp
Owo+Pj4gLQkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJnZtYSwgMCk7Cj4+PiAtCQlkc2It
PmNtZF9idWYgPSBOVUxMOwo+Pj4gLQkJZHNiLT5yZWZjb3VudC0tOwo+Pj4gIAkJZ290byBlcnI7
Cj4+PiAgCX0KPj4+ICsKPj4+ICsJZHNiLT5pZCA9IERTQjE7Cj4+PiAgCWRzYi0+dm1hID0gdm1h
Owo+Pj4gKwlkc2ItPmNtZF9idWYgPSBidWY7Cj4+Pgo+Pj4gIGVycjoKPj4+ICsJLyoKPj4+ICsJ
ICogU2V0IGNtZF9idWYgdG8gTlVMTCBzbyB0aGUgd3JpdGVzIHBhc3MtdGhyb3VnaCwgYnV0IGxl
YXZlIHRoZQo+Pj4gKwkgKiBkYW5nbGluZyByZWZjb3VudCB0byBiZSByZW1vdmVkIGxhdGVyIGJ5
IHRoZSBjb3JyZXNwb25kaW5nCj4+PiArCSAqIGludGVsX2RzYl9wdXQoKTogdGhlIGltcG9ydGFu
dCBlcnJvciBtZXNzYWdlIHdpbGwgYWxyZWFkeSBiZQo+Pj4gKwkgKiBsb2dnZWQgYWJvdmUuCj4+
PiArCSAqLwo+Pj4gKwlkc2ItPmNtZF9idWYgPSBOVUxMOwo+Pj4gIAlpbnRlbF9ydW50aW1lX3Bt
X3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7Cj4+PiArCj4+PiAgCXJldHVybiBkc2I7
Cj4+PiAgfQo+Pj4KPj4+IC0tCj4+PiAyLjI0LjAKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
Pj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+Pj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPj4KPj4tLSAKPj5NYXR0IFJv
cGVyCj4+R3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKPj5WVFQtT1NHQyBQbGF0Zm9ybSBFbmFi
bGVtZW50Cj4+SW50ZWwgQ29ycG9yYXRpb24KPj4oOTE2KSAzNTYtMjc5NQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
