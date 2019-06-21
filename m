Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFF54EBEE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 17:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135A06E8DE;
	Fri, 21 Jun 2019 15:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5696E8DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 15:25:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 08:25:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,400,1557212400"; d="scan'208";a="335846691"
Received: from tlim24-mobl1.gar.corp.intel.com (HELO [10.252.23.133])
 ([10.252.23.133])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2019 08:25:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190621130544.24226-1-chris@chris-wilson.co.uk>
 <20190621130544.24226-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <556cc5aa-bd24-78cc-9b90-f24b9ec265cb@intel.com>
Date: Fri, 21 Jun 2019 16:25:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190621130544.24226-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Track i915_active using
 debugobjects
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

T24gMjEvMDYvMjAxOSAxNDowNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFByb3ZpZGUgcnVudGlt
ZSBhc3NlcnRzIGFuZCB0cmFja2luZyBvZiBpOTE1X2FjdGl2ZSB2aWEgZGVidWdvYmplY3RzLgo+
IEZvciBleGFtcGxlLCB0aGlzIHNob3VsZCBhbGxvdyB1cyB0byBjaGVjayB0aGF0IHRoZSBpOTE1
X2FjdGl2ZSBpcyBvbmx5Cj4gYWN0aXZlIHdoZW4gd2UgZXhwZWN0IGl0IHRvIGJlIGFuZCBpcyBu
ZXZlciBmcmVlZCB0b28gZWFybHkuCj4gCj4gT25lIGNvbnNlcXVlbmNlIGlzIHRoYXQsIGZvciBz
aW1wbGljaXR5LCB3ZSBubyBsb25nZXIgYWxsb3cgaTkxNV9hY3RpdmUKPiB0byBiZSBvbi1zdGFj
ayB3aGljaCBvbmx5IGFmZmVjdGVkIHRoZSBzZWxmdGVzdHMuCj4gCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAgICAgICAgICB8IDY2ICsrKysrKysrKysrKysr
KystCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyB8IDc4
ICsrKysrKysrKysrKysrKy0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEyMyBpbnNlcnRpb25z
KCspLCAyMSBkZWxldGlvbnMoLSkKPiAKCltzbmlwXQoKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgbGl2
ZV9hY3RpdmUgKgo+ICtfX2xpdmVfYWN0aXZlX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQo+ICAgewo+ICAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiAgIAlz
dHJ1Y3QgaTkxNV9zd19mZW5jZSAqc3VibWl0Owo+ICsJc3RydWN0IGxpdmVfYWN0aXZlICphY3Rp
dmU7Cj4gICAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4gICAJdW5zaWduZWQgaW50IGNvdW50
ID0gMDsKPiAgIAlpbnQgZXJyID0gMDsKPiAgIAo+IC0Jc3VibWl0ID0gaGVhcF9mZW5jZV9jcmVh
dGUoR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIXN1Ym1pdCkKPiAtCQlyZXR1cm4gLUVOT01FTTsKPiAr
CWFjdGl2ZSA9IF9fbGl2ZV9hbGxvYyhpOTE1KTsKPiArCWlmICghYWN0aXZlKQo+ICsJCXJldHVy
biBFUlJfUFRSKC1FTk9NRU0pOwo+ICAgCj4gLQlpOTE1X2FjdGl2ZV9pbml0KGk5MTUsICZhY3Rp
dmUtPmJhc2UsIF9fbGl2ZV9hY3RpdmVfcmV0aXJlKTsKPiAtCWFjdGl2ZS0+cmV0aXJlZCA9IGZh
bHNlOwo+ICsJc3VibWl0ID0gaGVhcF9mZW5jZV9jcmVhdGUoR0ZQX0tFUk5FTCk7Cj4gKwlpZiAo
IXN1Ym1pdCkgewo+ICsJCWtmcmVlKGFjdGl2ZSk7Cj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7Cj4gKwl9Cj4gICAKPiAgIAlpZiAoIWk5MTVfYWN0aXZlX2FjcXVpcmUoJmFjdGl2ZS0+YmFz
ZSkpIHsKPiAgIAkJcHJfZXJyKCJGaXJzdCBpOTE1X2FjdGl2ZV9hY3F1aXJlIHNob3VsZCByZXBv
cnQgYmVpbmcgaWRsZVxuIik7Cj4gQEAgLTg0LDY0ICsxMDcsNzkgQEAgc3RhdGljIGludCBfX2xp
dmVfYWN0aXZlX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgCWk5MTVf
c3dfZmVuY2VfY29tbWl0KHN1Ym1pdCk7Cj4gICAJaGVhcF9mZW5jZV9wdXQoc3VibWl0KTsKPiAg
IAo+IC0JcmV0dXJuIGVycjsKPiArCS8qIFhYWCBsZWFrcyBsaXZlX2FjdGl2ZSBvbiBlcnJvciAq
Lwo+ICsJcmV0dXJuIGVyciA/IEVSUl9QVFIoZXJyKSA6IGFjdGl2ZQoKVG9vIG11Y2ggb2YgYSBw
YWluPwoKTm90IGEgYmxvY2tlciwKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
