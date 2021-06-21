Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 444933AEA09
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 15:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D956E10C;
	Mon, 21 Jun 2021 13:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B850B6E10C
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 13:28:05 +0000 (UTC)
IronPort-SDR: JIfIm9nhE73z1VZYazp/v3PEJ6jMLbpH37k6mI923W1aFRkDXw8pTR/tb5rf8ZS1a7/sndEUmu
 nZ+PHkqIrmjQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="205017189"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="205017189"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:28:05 -0700
IronPort-SDR: bvkEj7rxV+z45e9damYF176sL0/3x50DEGUZzLfTc2cxwaazWPYvhs+cVm8Trz/aQB8e4qP6Vk
 BtjdPNBTi0wA==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="453881064"
Received: from plogin-mobl.ger.corp.intel.com (HELO [10.249.33.137])
 ([10.249.33.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:28:04 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
 <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
 <74c6afe5-a76f-1895-d37b-d738978e2804@linux.intel.com>
 <1d7486eb-27df-17cd-e4a6-3ac45ecf7a36@linux.intel.com>
 <7c012b08-eebc-ceba-7fa7-be2a0a830b25@linux.intel.com>
 <ecadb3a4-fb8a-9533-81ad-6b2daaaa9fa6@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <5caf2c40-1a88-2b9c-c867-4abc849457f6@linux.intel.com>
Date: Mon, 21 Jun 2021 15:28:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <ecadb3a4-fb8a-9533-81ad-6b2daaaa9fa6@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Do not allow setting ring
 size for legacy ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjEtMDYtMjAyMSBvbSAxNToyMCBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMjEv
MDYvMjAyMSAxNDoxMiwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Cj4+IE9uIDIxLzA2LzIwMjEg
MTQ6MDcsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4gT3AgMjEtMDYtMjAyMSBvbSAxNDo1
MiBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Pj4+Cj4+Pj4gT24gMjEvMDYvMjAyMSAxMzowOCwg
VHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IEkgaGFkIHNvbWUgcXVlc3Rpb25zIG9u
IHRoZSB0cnlib3QgbWFpbGluZyBsaXN0LCBsZXQgbWUgY29weSZwYXN0ZS4uCj4+Pj4+Cj4+Pj4+
IE9uIDIxLzA2LzIwMjEgMTI6NDEsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4+Pj4gSXQg
ZG9lc24ndCB3b3JrIGZvciBsZWdhY3kgcmluZyBzdWJtaXNzaW9uLCBhbmQgaXMgaW4gdGhlIGJl
c3QgY2FzZQo+Pj4+Pj4gaWdub3JlZC4KPj4+Pj4KPj4+Pj4gTG9va3MgcmVqZWN0ZWQgaW5zdGVh
ZCBvZiBpZ25vcmVkOgo+Pj4+Pgo+Pj4+PiBzdGF0aWMgaW50IHNldF9yaW5nc2l6ZShzdHJ1Y3Qg
aTkxNV9nZW1fY29udGV4dCAqY3R4LAo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gKmFyZ3MpCj4+Pj4+IHsKPj4+Pj4gwqDC
oMKgwqDCoCBpZiAoIUhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMoY3R4LT5pOTE1KSkKPj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+Pj4+Pj4KPj4+Pj4+IEluIHRoZSB3
b3JzdCBjYXNlIHdlIGVuZCB1cCBmcmVlaW5nIGVuZ2luZS0+bGVnYWN5LnJpbmcgZm9yIGFsbCBv
dGhlcgo+Pj4+Pj4gYWN0aXZlIGVuZ2luZXMsIHJlc3VsdGluZyBpbiBhIHVzZS1hZnRlci1mcmVl
Lgo+Pj4+Pgo+Pj4+PiBXb3JzdCBjYXNlIGlzIGNsb25pbmcgYmVjYXVzZSByaW5nX2NvbnRleHRf
YWxsb2MgaXMgbm90IHRha2luZyBhIHJlZmVyZW5jZSB0byBlbmdpbmUtPmxlZ2FjeS5yaW5nLCBv
ciBzb21ldGhpbmcgZWxzZT8KPj4+Pgo+Pj4+IE5vIGNhbid0IGJlIHRoYXQsIGl0IHdhcyBteSBp
bmNvbXBsZXRlIGFuYWx5c2lzIGxhc3Qgd2Vlay4gU2luY2UgcmluZ19jb250ZXh0X2Rlc3Ryb3kg
ZG9lcyBub3QgYWN0dWFsbHkgZnJlZSB0aGUgbGVnYWN5IHJpbmcgSSBkb24ndCBzZWUgYW55IHVz
ZSBhZnRlciBmcmVlIHBhdGhzLgo+Pj4+Cj4+Pj4gUmVnYXJkcywKPj4+Cj4+PiBIbW0sIGl0IGdl
dHMgc3R1Y2sgaW5zaWRlIGludGVsX2NvbnRleHRfc2V0X3Jpbmdfc2l6ZSB3aGVuIGNsb25pbmcg
ZW5naW5lcy4uCj4+Pgo+Pj4gSSBndWVzcyBpdCBjYW4ndCBoYXBwZW4gaW4gcHJhY3RpY2UsIGp1
c3QgdGhlIGNvZGUgaW50cm9kdWNlcyB0aGUgcmFjZSBieSBwcmVhbGxvY2F0aW5nCj4+PiBpbnNp
ZGUgaW50ZWxfY29udGV4dF9sb2NrX3Bpbm5lZCgpLi4KPj4KPj4gIlRoZSBjb2RlIiBiZWluZyB0
aGUgcmVzdCBvZiB5b3VyIHNlcmllcz8gSGF2ZW4ndCBsb29rZWQgaW4gdGhlcmUsIGJ1dCBjYW4n
dCBmaW5kIGEgcHJvYmxlbSBpbiB1cHN0cmVhbS4gU2luY2UgYXMgeW91IHNheSwgY29weV9yaW5n
X3NpemUgd2lsbCBydW4gYnV0IGludGVsX2NvbnRleHRfc2V0X3Jpbmdfc2l6ZSB3aWxsIG5vdCBm
cmVlLWFuZC1hbGxvY2F0ZSBvbGQvbmV3IHJpbmcgc2luY2UgY2xvbmVkIGNvbnRleHQgZG9lcyBu
b3QgaGF2ZSBhIHN0YXRlIGFsbG9jYXRlZCB5ZXQuCj4KPiBQLlMuIFB1dHRpbmcgYSBIQVNfTE9H
SUNBTF9SSU5HX0NPTlRFWFRTIGNoZWNrIGluIGNvcHlfcmluZ19zaXplIHdvdWxkIGJlIGEgYml0
IHVuZm9ydHVuYXRlIGJlY2F1c2UgbGF5ZXJpbmcgaXMgYSBiaXQgYnJva2VuIGF0IHRoZSBtb21l
bnQgYW5kIHRoYXQgd291bGRuJ3QgbWFrZSBpdCBiZXR0ZXIuCj4KPiBUbyBjbGFyaWZ5IG15IHRo
aW5raW5nOiBBdCB0aGUgbW9tZW50IGFsbG9jYXRpbmcgdGhlIHJpbmcgaXMgcmVzcG9uc2liaWxp
dHkgb2YgYSBiYWNrZW5kIHNwZWNpZmljIGhvb2suIEFwYXJ0IGZyb20gdGhlIGdlbmVyaWMgaW50
ZWxfY29udGV4dF9zZXRfcmluZ19zaXplIHdoaWNoIGJyZWFrcyB0aGF0IGJ5IGFsbG9jYXRpbmcg
aW4gdGhlIGxheWVyIGFib3ZlIHRoZSBiYWNrZW5kLiBTbyBwcm9wZXIgZml4IGNvdWxkIGJlIHRv
IGludHJvZHVjZSBiYWNrZW5kIHNwZWNpZmljIGhvb2tzIGZvciByaW5nIGFsbG9jYXRpb24vZnJl
ZWluZy4KPgo+ICpJZiogeW91IG5lZWQgdG8gYWxsb2NhdGUgdGhlIHN0YXRlIHNvIGVhcmx5Li4g
bm90IHN1cmUgYWJvdXQgdGhhdC4gSSdkIGZpcnN0IG5lZWQgdG8gdW5kZXJzdGFuZCB3aHkuIElm
IHlvdSBzYXkgaXQgaXMgYSByYWNlIHRoZW4gaXQgd2FzIGFsbCBhY2NpZGVudGFsPyAKCkkgbm90
aWNlZCBpdCBtb3N0bHkgd2hlbiBkZWJ1Z2dpbmcuIEkgZml4ZWQgaXQgY3VycmVubHkgYnkgbm90
IGFsbG9jYXRpbmcgc3RhdGUgaW4gc2V0X3Jpbmdfc2l6ZSB1bm5lY2Vzc2FyaWx5LCBoZW5jZSB0
aGlzIHBhdGNoIGlzIG5vIGxvbmdlciBuZWVkZWQuIDopCgpTbyBpZiB0aGF0J3MgdGhlIG9ubHkg
dGhpbmcsIEkgY2FuIGp1c3QgZHJvcCB0aGlzIHBhdGNoIGVudGlyZWx5LgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
