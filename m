Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE61A97BB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 02:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D810689BF4;
	Thu,  5 Sep 2019 00:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A87D89BF4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 00:53:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 17:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="382710500"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by fmsmga005.fm.intel.com with ESMTP; 04 Sep 2019 17:53:48 -0700
Date: Wed, 4 Sep 2019 17:53:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190905005348.GT13677@mdroper-desk.amr.corp.intel.com>
References: <20190904230241.20638-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904230241.20638-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Apply FBC WA for TGL too
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMDQsIDIwMTkgYXQgMDQ6MDI6NDBQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBXQSAxNDA5MTIwMDEzIGlzIGFsc28gdmFsaWQgZm9yIFRHTCwgc28g
bGV0cyBjaGVjayBmb3IgIj49IDExIi4KPiAKPiBCU3BlYzogNTI4OTAKPiAKPiBDYzogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogQ2xpbnRvbiBUYXlsb3IgPENs
aW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jCj4gaW5kZXggMTZlZDQ0YmZkNzM0Li5kYzM0YjIzZTIzMjAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBAQCAtMzQzLDggKzM0Myw4
IEBAIHN0YXRpYyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiAgCQkJICAgSFNXX0ZCQ1FfRElTKTsKPiAgCX0KPiAgCj4gLQlpZiAoSVNf
R0VOKGRldl9wcml2LCAxMSkpCj4gLQkJLyogV2FfMTQwOTEyMDAxMzppY2wsZWhsICovCj4gKwlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiArCQkvKiBXYV8xNDA5MTIwMDEzOmljbCxl
aGwsdGdsICovCj4gIAkJSTkxNV9XUklURShJTEtfRFBGQ19DSElDS0VOLCBJTEtfRFBGQ19DSElD
S0VOX0NPTVBfRFVNTVlfUElYRUwpOwo+ICAKPiAgCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ09OVFJP
TCwgZHBmY19jdGwgfCBEUEZDX0NUTF9FTik7Cj4gLS0gCj4gMi4yMy4wCj4gCgotLSAKTWF0dCBS
b3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVt
ZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
