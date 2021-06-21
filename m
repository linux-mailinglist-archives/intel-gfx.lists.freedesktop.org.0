Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F093AE9C4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 15:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E906E063;
	Mon, 21 Jun 2021 13:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760CE6E055
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 13:09:07 +0000 (UTC)
IronPort-SDR: J2uZHa+dSQsLLg5FNg0m+ShpNf7JWr3vg20MeF424l7R0+rgk0faLHkq5aBKC5gozT82ey6+8z
 Vn/bj/0gcMyw==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="267978674"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="267978674"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:07:58 -0700
IronPort-SDR: zoPcqtg8naaung0w4EthUi40ip73vYToN3UOXXQF5J3gxdWtfpAcwcMfPFxjV05IaUhvTtfFw7
 d8PdH4wWO4Bg==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="453874792"
Received: from plogin-mobl.ger.corp.intel.com (HELO [10.249.33.137])
 ([10.249.33.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:07:57 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
 <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
 <74c6afe5-a76f-1895-d37b-d738978e2804@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <1d7486eb-27df-17cd-e4a6-3ac45ecf7a36@linux.intel.com>
Date: Mon, 21 Jun 2021 15:07:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <74c6afe5-a76f-1895-d37b-d738978e2804@linux.intel.com>
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

T3AgMjEtMDYtMjAyMSBvbSAxNDo1MiBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMjEv
MDYvMjAyMSAxMzowOCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Cj4+IEkgaGFkIHNvbWUgcXVl
c3Rpb25zIG9uIHRoZSB0cnlib3QgbWFpbGluZyBsaXN0LCBsZXQgbWUgY29weSZwYXN0ZS4uCj4+
Cj4+IE9uIDIxLzA2LzIwMjEgMTI6NDEsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4gSXQg
ZG9lc24ndCB3b3JrIGZvciBsZWdhY3kgcmluZyBzdWJtaXNzaW9uLCBhbmQgaXMgaW4gdGhlIGJl
c3QgY2FzZQo+Pj4gaWdub3JlZC4KPj4KPj4gTG9va3MgcmVqZWN0ZWQgaW5zdGVhZCBvZiBpZ25v
cmVkOgo+Pgo+PiBzdGF0aWMgaW50IHNldF9yaW5nc2l6ZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9j
b250ZXh0X3BhcmFtICphcmdzKQo+PiB7Cj4+IMKgwqDCoMKgIGlmICghSEFTX0xPR0lDQUxfUklO
R19DT05URVhUUyhjdHgtPmk5MTUpKQo+PiDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVW
Owo+Pj4KPj4+IEluIHRoZSB3b3JzdCBjYXNlIHdlIGVuZCB1cCBmcmVlaW5nIGVuZ2luZS0+bGVn
YWN5LnJpbmcgZm9yIGFsbCBvdGhlcgo+Pj4gYWN0aXZlIGVuZ2luZXMsIHJlc3VsdGluZyBpbiBh
IHVzZS1hZnRlci1mcmVlLgo+Pgo+PiBXb3JzdCBjYXNlIGlzIGNsb25pbmcgYmVjYXVzZSByaW5n
X2NvbnRleHRfYWxsb2MgaXMgbm90IHRha2luZyBhIHJlZmVyZW5jZSB0byBlbmdpbmUtPmxlZ2Fj
eS5yaW5nLCBvciBzb21ldGhpbmcgZWxzZT8KPgo+IE5vIGNhbid0IGJlIHRoYXQsIGl0IHdhcyBt
eSBpbmNvbXBsZXRlIGFuYWx5c2lzIGxhc3Qgd2Vlay4gU2luY2UgcmluZ19jb250ZXh0X2Rlc3Ry
b3kgZG9lcyBub3QgYWN0dWFsbHkgZnJlZSB0aGUgbGVnYWN5IHJpbmcgSSBkb24ndCBzZWUgYW55
IHVzZSBhZnRlciBmcmVlIHBhdGhzLgo+Cj4gUmVnYXJkcywKCkhtbSwgaXQgZ2V0cyBzdHVjayBp
bnNpZGUgaW50ZWxfY29udGV4dF9zZXRfcmluZ19zaXplIHdoZW4gY2xvbmluZyBlbmdpbmVzLi4K
CkkgZ3Vlc3MgaXQgY2FuJ3QgaGFwcGVuIGluIHByYWN0aWNlLCBqdXN0IHRoZSBjb2RlIGludHJv
ZHVjZXMgdGhlIHJhY2UgYnkgcHJlYWxsb2NhdGluZwppbnNpZGUgaW50ZWxfY29udGV4dF9sb2Nr
X3Bpbm5lZCgpLi4KCmNvcHlfcmluZ19zaXplKCkgc2hvdWxkIG9ubHkgYmUgY2FsbGVkIGZvciBI
QVNfTE9HSUNBTF9SSU5HX0NPTlRFWFRTKCkuCkkgZ3Vlc3MgdGhhdCBtYWtlcyB0aGlzIHBhdGNo
IG9ic29sZXRlLiBJdCBjYW4gc2FmZWx5IGJlIGRyb3BwZWQgZnJvbSB0aGUgc2VyaWVzLApJIHRo
aW5rIEkgc2hvdWxkIHByb2JhYmx5IGludHJvZHVjZSBhIGNoZWNrIHRvIG9ubHkgc2V0IHRoZSBz
aXplIHdoZW4gSEFTX0xPR0lDQUxfUklOR19DT05URVhUUwpldmFsdWF0ZXMgdG8gdHJ1ZSwgYnV0
IHRoYXQgd291bGRuJ3QgYmxvY2sgdGhlIHJlc3Qgb2YgdGhpcyBzZXJpZXMuCgp+TWFhcnRlbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
