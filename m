Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0211A330B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 13:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490396E04E;
	Thu,  9 Apr 2020 11:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC2E6E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 11:16:51 +0000 (UTC)
IronPort-SDR: vxUGjATxSbkJ5zeiV+xKJglycE5AA2o5l8V22AFLEoFzIhu/TbElTPiVb2C7a284u1UM2nddRi
 eWdGXGkPdEww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 04:16:50 -0700
IronPort-SDR: 68+cOwNIkoe3pgjDj69H8VHxvX+xaK7p8wztRWEEWThD45OQMJNgVL/jUFac+BGgUfOqYe+sJe
 ciyuasd3TY7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,362,1580803200"; d="scan'208";a="244296367"
Received: from unknown (HELO [10.249.43.27]) ([10.249.43.27])
 by fmsmga008.fm.intel.com with ESMTP; 09 Apr 2020 04:16:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-4-chris@chris-wilson.co.uk>
 <bb2ca1d8-0da8-2e3b-db05-f9c877a00ae1@intel.com>
 <158642954064.23161.10597558821934207099@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c6ebb185-2232-344d-2181-6ae0ff7b91a7@intel.com>
Date: Thu, 9 Apr 2020 14:16:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158642954064.23161.10597558821934207099@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/10] dma-buf: Report signaled links inside
 dma-fence-chain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDQvMjAyMCAxMzo1MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMjAtMDQtMDggMjE6MDA6NTkpCj4+IE9uIDAzLzA0LzIwMjAgMTI6MTIs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFdoZW5ldmVyIHdlIHdhbGsgYWxvbmcgdGhlIGRtYS1m
ZW5jZS1jaGFpbiwgd2UgcHJ1bmUgc2lnbmFsZWQgbGlua3MgdG8KPj4+IGtlZXAgdGhlIGNoYWlu
IG5pY2UgYW5kIHRpZHkuIFRoaXMgbGVhZHMgdG8gc2l0dWF0aW9ucyB3aGVyZSB3ZSBjYW4KPj4+
IHBydW5lIGEgbGluayBhbmQgcmVwb3J0IHRoZSBlYXJsaWVyIGZlbmNlIGFzIHRoZSB0YXJnZXQg
c2Vxbm8gLS0KPj4+IHZpb2xhdGluZyBvdXIgb3duIGNvbnNpc3RlbmN5IGNoZWNrcyB0aGF0IHRo
ZSBzZXFubyBpcyBub3QgbW9yZSBhZHZhbmNlZAo+Pj4gdGhhbiB0aGUgbGFzdCBlbGVtZW50IGlu
IGEgZG1hLWZlbmNlLWNoYWluLgo+Pj4KPj4+IFJlcG9ydCBhIE5VTEwgZmVuY2UgYW5kIHN1Y2Nl
c3MgaWYgdGhlIHNlcW5vIGhhcyBhbHJlYWR5IGJlZW4gc2lnbmFsZWQuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiAtLS0K
Pj4+ICAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDcgKysrKysrKwo+Pj4g
ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLWNoYWluLmMKPj4+IGluZGV4IDNkMTIzNTAyZmYxMi4uYzQzNWJiYmE4NTFjIDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jCj4+PiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMKPj4+IEBAIC05OSw2ICs5OSwxMiBAQCBpbnQg
ZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8oc3RydWN0IGRtYV9mZW5jZSAqKnBmZW5jZSwgdWlu
dDY0X3Qgc2Vxbm8pCj4+PiAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4+ICAgIAo+
Pj4gICAgICAgIGRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaCgqcGZlbmNlLCAmY2hhaW4tPmJhc2Up
IHsKPj4+ICsgICAgICAgICAgICAgaWYgKCgqcGZlbmNlKS0+c2Vxbm8gPCBzZXFubykgeyAvKiBh
bHJlYWR5IHNpZ25hbGVkICovCj4+PiArICAgICAgICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1
dCgqcGZlbmNlKTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAqcGZlbmNlID0gTlVMTDsKPj4+
ICsgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4+ICsgICAgICAgICAgICAgfQo+Pj4gKwo+
Pgo+PiBXb3VsZG4ndCB0aGlzIGNvbmRpdGlvbiBiZWVuIGZ1bGZpbGxlZCBpbiB0aGUgcHJldmlv
dXMgY2hlY2s/IDoKPj4KPj4KPj4gY2hhaW4gPSB0b19kbWFfZmVuY2VfY2hhaW4oKnBmZW5jZSk7
Cj4+IGlmICghY2hhaW4gfHwgY2hhaW4tPmJhc2Uuc2Vxbm8gPCBzZXFubykKPj4gICDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPiBUaGUgcHJvYmxlbSBpcyBpbiB0aGUgY2hhaW4gaXRl
cmF0aW9uLiBJdCBhc3N1bWVzIHRoYXQgYW4gdW5vcmRlcmVkIHNldAo+IG9mIGZlbmNlcyBpcyBp
biB0aGUgb3JkZXIgb2YgdGhlIHVzZXIncyBzZXFuby4gVGhlcmUgYXJlIG5vIHJlc3RyaWN0aW9u
cwo+IHBsYWNlZCBvbiB0aGUgY2hhaW4sIHNvIHdlIG11c3QgYXBwbHkgdGhlIG9yZGVyaW5nIGZy
b20gdGhlIHRpbWVsaW5lIHNlcW5vCj4gZGlyZWN0bHkuCj4gLUNocmlzCgoKSSBkb24ndCByZWFs
bHkgdW5kZXJzdGFuZCB0aGF0LiBjaGFpbi0+c2Vxbm8gc2hvdWxkIGJlIG9yZGVyZWQgYmVjYXVz
ZSAKY2hhaW4tPnByZXZfc2Vxbm8gPD0gY2hhaW4tPnNlcW5vLgoKRG8geW91IGhhdmUgYW4gZXhh
bXBsZSB3aGVyZSB0aGlzIGlzIG5vdCB0aGUgY2FzZT8KCgotTGlvbmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
