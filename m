Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08033ADD46
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B97F89D00;
	Mon,  9 Sep 2019 16:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC3289D89
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 16:31:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:31:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="183869543"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2019 09:31:58 -0700
To: Matt Roper <matthew.d.roper@intel.com>
References: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
 <70e23298-611d-ff33-b892-b57cacd1b983@intel.com>
 <20190907011013.GA13677@mdroper-desk.amr.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <618ee01a-bba8-eb73-d047-ee061bfea475@intel.com>
Date: Mon, 9 Sep 2019 09:31:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907011013.GA13677@mdroper-desk.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1409142259
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzYvMTkgNjoxMCBQTSwgTWF0dCBSb3BlciB3cm90ZToKPiBPbiBGcmksIFNlcCAwNiwg
MjAxOSBhdCAwMzo0Njo0MlBNIC0wNzAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+
Pgo+Pgo+PiBPbiA5LzYvMTkgMzo0MSBQTSwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6Cj4+
PiBEaXNhYmxlIENQUyBhd2FyZSBjb2xvciBwaXBlIGJ5IHNldHRpbmcgY2hpY2tlbiBiaXQuCj4+
Pgo+Pj4gQlNwZWM6IDUyODkwCj4+PiBIU0RFUzogMTQwOTE0MjI1OQo+Pj4KPj4+IENjOiBTdHVh
cnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+Pj4gQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNo
bmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAg
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSArKysrKwo+
Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDEgKwo+
Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4+IGluZGV4IDI0M2QzZjc3YmUx
My4uMTRlM2Y5Njc3YjA2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+Pj4gQEAgLTg5NCw2ICs4OTQsMTEgQEAgaWNsX2d0X3dvcmthcm91
bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xp
c3QgKndhbCkKPj4+ICAgIHN0YXRpYyB2b2lkCj4+PiAgICB0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2Fs
KQo+Pj4gICAgewo+Pj4gKwl3YV9pbml0X21jcihpOTE1LCB3YWwpOwo+Pgo+PiB0aGlzIGlzIG5v
dCBwYXJ0IG9mIHRoZSBXQSB5b3UncmUgdHJ5aW5nIHRvIGFwcGx5LCByaWdodD8KPj4KPj4+ICsK
Pj4+ICsJLyogV2FfMTQwOTE0MjI1OSAqLwo+Pj4gKwlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9D
T01NT05fU0xJQ0VfQ0hJQ0tFTjMsCj4+PiArCQkJICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9D
T0xPUl9QSVBFKTsKPj4KPj4gQUZBSUNTIHRoZSByZWdpc3RlciBpcyBwYXJ0IG9mIHRoZSByZW5k
ZXIgY29udGV4dCwgc28gc2hvdWxkbid0IHdlIHNldCB0aGlzCj4+IGFzIHBhcnQgb2YgdGhlIGN0
eF93b3JrYXJvdW5kcz8gdGhhdCdzIHdoYXQgd2UgZG8gZm9yIGFub3RoZXIgV0Egb24gdGhlIHNh
bWUKPj4gcmVnaXN0ZXIgb24gSUNMLgo+IAo+IEhvdyBkbyB5b3UgdXN1YWxseSBkZXRlcm1pbmUg
aWYgYSByZWdpc3RlciBpcyBwYXJ0IG9mIHRoZSBjb250ZXh0IG9yCj4gbm90PyAgVGhpcyBvbmUg
ZG9lc24ndCBoYXZlIHRoZSAiVGhpcyBSZWdpc3RlciBpcyBzYXZlZCBhbmQgcmVzdG9yZWQgYXMK
PiBwYXJ0IG9mIENvbnRleHQiIG5vdGF0aW9uIHRoYXQgb3RoZXIgY29udGV4dCByZWdpc3RlcnMg
aGF2ZSwgc28gaXMgdGhlcmUKPiBzb21ld2hlcmUgZWxzZSB3ZSdyZSBzdXBwb3NlZCB0byBmaW5k
IHRoYXQgaW5mb3JtYXRpb24/Cj4gCgpNb3N0IG9mIHRoZSBjb250ZXh0IHJlZ2lzdGVycyBhcmUg
bm90IHRhZ2dlZCB0aGF0IHdheS4gVGhlIGdvbGRlbiAKcmVmZXJlbmNlIGZvciB3aGF0J3MgaW4g
dGhlIGNvbnRleHQgaXMgdGhlIGNvbnRleHQgaW1hZ2UgcGFnZSAoQnNwZWMgCjQ2MjU1IGZvciBU
R0wpLgoKRGFuaWVsZQoKPiAKPiBNYXR0Cj4gCj4+Cj4+IERhbmllbGUKPj4KPj4+ICAgIH0KPj4+
ICAgIHN0YXRpYyB2b2lkCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4+IGluZGV4IDAwNmNm
ZmQ1NmJlMi4uNTNlMDc4ODJlZmI3IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
Pj4gQEAgLTc2NjgsNiArNzY2OCw3IEBAIGVudW0gewo+Pj4gICAgI2RlZmluZSBHRU4xMV9DT01N
T05fU0xJQ0VfQ0hJQ0tFTjMJCV9NTUlPKDB4NzMwNCkKPj4+ICAgICAgI2RlZmluZSBHRU4xMV9C
TEVORF9FTUJfRklYX0RJU0FCTEVfSU5fUkNDCSgxIDw8IDExKQo+Pj4gKyAgI2RlZmluZSBHRU4x
Ml9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFCSgxIDw8IDkpCj4+PiAgICAjZGVmaW5lIEhJ
Wl9DSElDS0VOCQkJCQlfTU1JTygweDcwMTgpCj4+PiAgICAjIGRlZmluZSBDSFZfSFpfOFg4X01P
REVfSU5fMVgJCQkJKDEgPDwgMTUpCj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
