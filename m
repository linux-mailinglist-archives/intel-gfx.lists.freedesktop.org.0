Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABE53A985A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 13:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A972D6E049;
	Wed, 16 Jun 2021 11:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F7A6E049
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 11:00:08 +0000 (UTC)
IronPort-SDR: ToLlxqvYpYZSVNOxYLZD+xpTor8HLi0Gd42edM0806wU9RsCwAAhhdWrchKPATzXdNGs6kKUEs
 +FumO9IX6jnQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="193465196"
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="193465196"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 04:00:06 -0700
IronPort-SDR: Yu27ZE5BxgJWpp2c815pCZzcLFtBwAg9A7BaLn4szPPRhIkgKHqk1UKStPrSPYxBYmE3gwkbWr
 HlSVs0x3u2zQ==
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="450590361"
Received: from fulde-mobl.ger.corp.intel.com (HELO [10.249.33.246])
 ([10.249.33.246])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 04:00:05 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
 <20210615131451.61023-4-thomas.hellstrom@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4a250ff0-5584-9c55-9717-88fc15197c75@linux.intel.com>
Date: Wed, 16 Jun 2021 13:00:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210615131451.61023-4-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 03/12] drm/i915: Introduce a ww
 transaction helper
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTUtMDYtMjAyMSBvbSAxNToxNCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+IEludHJv
ZHVjZSBhIGZvcl9pOTE1X2dlbV93dygpe30gdXRpbGl0eSB0byBoZWxwIG1ha2UgdGhlIGNvZGUK
PiBhcm91bmQgYSB3dyB0cmFuc2FjdGlvbiBtb3JlIHJlYWRhYmxlLgo+Cj4gU2lnbmVkLW9mZi1i
eTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+
IFJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmggfCAzMSArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV93dy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaAo+IGluZGV4IGYyZDg3
NjllNDExOC4uZjZiMWE3OTY2NjdiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX3d3LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5o
Cj4gQEAgLTExLDExICsxMSw0MCBAQCBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHsKPiAgCXN0cnVj
dCB3d19hY3F1aXJlX2N0eCBjdHg7Cj4gIAlzdHJ1Y3QgbGlzdF9oZWFkIG9ial9saXN0Owo+ICAJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmNvbnRlbmRlZDsKPiAtCWJvb2wgaW50cjsKPiAr
CXVuc2lnbmVkIHNob3J0IGludHI7Cj4gKwl1bnNpZ25lZCBzaG9ydCBsb29wOwo+ICB9Owo+ICAK
PiAgdm9pZCBpOTE1X2dlbV93d19jdHhfaW5pdChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICpjdHgs
IGJvb2wgaW50cik7Cj4gIHZvaWQgaTkxNV9nZW1fd3dfY3R4X2Zpbmkoc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCAqY3R4KTsKPiAgaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV93d19jdHhfYmFja29m
ZihzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICpjdHgpOwo+ICB2b2lkIGk5MTVfZ2VtX3d3X3VubG9j
a19zaW5nbGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7Cj4gKwo+ICsvKiBJbnRl
cm5hbCBmdW5jdGlvbnMgdXNlZCBieSB0aGUgaW5saW5lcyEgRG9uJ3QgdXNlLiAqLwo+ICtzdGF0
aWMgaW5saW5lIGludCBfX2k5MTVfZ2VtX3d3X2Zpbmkoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAq
d3csIGludCBlcnIpCj4gK3sKPiArCXd3LT5sb29wID0gMDsKPiArCWlmIChlcnIgPT0gLUVERUFE
TEspIHsKPiArCQllcnIgPSBpOTE1X2dlbV93d19jdHhfYmFja29mZih3dyk7Cj4gKwkJaWYgKCFl
cnIpCj4gKwkJCXd3LT5sb29wID0gMTsKPiArCX0KPiArCj4gKwlpZiAoIXd3LT5sb29wKQo+ICsJ
CWk5MTVfZ2VtX3d3X2N0eF9maW5pKHd3KTsKPiArCj4gKwlyZXR1cm4gZXJyOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgaW5saW5lIHZvaWQKPiArX19pOTE1X2dlbV93d19pbml0KHN0cnVjdCBpOTE1X2dl
bV93d19jdHggKnd3LCBib29sIGludHIpCj4gK3sKPiArCWk5MTVfZ2VtX3d3X2N0eF9pbml0KHd3
LCBpbnRyKTsKPiArCXd3LT5sb29wID0gMTsKPiArfQo+ICsKPiArI2RlZmluZSBmb3JfaTkxNV9n
ZW1fd3coX3d3LCBfZXJyLCBfaW50cikJCQlcCj4gKwlmb3IgKF9faTkxNV9nZW1fd3dfaW5pdChf
d3csIF9pbnRyKTsgKF93dyktPmxvb3A7CVwKPiArCSAgICAgX2VyciA9IF9faTkxNV9nZW1fd3df
ZmluaShfd3csIF9lcnIpKQo+ICsKPiAgI2VuZGlmCgpXaXRoIHNvbWUgbW9yZSBtYWNybyBhYnVz
ZSwgd2Ugc2hvdWxkIGJlIGFibGUgdG8ga2lsbCBvZmYgd3ctPmxvb3AsCgpmb3IgKGVyciA9ICh7
aTkxNV9nZW1fd3dfY3R4X2luaXQod3csIGludHIpLCAtRURFQURMS30pOyBlcnIgPT0gLUVERUFE
TEs7IGVyciA9IChlcnIgPT0gLUVERUFETEsgJiYgIShlcnIgPSBpOTE1X2dlbV93d19jdHhfYmFj
a29mZih3dykpKSA/IC1FREVBRExLIDogZXJyKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
