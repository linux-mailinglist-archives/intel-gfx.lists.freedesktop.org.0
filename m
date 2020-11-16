Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC472B4C25
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 18:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D6489D99;
	Mon, 16 Nov 2020 17:08:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE4D89D99;
 Mon, 16 Nov 2020 17:08:07 +0000 (UTC)
IronPort-SDR: Z0rvncLK8OCYPTrR5Zoc0EmWz2ZCcjaGjUnvbiltQ7nhbs6K17/VgLp6OXGVidJKKqgjT8EVa0
 450kC4aGl32g==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="150628142"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="150628142"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:07:41 -0800
IronPort-SDR: dyCLUxOdxFvON535cSEFKfR/pLDj9UuvXaJIfFlu0U6ZuPbm33Jy6mCw3Wik+PIKOEoZy8wkzJ
 cFCm13MhXkEQ==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543676178"
Received: from abaldovi-mobl.ger.corp.intel.com (HELO [10.252.52.236])
 ([10.252.52.236])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:07:38 -0800
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
 <20201113162736.2434791-4-tvrtko.ursulin@linux.intel.com>
 <20201116140359.GA39257@zkempczy-mobl2>
 <2674be7f-15f7-675e-9f25-019579a2a7f3@linux.intel.com>
 <20201116164755.GA2763@zkempczy-mobl2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <83346534-f723-3389-9070-07cbf9e34edf@linux.intel.com>
Date: Mon, 16 Nov 2020 17:07:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201116164755.GA2763@zkempczy-mobl2>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC i-g-t 3/5] lib/igt_device_scan: Remember PCI
 card index after scanning
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE2LzExLzIwMjAgMTY6NDcsIFpiaWduaWV3IEtlbXBjennFhHNraSB3cm90ZToKPiBPbiBN
b24sIE5vdiAxNiwgMjAyMCBhdCAwMzowOTo0M1BNICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90
ZToKPiAKPiA8Y3V0Pgo+ICAgCj4+Pj4gKwo+Pj4+ICAgIC8qIENvcmUgc2Nhbm5pbmcgZnVuY3Rp
b24uCj4+Pj4gICAgICoKPj4+PiAgICAgKiBBbGwgc2Nhbm5lZCBkZXZpY2VzIGFyZSBrZXB0IGlu
c2lkZSBpZ3RfZGV2cy5hbGwgcG9pbnRlciBhcnJheS4KPj4+PiBAQCAtNjU3LDYgKzY4NSw3IEBA
IHN0YXRpYyB2b2lkIHNjYW5fZHJtX2RldmljZXModm9pZCkKPj4+PiAgICAJdWRldl91bnJlZih1
ZGV2KTsKPj4+PiAgICAJc29ydF9hbGxfZGV2aWNlcygpOwo+Pj4+ICsJaW5kZXhfcGNpX2Rldmlj
ZXMoKTsKPj4+PiAgICAJaWd0X2xpc3RfZm9yX2VhY2hfZW50cnkoZGV2LCAmaWd0X2RldnMuYWxs
LCBsaW5rKSB7Cj4+Pj4gICAgCQlzdHJ1Y3QgaWd0X2RldmljZSAqZGV2X2R1cCA9IGR1cGxpY2F0
ZV9kZXZpY2UoZGV2KTsKPj4+PiBAQCAtMTEwNSwxMyArMTEzNCwxMyBAQCBzdGF0aWMgc3RydWN0
IGlndF9saXN0X2hlYWQgKmZpbHRlcl9wY2koY29uc3Qgc3RydWN0IGZpbHRlcl9jbGFzcyAqZmNs
cywKPj4+PiAgICAJCWlmIChmaWx0ZXItPmRhdGEuZGV2aWNlICYmIHN0cmNhc2VjbXAoZmlsdGVy
LT5kYXRhLmRldmljZSwgZGV2LT5kZXZpY2UpKQo+Pj4+ICAgIAkJCWNvbnRpbnVlOwo+Pj4+IC0J
CS8qIFdlIGdldCBuLXRoIGNhcmQgKi8KPj4+PiAtCQlpZiAoIWNhcmQpIHsKPj4+PiAtCQkJc3Ry
dWN0IGlndF9kZXZpY2UgKmR1cCA9IGR1cGxpY2F0ZV9kZXZpY2UoZGV2KTsKPj4+PiAtCQkJaWd0
X2xpc3RfYWRkX3RhaWwoJmR1cC0+bGluaywgJmlndF9kZXZzLmZpbHRlcmVkKTsKPj4+PiAtCQkJ
YnJlYWs7Cj4+Pj4gLQkJfQo+Pj4+IC0JCWNhcmQtLTsKPj4+PiArCQkvKiBTa2lwIGlmICdjYXJk
JyBkb2Vzbid0IG1hdGNoICovCj4+Pj4gKwkJaWYgKGNhcmQgIT0gZGV2LT5wY2lfaW5kZXgpCj4+
Pj4gKwkJCWNvbnRpbnVlOwo+Pj4+ICsKPj4+PiArCQlkZXYgPSBkdXBsaWNhdGVfZGV2aWNlKGRl
dik7Cj4+Pj4gKwkJaWd0X2xpc3RfYWRkX3RhaWwoJmRldi0+bGluaywgJmlndF9kZXZzLmZpbHRl
cmVkKTsKPj4+PiArCQlicmVhazsKPj4+Cj4+PiBJIG1heSB3cm9uZyAoSSBnb3Qgbm8gc3VjaCB0
ZXN0aW5nIGVudikgYnV0IGRldnNfY29tcGFyZSgpIGZ1bmN0aW9uIGFsb25nIHdpdGgKPj4+IGlu
ZGV4X3BjaV9kZXZpY2VzKCkgY2FuIGxlYWQgdXMgdG8gc3VjaCAoZXhhbXBsZSkgc2l0dWF0aW9u
Ogo+Pj4KPj4+IGlndF9kZXZzLmFsbCBjb250YWlucyBkZXZpY2VzIHdpdGggc3lzcGF0aHMgYW5k
IHN1YnN5c3RlbSBwY2k6Cj4+PiAvc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjA0LjAJ
LT4gdmVuZG9yIDgwODYsIGRldmljZSAxMjM0CXBjaV9pbmRleCA9PSAwCj4+PiAvc3lzL2Rldmlj
ZXMvcGNpMDAwMDowMC8wMDAwOjAwOjA1LjAJLT4gdmVuZG9yIDgwODYsIGRldmljZSA0MzIxCXBj
aV9pbmRleCA9PSAxCj4+PiAvc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjA2LjAJLT4g
dmVuZG9yIDgwODYsIGRldmljZSAxMjM0CXBjaV9pbmRleCA9PSAyCj4+Pgo+Pj4gSWYgd291bGQg
dHJ5IGZpbHRlcjogcGNpPXZlbmRvcj04MDg2LGRldmljZT0xMjM0LGNhcmQ9MSBJIHdvdWxkIGV4
cGVjdAo+Pj4gdG8gc2VsZWN0IChzZWNvbmQgY2FyZCBbaW5kZXggPT0gMV0pIGZyb20gZmlsdGVy
ZWQgZGV2aWNlcyB3aGljaCBtYXRjaAo+Pj4gZGV2aWNlIDEyMzQuCj4+Cj4+IEl0IGlzIHN1cHBv
c2VkIHRvIGJlIGxpa2UgeW91IHNheSwgZWFjaCBwY2lfaW5kZXggYmVpbmcgaW4gdGhlIG5hbWVz
cGFjZSBvZgo+PiBlcXVhbCB2ZW5kb3IgJiBkZXZpY2Ugb25seS4KPj4KPj4gTGlrZSBmcm9tIGEg
ZHVhbCBHUFUgc3lzdGVtOgo+Pgo+PiAkIHRvb2xzL2xzZ3B1IC0tcGNpCj4+IGNhcmQxICAgICAg
ICAgICAgICAgICAgIDgwODY6NDkwNSAgICBwY2k6dmVuZG9yPTgwODYsZGV2aWNlPTQ5MDUsY2Fy
ZD0wCj4+IOKUlOKUgHJlbmRlckQxMjkKPj4gY2FyZDAgICAgICAgICAgICAgICAgICAgODA4Njoz
RTk4ICAgIHBjaTp2ZW5kb3I9ODA4NixkZXZpY2U9M0U5OCxjYXJkPTAKPj4g4pSU4pSAcmVuZGVy
RDEyOAo+Pgo+PiBPciB0d28gaWRlbnRpY2FsIEdQVXMgKG1vY2tlZCBieSBtYW51YWwgYWRkaXRp
b24gb2YgYW4gYWxtb3N0IGR1cGxpY2F0ZQo+PiBlbnRyeSB0byBsaXN0IG9mIHNjYW5uZWQgZGV2
aWNlczoKPj4KPj4gJCB0b29scy9sc2dwdSAtLXBjaQo+PiBjYXJkMCAgICAgICAgICAgICAgICAg
ICA4MDg2OjE5M0IgICAgcGNpOnZlbmRvcj04MDg2LGRldmljZT0xOTNCLGNhcmQ9MAo+PiDilJzi
lIByZW5kZXJEMTI4Cj4+IOKUlOKUgHJlbmRlckQxMjgKPj4gY2FyZDB4ICAgICAgICAgICAgICAg
ICAgODA4NjoxOTNCICAgIHBjaTp2ZW5kb3I9ODA4NixkZXZpY2U9MTkzQixjYXJkPTEKPj4g4pSc
4pSAcmVuZGVyRDEyOAo+PiDilJTilIByZW5kZXJEMTI4Cj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IFR2
cnRrbwo+IAo+IEkgbWFkZSBhIG1pc3Rha2UgaW4gYWJvdmUgbGlzdGluZywgaXQgc2hvdWxkIGJl
Ogo+IC9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDQuMAktPiB2ZW5kb3IgODA4Niwg
ZGV2aWNlIDEyMzQJcGNpX2luZGV4ID09IDAKPiAvc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAw
OjAwOjA1LjAJLT4gdmVuZG9yIDgwODYsIGRldmljZSA0MzIxCXBjaV9pbmRleCA9PSAwCj4gL3N5
cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowNi4wCS0+IHZlbmRvciA4MDg2LCBkZXZpY2Ug
MTIzNAlwY2lfaW5kZXggPT0gMQo+IAo+IFdoYXQgaWYgSSB3b3VsZCBnbyBvdmVyIGFsbCBJbnRl
bCBjYXJkcyB1c2luZyBwY2kgZmlsdGVyOgo+IAo+IHBjaTp2ZW5kb3I9ODA4NixjYXJkPU4gICB3
aGVyZSBuIGlzIDAuLi4gdW50aWwgdGhlcmUncyBubyBJbnRlbCBwY2kgZGV2aWNlLgo+IAo+IFRo
aXMgd2F5IHdlIGxvb3NlIHBvc3NpYmlsaXR5IHRvIGl0ZXJhdGUgb3ZlciBhbGwgcGNpIGRldmlj
ZXMgaW1vLgoKT2ggSSBnZXQgaXQga25vdywgSSBtaXN1bmRlcnN0b29kIGhvdyB0aGlzIGFsbCB3
b3Jrcy4gU28gdGhlIGNhcmQgCmFyZ3VtZW50IHRvIHRoZSBwY2kgZmlsdGVyIGlzIG5vdGhpbmcg
YWJvdXQgdGhlIGFjdHVhbCBQQ0kgY2FyZCwgYnV0IApqdXN0ICJtYXRjaCBudW1iZXIiIC0gbWF0
Y2ggd2l0aCB0aGlzIGZpbHRlciBhbmQgcmV0dXJuIGNhcmQ9TiBOdGggbWF0Y2guCgpTbyBJIHNo
b3VsZCBsZWF2ZSB0aGUgY29kZSBpbiBmaWx0ZXJfcGNpIGFzIGlzLgoKV2lsbCBteSBuZXcgZmls
dGVycyB3b3JrIGxpa2UgdGhhdC4gSSB0aGluayBzby4gT2ssIHdpbGwgdXBkYXRlLgoKUmVnYXJk
cywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
