Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0995192EFF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 18:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB026E144;
	Wed, 25 Mar 2020 17:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D986E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 17:15:17 +0000 (UTC)
IronPort-SDR: YlwzNa6WS8dqpqbX5rem7m75dNceNKjptGG0IeJRWvGNgu73ElGGg4wP0f0rvIzDY1P2TvZVkM
 M8oMGSt6Hnng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:15:17 -0700
IronPort-SDR: 2EfJnDHgPTeJYv/9c/aNdkyW/Hl10Ytkv4TL6fm5hyTzoNGwtQWj63QSCX0oqNRGbVH4UIWEmI
 ETbYRsgUg3jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="282202626"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 10:15:17 -0700
To: John Harrison <John.C.Harrison@Intel.com>, intel-gfx@lists.freedesktop.org
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-5-daniele.ceraolospurio@intel.com>
 <a594751e-db07-867f-d851-ab059b161d74@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <83af4518-a3cb-5066-7eff-cf1f2dacf3ab@intel.com>
Date: Wed, 25 Mar 2020 10:14:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a594751e-db07-867f-d851-ab059b161d74@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915/debugfs: move uC printers
 and update debugfs file names
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAzLzI1LzIwIDEwOjA1IEFNLCBKb2huIEhhcnJpc29uIHdyb3RlOgo+IE9uIDMvMTEvMjAy
MCAxODoxNiwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4gTW92ZSB0aGUgcHJpbnRl
cnMgdG8gdGhlIHJlc3BlY3RpdmUgZmlsZXMgZm9yIGNsYXJpdHkuIFRoZQo+PiBndWNfbG9hZF9z
dGF0dXMgZGVidWdmcyBoYXMgYmVlbiBzcXVhc2hlZCBpbiB0aGUgZ3VjX2luZm8gb25lLCBoYXMK
Pj4gaGF2aW5nIHNlcGFyYXRlIG9uZXMgd2Fzbid0IHZlcnkgdXNlZnVsLiBUaGUgSHVDIGRlYnVn
ZnMgaGFzIGJlZW4KPj4gcmVuYW1lZCBodWNfaW5mbyB0byBtYXRjaC4KPj4KPj4gdjI6IGtlZXAg
cHJpbnRpbmcgSFVDX1NUQVRVUzIgKFRvbnkpLCBhdm9pZCBjb25zdC0+bm9uLWNvbnN0Cj4+IMKg
wqDCoMKgIGNvbnRhaW5lcl9vZiAoSmFuaSkKPj4KPj4gU3VnZ2VzdGVkLWJ5OiBNaWNoYWwgV2Fq
ZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4g
Q2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiBDYzog
Sm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4gQ2M6IE1hdHRoZXcg
QnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+PiBDYzogVG9ueSBZZSA8dG9ueS55ZUBp
bnRlbC5jb20+Cj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29t
Pgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmPCoMKg
wqDCoCB8wqAgNDQgKysrKysrKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWMuaMKgwqDCoMKgIHzCoMKgIDIgKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfbG9nLmMgfMKgIDkyICsrKysrKysrKysrKysrKwo+PiDCoCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmggfMKgwqAgNCArCj4+IMKgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jwqDCoMKgwqAgfMKgIDI5ICsrKysrCj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5owqDCoMKgwqAgfMKgwqAgMiAr
Cj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jwqDCoMKgwqDCoMKgwqAg
fCAxMzEgKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgIDcgZmlsZXMgY2hhbmdlZCwgMTg5IGlu
c2VydGlvbnMoKyksIDExNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Yy5jCj4+IGluZGV4IDgyN2Q3NTA3Mzg3OS4uODYxNjU3ODk3YzBmIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwo+PiBAQCAtNzIzLDMg
KzcyMyw0NyBAQCBpbnQgaW50ZWxfZ3VjX2FsbG9jYXRlX2FuZF9tYXBfdm1hKHN0cnVjdCAKPj4g
aW50ZWxfZ3VjICpndWMsIHUzMiBzaXplLAo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9
Cj4+ICsKPj4gKy8qKgo+PiArICogaW50ZWxfZ3VjX2xvYWRfc3RhdHVzIC0gZHVtcCBpbmZvcm1h
dGlvbiBhYm91dCBHdUMgbG9hZCBzdGF0dXMKPj4gKyAqIEBndWM6IHRoZSBHdUMKPj4gKyAqIEBw
OiB0aGUgJmRybV9wcmludGVyCj4+ICsgKgo+PiArICogUHJldHR5IHByaW50ZXIgZm9yIEd1QyBs
b2FkIHN0YXR1cy4KPj4gKyAqLwo+PiArdm9pZCBpbnRlbF9ndWNfbG9hZF9zdGF0dXMoc3RydWN0
IGludGVsX2d1YyAqZ3VjLCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnApCj4+ICt7Cj4+ICvCoMKgwqAg
c3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOwo+PiArwqDCoMKgIHN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7Cj4+ICvCoMKgwqAgaW50ZWxfd2FrZXJl
Zl90IHdha2VyZWY7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoIWludGVsX2d1Y19pc19zdXBwb3J0ZWQo
Z3VjKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgZHJtX3ByaW50ZihwLCAiR3VDIG5vdCBzdXBwb3J0
ZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+PiAr
wqDCoMKgIGlmICghaW50ZWxfZ3VjX2lzX3dhbnRlZChndWMpKSB7Cj4+ICvCoMKgwqDCoMKgwqDC
oCBkcm1fcHJpbnRmKHAsICJHdUMgZGlzYWJsZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGludGVsX3VjX2Z3X2R1bXAoJmd1Yy0+
ZncsIHApOwo+PiArCj4+ICvCoMKgwqAgd2l0aF9pbnRlbF9ydW50aW1lX3BtKHVuY29yZS0+cnBt
LCB3YWtlcmVmKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCB1MzIgc3RhdHVzID0gaW50ZWxfdW5jb3Jl
X3JlYWQodW5jb3JlLCBHVUNfU1RBVFVTKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHUzMiBpOwo+PiAr
Cj4+ICvCoMKgwqDCoMKgwqDCoCBkcm1fcHJpbnRmKHAsICJcbkd1QyBzdGF0dXMgMHglMDh4Olxu
Iiwgc3RhdHVzKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGRybV9wcmludGYocCwgIlx0Qm9vdHJvbSBz
dGF0dXMgPSAweCV4XG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoc3RhdHVz
ICYgR1NfQk9PVFJPTV9NQVNLKSA+PiBHU19CT09UUk9NX1NISUZUKTsKPj4gK8KgwqDCoMKgwqDC
oMKgIGRybV9wcmludGYocCwgIlx0dUtlcm5lbCBzdGF0dXMgPSAweCV4XG4iLAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoc3RhdHVzICYgR1NfVUtFUk5FTF9NQVNLKSA+PiBHU19V
S0VSTkVMX1NISUZUKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGRybV9wcmludGYocCwgIlx0TUlBIENv
cmUgc3RhdHVzID0gMHgleFxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKHN0
YXR1cyAmIEdTX01JQV9NQVNLKSA+PiBHU19NSUFfU0hJRlQpOwo+PiArwqDCoMKgwqDCoMKgwqAg
ZHJtX3B1dHMocCwgIlxuU2NyYXRjaCByZWdpc3RlcnM6XG4iKTsKPj4gK8KgwqDCoMKgwqDCoMKg
IGZvciAoaSA9IDA7IGkgPCAxNjsgaSsrKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRy
bV9wcmludGYocCwgIlx0JTJkOiBcdDB4JXhcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaSwgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBTT0ZUX1NDUkFUQ0go
aSkpKTsKPj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4gK8KgwqDCoCB9Cj4+ICt9Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaCAKPj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAo+PiBpbmRleCA0NTk0Y2NiZWFhMzQuLmE1
ZDdhODZiZTRjZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgK
Pj4gQEAgLTE5MCw0ICsxOTAsNiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZ3VjX2Rpc2Fi
bGVfbXNnKHN0cnVjdCAKPj4gaW50ZWxfZ3VjICpndWMsIHUzMiBtYXNrKQo+PiDCoCBpbnQgaW50
ZWxfZ3VjX3Jlc2V0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Cj4+
ICt2b2lkIGludGVsX2d1Y19sb2FkX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHN0cnVj
dCBkcm1fcHJpbnRlciAKPj4gKnApOwo+PiArCj4+IMKgICNlbmRpZgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jIAo+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYwo+PiBpbmRleCBjYWVkMGQ1N2U3MDQu
LjhjZGQ2ZGMzZGY1OCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX2xvZy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19sb2cuYwo+PiBAQCAtNjcyLDMgKzY3Miw5NSBAQCB2b2lkIGludGVsX2d1Y19sb2dfaGFu
ZGxlX2ZsdXNoX2V2ZW50KHN0cnVjdCAKPj4gaW50ZWxfZ3VjX2xvZyAqbG9nKQo+PiDCoCB7Cj4+
IMKgwqDCoMKgwqAgcXVldWVfd29yayhzeXN0ZW1faGlnaHByaV93cSwgJmxvZy0+cmVsYXkuZmx1
c2hfd29yayk7Cj4+IMKgIH0KPj4gKwo+PiArc3RhdGljIGNvbnN0IGNoYXIgKgo+PiArc3RyaW5n
aWZ5X2d1Y19sb2dfdHlwZShlbnVtIGd1Y19sb2dfYnVmZmVyX3R5cGUgdHlwZSkKPj4gK3sKPj4g
K8KgwqDCoCBzd2l0Y2ggKHR5cGUpIHsKPj4gK8KgwqDCoCBjYXNlIEdVQ19JU1JfTE9HX0JVRkZF
UjoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAiSVNSIjsKPj4gK8KgwqDCoCBjYXNlIEdVQ19E
UENfTE9HX0JVRkZFUjoKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAiRFBDIjsKPj4gK8KgwqDC
oCBjYXNlIEdVQ19DUkFTSF9EVU1QX0xPR19CVUZGRVI6Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1
cm4gIkNSQVNIIjsKPj4gK8KgwqDCoCBkZWZhdWx0Ogo+PiArwqDCoMKgwqDCoMKgwqAgTUlTU0lO
R19DQVNFKHR5cGUpOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIHJldHVybiAiIjsKPj4g
K30KPj4gKwo+PiArLyoqCj4+ICsgKiBpbnRlbF9ndWNfbG9nX2luZm8gLSBkdW1wIGluZm9ybWF0
aW9uIGFib3V0IEd1QyBsb2cgcmVsYXkKPj4gKyAqIEBndWM6IHRoZSBHdUMKPj4gKyAqIEBwOiB0
aGUgJmRybV9wcmludGVyCj4+ICsgKgo+PiArICogUHJldHR5IHByaW50ZXIgZm9yIEd1QyBsb2cg
aW5mbwo+PiArICovCj4+ICt2b2lkIGludGVsX2d1Y19sb2dfaW5mbyhzdHJ1Y3QgaW50ZWxfZ3Vj
X2xvZyAqbG9nLCBzdHJ1Y3QgZHJtX3ByaW50ZXIgCj4+ICpwKQo+PiArewo+PiArwqDCoMKgIGVu
dW0gZ3VjX2xvZ19idWZmZXJfdHlwZSB0eXBlOwo+PiArCj4+ICvCoMKgwqAgaWYgKCFpbnRlbF9n
dWNfbG9nX3JlbGF5X2NyZWF0ZWQobG9nKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgZHJtX3B1dHMo
cCwgIkd1QyBsb2cgcmVsYXkgbm90IGNyZWF0ZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGRybV9wdXRzKHAsICJHdUMgbG9nZ2lu
ZyBzdGF0czpcbiIpOwo+PiArCj4+ICvCoMKgwqAgZHJtX3ByaW50ZihwLCAiXHRSZWxheSBmdWxs
IGNvdW50OiAldVxuIiwgbG9nLT5yZWxheS5mdWxsX2NvdW50KTsKPj4gKwo+PiArwqDCoMKgIGZv
ciAodHlwZSA9IEdVQ19JU1JfTE9HX0JVRkZFUjsgdHlwZSA8IEdVQ19NQVhfTE9HX0JVRkZFUjsg
dHlwZSsrKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkcm1fcHJpbnRmKHAsICJcdCVzOlx0Zmx1c2gg
Y291bnQgJTEwdSwgb3ZlcmZsb3cgY291bnQgJTEwdVxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RyaW5naWZ5X2d1Y19sb2dfdHlwZSh0eXBlKSwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbG9nLT5zdGF0c1t0eXBlXS5mbHVzaCwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbG9nLT5zdGF0c1t0eXBlXS5zYW1wbGVkX292ZXJmbG93KTsKPj4g
K8KgwqDCoCB9Cj4+ICt9Cj4+ICsKPj4gKy8qKgo+PiArICogaW50ZWxfZ3VjX2xvZ19kdW1wIC0g
ZHVtcCB0aGUgY29udGVudHMgb2YgdGhlIEd1QyBsb2cKPj4gKyAqIEBsb2c6IHRoZSBHdUMgbG9n
Cj4+ICsgKiBAcDogdGhlICZkcm1fcHJpbnRlcgo+PiArICogQGR1bXBfbG9hZF9lcnI6IGR1bXAg
dGhlIGxvZyBzYXZlZCBvbiBHdUMgbG9hZCBlcnJvcgo+PiArICoKPj4gKyAqIFByZXR0eSBwcmlu
dGVyIGZvciB0aGUgR3VDIGxvZwo+PiArICovCj4+ICtpbnQgaW50ZWxfZ3VjX2xvZ19kdW1wKHN0
cnVjdCBpbnRlbF9ndWNfbG9nICpsb2csIHN0cnVjdCBkcm1fcHJpbnRlciAqcCwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBkdW1wX2xvYWRfZXJyKQo+PiArewo+PiArwqDC
oMKgIHN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9IGxvZ190b19ndWMobG9nKTsKPj4gK8KgwqDCoCBz
dHJ1Y3QgaW50ZWxfdWMgKnVjID0gY29udGFpbmVyX29mKGd1Yywgc3RydWN0IGludGVsX3VjLCBn
dWMpOwo+PiArwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBOVUxMOwo+
PiArwqDCoMKgIHUzMiAqbWFwOwo+PiArwqDCoMKgIGludCBpID0gMDsKPj4gKwo+PiArwqDCoMKg
IGlmICghaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZChndWMpKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9ERVY7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoZHVtcF9sb2FkX2VycikKPj4gK8KgwqDC
oMKgwqDCoMKgIG9iaiA9IHVjLT5sb2FkX2Vycl9sb2c7Cj4+ICvCoMKgwqAgZWxzZSBpZiAoZ3Vj
LT5sb2cudm1hKQo+PiArwqDCoMKgwqDCoMKgwqAgb2JqID0gZ3VjLT5sb2cudm1hLT5vYmo7Cj4+
ICsKPj4gK8KgwqDCoCBpZiAoIW9iaikKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiAr
Cj4+ICvCoMKgwqAgbWFwID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9X
Qyk7Cj4+ICvCoMKgwqAgaWYgKElTX0VSUihtYXApKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBEUk1f
REVCVUcoIkZhaWxlZCB0byBwaW4gb2JqZWN0XG4iKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGRybV9w
dXRzKHAsICIobG9nIGRhdGEgdW5hY2Nlc3NpYmxlKVxuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gUFRSX0VSUihtYXApOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGZvciAoaSA9
IDA7IGkgPCBvYmotPmJhc2Uuc2l6ZSAvIHNpemVvZih1MzIpOyBpICs9IDQpCj4+ICvCoMKgwqDC
oMKgwqDCoCBkcm1fcHJpbnRmKHAsICIweCUwOHggMHglMDh4IDB4JTA4eCAweCUwOHhcbiIsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICoobWFwICsgaSksICoobWFwICsgaSArIDEp
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqKG1hcCArIGkgKyAyKSwgKihtYXAg
KyBpICsgMykpOwo+PiArCj4+ICvCoMKgwqAgZHJtX3B1dHMocCwgIlxuIik7Cj4+ICsKPj4gK8Kg
wqDCoCBpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7Cj4+ICsKPj4gK8KgwqDCoCByZXR1
cm4gMDsKPj4gK30KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19sb2cuaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
bG9nLmgKPj4gaW5kZXggYzI1MmMwMjJjNWZjLi4xMWZjY2QwYjIyOTQgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuaAo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmgKPj4gQEAgLTc5LDQgKzc5LDgg
QEAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfZ3VjX2xvZ19nZXRfbGV2ZWwoc3RydWN0IAo+PiBp
bnRlbF9ndWNfbG9nICpsb2cpCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGxvZy0+bGV2ZWw7Cj4+IMKg
IH0KPj4gK3ZvaWQgaW50ZWxfZ3VjX2xvZ19pbmZvKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cs
IHN0cnVjdCBkcm1fcHJpbnRlciAKPj4gKnApOwo+PiAraW50IGludGVsX2d1Y19sb2dfZHVtcChz
dHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nLCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAsCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgZHVtcF9sb2FkX2Vycik7Cj4+ICsKPj4gwqAg
I2VuZGlmCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9o
dWMuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYwo+PiBpbmRl
eCBkNzNkYzIxNjg2ZTcuLmQ2MDk3YjQ2NjAwYyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfaHVjLmMKPj4gQEAgLTIxOCwzICsyMTgsMzIgQEAgaW50IGludGVsX2h1Y19j
aGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjKQo+PiDCoMKgwqDCoMKgIHJldHVybiAo
c3RhdHVzICYgaHVjLT5zdGF0dXMubWFzaykgPT0gaHVjLT5zdGF0dXMudmFsdWU7Cj4+IMKgIH0K
Pj4gKwo+PiArLyoqCj4+ICsgKiBpbnRlbF9odWNfbG9hZF9zdGF0dXMgLSBkdW1wIGluZm9ybWF0
aW9uIGFib3V0IEh1QyBsb2FkIHN0YXR1cwo+PiArICogQGh1YzogdGhlIEh1Qwo+PiArICogQHA6
IHRoZSAmZHJtX3ByaW50ZXIKPj4gKyAqCj4+ICsgKiBQcmV0dHkgcHJpbnRlciBmb3IgSHVDIGxv
YWQgc3RhdHVzLgo+PiArICovCj4+ICt2b2lkIGludGVsX2h1Y19sb2FkX3N0YXR1cyhzdHJ1Y3Qg
aW50ZWxfaHVjICpodWMsIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkKPj4gK3sKPj4gK8KgwqDCoCBz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gaHVjX3RvX2d0KGh1Yyk7Cj4+ICvCoMKgwqAgaW50ZWxfd2Fr
ZXJlZl90IHdha2VyZWY7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoIWludGVsX2h1Y19pc19zdXBwb3J0
ZWQoaHVjKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgZHJtX3ByaW50ZihwLCAiSHVDIG5vdCBzdXBw
b3J0ZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+
PiArwqDCoMKgIGlmICghaW50ZWxfaHVjX2lzX3dhbnRlZChodWMpKSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBkcm1fcHJpbnRmKHAsICJIdUMgZGlzYWJsZWRcbiIpOwo+PiArwqDCoMKgwqDCoMKgwqAg
cmV0dXJuOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIGludGVsX3VjX2Z3X2R1bXAoJmh1
Yy0+ZncsIHApOwo+PiArCj4+ICvCoMKgwqAgd2l0aF9pbnRlbF9ydW50aW1lX3BtKGd0LT51bmNv
cmUtPnJwbSwgd2FrZXJlZikKPj4gK8KgwqDCoMKgwqDCoMKgIGRybV9wcmludGYocCwgIlxuSHVD
IHN0YXR1cyAweCUwOHg6XG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRl
bF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBIVUNfU1RBVFVTMikpOwo+PiArfQo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmggCj4+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmgKPj4gaW5kZXggYTQwYjljZmM2YzIyLi5k
YWVlNDNiNjYxZDQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2h1Yy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5o
Cj4+IEBAIC01Nyw0ICs1Nyw2IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9odWNfaXNfYXV0
aGVudGljYXRlZChzdHJ1Y3QgCj4+IGludGVsX2h1YyAqaHVjKQo+PiDCoMKgwqDCoMKgIHJldHVy
biBpbnRlbF91Y19md19pc19ydW5uaW5nKCZodWMtPmZ3KTsKPj4gwqAgfQo+PiArdm9pZCBpbnRl
bF9odWNfbG9hZF9zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjLCBzdHJ1Y3QgZHJtX3ByaW50
ZXIgCj4+ICpwKTsKPj4gKwo+PiDCoCAjZW5kaWYKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCj4+IGluZGV4IGRlOTRmY2QyMDMyYi4uNTY1MDRiZTJhNmVjIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+PiBAQCAtMTI1MSwxMDUgKzEyNTEsMzIgQEAg
c3RhdGljIGludCBpOTE1X2xsYyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgCj4+ICpkYXRhKQo+
PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4+IC1zdGF0aWMgaW50IGk5MTVfaHVjX2xv
YWRfc3RhdHVzX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+PiArc3RhdGlj
IGludCBpOTE1X2h1Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4gwqAg
ewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVf
dG9faTkxNShtLT5wcml2YXRlKTsKPj4gLcKgwqDCoCBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsK
Pj4gLcKgwqDCoCBzdHJ1Y3QgZHJtX3ByaW50ZXIgcDsKPj4gLQo+PiAtwqDCoMKgIGlmICghSEFT
X0dUX1VDKGRldl9wcml2KSkKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+PiAt
Cj4+IC3CoMKgwqAgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOwo+PiAtwqDCoMKgIGludGVs
X3VjX2Z3X2R1bXAoJmRldl9wcml2LT5ndC51Yy5odWMuZncsICZwKTsKPj4gLQo+PiAtwqDCoMKg
IHdpdGhfaW50ZWxfcnVudGltZV9wbSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0sIHdha2VyZWYpCj4+
IC3CoMKgwqDCoMKgwqDCoCBzZXFfcHJpbnRmKG0sICJcbkh1QyBzdGF0dXMgMHglMDh4OlxuIiwg
STkxNV9SRUFEKEhVQ19TVEFUVVMyKSk7Cj4+IC0KPj4gLcKgwqDCoCByZXR1cm4gMDsKPj4gLX0K
Pj4gLQo+PiAtc3RhdGljIGludCBpOTE1X2d1Y19sb2FkX3N0YXR1c19pbmZvKHN0cnVjdCBzZXFf
ZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4gLXsKPj4gLcKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Cj4+IC3CoMKgwqAgaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4+IC3CoMKgwqAgc3RydWN0IGRybV9wcmludGVyIHA7Cj4+
ICvCoMKgwqAgc3RydWN0IGludGVsX2h1YyAqaHVjID0gJmRldl9wcml2LT5ndC51Yy5odWM7Cj4+
ICvCoMKgwqAgc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1fc2VxX2ZpbGVfcHJpbnRlcihtKTsK
Pj4gLcKgwqDCoCBpZiAoIUhBU19HVF9VQyhkZXZfcHJpdikpCj4+ICvCoMKgwqAgaWYgKCFpbnRl
bF9odWNfaXNfc3VwcG9ydGVkKGh1YykpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVO
T0RFVjsKPiBJc24ndCB0aGlzIHRlc3QgZHVwbGljYXRlZCBpbnNpZGUgaW50ZWxfaHVjX2xvYWRf
c3RhdHVzKCkgd2l0aCBhIHByaW50IAo+IG9mICdIdUMgbm90IHN1cHBvcnRlZCc/IFNvIG5vIG5l
ZWQgdG8gZmFpbCB0aGUgY2FsbCBoZXJlPwo+IAoKaW50ZWxfaHVjX2xvYWRfc3RhdHVzIGlzIG5v
dyBhIGdlbmVyaWMgcHJpbnRlciB3aGljaCBjYW4gYmUgY2FsbGVkIGZyb20gCm90aGVyIHBsYWNl
cywgc28gaXQgbmVlZHMgdG8gcHJpbnQgdXNlZnVsIG1lc3NhZ2VzIGluIGFsbCBjYXNlcy4gRnJv
bSAKdGhlIGRlYnVnZnMgUE9WLCBJIGRpZG4ndCB3YW50IHRvIGNoYW5nZSB0aGUgbGVnYWN5IGJl
aGF2aW9yIG9mIApyZXR1cm5pbmcgLUVOT0RFViBvbiBwbGF0Zm9ybXMgdGhhdCBkb24ndCBzdXBw
b3J0IHRoZSBibG9iLCB3aGljaCBJTU8gaXMgCmEgY2xlYXIgZW91Z2ggaW5kaWNhdGlvbiBvZiB0
aGUgbGFjayBvZiBzdXBwb3J0LiBOb3RlIHRoYXQgaW4gdGhlIG5leHQgCnBhdGNoIHRoZSBjb2Rl
IGlzIGNoYW5nZWQgc28gdGhhdCB0aGUgZGViZ3VmcyBmaWxlcyBhcmUgbm90IGV2ZW4gY3JlYXRl
ZCAKaWYgdGhlcmUgaXMgbm8gdUMgc3VwcG9ydCBvbiB0aGUgcGxhdGZvcm1zICh0aGlzIGlzIGlu
IGxpbmUgd2l0aCB3aGF0IHdlIApkbyBmb3Igb3RoZXIgR1QgZmVhdHVyZXMpLgoKRGFuaWVsZQoK
Pj4gLcKgwqDCoCBwID0gZHJtX3NlcV9maWxlX3ByaW50ZXIobSk7Cj4+IC3CoMKgwqAgaW50ZWxf
dWNfZndfZHVtcCgmZGV2X3ByaXYtPmd0LnVjLmd1Yy5mdywgJnApOwo+PiAtCj4+IC3CoMKgwqAg
d2l0aF9pbnRlbF9ydW50aW1lX3BtKCZkZXZfcHJpdi0+cnVudGltZV9wbSwgd2FrZXJlZikgewo+
PiAtwqDCoMKgwqDCoMKgwqAgdTMyIHRtcCA9IEk5MTVfUkVBRChHVUNfU1RBVFVTKTsKPj4gLcKg
wqDCoMKgwqDCoMKgIHUzMiBpOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoCBzZXFfcHJpbnRmKG0s
ICJcbkd1QyBzdGF0dXMgMHglMDh4OlxuIiwgdG1wKTsKPj4gLcKgwqDCoMKgwqDCoMKgIHNlcV9w
cmludGYobSwgIlx0Qm9vdHJvbSBzdGF0dXMgPSAweCV4XG4iLAo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAodG1wICYgR1NfQk9PVFJPTV9NQVNLKSA+PiBHU19CT09UUk9NX1NISUZU
KTsKPj4gLcKgwqDCoMKgwqDCoMKgIHNlcV9wcmludGYobSwgIlx0dUtlcm5lbCBzdGF0dXMgPSAw
eCV4XG4iLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAodG1wICYgR1NfVUtFUk5F
TF9NQVNLKSA+PiBHU19VS0VSTkVMX1NISUZUKTsKPj4gLcKgwqDCoMKgwqDCoMKgIHNlcV9wcmlu
dGYobSwgIlx0TUlBIENvcmUgc3RhdHVzID0gMHgleFxuIiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKHRtcCAmIEdTX01JQV9NQVNLKSA+PiBHU19NSUFfU0hJRlQpOwo+PiAtwqDC
oMKgwqDCoMKgwqAgc2VxX3B1dHMobSwgIlxuU2NyYXRjaCByZWdpc3RlcnM6XG4iKTsKPj4gLcKg
wqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCAxNjsgaSsrKSB7Cj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNlcV9wcmludGYobSwgIlx0JTJkOiBcdDB4JXhcbiIsCj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaSwgSTkxNV9SRUFEKFNPRlRfU0NSQVRDSChpKSkp
Owo+PiAtwqDCoMKgwqDCoMKgwqAgfQo+PiAtwqDCoMKgIH0KPj4gK8KgwqDCoCBpbnRlbF9odWNf
bG9hZF9zdGF0dXMoaHVjLCAmcCk7Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIH0KPj4g
LXN0YXRpYyBjb25zdCBjaGFyICoKPj4gLXN0cmluZ2lmeV9ndWNfbG9nX3R5cGUoZW51bSBndWNf
bG9nX2J1ZmZlcl90eXBlIHR5cGUpCj4+IC17Cj4+IC3CoMKgwqAgc3dpdGNoICh0eXBlKSB7Cj4+
IC3CoMKgwqAgY2FzZSBHVUNfSVNSX0xPR19CVUZGRVI6Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1
cm4gIklTUiI7Cj4+IC3CoMKgwqAgY2FzZSBHVUNfRFBDX0xPR19CVUZGRVI6Cj4+IC3CoMKgwqDC
oMKgwqDCoCByZXR1cm4gIkRQQyI7Cj4+IC3CoMKgwqAgY2FzZSBHVUNfQ1JBU0hfRFVNUF9MT0df
QlVGRkVSOgo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuICJDUkFTSCI7Cj4+IC3CoMKgwqAgZGVm
YXVsdDoKPj4gLcKgwqDCoMKgwqDCoMKgIE1JU1NJTkdfQ0FTRSh0eXBlKTsKPj4gLcKgwqDCoCB9
Cj4+IC0KPj4gLcKgwqDCoCByZXR1cm4gIiI7Cj4+IC19Cj4+IC0KPj4gLXN0YXRpYyB2b2lkIGk5
MTVfZ3VjX2xvZ19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IAo+PiBpbnRlbF9ndWNf
bG9nICpsb2cpCj4+IC17Cj4+IC3CoMKgwqAgZW51bSBndWNfbG9nX2J1ZmZlcl90eXBlIHR5cGU7
Cj4+IC0KPj4gLcKgwqDCoCBpZiAoIWludGVsX2d1Y19sb2dfcmVsYXlfY3JlYXRlZChsb2cpKSB7
Cj4+IC3CoMKgwqDCoMKgwqDCoCBzZXFfcHV0cyhtLCAiR3VDIGxvZyByZWxheSBub3QgY3JlYXRl
ZFxuIik7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+IC3CoMKgwqAgfQo+PiAtCj4+IC3C
oMKgwqAgc2VxX3B1dHMobSwgIkd1QyBsb2dnaW5nIHN0YXRzOlxuIik7Cj4+IC0KPj4gLcKgwqDC
oCBzZXFfcHJpbnRmKG0sICJcdFJlbGF5IGZ1bGwgY291bnQ6ICV1XG4iLAo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbG9nLT5yZWxheS5mdWxsX2NvdW50KTsKPj4gLQo+PiAtwqDCoMKgIGZvciAo
dHlwZSA9IEdVQ19JU1JfTE9HX0JVRkZFUjsgdHlwZSA8IEdVQ19NQVhfTE9HX0JVRkZFUjsgdHlw
ZSsrKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBzZXFfcHJpbnRmKG0sICJcdCVzOlx0Zmx1c2ggY291
bnQgJTEwdSwgb3ZlcmZsb3cgY291bnQgJTEwdVxuIiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RyaW5naWZ5X2d1Y19sb2dfdHlwZSh0eXBlKSwKPj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbG9nLT5zdGF0c1t0eXBlXS5mbHVzaCwKPj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbG9nLT5zdGF0c1t0eXBlXS5zYW1wbGVkX292ZXJmbG93KTsKPj4gLcKg
wqDCoCB9Cj4+IC19Cj4+IC0KPj4gwqAgc3RhdGljIGludCBpOTE1X2d1Y19pbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKPj4gLcKg
wqDCoCBzdHJ1Y3QgaW50ZWxfdWMgKnVjID0gJmRldl9wcml2LT5ndC51YzsKPj4gK8KgwqDCoCBz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSAmZGV2X3ByaXYtPmd0LnVjLmd1YzsKPj4gK8KgwqDCoCBz
dHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOwo+PiAtwqDCoMKg
IGlmICghaW50ZWxfdWNfdXNlc19ndWModWMpKQo+PiArwqDCoMKgIGlmICghaW50ZWxfZ3VjX2lz
X3N1cHBvcnRlZChndWMpKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9ERVY7Cj4g
QXMgYWJvdmUuIE5vIG5lZWQgdG8gYmFpbCBpZiB0aGUgZHVtcCBjYWxsIGJlbG93IGlzIHRyeWlu
ZyB0byByZXR1cm4gYSAKPiB1c2VmdWwgbWVzc2FnZSBpbiB0aGUgbm90IHN1cHBvcnRlZCBjYXNl
Lgo+IAo+IEpvaG4uCj4gCj4+IC3CoMKgwqAgaTkxNV9ndWNfbG9nX2luZm8obSwgJnVjLT5ndWMu
bG9nKTsKPj4gK8KgwqDCoCBpbnRlbF9ndWNfbG9hZF9zdGF0dXMoZ3VjLCAmcCk7Cj4+ICvCoMKg
wqAgZHJtX3B1dHMoJnAsICJcbiIpOwo+PiArwqDCoMKgIGludGVsX2d1Y19sb2dfaW5mbygmZ3Vj
LT5sb2csICZwKTsKPj4gwqDCoMKgwqDCoCAvKiBBZGQgbW9yZSBhcyByZXF1aXJlZCAuLi4gKi8K
Pj4gQEAgLTEzNjAsMzkgKzEyODcsMTQgQEAgc3RhdGljIGludCBpOTE1X2d1Y19sb2dfZHVtcChz
dHJ1Y3Qgc2VxX2ZpbGUgCj4+ICptLCB2b2lkICpkYXRhKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAg
c3RydWN0IGRybV9pbmZvX25vZGUgKm5vZGUgPSBtLT5wcml2YXRlOwo+PiDCoMKgwqDCoMKgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShub2RlKTsKPj4g
K8KgwqDCoCBzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSAmZGV2X3ByaXYtPmd0LnVjLmd1YzsKPj4g
wqDCoMKgwqDCoCBib29sIGR1bXBfbG9hZF9lcnIgPSAhIW5vZGUtPmluZm9fZW50LT5kYXRhOwo+
PiAtwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBOVUxMOwo+PiAtwqDC
oMKgIHUzMiAqbG9nOwo+PiAtwqDCoMKgIGludCBpID0gMDsKPj4gK8KgwqDCoCBzdHJ1Y3QgZHJt
X3ByaW50ZXIgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOwo+PiAtwqDCoMKgIGlmICghSEFT
X0dUX1VDKGRldl9wcml2KSkKPj4gK8KgwqDCoCBpZiAoIWludGVsX2d1Y19pc19zdXBwb3J0ZWQo
Z3VjKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+PiAtwqDCoMKgIGlm
IChkdW1wX2xvYWRfZXJyKQo+PiAtwqDCoMKgwqDCoMKgwqAgb2JqID0gZGV2X3ByaXYtPmd0LnVj
LmxvYWRfZXJyX2xvZzsKPj4gLcKgwqDCoCBlbHNlIGlmIChkZXZfcHJpdi0+Z3QudWMuZ3VjLmxv
Zy52bWEpCj4+IC3CoMKgwqDCoMKgwqDCoCBvYmogPSBkZXZfcHJpdi0+Z3QudWMuZ3VjLmxvZy52
bWEtPm9iajsKPj4gLQo+PiAtwqDCoMKgIGlmICghb2JqKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIDA7Cj4+IC0KPj4gLcKgwqDCoCBsb2cgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmos
IEk5MTVfTUFQX1dDKTsKPj4gLcKgwqDCoCBpZiAoSVNfRVJSKGxvZykpIHsKPj4gLcKgwqDCoMKg
wqDCoMKgIERSTV9ERUJVRygiRmFpbGVkIHRvIHBpbiBvYmplY3RcbiIpOwo+PiAtwqDCoMKgwqDC
oMKgwqAgc2VxX3B1dHMobSwgIihsb2cgZGF0YSB1bmFjY2Vzc2libGUpXG4iKTsKPj4gLcKgwqDC
oMKgwqDCoMKgIHJldHVybiBQVFJfRVJSKGxvZyk7Cj4+IC3CoMKgwqAgfQo+PiAtCj4+IC3CoMKg
wqAgZm9yIChpID0gMDsgaSA8IG9iai0+YmFzZS5zaXplIC8gc2l6ZW9mKHUzMik7IGkgKz0gNCkK
Pj4gLcKgwqDCoMKgwqDCoMKgIHNlcV9wcmludGYobSwgIjB4JTA4eCAweCUwOHggMHglMDh4IDB4
JTA4eFxuIiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKihsb2cgKyBpKSwgKihs
b2cgKyBpICsgMSksCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICoobG9nICsgaSAr
IDIpLCAqKGxvZyArIGkgKyAzKSk7Cj4+IC0KPj4gLcKgwqDCoCBzZXFfcHV0YyhtLCAnXG4nKTsK
Pj4gLQo+PiAtwqDCoMKgIGk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAob2JqKTsKPj4gLQo+PiAt
wqDCoMKgIHJldHVybiAwOwo+PiArwqDCoMKgIHJldHVybiBpbnRlbF9ndWNfbG9nX2R1bXAoJmd1
Yy0+bG9nLCAmcCwgZHVtcF9sb2FkX2Vycik7Cj4+IMKgIH0KPj4gwqAgc3RhdGljIGludCBpOTE1
X2d1Y19sb2dfbGV2ZWxfZ2V0KHZvaWQgKmRhdGEsIHU2NCAqdmFsKQo+PiBAQCAtMjA4OCwxMCAr
MTk5MCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2luZm9fbGlzdCAKPj4gaTkxNV9kZWJ1
Z2ZzX2xpc3RbXSA9IHsKPj4gwqDCoMKgwqDCoCB7Imk5MTVfZ2VtX2ZlbmNlX3JlZ3MiLCBpOTE1
X2dlbV9mZW5jZV9yZWdzX2luZm8sIDB9LAo+PiDCoMKgwqDCoMKgIHsiaTkxNV9nZW1faW50ZXJy
dXB0IiwgaTkxNV9pbnRlcnJ1cHRfaW5mbywgMH0sCj4+IMKgwqDCoMKgwqAgeyJpOTE1X2d1Y19p
bmZvIiwgaTkxNV9ndWNfaW5mbywgMH0sCj4+IC3CoMKgwqAgeyJpOTE1X2d1Y19sb2FkX3N0YXR1
cyIsIGk5MTVfZ3VjX2xvYWRfc3RhdHVzX2luZm8sIDB9LAo+PiDCoMKgwqDCoMKgIHsiaTkxNV9n
dWNfbG9nX2R1bXAiLCBpOTE1X2d1Y19sb2dfZHVtcCwgMH0sCj4+IMKgwqDCoMKgwqAgeyJpOTE1
X2d1Y19sb2FkX2Vycl9sb2dfZHVtcCIsIGk5MTVfZ3VjX2xvZ19kdW1wLCAwLCAodm9pZCAqKTF9
LAo+PiAtwqDCoMKgIHsiaTkxNV9odWNfbG9hZF9zdGF0dXMiLCBpOTE1X2h1Y19sb2FkX3N0YXR1
c19pbmZvLCAwfSwKPj4gK8KgwqDCoCB7Imk5MTVfaHVjX2luZm8iLCBpOTE1X2h1Y19pbmZvLCAw
fSwKPj4gwqDCoMKgwqDCoCB7Imk5MTVfZnJlcXVlbmN5X2luZm8iLCBpOTE1X2ZyZXF1ZW5jeV9p
bmZvLCAwfSwKPj4gwqDCoMKgwqDCoCB7Imk5MTVfcmluZ19mcmVxX3RhYmxlIiwgaTkxNV9yaW5n
X2ZyZXFfdGFibGUsIDB9LAo+PiDCoMKgwqDCoMKgIHsiaTkxNV9jb250ZXh0X3N0YXR1cyIsIGk5
MTVfY29udGV4dF9zdGF0dXMsIDB9LAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
