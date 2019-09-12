Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D95B108B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 16:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823B46ED7D;
	Thu, 12 Sep 2019 14:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC496ED7D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:00:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 07:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385073618"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2019 07:00:14 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190911191133.23383-1-animesh.manna@intel.com>
 <20190911191133.23383-10-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <29714482-6e8f-1d62-dbf2-f801d8be73e4@intel.com>
Date: Thu, 12 Sep 2019 19:30:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190911191133.23383-10-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 09/10] drm/i915/dsb: Enable DSB for gen12.
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

Ck9uIDkvMTIvMjAxOSAxMjo0MSBBTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPiBFbmFibGluZyBE
U0IgYnkgc2V0dGluZyAxIHRvIGhhc19kc2IgZmxhZyBmb3IgZ2VuMTIuCj4KPiBDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMyAr
Ky0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IGluZGV4IGIzY2M4NTYwNjk2Yi4uMWZkMmEzNjQ4OTFh
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gQEAgLTc4Nyw3ICs3ODcsOCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2Vsa2hhcnRsYWtlX2luZm8g
PSB7Cj4gICAJCVtUUkFOU0NPREVSX0RTSV8wXSA9IFRSQU5TQ09ERVJfRFNJMF9PRkZTRVQsIFwK
PiAgIAkJW1RSQU5TQ09ERVJfRFNJXzFdID0gVFJBTlNDT0RFUl9EU0kxX09GRlNFVCwgXAo+ICAg
CX0sIFwKPiAtCS5oYXNfZ2xvYmFsX21vY3MgPSAxCj4gKwkuaGFzX2dsb2JhbF9tb2NzID0gMSwg
XAo+ICsJLmRpc3BsYXkuaGFzX2RzYiA9IDEKCkxvb2tzIGdvb2QgdG8gbWUsIGZlZWwgZnJlZSB0
byB1c2U6CgpSZXZpZXdlZC1ieTogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50
ZWwuY29tPgoKLSBTaGFzaGFuawoKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
ZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5mbyA9IHsKPiAgIAlHRU4xMl9GRUFUVVJF
UywKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
