Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD14418985
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 14:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A044889BF4;
	Thu,  9 May 2019 12:14:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1A089BF5;
 Thu,  9 May 2019 12:14:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 05:14:57 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2019 05:14:56 -0700
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
References: <20190410114322.3379-1-tvrtko.ursulin@linux.intel.com>
 <155489693247.3516.17172100544939191386@skylake-alporthouse-com>
 <9adb5eb4-0e32-611d-55e4-3d72aacf426d@linux.intel.com>
 <30f543a6fb19137afcd348fc58bf5b12eaffbf0a.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <91dc6ca1-498e-04b9-c423-ffe058055748@linux.intel.com>
Date: Thu, 9 May 2019 13:14:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <30f543a6fb19137afcd348fc58bf5b12eaffbf0a.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFT i-g-t] tests/prime_vgem/basic-fence-flip:
 Probe display resolution
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA5LzA1LzIwMTkgMTE6NTEsIEthaG9sYSwgTWlrYSB3cm90ZToKPiBPbiBXZWQsIDIwMTkt
MDQtMTAgYXQgMTM6MTEgKzAxMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+PiBPbiAxMC8wNC8y
MDE5IDEyOjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGlu
ICgyMDE5LTA0LTEwIDEyOjQzOjIyKQo+Pj4+IEBAIC03NTQsOCArNzY4LDggQEAgc3RhdGljIHZv
aWQgdGVzdF9mbGlwKGludCBpOTE1LCBpbnQgdmdlbSwKPj4+PiB1bnNpZ25lZCBoYW5nKQo+Pj4+
ICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IG9mZnNldHNbNF0gPSB7fTsKPj4+PiAgICAgICAg
ICAgICAgICAgICBpbnQgZmQ7Cj4+Pj4gICAgCj4+Pj4gLSAgICAgICAgICAgICAgIGJvW2ldLndp
ZHRoID0gMTAyNDsKPj4+PiAtICAgICAgICAgICAgICAgYm9baV0uaGVpZ2h0ID0gNzY4Owo+Pj4+
ICsgICAgICAgICAgICAgICBib1tpXS53aWR0aCA9IG1vZGUtPmhkaXNwbGF5Owo+Pj4+ICsgICAg
ICAgICAgICAgICBib1tpXS5oZWlnaHQgPSBtb2RlLT52ZGlzcGxheTsKPj4+PiAgICAgICAgICAg
ICAgICAgICBib1tpXS5icHAgPSAzMjsKPj4+PiAgICAgICAgICAgICAgICAgICB2Z2VtX2NyZWF0
ZSh2Z2VtLCAmYm9baV0pOwo+Pj4KPj4+IFRoYXQgbWF5IG5vdCByZXN1bHQgaW4gYSBidWZmZXIg
dGhhdCB3ZSBhcmUgYWJsZSB0byBmbGlwIHRvLiA6fAo+Pj4gd2lkdGggPSBBTElHTihoZGlzcGxh
eSwgMTYpOyB2ZGlzcGxheSBzaG91bGQgYmUgb2suCj4+Cj4+IE9oLi4gd2VsbCBJIGRvbid0IGtu
b3cuIE1hYXJ0ZW4gaGVscGZ1bGx5IGRlc2NyaWJlZCBpbiB0aGUgQlogdGhhdAo+PiB0aGUKPj4g
c2tpcCBpcyBkdWUgQk8gYmVpbmcgdG9vIHNtYWxsIGZvciB0aGUgRkIuIEFsaWduaW5nIHdpZHRo
IHdvdWxkIHRoZW4KPj4gbWFrZSBpdCB0b28gbGFyZ2UuIElzIHRoYXQgT0s/IFdobyBhc3NpZ25l
ZCB0aGlzIGRpc3BsYXkgcmVsYXRlZCBJR1QKPj4gYnVnCj4+IHRvIG1lIGFueXdheT8gOikpCj4g
SSBkb24ndCBrbm93IGFib3V0IHRoYXQuIEkgaGF2ZSBhIHRhc2sgdG8gaW1wcm92ZSB0aGUgdGVz
dCBpbiBteQo+IGJhY2tsb2cgdG9vIDopCj4gCj4gVGhpcyBwYXRjaCBkZWZpbml0ZWx5IGltcHJv
dmVzIHRoZSB0ZXN0LiBIb3dldmVyLCBJIHdhc24ndCBhYmxlIHRvCj4gYXBwbHkgdGhlIHBhdGNo
IGNsZWFubHkgb24gbXkgdHJlZS4gTWF5YmUgaXQgbmVlZHMgYSByZWJhc2U/IEFueXdheSwgQ0kK
PiBzZWVtcyB0byBiZSBoYXBweSB3aXRoIHRoZSBjaGFuZ2UuCj4gCj4gUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+CgpUaGFua3MsIHB1c2hlZCEKCk9uZSBs
ZXNzIHRoaW5nIG9uIHlvdXIgdG9kbyBsaXN0IG5vdy4gOikKClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
