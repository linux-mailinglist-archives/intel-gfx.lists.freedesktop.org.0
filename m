Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F2A366B72
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 15:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A736C6E104;
	Wed, 21 Apr 2021 13:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D73316E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 13:01:26 +0000 (UTC)
IronPort-SDR: z5S578mlV7e4vR69NGuqjf6fPS8Jg7F6TXVV0UNWi2t7W73SDT4utUE5rYJvoaYoiYZ1lCrL/G
 RZhiUkMVKbRA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="192503050"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="192503050"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:00:54 -0700
IronPort-SDR: c/2yKosU7/YMHE2VliK0LNxbWEwQeqY+RpTs2PZgQ0blC5Mwjn7EukicLN4Rhsr/RXtDt0l/xC
 2XSXgByj2TGg==
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="420982131"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:00:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YHhdBnR0oOoSdxvz@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
 <20210414022309.30898-3-ville.syrjala@linux.intel.com>
 <87r1jcewd8.fsf@intel.com> <YHhdBnR0oOoSdxvz@intel.com>
Date: Wed, 21 Apr 2021 16:00:49 +0300
Message-ID: <87im4f94hq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Rewrite the FBC tiling check
 a bit
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNSBBcHIgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBBcHIgMTQsIDIwMjEgYXQgMDY6MDk6MjNQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFdlZCwgMTQgQXByIDIwMjEsIFZpbGxlIFN5
cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPj4gPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiA+Cj4+ID4g
V3JpdGUgdGhlIHRpbGluZyBjaGVjayBpbiBhIG5pY2VyIGZvcm0uCj4+ID4KPj4gPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwg
NiArKy0tLS0KPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+
PiA+IGluZGV4IDA0ZDljN2QyMmIwNC4uMTc4MjQzYTZkM2EyIDEwMDY0NAo+PiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4+ID4gQEAgLTY4MSwxMSArNjgxLDkg
QEAgc3RhdGljIGJvb2wgdGlsaW5nX2lzX3ZhbGlkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPj4gPiAgewo+PiA+ICAJc3dpdGNoIChtb2RpZmllcikgewo+PiA+ICAJY2FzZSBE
Uk1fRk9STUFUX01PRF9MSU5FQVI6Cj4+ID4gLQkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+
PSA5KQo+PiA+IC0JCQlyZXR1cm4gdHJ1ZTsKPj4gPiAtCQlyZXR1cm4gZmFsc2U7Cj4+ID4gLQlj
YXNlIEk5MTVfRk9STUFUX01PRF9YX1RJTEVEOgo+PiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
WV9USUxFRDoKPj4gPiArCQlyZXR1cm4gRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDk7Cj4+IAo+
PiBTbyB0aGlzIGFkZHMgdGhlIHZlcnNpb24gY2hlY2sgb24gSTkxNV9GT1JNQVRfTU9EX1lfVElM
RUQgd2hpY2ggZGlkbid0Cj4+IGhhdmUgaXQgYmVmb3JlPwo+Cj4gWWVhaCwgYnV0IFkgdGlsZSBz
Y2Fub3V0IGlzIGdlbjkrIGFueXdheS4gU2hvdWxkIGhhdmUgcG9pbnRlZAo+IHRoYXQgb3V0IGlu
IHRoZSBjb21taXQgbXNnIEkgc3VwcG9zZS4KClJpZ2h0LiBXaXRoIHRoYXQgYWRkZWQgaW4gdGhl
IGNvbW1pdCBtZXNzYWdlICh3aGlsZSBhcHBseWluZyBpcyBmaW5lKSwKClJldmlld2VkLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCgotLSAKSmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
