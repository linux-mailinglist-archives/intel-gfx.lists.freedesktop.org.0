Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C52D1A2A00
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 22:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF91B6EB03;
	Wed,  8 Apr 2020 20:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958FA6EADC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 20:01:01 +0000 (UTC)
IronPort-SDR: PdtcjTYDe0cS0rggeC/N086KsyZDREvM83fAdMRi+Pfhjbr3eYJRTHiKhI7kKhdsoNJRpOdUi1
 n8q91s6Q972w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 13:01:00 -0700
IronPort-SDR: kAfnW+S1EnNnJkG2Qz5NHtH/uvlhRxWQ/LaP5TShfnZe5n0c+yPwNwSzntekeJ0KmQZyqzoseZ
 mobPiL7b8qQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,359,1580803200"; d="scan'208";a="251667756"
Received: from gossner-mobl.ger.corp.intel.com (HELO [10.249.41.54])
 ([10.249.41.54])
 by orsmga003.jf.intel.com with ESMTP; 08 Apr 2020 13:00:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-4-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bb2ca1d8-0da8-2e3b-db05-f9c877a00ae1@intel.com>
Date: Wed, 8 Apr 2020 23:00:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403091300.14734-4-chris@chris-wilson.co.uk>
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

T24gMDMvMDQvMjAyMCAxMjoxMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdoZW5ldmVyIHdlIHdh
bGsgYWxvbmcgdGhlIGRtYS1mZW5jZS1jaGFpbiwgd2UgcHJ1bmUgc2lnbmFsZWQgbGlua3MgdG8K
PiBrZWVwIHRoZSBjaGFpbiBuaWNlIGFuZCB0aWR5LiBUaGlzIGxlYWRzIHRvIHNpdHVhdGlvbnMg
d2hlcmUgd2UgY2FuCj4gcHJ1bmUgYSBsaW5rIGFuZCByZXBvcnQgdGhlIGVhcmxpZXIgZmVuY2Ug
YXMgdGhlIHRhcmdldCBzZXFubyAtLQo+IHZpb2xhdGluZyBvdXIgb3duIGNvbnNpc3RlbmN5IGNo
ZWNrcyB0aGF0IHRoZSBzZXFubyBpcyBub3QgbW9yZSBhZHZhbmNlZAo+IHRoYW4gdGhlIGxhc3Qg
ZWxlbWVudCBpbiBhIGRtYS1mZW5jZS1jaGFpbi4KPgo+IFJlcG9ydCBhIE5VTEwgZmVuY2UgYW5k
IHN1Y2Nlc3MgaWYgdGhlIHNlcW5vIGhhcyBhbHJlYWR5IGJlZW4gc2lnbmFsZWQuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0K
PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDcgKysrKysrKwo+ICAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4u
Ywo+IGluZGV4IDNkMTIzNTAyZmYxMi4uYzQzNWJiYmE4NTFjIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UtY2hhaW4uYwo+IEBAIC05OSw2ICs5OSwxMiBAQCBpbnQgZG1hX2ZlbmNlX2NoYWluX2Zp
bmRfc2Vxbm8oc3RydWN0IGRtYV9mZW5jZSAqKnBmZW5jZSwgdWludDY0X3Qgc2Vxbm8pCj4gICAJ
CXJldHVybiAtRUlOVkFMOwo+ICAgCj4gICAJZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKCpwZmVu
Y2UsICZjaGFpbi0+YmFzZSkgewo+ICsJCWlmICgoKnBmZW5jZSktPnNlcW5vIDwgc2Vxbm8pIHsg
LyogYWxyZWFkeSBzaWduYWxlZCAqLwo+ICsJCQlkbWFfZmVuY2VfcHV0KCpwZmVuY2UpOwo+ICsJ
CQkqcGZlbmNlID0gTlVMTDsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+ICsKCgpXb3VsZG4ndCB0aGlz
IGNvbmRpdGlvbiBiZWVuIGZ1bGZpbGxlZCBpbiB0aGUgcHJldmlvdXMgY2hlY2s/IDoKCgpjaGFp
biA9IHRvX2RtYV9mZW5jZV9jaGFpbigqcGZlbmNlKTsKaWYgKCFjaGFpbiB8fCBjaGFpbi0+YmFz
ZS5zZXFubyA8IHNlcW5vKQogwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7CgotTGlvbmVs
Cgo+ICAgCQlpZiAoKCpwZmVuY2UpLT5jb250ZXh0ICE9IGNoYWluLT5iYXNlLmNvbnRleHQgfHwK
PiAgIAkJICAgIHRvX2RtYV9mZW5jZV9jaGFpbigqcGZlbmNlKS0+cHJldl9zZXFubyA8IHNlcW5v
KQo+ICAgCQkJYnJlYWs7Cj4gQEAgLTIyMiw2ICsyMjgsNyBAQCBFWFBPUlRfU1lNQk9MKGRtYV9m
ZW5jZV9jaGFpbl9vcHMpOwo+ICAgICogQGNoYWluOiB0aGUgY2hhaW4gbm9kZSB0byBpbml0aWFs
aXplCj4gICAgKiBAcHJldjogdGhlIHByZXZpb3VzIGZlbmNlCj4gICAgKiBAZmVuY2U6IHRoZSBj
dXJyZW50IGZlbmNlCj4gKyAqIEBzZXFubzogdGhlIHNlcXVlbmNlIG51bWJlciAoc3luY3B0KSBv
ZiB0aGUgZmVuY2Ugd2l0aGluIHRoZSBjaGFpbgo+ICAgICoKPiAgICAqIEluaXRpYWxpemUgYSBu
ZXcgY2hhaW4gbm9kZSBhbmQgZWl0aGVyIHN0YXJ0IGEgbmV3IGNoYWluIG9yIGFkZCB0aGUgbm9k
ZSB0bwo+ICAgICogdGhlIGV4aXN0aW5nIGNoYWluIG9mIHRoZSBwcmV2aW91cyBmZW5jZS4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
