Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 132C415F04
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 10:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E0189F41;
	Tue,  7 May 2019 08:14:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB05A89F19;
 Tue,  7 May 2019 08:14:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 01:14:44 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 01:14:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190410114322.3379-1-tvrtko.ursulin@linux.intel.com>
 <155489693247.3516.17172100544939191386@skylake-alporthouse-com>
 <9adb5eb4-0e32-611d-55e4-3d72aacf426d@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7bed3d07-af9f-1f95-dd29-d5b77a741af9@linux.intel.com>
Date: Tue, 7 May 2019 09:14:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9adb5eb4-0e32-611d-55e4-3d72aacf426d@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [RFT i-g-t]
 tests/prime_vgem/basic-fence-flip: Probe display resolution
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CitNYWFydGVuIC0gY291bGQgeW91IHBsZWFzZSBoYXZlIGEgcXVpY2sgbG9vayBhdCB0aGlzIHBh
dGNoIHRvIHNlZSBpZiBpdCAKbWFrZXMgc2Vuc2UgdG8geW91PyAoaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81OTI4NC8gLSAKaWYgeW91IGRvbid0IGhhdmUgdGhlIG1h
aWxpbmcgbGlzdCBoaXN0b3J5LikKClRoYW5rcywKClR2cnRrbwoKT24gMTAvMDQvMjAxOSAxMzox
MSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gCj4gT24gMTAvMDQvMjAxOSAxMjo0OCwgQ2hyaXMg
V2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA0LTEwIDEyOjQz
OjIyKQo+Pj4gQEAgLTc1NCw4ICs3NjgsOCBAQCBzdGF0aWMgdm9pZCB0ZXN0X2ZsaXAoaW50IGk5
MTUsIGludCB2Z2VtLCAKPj4+IHVuc2lnbmVkIGhhbmcpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB1aW50MzJfdCBvZmZzZXRzWzRdID0ge307Cj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgZmQ7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBib1tpXS53aWR0aCA9IDEwMjQ7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBib1tpXS5oZWlnaHQgPSA3Njg7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBi
b1tpXS53aWR0aCA9IG1vZGUtPmhkaXNwbGF5Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYm9baV0uaGVpZ2h0ID0gbW9kZS0+dmRpc3BsYXk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBib1tpXS5icHAgPSAzMjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHZnZW1fY3JlYXRlKHZnZW0sICZib1tpXSk7Cj4+Cj4+IFRoYXQgbWF5IG5v
dCByZXN1bHQgaW4gYSBidWZmZXIgdGhhdCB3ZSBhcmUgYWJsZSB0byBmbGlwIHRvLiA6fAo+PiB3
aWR0aCA9IEFMSUdOKGhkaXNwbGF5LCAxNik7IHZkaXNwbGF5IHNob3VsZCBiZSBvay4KPiAKPiBP
aC4uIHdlbGwgSSBkb24ndCBrbm93LiBNYWFydGVuIGhlbHBmdWxseSBkZXNjcmliZWQgaW4gdGhl
IEJaIHRoYXQgdGhlIAo+IHNraXAgaXMgZHVlIEJPIGJlaW5nIHRvbyBzbWFsbCBmb3IgdGhlIEZC
LiBBbGlnbmluZyB3aWR0aCB3b3VsZCB0aGVuIAo+IG1ha2UgaXQgdG9vIGxhcmdlLiBJcyB0aGF0
IE9LPyBXaG8gYXNzaWduZWQgdGhpcyBkaXNwbGF5IHJlbGF0ZWQgSUdUIGJ1ZyAKPiB0byBtZSBh
bnl3YXk/IDopKQo+IAo+PiBJIHdvdWxkIHF1ZXJ5IHdoYXQgaGFwcGVuZWQgdG8gdGhlIHNjYWxl
cnMgdGhvdWdoIDopCj4gCj4gQXJlIHRoZXkgc3VwcG9zZWQgdG8gYXV0b21hZ2ljYWx5IGFwcGx5
IGFueSBmYiB0byBhbnkgb3V0cHV0PyBPciBhbiAKPiBleHBsaWNpdCBzdGVwIGlzIHJlcXVpcmVk
PyBSZWdhcmRsZXNzIC0gaXQgbWF5IGJlIGJldHRlciB0byBpbnZvbHZlIGxlc3MgCj4gb2YgdGhl
IGRyaXZlciBhbmQgaGFyZHdhcmUgc3RhY2sgaW4gYSBzaW1wbGUgdGVzdC4KPiAKPiBSZWdhcmRz
LAo+IAo+IFR2cnRrbwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gaWd0LWRldiBtYWlsaW5nIGxpc3QKPiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaWd0
LWRldgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
