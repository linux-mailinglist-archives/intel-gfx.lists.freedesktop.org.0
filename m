Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2D1F988D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 19:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A44389DEA;
	Tue, 12 Nov 2019 18:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62C889DEA;
 Tue, 12 Nov 2019 18:23:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 10:23:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="256102240"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Nov 2019 10:23:31 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191112154757.7304-1-chris@chris-wilson.co.uk>
 <75a2acf6-9301-4912-8b46-6e5e2654aadd@intel.com>
 <157358289793.28106.13889695970048334451@skylake-alporthouse-com>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <cbec40b6-afa5-e12b-456d-62ee99acb37a@intel.com>
Date: Tue, 12 Nov 2019 10:23:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <157358289793.28106.13889695970048334451@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Mark up a few more tests that
 only target GGTT
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMi8xMS8xOSAxMDoyMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgQW50b25p
byBBcmdlbnppYW5vICgyMDE5LTExLTEyIDE4OjE3OjQxKQo+Pgo+Pgo+PiBPbiAxMi8xMS8xOSAw
Nzo0NywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gSWYgYSB0ZXN0IGlzIG9ubHkgdGFyZ2V0aW5n
IHRoZSBHR1RUIEFQSSBhbmQgaXRzIGNvcm5lciBjYXNlcywgaXQgY2FuCj4+PiBvbmx5IHJ1biBp
ZiB3ZSBoYXZlIGEgbWFwcGFibGUgYXBlcnR1cmUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiBDYzogQW50b25pbyBBcmdl
bnppYW5vIDxhbnRvbmlvLmFyZ2Vuemlhbm9AaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBsaWIv
aTkxNS9nZW1fbW1hbi5jICAgICAgICAgICAgIHwgMTkgKysrKysrKysrKysrKysrKysrKwo+Pj4g
ICAgbGliL2k5MTUvZ2VtX21tYW4uaCAgICAgICAgICAgICB8ICAzICsrKwo+Pj4gICAgdGVzdHMv
aTkxNS9nZW1fZ3R0X2NwdV90bGIuYyAgICB8ICAxICsKPj4+ICAgIHRlc3RzL2k5MTUvZ2VtX2d0
dF9ob2cuYyAgICAgICAgfCAgMSArCj4+PiAgICB0ZXN0cy9pOTE1L2dlbV9ndHRfc3BlZWQuYyAg
ICAgIHwgIDIgKysKPj4+ICAgIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgICAgICAgfCAgNSAr
LS0tLQo+Pj4gICAgdGVzdHMvaTkxNS9nZW1fdGlsZWRfc3dhcHBpbmcuYyB8ICAxICsKPj4+ICAg
IDcgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX21tYW4uYyBiL2xpYi9pOTE1L2dlbV9tbWFuLmMK
Pj4+IGluZGV4IDNjZjlhNmJiZC4uNzZkMGJlODJlIDEwMDY0NAo+Pj4gLS0tIGEvbGliL2k5MTUv
Z2VtX21tYW4uYwo+Pj4gKysrIGIvbGliL2k5MTUvZ2VtX21tYW4uYwo+Pj4gQEAgLTI1MiwzICsy
NTIsMjIgQEAgdm9pZCAqZ2VtX21tYXBfX2NwdShpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwgdWlu
dDY0X3Qgb2Zmc2V0LCB1aW50NjRfdCBzaXplLCB1bnMKPj4+ICAgICAgICBpZ3RfYXNzZXJ0KHB0
cik7Cj4+PiAgICAgICAgcmV0dXJuIHB0cjsKPj4+ICAgIH0KPj4+ICsKPj4+ICtib29sIGdlbV9o
YXNfZ2d0dChpbnQgaTkxNSkKPj4KPj4gbml0OiBJIHdvdWxkIHB1dCBtYXBwaW5nIG9yIG1hcCBv
ciBzb21ldGhpbmcgaW4gdGhlIG5hbWUgdG8gbWFrZSBpdAo+PiBjbGVhciB0aGF0IHRoZSBtYXBw
aW5nIGlzIG5vdCBhY2Nlc3NpYmxlIGJ1dCwgeW91ciBjYWxsIDopLgo+IAo+IEkgY291bGQgZ28g
d2l0aCBoYXNfZ2d0dF9hcGVydHVyZSgpPyBPciBoYXNfbWFwcGFibGVfZ2d0dCgpPwo+IEJvdGgg
aGF2ZSB0aGVpciBtZXJpdHMuIExlYW5pbmcgdG93YXJkcyBoYXNfbWFwcGFibGVfZ2d0dC4KCisx
IGhhc19tYXBwYWJsZV9nZ3R0LgoKPiAtQ2hyaXMKPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
