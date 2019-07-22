Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F370027
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 14:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31AB5897D4;
	Mon, 22 Jul 2019 12:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630AF897D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 12:49:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 05:49:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="368504006"
Received: from kraman-mobl.amr.corp.intel.com (HELO [10.251.80.208])
 ([10.251.80.208])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 05:49:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <52144a00-31b1-eb0d-8bb3-9f92c6e465fd@linux.intel.com>
Date: Mon, 22 Jul 2019 13:49:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718070024.21781-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915: Use
 intel_engine_lookup_user for probing HAS_BSD etc
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

Ck9uIDE4LzA3LzIwMTkgMDg6MDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBVc2UgdGhlIHNhbWUg
bWVjaGFuaXNtIHRvIGRldGVybWluZSBpZiBhIGJhY2tlbmQgZW5naW5lIGV4aXN0cyBmb3IgYQo+
IHVhYmkgbWFwcGluZyBhcyB1c2VkIGludGVybmFsbHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTMgKysrKysrKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKPiBpbmRleCBkMWMzNDk5YzhlMDMuLjM2N2JkYzQ2ODlmMSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYwo+IEBAIC02MSw2ICs2MSw3IEBACj4gICAKPiAgICNpbmNsdWRlICJnZW0v
aTkxNV9nZW1fY29udGV4dC5oIgo+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIK
PiArI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2VyLmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50
ZWxfZ3QuaCIKPiAgICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgo+ICAgI2luY2x1ZGUgImd0
L2ludGVsX3Jlc2V0LmgiCj4gQEAgLTM3MSwxNiArMzcyLDIwIEBAIHN0YXRpYyBpbnQgaTkxNV9n
ZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCQl2
YWx1ZSA9IGRldl9wcml2LT5vdmVybGF5ID8gMSA6IDA7Cj4gICAJCWJyZWFrOwo+ICAgCWNhc2Ug
STkxNV9QQVJBTV9IQVNfQlNEOgo+IC0JCXZhbHVlID0gISFkZXZfcHJpdi0+ZW5naW5lW1ZDUzBd
Owo+ICsJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3ByaXYsCj4gKwkJ
CQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAwKTsKPiAgIAkJYnJlYWs7Cj4gICAJY2Fz
ZSBJOTE1X1BBUkFNX0hBU19CTFQ6Cj4gLQkJdmFsdWUgPSAhIWRldl9wcml2LT5lbmdpbmVbQkNT
MF07Cj4gKwkJdmFsdWUgPSAhIWludGVsX2VuZ2luZV9sb29rdXBfdXNlcihkZXZfcHJpdiwKPiAr
CQkJCQkJICAgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWSwgMCk7Cj4gICAJCWJyZWFrOwo+ICAgCWNh
c2UgSTkxNV9QQVJBTV9IQVNfVkVCT1g6Cj4gLQkJdmFsdWUgPSAhIWRldl9wcml2LT5lbmdpbmVb
VkVDUzBdOwo+ICsJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3ByaXYs
Cj4gKwkJCQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPX0VOSEFOQ0UsIDApOwo+ICAgCQli
cmVhazsKPiAgIAljYXNlIEk5MTVfUEFSQU1fSEFTX0JTRDI6Cj4gLQkJdmFsdWUgPSAhIWRldl9w
cml2LT5lbmdpbmVbVkNTMV07Cj4gKwkJdmFsdWUgPSAhIWludGVsX2VuZ2luZV9sb29rdXBfdXNl
cihkZXZfcHJpdiwKPiArCQkJCQkJICAgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDEpOwo+ICAg
CQlicmVhazsKPiAgIAljYXNlIEk5MTVfUEFSQU1fSEFTX0xMQzoKPiAgIAkJdmFsdWUgPSBIQVNf
TExDKGRldl9wcml2KTsKPiAKCkhvdyBkbyB5b3Ugc2VlIEFCSSBzZW1hbnRpY3Mgb2YgdGhlc2Ug
Z2V0X3BhcmFtcyAtICJHUFUgaGFzIGVuZ2luZSBYLCBvciAKSTkxNV9FWEVDX1ggd2lsbCB3b3Jr
Ij8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
