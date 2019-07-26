Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C95766C1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A971289471;
	Fri, 26 Jul 2019 13:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE7789471
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:00:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 06:00:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,310,1559545200"; d="scan'208";a="198311394"
Received: from soegtrop-mobl1.ger.corp.intel.com (HELO [10.252.37.234])
 ([10.252.37.234])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2019 06:00:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190726125456.31364-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <92742ddf-f40a-6506-2767-0e8f9896f7d9@intel.com>
Date: Fri, 26 Jul 2019 16:00:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726125456.31364-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Initialise err to 0
 before looping over ce->engines
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

T24gMjYvMDcvMjAxOSAxNTo1NCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFNtYXRjaCB3YXJuaW5n
IHRoYXQgdGhlIGxvb3AgbWF5IGJlIGVtcHR5IGNhdXNpbmcgdXMgdG8gY2hlY2sgZXJyIGJlZm9y
ZQo+IGl0IGhhZCBiZWVuIHNldC4gRW5zdXJlIHRoYXQgaXQgaXMgaW5pdGlhbGlzZWQgdG8gMCwg
anVzdCBpbiBjYXNlLgo+Cj4gRml4ZXM6IGE5ODc3ZGEyZDYyOSAoImRybS9pOTE1L29hOiBSZWNv
bmZpZ3VyZSBjb250ZXh0cyBvbiB0aGUgZmx5IikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxp
b25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMKPiBpbmRleCA3OWJlOWQ4ZWE2MjguLmEyOTRjMGY1MzYyNSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gQEAgLTE4NzUsNiArMTg3NSw3IEBAIHN0YXRp
YyBpbnQgZ2VuOF9jb25maWd1cmVfYWxsX2NvbnRleHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAo+ICAgCQlpZiAoY3R4ID09IGk5MTUtPmtlcm5lbF9jb250ZXh0KQo+ICAgCQkJY29u
dGludWU7Cj4gICAKPiArCQllcnIgPSAwOwo+ICAgCQlmb3JfZWFjaF9nZW1fZW5naW5lKGNlLAo+
ICAgCQkJCSAgICBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLAo+ICAgCQkJCSAg
ICBpdCkgewpDb3VsZCBhbG1vc3QgcmVkdWNlIHRoZSBzY29wZSBvZiB2YXJpYWJsZS4gUmVnYXJk
bGVzcyA6CgpSZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJs
aW5AaW50ZWwuY29tPgoKVGhhbmtzLAoKLUxpb25lbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
