Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3752F5B44
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 08:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3548089F2E;
	Thu, 14 Jan 2021 07:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE52989F2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 07:27:41 +0000 (UTC)
IronPort-SDR: Ok7xEN32uEDa8Qy0s4v2LbN0ML2HGNmH1EVlRTMr+SrIK7gYEJY2Pkr0kQDV4QwsArQRovbMoQ
 0vtmva6UStMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="242395514"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="242395514"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 23:27:40 -0800
IronPort-SDR: ySC4M9OIQZzU6FLzyVTFJmGS73ixSzaqWMdpIrnvlVC6w5QqL1Ag3zDHAJWDXdKM94/wAloNc5
 Dk+SsTLYR9Vg==
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="364139317"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 23:27:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210111164111.13302-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210111164111.13302-1-ville.syrjala@linux.intel.com>
Date: Thu, 14 Jan 2021 09:27:35 +0200
Message-ID: <87v9c0q8pk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only enable DFP 4:4:4->4:2:0
 conversion when outputting YCbCr 4:4:4
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

T24gTW9uLCAxMSBKYW4gMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBMZXQncyBub3QgZW5hYmxlIHRoZSA0OjQ6NC0+NDoyOjAgY29u
dmVyc2lvbiBiaXQgaW4gdGhlIERGUCB1bmxlc3Mgd2UncmUKPiBhY3R1YWxseSBvdXRwdXR0aW5n
IFlDYkNyIDQ6NDo0LiBJdCB3b3VsZCBhcHBlYXIgc29tZSBwcm90b2NvbAo+IGNvbnZlcnRlcnMg
YmxpbmR5IGNvbnN1bHQgdGhpcyBiaXQgZXZlbiB3aGVuIHRoZSBzb3VyY2UgaXMgb3V0cHV0dGlu
Zwo+IFJHQiwgcmVzdWx0aW5nIGluIGEgdmlzdWFsIG1lc3MuCj4KPiBDbG9zZXM6IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjkxNAo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpG
aXhlczogMTgxNTY3YWE5ZjBkICgiZHJtL2k5MTU6IERvIFlDYkNyIDQ0NC0+NDIwIGNvbnZlcnNp
b24gdmlhIERQIHByb3RvY29sIGNvbnZlcnRlcnMiKQpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmc+ICMgdjUuMTArCgpSaWdodD8KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5k
ZXggNGYxOTBhODJkNGFkLi5hYTMwZWY5ZjY5MDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTQzNjgsOCArNDM2OCw4IEBAIHZvaWQgaW50ZWxfZHBf
Y29uZmlndXJlX3Byb3RvY29sX2NvbnZlcnRlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gc2V0IHByb3RvY29sIGNvbnZl
cnRlciBIRE1JIG1vZGUgdG8gJXNcbiIsCj4gIAkJCSAgICBlbmFibGVkZGlzYWJsZWQoaW50ZWxf
ZHAtPmhhc19oZG1pX3NpbmspKTsKPiAgCj4gLQl0bXAgPSBpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0
NF90b180MjAgPwo+IC0JCURQX0NPTlZFUlNJT05fVE9fWUNCQ1I0MjBfRU5BQkxFIDogMDsKPiAr
CXRtcCA9IGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9Z
Q0JDUjQ0NCAmJgo+ICsJCWludGVsX2RwLT5kZnAueWNiY3JfNDQ0X3RvXzQyMCA/IERQX0NPTlZF
UlNJT05fVE9fWUNCQ1I0MjBfRU5BQkxFIDogMDsKPiAgCj4gIAlpZiAoZHJtX2RwX2RwY2Rfd3Jp
dGViKCZpbnRlbF9kcC0+YXV4LAo+ICAJCQkgICAgICAgRFBfUFJPVE9DT0xfQ09OVkVSVEVSX0NP
TlRST0xfMSwgdG1wKSAhPSAxKQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
