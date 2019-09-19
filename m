Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C33B73AD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 09:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF51C6F674;
	Thu, 19 Sep 2019 07:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177E86F674
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 07:00:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 00:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="199303305"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 19 Sep 2019 00:00:56 -0700
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190918173121.183132-1-stuart.summers@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9b3a76d3-f961-95d3-7396-8b638a1cc935@linux.intel.com>
Date: Thu, 19 Sep 2019 08:00:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918173121.183132-1-stuart.summers@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow set context SSEU on
 platforms after gen 11
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

Ck9uIDE4LzA5LzIwMTkgMTg6MzEsIFN0dWFydCBTdW1tZXJzIHdyb3RlOgo+IEJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA1NTkKClVubGVz
cyB0aGVyZSB3YXMgc29tZSBkaXNjdXNzaW9uIEkgbWlzc2VkIHdlIGNhbid0IGp1c3QgdHVybiBp
dCBvbiB0byAKd29yayBhcm91bmQgYSBTS0lQIGluIElHVC4gRmVhdHVyZSB3YXMgZGVsaWJlcmF0
ZWx5IGxpbWl0ZWQgdG8gSWNlbGFrZSAKYW5kIGV2ZW4gdGhlcmUganVzdCB0byBhIHN1Yi1zZXQg
b2YgcG9zc2libGUgY29uZmlndXJhdGlvbnMuCgpSZWdhcmRzLAoKVHZydGtvCgo+IENjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMiArLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gaW5kZXggZjFjMGU1ZDk1OGYz
Li4zOWFmNGM4MWIyOWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMKPiBAQCAtMTMxMCw3ICsxMzEwLDcgQEAgc3RhdGljIGludCBzZXRfc3NldShz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ICAgCWlmIChhcmdzLT5zaXplIDwgc2l6ZW9m
KHVzZXJfc3NldSkpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gLQlpZiAoIUlTX0dFTihp
OTE1LCAxMSkpCj4gKwlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTEpCj4gICAJCXJldHVybiAtRU5P
REVWOwo+ICAgCj4gICAJaWYgKGNvcHlfZnJvbV91c2VyKCZ1c2VyX3NzZXUsIHU2NF90b191c2Vy
X3B0cihhcmdzLT52YWx1ZSksCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
