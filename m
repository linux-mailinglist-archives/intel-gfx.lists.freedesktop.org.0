Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A552B7C23
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 12:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1431F6E3D8;
	Wed, 18 Nov 2020 11:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6125F6E3D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 11:12:34 +0000 (UTC)
IronPort-SDR: XfV/nxDuM3ERAqqqhbRJ5IPkUj/3MMxnJt5sx19rXogujImq/DtH01ntMkMUoOUCKkXnWJJY8H
 rWIh09Il5G6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="168527575"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="168527575"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 03:12:33 -0800
IronPort-SDR: R0amkP8O7qoAzbr7AiCNBpQl8E79VeFqRT3NshLV7KdQN36QafBtDL7aClf8UzRvav7M42w8PZ
 eIBKQk2SOWHw==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="544471179"
Received: from dlmurray-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.82.13])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 03:12:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201106101443.686053-2-gwan-gyeong.mun@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201106101443.686053-1-gwan-gyeong.mun@intel.com>
 <20201106101443.686053-2-gwan-gyeong.mun@intel.com>
Date: Wed, 18 Nov 2020 13:12:29 +0200
Message-ID: <875z62q5pe.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAwNiBOb3YgMjAyMCwgR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50
ZWwuY29tPiB3cm90ZToKPiBJbiBvcmRlciB0byBzdXBwb3J0IHRoZSBQU1Igc3RhdGUgb2YgZWFj
aCB0cmFuc2NvZGVyLCBpdCBhZGRzCj4gaTkxNV9wc3Jfc3RhdHVzIHRvIHN1Yi1kaXJlY3Rvcnkg
b2YgZWFjaCB0cmFuc2NvZGVyLgo+Cj4gdjI6IENoYW5nZSB1c2luZyBvZiBTeW1ib2xpYyBwZXJt
aXNzaW9ucyAnU19JUlVHTycgdG8gdXNpbmcgb2Ygb2N0YWwKPiAgICAgcGVybWlzc2lvbnMgJzA0
NDQnCj4KPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IC0tLQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMu
YyAgfCAyMyArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzLmMKPiBpbmRleCA4NDAyZTZhYzlmNzYuLjM3ODA1NjE1YTIyMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVi
dWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RlYnVnZnMuYwo+IEBAIC0yMDkzLDYgKzIwOTMsMjMgQEAgc3RhdGljIGludCBpOTE1X2hkY3Bf
c2lua19jYXBhYmlsaXR5X3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ICB9
Cj4gIERFRklORV9TSE9XX0FUVFJJQlVURShpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5KTsKPiAg
Cj4gK3N0YXRpYyBpbnQgaTkxNV9wc3Jfc3RhdHVzX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2
b2lkICpkYXRhKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+
cHJpdmF0ZTsKPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQo+ICsJCWludGVsX2F0dGFj
aGVkX2RwKHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpKTsKPiArCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+ICsKPiArCWlmIChj
b25uZWN0b3ItPnN0YXR1cyAhPSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCkKCkhvdydzIHRo
aXMgcG9zc2libGUgZm9yIGVEUCwgYnR3PwoKQlIsCkphbmkuCgo+ICsJCXJldHVybiAtRU5PREVW
Owo+ICsKPiArCWlmICghSEFTX1BTUihkZXZfcHJpdikpCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4g
Kwo+ICsJcmV0dXJuIGludGVsX3Bzcl9zdGF0dXMobSwgaW50ZWxfZHApOwo+ICt9Cj4gK0RFRklO
RV9TSE9XX0FUVFJJQlVURShpOTE1X3Bzcl9zdGF0dXMpOwo+ICsKPiAgI2RlZmluZSBMUFNQX0NB
UEFCTEUoQ09ORCkgKENPTkQgPyBzZXFfcHV0cyhtLCAiTFBTUDogY2FwYWJsZVxuIikgOiBcCj4g
IAkJCQlzZXFfcHV0cyhtLCAiTFBTUDogaW5jYXBhYmxlXG4iKSkKPiAgCj4gQEAgLTIyNjgsNiAr
MjI4NSwxMiBAQCBpbnQgaW50ZWxfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IpCj4gIAkJCQkgICAgY29ubmVjdG9yLCAmaTkxNV9wc3Jfc2lua19z
dGF0dXNfZm9wcyk7Cj4gIAl9Cj4gIAo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIg
JiYKPiArCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RP
Ul9lRFApIHsKPiArCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3Bzcl9zdGF0dXMiLCAwNDQ0
LCByb290LAo+ICsJCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfcHNyX3N0YXR1c19mb3BzKTsKPiAr
CX0KPiArCj4gIAlpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05O
RUNUT1JfRGlzcGxheVBvcnQgfHwKPiAgCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09
IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSB8fAo+ICAJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9y
X3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0hETUlCKSB7CgotLSAKSmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
