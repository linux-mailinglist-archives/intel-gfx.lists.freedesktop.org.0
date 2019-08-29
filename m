Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DD6A11EE
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 08:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EFA189F82;
	Thu, 29 Aug 2019 06:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6617F89F82
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 06:43:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 23:43:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="180788003"
Received: from pmadmonx-mobl.ger.corp.intel.com (HELO [10.252.53.172])
 ([10.252.53.172])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2019 23:43:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, kbuild test robot <lkp@intel.com>
References: <20190828143327.7965-7-lionel.g.landwerlin@intel.com>
 <201908290308.WB5m8lf9%lkp@intel.com>
 <156702116649.15406.9983080169205017105@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ffa3a425-26d2-1c22-cab0-63986ca02cec@intel.com>
Date: Thu, 29 Aug 2019 09:43:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156702116649.15406.9983080169205017105@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v11 06/10] drm/i915/perf: implement active
 wait for noa configurations
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjgvMDgvMjAxOSAyMjozOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3Rpbmcga2J1aWxk
IHRlc3Qgcm9ib3QgKDIwMTktMDgtMjggMjA6MzQ6MTQpCj4+IEhpIExpb25lbCwKPj4KPj4gVGhh
bmsgeW91IGZvciB0aGUgcGF0Y2ghIFBlcmhhcHMgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4+Cj4+
IFthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBkcm0taW50ZWwvZm9yLWxpbnV4LW5leHRdCj4+
IFtjYW5ub3QgYXBwbHkgdG8gdjUuMy1yYzYgbmV4dC0yMDE5MDgyOF0KPj4gW2lmIHlvdXIgcGF0
Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIHBsZWFzZSBkcm9wIHVzIGEgbm90
ZSB0byBoZWxwIGltcHJvdmUgdGhlIHN5c3RlbV0KPj4KPj4gdXJsOiAgICBodHRwczovL2dpdGh1
Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL0xpb25lbC1MYW5kd2VybGluL2RybS1pOTE1LVZ1
bGthbi1wZXJmb3JtYW5jZS1xdWVyeS1zdXBwb3J0LzIwMTkwODI5LTAyMDg0MQo+PiBiYXNlOiAg
IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS1pbnRlbCBmb3ItbGludXgtbmV4dAo+
PiBjb25maWc6IGkzODYtZGVmY29uZmlnIChhdHRhY2hlZCBhcyAuY29uZmlnKQo+PiBjb21waWxl
cjogZ2NjLTcgKERlYmlhbiA3LjQuMC0xMSkgNy40LjAKPj4gcmVwcm9kdWNlOgo+PiAgICAgICAg
ICAjIHNhdmUgdGhlIGF0dGFjaGVkIC5jb25maWcgdG8gbGludXggYnVpbGQgdHJlZQo+PiAgICAg
ICAgICBtYWtlIEFSQ0g9aTM4Ngo+Pgo+PiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFk
ZCBmb2xsb3dpbmcgdGFnCj4+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGlu
dGVsLmNvbT4KPj4KPj4gQWxsIHdhcm5pbmdzIChuZXcgb25lcyBwcmVmaXhlZCBieSA+Pik6Cj4+
Cj4+ICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYzogSW4gZnVuY3Rpb24g
J2k5MTVfcGVyZl9ub2FfZGVsYXlfc2V0JzoKPj4+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYzozNTg4OjE4OiB3YXJuaW5nOiBsZWZ0IHNoaWZ0IGNvdW50ID49IHdpZHRoIG9m
IHR5cGUgWy1Xc2hpZnQtY291bnQtb3ZlcmZsb3ddCj4+ICAgICAgIGlmICh2YWwgPiAoKDF1bCA8
PCAzMikgLSAxKSAqIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9r
aHopCj4+ICAgICAgICAgICAgICAgICAgICAgICBefgo+Pgo+PiB2aW0gKzM1ODggZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPj4KPj4gICAgMzU3NQo+PiAgICAzNTc2ICBERUZJ
TkVfU0lNUExFX0FUVFJJQlVURShpOTE1X3dlZGdlZF9mb3BzLAo+PiAgICAzNTc3ICAgICAgICAg
ICAgICAgICAgICAgICAgICBpOTE1X3dlZGdlZF9nZXQsIGk5MTVfd2VkZ2VkX3NldCwKPj4gICAg
MzU3OCAgICAgICAgICAgICAgICAgICAgICAgICAgIiVsbHVcbiIpOwo+PiAgICAzNTc5Cj4+ICAg
IDM1ODAgIHN0YXRpYyBpbnQKPj4gICAgMzU4MSAgaTkxNV9wZXJmX25vYV9kZWxheV9zZXQodm9p
ZCAqZGF0YSwgdTY0IHZhbCkKPj4gICAgMzU4MiAgewo+PiAgICAzNTgzICAgICAgICAgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZGF0YTsKPj4gICAgMzU4NAo+PiAgICAzNTg1ICAg
ICAgICAgIC8qIFRoaXMgd291bGQgbGVhZCB0byBpbmZpbml0ZSB3YWl0cyBhcyB3ZSdyZSBkb2lu
ZyB0aW1lc3RhbXAKPj4gICAgMzU4NiAgICAgICAgICAgKiBkaWZmZXJlbmNlIG9uIHRoZSBDUyB3
aXRoIG9ubHkgMzJiaXRzLgo+PiAgICAzNTg3ICAgICAgICAgICAqLwo+Pj4gMzU4OCAgICAgICAg
ICBpZiAodmFsID4gKCgxdWwgPDwgMzIpIC0gMSkgKiBSVU5USU1FX0lORk8oaTkxNSktPmNzX3Rp
bWVzdGFtcF9mcmVxdWVuY3lfa2h6KQo+IGlmICh2YWwgPiBtdWxfdTMyX3UzMihVMzJfTUFYLCBS
VU5USU1FX0lORk8oaTkxNSktPmNzX3RpbWVzdGFtcF9mcmVxdWVuY3lfa2h6KSkKCgpUaGFua3Ms
IGZpeGVkIQoKCj4KPj4gICAgMzU4OSAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+
PiAgICAzNTkwCj4+ICAgIDM1OTEgICAgICAgICAgYXRvbWljNjRfc2V0KCZpOTE1LT5wZXJmLm5v
YV9wcm9ncmFtbWluZ19kZWxheSwgdmFsKTsKPj4gICAgMzU5MiAgICAgICAgICByZXR1cm4gMDsK
Pj4gICAgMzU5MyAgfQo+PiAgICAzNTk0Cj4+Cj4+IC0tLQo+PiAwLURBWSBrZXJuZWwgdGVzdCBp
bmZyYXN0cnVjdHVyZSAgICAgICAgICAgICAgICBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRl
cgo+PiBodHRwczovL2xpc3RzLjAxLm9yZy9waXBlcm1haWwva2J1aWxkLWFsbCAgICAgICAgICAg
ICAgICAgICBJbnRlbCBDb3Jwb3JhdGlvbgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
