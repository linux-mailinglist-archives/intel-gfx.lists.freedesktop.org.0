Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA94026C2E5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 14:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640156E9FF;
	Wed, 16 Sep 2020 12:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6CA36E9F8;
 Wed, 16 Sep 2020 12:44:28 +0000 (UTC)
IronPort-SDR: wLboffshz/RIc7kctRPgGQREDPti7rFm67lwyk7NLLIcggtNDox+tD+yPxMnBJTDaeGrwUpRtu
 pV7Lq5ZZlL2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="156861408"
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="156861408"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 05:44:27 -0700
IronPort-SDR: 3zhlJ9tqoLVqx4ydh/isLWlwA2cUS0pb+8RbRhdUgGRY3egBGPOJHlVmo+auz6ogAHSO/rmMpO
 uMr+rTo8oYOQ==
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="483298825"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.73.60])
 ([10.213.73.60])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 05:44:24 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200914055633.21109-1-karthik.b.s@intel.com>
 <20200914055633.21109-4-karthik.b.s@intel.com>
 <20200915140332.GJ6112@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <f2c226f1-cf0d-949c-6736-ddaa689b1ec3@intel.com>
Date: Wed, 16 Sep 2020 18:14:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200915140332.GJ6112@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 3/8] drm/i915: Add checks specific to
 async flips
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
Cc: paulo.r.zanoni@intel.com, michel@daenzer.net,
 dri-devel@lists.freedesktop.org, nicholas.kazlauskas@amd.com,
 daniel.vetter@intel.com, harry.wentland@amd.com,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzE1LzIwMjAgNzozMyBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIE1vbiwg
U2VwIDE0LCAyMDIwIGF0IDExOjI2OjI4QU0gKzA1MzAsIEthcnRoaWsgQiBTIHdyb3RlOgo+PiBJ
ZiBmbGlwIGlzIHJlcXVlc3RlZCBvbiBhbnkgb3RoZXIgcGxhbmUsIHJlamVjdCBpdC4KPj4KPj4g
TWFrZSBzdXJlIHRoZXJlIGlzIG5vIGNoYW5nZSBpbiBmYmMsIG9mZnNldCBhbmQgZnJhbWVidWZm
ZXIgbW9kaWZpZXJzCj4+IHdoZW4gYXN5bmMgZmxpcCBpcyByZXF1ZXN0ZWQuCj4+Cj4+IElmIGFu
eSBvZiB0aGVzZSBhcmUgbW9kaWZpZWQsIHJlamVjdCBhc3luYyBmbGlwLgo+Pgo+PiB2MjogLVJl
cGxhY2UgRFJNX0VSUk9SIChQYXVsbykKPj4gICAgICAtQWRkIGNoZWNrIGZvciBjaGFuZ2VzIGlu
IE9GRlNFVCwgRkJDLCBSQyhQYXVsbykKPj4KPj4gdjM6IC1SZW1vdmVkIFRPRE8gYXMgYmVuY2ht
YXJraW5nIHRlc3RzIGhhdmUgYmVlbiBydW4gbm93Lgo+Pgo+PiB2NDogLUFkZGVkIG1vcmUgc3Rh
dGUgY2hlY2tzIGZvciBhc3luYyBmbGlwIChWaWxsZSkKPj4gICAgICAtTW92ZWQgaW50ZWxfYXRv
bWljX2NoZWNrX2FzeW5jIHRvIHRoZSBlbmQgb2YgaW50ZWxfYXRvbWljX2NoZWNrCj4+ICAgICAg
IGFzIHRoZSBwbGFuZSBjaGVja3MgbmVlZHMgdG8gcGFzcyBiZWZvcmUgdGhpcy4gKFZpbGxlKQo+
PiAgICAgIC1SZW1vdmVkIGNydGNfc3RhdGUtPmVuYWJsZV9mYmMgY2hlY2suIChWaWxsZSkKPj4g
ICAgICAtU2V0IHRoZSBJOTE1X01PREVfRkxBR19HRVRfU0NBTkxJTkVfRlJPTV9USU1FU1RBTVAg
ZmxhZyBmb3IgYXN5bmMKPj4gICAgICAgZmxpcCBjYXNlIGFzIHNjYW5saW5lIGNvdW50ZXIgaXMg
bm90IHJlbGlhYmxlIGhlcmUuCj4+Cj4+IHY1OiAtRml4IHR5cG8gYW5kIG90aGVyIGNoZWNrIHBh
dGNoIGVycm9ycyBzZWVuIGluIENJCj4+ICAgICAgIGluICdpbnRlbF9hdG9taWNfY2hlY2tfYXN5
bmMnIGZ1bmN0aW9uLgo+Pgo+PiB2NjogLURvbid0IGNhbGwgaW50ZWxfYXRvbWljX2NoZWNrX2Fz
eW5jIG11bHRpcGxlIHRpbWVzLiAoVmlsbGUpCj4+ICAgICAgLVJlbW92ZSB0aGUgY2hlY2sgZm9y
IG5fcGxhbmVzIGluIGludGVsX2F0b21pY19jaGVja19hc3luYwo+PiAgICAgIC1BZGRlZCBkb2N1
bWVudGF0aW9uIGZvciBhc3luYyBmbGlwcy4gKFBhdWxvKQo+Pgo+PiB2NzogLVJlcGxhY2UgJ2lu
dGVsX3BsYW5lJyB3aXRoICdwbGFuZScuIChWaWxsZSkKPj4gICAgICAtUmVwbGFjZSBhbGwgdWFw
aS5mb28gYXMgaHcuZm9vLiAoVmlsbGUpCj4+ICAgICAgLURvIG5vdCB1c2UgaW50ZWxfd21fbmVl
ZF91cGRhdGUgZnVuY3Rpb24uIChWaWxsZSkKPj4gICAgICAtQWRkIGRlc3RpbmF0aW9uIGNvb3Jk
aW5hdGUgY2hlY2suIChWaWxsZSkKPj4gICAgICAtRG8gbm90IGFsbG93IGFzeW5jIGZsaXAgd2l0
aCBsaW5lYXIgYnVmZmVyCj4+ICAgICAgIG9uIG9sZGVyIGh3IGFzIGl0IGhhcyBpc3N1ZXMgd2l0
aCB0aGlzLiAoVmlsbGUpCj4+ICAgICAgLVJlbW92ZSBicmVhayBhZnRlciBpbnRlbF9hdG9taWNf
Y2hlY2tfYXN5bmMuIChWaWxsZSkKPj4KPj4gdjg6IC1SZWJhc2VkLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5
OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPj4gLS0tCj4+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNDMgKysr
KysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNDMgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiBp
bmRleCAyOTAyZmVmZDIxN2YuLmEwYzE3ZDk0ZGFmMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTE0ODc2LDYgKzE0ODc2LDE0
MiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9jcHVfdHJhbnNjb2RlcnNfbmVlZF9tb2Rlc2V0KHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+PiAgIAlyZXR1cm4gZmFsc2U7Cj4+ICAgfQo+
PiAgIAo+PiArLyoqCj4+ICsgKiBET0M6IGFzeW5jaHJvbm91cyBmbGlwIGltcGxlbWVudGF0aW9u
Cj4+ICsgKgo+PiArICogQXN5bmNocm9ub3VzIHBhZ2UgZmxpcCBpcyB0aGUgaW1wbGVtZW50YXRp
b24gZm9yIHRoZSBEUk1fTU9ERV9QQUdFX0ZMSVBfQVNZTkMKPj4gKyAqIGZsYWcuIEN1cnJlbnRs
eSBhc3luYyBmbGlwIGlzIG9ubHkgc3VwcG9ydGVkIHZpYSB0aGUgZHJtTW9kZVBhZ2VGbGlwIElP
Q1RMLgo+PiArICogQ29ycmVzcG9uZGluZ2x5LCBzdXBwb3J0IGlzIGN1cnJlbnRseSBhZGRlZCBm
b3IgcHJpbWFyeSBwbGFuZSBvbmx5Lgo+PiArICoKPj4gKyAqIEFzeW5jIGZsaXAgY2FuIG9ubHkg
Y2hhbmdlIHRoZSBwbGFuZSBzdXJmYWNlIGFkZHJlc3MsIHNvIGFueXRoaW5nIGVsc2UKPj4gKyAq
IGNoYW5naW5nIGlzIHJlamVjdGVkIGZyb20gdGhlIGludGVsX2F0b21pY19jaGVja19hc3luYygp
IGZ1bmN0aW9uLgo+PiArICogT25jZSB0aGlzIGNoZWNrIGlzIGNsZWFyZWQsIGZsaXAgZG9uZSBp
bnRlcnJ1cHQgaXMgZW5hYmxlZCB1c2luZwo+PiArICogdGhlIHNrbF9lbmFibGVfZmxpcF9kb25l
KCkgZnVuY3Rpb24uCj4+ICsgKgo+PiArICogQXMgc29vbiBhcyB0aGUgc3VyZmFjZSBhZGRyZXNz
IHJlZ2lzdGVyIGlzIHdyaXR0ZW4sIGZsaXAgZG9uZSBpbnRlcnJ1cHQgaXMKPj4gKyAqIGdlbmVy
YXRlZCBhbmQgdGhlIHJlcXVlc3RlZCBldmVudHMgYXJlIHNlbnQgdG8gdGhlIHVzZXJzYXBjZSBp
biB0aGUgaW50ZXJydXB0Cj4+ICsgKiBoYW5kbGVyIGl0c2VsZi4gVGhlIHRpbWVzdGFtcCBhbmQg
c2VxdWVuY2Ugc2VudCBkdXJpbmcgdGhlIGZsaXAgZG9uZSBldmVudAo+PiArICogY29ycmVzcG9u
ZCB0byB0aGUgbGFzdCB2YmxhbmsgYW5kIGhhdmUgbm8gcmVsYXRpb24gdG8gdGhlIGFjdHVhbCB0
aW1lIHdoZW4KPj4gKyAqIHRoZSBmbGlwIGRvbmUgZXZlbnQgd2FzIHNlbnQuCj4+ICsgKi8KPj4g
Kwo+PiArc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfYXN5bmMoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpCj4+ICt7Cj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwo+PiArCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwgKm5ld19jcnRjX3N0YXRlOwo+PiArCXN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlLCAqb2xkX3BsYW5lX3N0YXRlOwo+PiArCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+PiArCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7Cj4+
ICsJaW50IGk7Cj4+ICsKPj4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShz
dGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCj4+ICsJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwg
aSkgewo+PiArCQlpZiAobmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpIHsKPj4gKwkJCURS
TV9ERUJVR19LTVMoIk1vZGVzZXQgUmVxdWlyZWQuIEFzeW5jIGZsaXAgbm90IHN1cHBvcnRlZFxu
Iik7Cj4gCj4gUGVyLWRldmljZSBkZWJ1Z3MgcGxzLiBkcm1fZGJnX2ttcygpIGV0Yy4KPiAKClRo
YW5rcyBmb3IgdGhlIHJldmlldy4KU3VyZSwgSSdsbCB1cGRhdGUgdGhpcy4KPj4gKwkJCXJldHVy
biAtRUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0
aXZlKSB7Cj4+ICsJCQlEUk1fREVCVUdfS01TKCJDUlRDIGluYWN0aXZlXG4iKTsKPj4gKwkJCXJl
dHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICsJCWlmIChvbGRfY3J0Y19zdGF0ZS0+YWN0aXZlX3Bs
YW5lcyAhPSBuZXdfY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcykgewo+PiArCQkJRFJNX0RFQlVH
X0tNUygiQWN0aXZlIHBsYW5lcyBjYW5ub3QgYmUgY2hhbmdlZCBkdXJpbmcgYXN5bmMgZmxpcFxu
Iik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCWZvcl9l
YWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9z
dGF0ZSwKPj4gKwkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsKPj4gKwkJLypUT0RPOiBB
c3luYyBmbGlwIGlzIG9ubHkgc3VwcG9ydGVkIHRocm91Z2ggdGhlIHBhZ2UgZmxpcCBJT0NUTAo+
IAo+IENvbW1lbnQgZm9ybWF0dGluZyBpcyB3cm9uZy4KPiAKCkknbGwgZml4IHRoaXMuCj4+ICsJ
CSAqIGFzIG9mIG5vdy4gU28gc3VwcG9ydCBjdXJyZW50bHkgYWRkZWQgZm9yIHByaW1hcnkgcGxh
bmUgb25seS4KPj4gKwkJICogU3VwcG9ydCBmb3Igb3RoZXIgcGxhbmVzIHNob3VsZCBiZSBhZGRl
ZCB3aGVuIGFzeW5jIGZsaXAgaXMKPj4gKwkJICogZW5hYmxlZCBpbiB0aGUgYXRvbWljIElPQ1RM
IHBhdGguCj4gCj4gT2J2aW91c2x5IG9ubHkgZm9yIGh3IHRoYXQgYWN0dWFsbHkgc3VwcG9ydHMg
aXQuIFdoaWNoIEkgdGhpbmsKPiBtZWFucyB2bHYvY2h2IGFuZCBpY2wrLgo+IAoKU3VyZSwgSSds
bCBhZGQgdGhpcyBpbiB0aGUgY29tbWVudC4KPj4gKwkJICovCj4+ICsJCWlmIChwbGFuZS0+aWQg
IT0gUExBTkVfUFJJTUFSWSkKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCj4+ICsJCS8qRklY
TUU6IFRoaXMgY2hlY2sgaXMga2VwdCBnZW5lcmljIGZvciBhbGwgZ2VuIDw9IDEwIHBsYXRmb3Jt
cy4KPiAKPiBNb3JlIGJhZCBmb3JtYXR0aW5nLgo+IAoKSSdsbCBmaXggdGhpcy4KPj4gKwkJICog
TmVlZCB0byB2ZXJpZnkgdGhpcyBmb3IgYWxsIGdlbjkgYW5kIGdlbjEwIHBsYXRmb3JtcyB0byBl
bmFibGUKPj4gKwkJICogdGhpcyBzZWxlY3RpdmVseSBpZiByZXF1aXJlZC4KPj4gKwkJICovCj4+
ICsJCWlmIChuZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllciA9PSBEUk1fRk9STUFUX01P
RF9MSU5FQVIgJiYKPj4gKwkJICAgIElOVEVMX0dFTihkZXZfcHJpdikgPD0gMTApIHsKPiAKPiBJ
IHdvdWxkIGRyb3AgdGhlIGdlbiBjaGVjayBmb3IgdGhlIHRpbWUgYmVpbmcuIE11Y2ggZWFzaWVy
IGZvcgo+IGJpc2VjdGlvbiBpZiB3ZSBkb24ndCBlbmFibGUgcmFuZG9tIGZlYXR1cmVzIGZvciBy
YW5kb20gcGxhdGZvcm1zIGluCj4gdGhlIGluaXRpYWwgZW5hYmxpbmcgcGF0Y2guCj4gCgpTdXJl
LCBJJ2xsIHJlbW92ZSB0aGUgZ2VuIGNoZWNrLgo+IEhtbS4gV2UncmUgYWxzbyBtaXNzaW5nIGEg
Y2hlY2sgZm9yIENDUy4gQ0NTIGRvZXMgbm90IHN1cHBvcnQgYXN5bmMKPiBmbGlwcyBpaXJjLiBT
byBJIHJlY29tbWFuZCBvbmx5IGV4cGxpY2l0bHkgYWxsb3dpbmcgWC9ZL1lmIHRpbGUgaGVyZQo+
IChhc3N1bWluZyBhbGwgdGhvc2UgYXJlIHN1cHBvc2VkIHRvIHdvcmspLCByZWplY3QgZXZlcnl0
aGluZyBlbHNlLgo+IAoKU3VyZSwgSSdsbCBtb2RpZnkgdGhlIGNoZWNrIGFjY29yZGluZ2x5Lgo+
PiArCQkJRFJNX0RFQlVHX0tNUygiTGluZWFyIG1lbW9yeSBkb2VzIG5vdCBzdXBwb3J0IGFzeW5j
IGZsaXBzIG9uIGdlbiA8PSAxMFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+
PiArCj4+ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnggIT0KPj4gKwkJ
ICAgIG5ld19wbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0ueCB8fAo+PiArCQkgICAgb2xkX3Bs
YW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS55ICE9Cj4+ICsJCSAgICBuZXdfcGxhbmVfc3RhdGUt
PmNvbG9yX3BsYW5lWzBdLnkpIHsKPj4gKwkJCURSTV9ERUJVR19LTVMoIk9mZnNldHMgY2Fubm90
IGJlIGNoYW5nZWQgaW4gYXN5bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4g
KwkJfQo+PiArCj4+ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUtPmh3LmZiLT5tb2RpZmllciAhPQo+
PiArCQkgICAgbmV3X3BsYW5lX3N0YXRlLT5ody5mYi0+bW9kaWZpZXIpIHsKPj4gKwkJCURSTV9E
RUJVR19LTVMoIkZyYW1lYnVmZmVyIG1vZGlmaWVycyBjYW5ub3QgYmUgY2hhbmdlZCBpbiBhc3lu
YyBmbGlwXG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJaWYg
KG9sZF9wbGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1hdCAhPQo+PiArCQkgICAgbmV3X3BsYW5lX3N0
YXRlLT5ody5mYi0+Zm9ybWF0KSB7Cj4+ICsJCQlEUk1fREVCVUdfS01TKCJGcmFtZWJ1ZmZlciBm
b3JtYXQgY2Fubm90IGJlIGNoYW5nZWQgaW4gYXN5bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4g
LUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUtPmh3LnJvdGF0
aW9uICE9Cj4+ICsJCSAgICBuZXdfcGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uKSB7Cj4+ICsJCQlE
Uk1fREVCVUdfS01TKCJSb3RhdGlvbiBjYW5ub3QgYmUgY2hhbmdlZCBpbiBhc3luYyBmbGlwXG4i
KTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJaWYgKG9sZF9wbGFu
ZV9zdGF0ZS0+aHcuZmItPndpZHRoICE9Cj4+ICsJCSAgICBuZXdfcGxhbmVfc3RhdGUtPmh3LmZi
LT53aWR0aCB8fAo+PiArCQkgICAgb2xkX3BsYW5lX3N0YXRlLT5ody5mYi0+aGVpZ2h0ICE9Cj4+
ICsJCSAgICBuZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5oZWlnaHQpIHsKPiAKPiBGQiBzaXplIGlz
IGlycmVsZXZhbnQuIFRoaXMgY2hlY2sgY2FuIGJlIGRyb3BwZWQuCj4gCgpTdXJlLCBJJ2xsIHJl
bW92ZSB0aGlzLgo+IEJ1dCBzdHJpZGUgd2lsbCBuZWVkIHRvIGJlIGNoZWNrZWQuIExvb2tzIGxp
a2UgdGhhdCBvbmUgaXMgbWlzc2luZy4KPiBUaG91Z2ggd2Ugc2hvdWxkIGNoZWNrIHBsYW5lX3N0
YXRlLT5jb2xvcl9wbGFuZVswXS5zdHJpZGUgaW5zdGVhZAo+IG9mIHRoZSBvcmlnaW5hbCBmYiBz
dHJpZGUsIHNpbmNlIHRoZSBmb3JtZXIgaXMgd2hhdCB3ZSBhY3R1YWxseSBwcm9ncmFtCj4gaW50
byB0aGUgaHcuCj4gCgpTdXJlLCBJJ2xsIHVwZGF0ZSBhY2NvcmRpbmdseS4KPj4gKwkJCURSTV9E
RUJVR19LTVMoIkZyYW1lYnVmZmVyIGRpbWVuc2lvbnMgY2Fubm90IGJlIGNoYW5nZWQgaW4gYXN5
bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJCWlm
IChvbGRfcGxhbmVfc3RhdGUtPnVhcGkuc3JjX3cgIT0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNy
Y193IHx8Cj4+ICsJCSAgICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuc3JjX2ggIT0gbmV3X3BsYW5l
X3N0YXRlLT51YXBpLnNyY19oIHx8Cj4+ICsJCSAgICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuc3Jj
X3ggIT0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyY194IHx8Cj4+ICsJCSAgICBvbGRfcGxhbmVf
c3RhdGUtPnVhcGkuc3JjX3kgIT0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyY195IHx8Cj4+ICsJ
CSAgICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y193ICE9IG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5jcnRjX3cgfHwKPj4gKwkJICAgIG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjX2ggIT0gbmV3
X3BsYW5lX3N0YXRlLT51YXBpLmNydGNfaCB8fAo+PiArCQkgICAgb2xkX3BsYW5lX3N0YXRlLT51
YXBpLmNydGNfeCAhPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y194IHx8Cj4+ICsJCSAgICBv
bGRfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y195ICE9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRj
X3kpIHsKPj4gKwkJCURSTV9ERUJVR19LTVMoIlBsYW5lIHNpemUvY28tb3JkaW5hdGVzIGNhbm5v
dCBiZSBjaGFuZ2VkIGluIGFzeW5jIGZsaXBcbiIpOwo+IAo+IFRoZXNlIHNob3VsZCBjaGVjayB0
aGUgdWFwaS5zcmMvZHN0IHJlY3RhbmdsZXMgaW5zdGVhZC4KPiBJbiBmYWN0IEkgdGhpbmsganVz
dCB0d28gZHJtX3JlY3RfZXF1YWxzKCkgY2FsbHMgd2lsbCBkbyBoZXJlLAo+IGFuZCB0aGVuIEkg
dGhpbmsgd2UgY2FuIGFsc28gZHJvcCB0aGUgY29sb3JfcGxhbmVbMF0ueC95IGNoZWNrcwo+IGFi
b3ZlIHNpbmNlIHRoZXkgc2hvdWxkIGJlIHRoZSBzYW1lIGFzIGNoZWNraW5nIHRoZSBzcmMueDEv
eTEuCj4gCgpTdXJlLCBJJ2xsIG1ha2UgdGhlc2UgY2hhbmdlcy4KPj4gKwkJCXJldHVybiAtRUlO
VkFMOwo+PiArCQl9Cj4+ICsKPj4gKwkJaWYgKG9sZF9wbGFuZV9zdGF0ZS0+aHcuYWxwaGEgIT0g
bmV3X3BsYW5lX3N0YXRlLT5ody5hbHBoYSkgewo+PiArCQkJRFJNX0RFQlVHX0tNUygiQWxwaGEg
dmFsdWUgY2Fubm90IGJlIGNoYW5nZWQgaW4gYXN5bmMgZmxpcFxuIik7Cj4+ICsJCQlyZXR1cm4g
LUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUtPmh3LnBpeGVs
X2JsZW5kX21vZGUgIT0KPj4gKwkJICAgIG5ld19wbGFuZV9zdGF0ZS0+aHcucGl4ZWxfYmxlbmRf
bW9kZSkgewo+PiArCQkJRFJNX0RFQlVHX0tNUygiUGl4ZWwgYmxlbmQgbW9kZSBjYW5ub3QgYmUg
Y2hhbmdlZCBpbiBhc3luYyBmbGlwXG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9
Cj4+ICsKPj4gKwkJaWYgKG9sZF9wbGFuZV9zdGF0ZS0+aHcuY29sb3JfZW5jb2RpbmcgIT0gbmV3
X3BsYW5lX3N0YXRlLT5ody5jb2xvcl9lbmNvZGluZykgewo+PiArCQkJRFJNX0RFQlVHX0tNUygi
Q29sb3IgZW5jb2RpbmcgY2Fubm90IGJlIGNoYW5nZWQgaW4gYXN5bmMgZmxpcFxuIik7Cj4+ICsJ
CQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJCWlmIChvbGRfcGxhbmVfc3RhdGUt
Pmh3LmNvbG9yX3JhbmdlICE9IG5ld19wbGFuZV9zdGF0ZS0+aHcuY29sb3JfcmFuZ2UpIHsKPj4g
KwkJCURSTV9ERUJVR19LTVMoIkNvbG9yIHJhbmdlIGNhbm5vdCBiZSBjaGFuZ2VkIGluIGFzeW5j
IGZsaXBcbiIpOwo+PiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4g
KwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+PiAgIC8qKgo+PiAgICAqIGludGVsX2F0b21pY19jaGVj
ayAtIHZhbGlkYXRlIHN0YXRlIG9iamVjdAo+PiAgICAqIEBkZXY6IGRybSBkZXZpY2UKPj4gQEAg
LTE1MDUzLDYgKzE1MTg5LDEzIEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCj4+ICAgCQkJCSAgICAgICAiW21vZGVzZXRdIiA6ICJbZmFzdHNl
dF0iKTsKPj4gICAJfQo+PiAgIAo+PiArCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRl
KHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+PiArCQlpZiAobmV3X2NydGNfc3Rh
dGUtPnVhcGkuYXN5bmNfZmxpcCkgewo+PiArCQkJcmV0ID0gaW50ZWxfYXRvbWljX2NoZWNrX2Fz
eW5jKHN0YXRlKTsKPj4gKwkJCWlmIChyZXQpCj4+ICsJCQkJZ290byBmYWlsOwo+PiArCQl9Cj4+
ICsJfQo+IAo+IEkgd291bGQgcHV0IHRoaXMgYmVmb3JlIHRoZSBzdGF0ZSBkdW1wIGFib3ZlLiBD
b3VsZCBldmVuIHN0aWNrIGl0IGludG8KPiB0aGUgc2FtZSBsb29wIEkgZ3Vlc3MuCj4gCgpTdXJl
LCBJJ2xsIG1vdmUgdGhpcyBpbnRvIHRoZSBhYm92ZSBsb29wLgoKVGhhbmtzLApLYXJ0aGlrLkIu
Uwo+PiAgIAlyZXR1cm4gMDsKPj4gICAKPj4gICAgZmFpbDoKPj4gLS0gCj4+IDIuMjIuMAo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
