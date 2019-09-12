Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98DB0E9E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D034C892E2;
	Thu, 12 Sep 2019 12:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A070A892E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:09:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 05:09:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385047623"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 05:09:53 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190911191133.23383-1-animesh.manna@intel.com>
 <20190911191133.23383-2-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <e5ca37b3-9efc-185d-213f-ae55c27f04f7@intel.com>
Date: Thu, 12 Sep 2019 17:39:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190911191133.23383-2-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 01/10] drm/i915/dsb: feature flag added
 for display state buffer.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvMTIvMjAxOSAxMjo0MSBBTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPiBEaXNwbGF5IFN0
YXRlIEJ1ZmZlcihEU0IpIGlzIGEgbmV3IGhhcmR3YXJlIGNhcGFiaWxpdHksIGludHJvZHVjZWQK
PiBpbiBHRU4xMiBkaXNwbGF5LiBEU0IgYWxsb3dzIGEgZHJpdmVyIHRvIGJhdGNoLXByb2dyYW0g
ZGlzcGxheSBIVwo+IHJlZ2lzdGVycy4KPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4g
Q2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAyICsrCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgMSArCj4gICAyIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXgg
MmVhMTExMjNlOTMzLi42YzZhZjAwN2YyOWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
PiBAQCAtMTg2Myw2ICsxODYzLDggQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqcGRldl90b19pOTE1KHN0cnVjdCBwY2lfZGV2ICpwZGV2KQo+ICAgCShCVUlMRF9CVUdf
T05fWkVSTyghX19idWlsdGluX2NvbnN0YW50X3AobikpICsgXAo+ICAgCSBJTlRFTF9JTkZPKGRl
dl9wcml2KS0+Z2VuID09IChuKSkKPiAgIAo+ICsjZGVmaW5lIEhBU19EU0IoZGV2X3ByaXYpCShJ
TlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZHNiKQo+ICsKPiAgIC8qCj4gICAgKiBS
ZXR1cm4gdHJ1ZSBpZiByZXZpc2lvbiBpcyBpbiByYW5nZSBbc2luY2UsdW50aWxdIGluY2x1c2l2
ZS4KPiAgICAqCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCj4gaW5k
ZXggOTJlMGMyZTA5NTRjLi5lMjA2ZjI5OGY0OGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmgKPiBAQCAtMTM1LDYgKzEzNSw3IEBAIGVudW0gaW50ZWxfcHBn
dHRfdHlwZSB7Cj4gICAJZnVuYyhoYXNfY3NyKTsgXAo+ICAgCWZ1bmMoaGFzX2RkaSk7IFwKPiAg
IAlmdW5jKGhhc19kcF9tc3QpOyBcCj4gKwlmdW5jKGhhc19kc2IpOyBcCj4gICAJZnVuYyhoYXNf
ZmJjKTsgXAo+ICAgCWZ1bmMoaGFzX2dtY2gpOyBcCj4gICAJZnVuYyhoYXNfaG90cGx1Zyk7IFwK
Ckxvb2tzIGdvb2QgdG8gbWUsCgpGZWVsIGZyZWUgdG8gdXNlOiBSZXZpZXdlZC1ieTogU2hhc2hh
bmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgoKLSBTaGFzaGFuawoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
