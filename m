Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFD05F4AE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 10:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D8D6E2FD;
	Thu,  4 Jul 2019 08:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1523F6E2FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 08:38:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 01:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="184953985"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2019 01:38:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703155225.9501-1-chris@chris-wilson.co.uk>
 <20190704081733.15816-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ec5f257a-10aa-1beb-f9cb-6747e6f30c1c@linux.intel.com>
Date: Thu, 4 Jul 2019 09:38:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190704081733.15816-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check caller held wakerefs in
 assert_forcewakes_active
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

Ck9uIDA0LzA3LzIwMTkgMDk6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgaW50ZW50IG9m
IHRoZSBhc3NlcnQgaXMgdG8gZG9jdW1lbnQgdGhhdCB0aGUgY2FsbGVyIHRvb2sgdGhlCj4gYXBw
cm9wcmlhdGUgd2FrZXJlZnMgZm9yIHRoZSBmdW5jdGlvbi4gSG93ZXZlciwgYXMgVHZydGtvIHBv
aW50ZWQgb3V0LAo+IHdlIHNpbXBseSBjaGVjayB3aGV0aGVyIHRoZSBmd19kb21haW5zIGFyZSBh
Y3RpdmUgYW5kIG1heSBiZSBjb25mdXNlZCBieQo+IHRoZSBhdXRvIHdha2VyZWYgd2hpY2ggbWF5
IGJlIGRyb3BwZWQgYmV0d2VlbiB0aGUgY2hlY2sgYW5kIHVzZS4gTGV0J3MKPiBiZSBtb3JlIGNh
cmVmdWwgaW4gdGhlIGFzc2VydCBhbmQgY2hlY2sgdGhhdCBlYWNoIGZ3X2RvbWFpbiBoYXMgYW4K
PiBleHBsaWNpdCBjYWxsZXIgd2FrZXJlZiBhYm92ZSBhbmQgYmV5b25kIHRoZSBhdXRvbWF0aWMg
d2FrZXJlZi4KPiAKPiB2MjogRml4IHNwZWxsaW5nIGZvciBjb25maWcgRFJNX0k5MTVfREVCVUdf
UlVOVElNRV9QTQo+IAo+IFJlcG9ydGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMjQgKysrKysr
KysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gaW5kZXggNjhkNTRlMTI2ZDc5Li4x
NzcxZTY5ZGJmMDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5j
b3JlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwo+IEBAIC03
MzgsNiArNzM4LDEyIEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfaW5hY3RpdmUoc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jb3JlKQo+ICAgdm9pZCBhc3NlcnRfZm9yY2V3YWtlc19hY3RpdmUoc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAo+ICAgCQkJICAgICAgZW51bSBmb3JjZXdha2VfZG9t
YWlucyBmd19kb21haW5zKQo+ICAgewo+ICsJc3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdha2Vf
ZG9tYWluICpkb21haW47Cj4gKwl1bnNpZ25lZCBpbnQgdG1wOwo+ICsKPiArCWlmICghSVNfRU5B
QkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTSkpCj4gKwkJcmV0dXJuOwo+ICsK
PiAgIAlpZiAoIXVuY29yZS0+ZnVuY3MuZm9yY2Vfd2FrZV9nZXQpCj4gICAJCXJldHVybjsKPiAg
IAo+IEBAIC03NDcsNiArNzUzLDI0IEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKPiAgIAlXQVJOKGZ3X2RvbWFpbnMgJiB+dW5jb3Jl
LT5md19kb21haW5zX2FjdGl2ZSwKPiAgIAkgICAgICJFeHBlY3RlZCAlMDh4IGZ3X2RvbWFpbnMg
dG8gYmUgYWN0aXZlLCBidXQgJTA4eCBhcmUgb2ZmXG4iLAo+ICAgCSAgICAgZndfZG9tYWlucywg
ZndfZG9tYWlucyAmIH51bmNvcmUtPmZ3X2RvbWFpbnNfYWN0aXZlKTsKPiArCj4gKwkvKgo+ICsJ
ICogQ2hlY2sgdGhhdCB0aGUgY2FsbGVyIGhhcyBhbiBleHBsaWNpdCB3YWtlcmVmIGFuZCB3ZSBk
b24ndCBtaXN0YWtlCj4gKwkgKiBpdCBmb3IgdGhlIGF1dG8gd2FrZXJlZi4KPiArCSAqLwo+ICsJ
bG9jYWxfaXJxX2Rpc2FibGUoKTsKPiArCWZvcl9lYWNoX2Z3X2RvbWFpbl9tYXNrZWQoZG9tYWlu
LCBmd19kb21haW5zLCB1bmNvcmUsIHRtcCkgewo+ICsJCXVuc2lnbmVkIGludCBleHBlY3QgPSAx
Owo+ICsKPiArCQlpZiAoaHJ0aW1lcl9hY3RpdmUoJmRvbWFpbi0+dGltZXIpKQo+ICsJCQlleHBl
Y3QrKzsKPiArCj4gKwkJaWYgKFdBUk4oZG9tYWluLT53YWtlX2NvdW50IDwgZXhwZWN0LAo+ICsJ
CQkgIkV4cGVjdGVkIGRvbWFpbiAlZCB0byBiZSBoZWxkIGF3YWtlIGJ5IGNhbGxlclxuIiwKPiAr
CQkJIGRvbWFpbi0+aWQpKQo+ICsJCQlicmVhazsKPiArCX0KPiArCWxvY2FsX2lycV9lbmFibGUo
KTsKPiAgIH0KPiAgIAo+ICAgLyogV2UgZ2l2ZSBmYXN0IHBhdGhzIGZvciB0aGUgcmVhbGx5IGNv
b2wgcmVnaXN0ZXJzICovCj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
