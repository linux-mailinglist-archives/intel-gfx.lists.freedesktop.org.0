Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF18F1F550C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 14:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4531D6E566;
	Wed, 10 Jun 2020 12:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCD46E566
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 12:42:12 +0000 (UTC)
IronPort-SDR: BDGfEaN+/0W0rKv2DygqJAz+Ao0HD9z3nLfuEn6KqMD63gxbUX+Fuzz/RPLNLx2e5V4RCK4lmr
 bKrtej8QNNSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 05:42:11 -0700
IronPort-SDR: iO5BMH7Hr+X9BQDMj00agXD/W6QHlcAeDHt663i14cV8l4unJCOiG+Ls5xLfvcgwhqkhDYymNZ
 qULu+jsmT3Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="380048730"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2020 05:42:10 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1A8AB5C2C9E; Wed, 10 Jun 2020 15:39:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200609151723.12971-1-chris@chris-wilson.co.uk>
References: <20200609122856.10207-1-chris@chris-wilson.co.uk>
 <20200609151723.12971-1-chris@chris-wilson.co.uk>
Date: Wed, 10 Jun 2020 15:39:34 +0300
Message-ID: <87a71b9jsp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Incrementally check for
 rewinding
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gY29t
bWl0IDViYTMyYzdiZTgxZSAoImRybS9pOTE1L2V4ZWNsaXN0czogQWx3YXlzIGZvcmNlIGEgY29u
dGV4dAo+IHJlbG9hZCB3aGVuIHJld2luZGluZyBSSU5HX1RBSUwiKSwgd2UgcGxhY2VkIHRoZSBj
aGVjayBmb3IgcmV3aW5kaW5nIGEKPiBjb250ZXh0IG9uIGFjdHVhbGx5IHN1Ym1pdHRpbmcgdGhl
IG5leHQgcmVxdWVzdCBpbiB0aGF0IGNvbnRleHQuIFRoaXMKPiB3YXMgc28gdGhhdCB3ZSBvbmx5
IGhhZCB0byBjaGVjayBvbmNlLCBhbmQgY291bGQgZG8gc28gd2l0aCBwcmVjaXNpb24KPiBhdm9p
ZGluZyBhcyBtYW55IGZvcmNlZCByZXN0b3JlcyBhcyBwb3NzaWJsZS4gRm9yIGV4YW1wbGUsIHRv
IGVuc3VyZQo+IHRoYXQgd2UgY2FuIHJlc3VibWl0IHRoZSBzYW1lIHJlcXVlc3QgYSBjb3VwbGUg
b2YgdGltZXMsIHdlIGluY2x1ZGUgYQo+IHNtYWxsIHdhX3RhaWwgc3VjaCB0aGF0IG9uIHRoZSBu
ZXh0IHN1Ym1pc3Npb24sIHRoZSByaW5nLT50YWlsIHdpbGwKPiBhcHBlYXIgdG8gbW92ZSBmb3J3
YXJkcyB3aGVuIHJlc3VibWl0dGluZyB0aGUgc2FtZSByZXF1ZXN0LiBUaGlzIGlzIHZlcnkKPiBj
b21tb24gYXMgaXQgd2lsbCBoYXBwZW4gZm9yIGV2ZXJ5IGxpdGUtcmVzdG9yZSB0byBmaWxsIHRo
ZSBzZWNvbmQgcG9ydAo+IGFmdGVyIGEgY29udGV4dCBzd2l0Y2guCj4KPiBIb3dldmVyLCBpbnRl
bF9yaW5nX2RpcmVjdGlvbigpIGlzIGxpbWl0ZWQgaW4gcHJlY2lzaW9uIHRvIG1vdmVtZW50cyBv
Zgo+IHVwdG8gaGFsZiB0aGUgcmluZyBzaXplLiBUaGUgY29uc2VxdWVuY2UgYmVpbmcgdGhhdCBp
ZiB3ZSB0cmllZCB0bwo+IHVud2luZCBtYW55IHJlcXVlc3RzLCB3ZSBjb3VsZCBleGNlZWQgaGFs
ZiB0aGUgcmluZyBhbmQgZmxpcCB0aGUgc2Vuc2UKPiBvZiB0aGUgZGlyZWN0aW9uLCBzbyBtaXNz
aW5nIGEgZm9yY2UgcmVzdG9yZS4gQXMgbm8gcmVxdWVzdCBjYW4gYmUKPiBncmVhdGVyIHRoYW4g
aGFsZiB0aGUgcmluZyAoaS5lLiAyMDQ4IGJ5dGVzIGluIHRoZSBzbWFsbGVzdCBjYXNlKSwgd2UK
PiBjYW4gY2hlY2sgZm9yIHJvbGxiYWNrIGluY3JlbWVudGFsbHkuIEFzIHdlIGNoZWNrIGFnYWlu
c3QgdGhlIHRhaWwgdGhhdAo+IHdvdWxkIGJlIHN1Ym1pdHRlZCwgd2UgZG8gbm90IGxvc2UgYW55
IHNlbnNpdGl2aXR5IGFuZCBhbGxvdyBsaXRlCj4gcmVzdG9yZXMgZm9yIHRoZSBzaW1wbGUgY2Fz
ZS4gV2Ugc3RpbGwgbmVlZCB0byBkb3VibGUgY2hlY2sgdXBvbgo+IHN1Ym1pdHRpbmcgdGhlIGNv
bnRleHQsIHRvIGFsbG93IGZvciBtdWx0aXBsZSBwcmVlbXB0aW9ucyBhbmQKPiByZXN1Ym1pc3Np
b25zLgo+Cj4gRml4ZXM6IDViYTMyYzdiZTgxZSAoImRybS9pOTE1L2V4ZWNsaXN0czogQWx3YXlz
IGZvcmNlIGEgY29udGV4dCByZWxvYWQgd2hlbiByZXdpbmRpbmcgUklOR19UQUlMIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IDxzdGFi
bGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjQrCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgfCAgMjEgKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nLmMgICAgICAgICAgfCAgIDQgKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9tb2NzLmMgICAgICAgfCAgMTggKystCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X3JpbmcuYyAgICAgICB8IDExMCArKysrKysrKysrKysrKysrKysK
PiAgLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X21vY2tfc2VsZnRlc3RzLmggIHwgICAxICsK
PiAgNiBmaWxlcyBjaGFuZ2VkLCAxNTQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jpbmcu
Ywo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9j
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBpbmRleCBl
NTE0MWE4OTc3ODYuLjBhMDUzMDFlMDBmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTY0Niw3ICs2NDYsNyBAQCBzdGF0aWMgaW50IGVuZ2lu
ZV9zZXR1cF9jb21tb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICBzdHJ1Y3Qg
bWVhc3VyZV9icmVhZGNydW1iIHsKPiAgCXN0cnVjdCBpOTE1X3JlcXVlc3QgcnE7Cj4gIAlzdHJ1
Y3QgaW50ZWxfcmluZyByaW5nOwo+IC0JdTMyIGNzWzEwMjRdOwo+ICsJdTMyIGNzWzIwNDhdOwo+
ICB9Owo+ICAKPiAgc3RhdGljIGludCBtZWFzdXJlX2JyZWFkY3J1bWJfZHcoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlKQo+IEBAIC02NjcsNiArNjY3LDggQEAgc3RhdGljIGludCBtZWFzdXJlX2Jy
ZWFkY3J1bWJfZHcoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICAKPiAgCWZyYW1lLT5yaW5n
LnZhZGRyID0gZnJhbWUtPmNzOwo+ICAJZnJhbWUtPnJpbmcuc2l6ZSA9IHNpemVvZihmcmFtZS0+
Y3MpOwo+ICsJZnJhbWUtPnJpbmcud3JhcCA9Cj4gKwkJQklUU19QRVJfVFlQRShmcmFtZS0+cmlu
Zy5zaXplKSAtIGlsb2cyKGZyYW1lLT5yaW5nLnNpemUpOwo+ICAJZnJhbWUtPnJpbmcuZWZmZWN0
aXZlX3NpemUgPSBmcmFtZS0+cmluZy5zaXplOwo+ICAJaW50ZWxfcmluZ191cGRhdGVfc3BhY2Uo
JmZyYW1lLT5yaW5nKTsKPiAgCWZyYW1lLT5ycS5yaW5nID0gJmZyYW1lLT5yaW5nOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggYTA1N2Y3YTJhNTIxLi41ZjMzMzQyYzE1
ZTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0xMTM3LDYgKzEx
MzcsMTMgQEAgX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCj4gIAkJCWxpc3RfbW92ZSgmcnEtPnNjaGVkLmxpbmssIHBsKTsKPiAgCQkJ
c2V0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfUFFVRVVFLCAmcnEtPmZlbmNlLmZsYWdzKTsKPiAgCj4g
KwkJCS8qIENoZWNrIGluIGNhc2Ugcm9sbGJhY2sgc28gZmFyLCB3ZSB3cmFwIFtzaXplLzJdICov
CgpUaGlzIGNvdWxkIGJlIGFtbWVuZGVkIGEgbGl0dGxlIGFzIHdoeSBpdCBpcyBub3QgYWx3YXlz
IHRoZSBjYXNlIHRoYXQKb24gdGhlIHJld2luZCB0aGUgZGlyZWN0aW9uIGlzIG5vdCBwb3NpdGl2
ZS4KCj4gKwkJCWlmIChpbnRlbF9yaW5nX2RpcmVjdGlvbihycS0+cmluZywKPiArCQkJCQkJIGlu
dGVsX3Jpbmdfd3JhcChycS0+cmluZywKPiArCQkJCQkJCQkgcnEtPnRhaWwpLAo+ICsJCQkJCQkg
cnEtPnJpbmctPnRhaWwpID4gMCkKPiArCQkJCXJxLT5jb250ZXh0LT5scmMuZGVzYyB8PSBDVFhf
REVTQ19GT1JDRV9SRVNUT1JFOwo+ICsKPiAgCQkJYWN0aXZlID0gcnE7Cj4gIAkJfSBlbHNlIHsK
PiAgCQkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqb3duZXIgPSBycS0+Y29udGV4dC0+ZW5naW5l
Owo+IEBAIC0xNTA1LDggKzE1MTIsOSBAQCBzdGF0aWMgdTY0IGV4ZWNsaXN0c191cGRhdGVfY29u
dGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgCSAqIEhXIGhhcyBhIHRlbmRlbmN5IHRv
IGlnbm9yZSB1cyByZXdpbmRpbmcgdGhlIFRBSUwgdG8gdGhlIGVuZCBvZgo+ICAJICogYW4gZWFy
bGllciByZXF1ZXN0Lgo+ICAJICovCj4gKwlHRU1fQlVHX09OKGNlLT5scmNfcmVnX3N0YXRlW0NU
WF9SSU5HX1RBSUxdICE9IHJxLT5yaW5nLT50YWlsKTsKPiArCXByZXYgPSBycS0+cmluZy0+dGFp
bDsKPiAgCXRhaWwgPSBpbnRlbF9yaW5nX3NldF90YWlsKHJxLT5yaW5nLCBycS0+dGFpbCk7Cj4g
LQlwcmV2ID0gY2UtPmxyY19yZWdfc3RhdGVbQ1RYX1JJTkdfVEFJTF07Cj4gIAlpZiAodW5saWtl
bHkoaW50ZWxfcmluZ19kaXJlY3Rpb24ocnEtPnJpbmcsIHRhaWwsIHByZXYpIDw9IDApKQo+ICAJ
CWRlc2MgfD0gQ1RYX0RFU0NfRk9SQ0VfUkVTVE9SRTsKPiAgCWNlLT5scmNfcmVnX3N0YXRlW0NU
WF9SSU5HX1RBSUxdID0gdGFpbDsKPiBAQCAtNDc1OCw2ICs0NzY2LDE0IEBAIHN0YXRpYyBpbnQg
Z2VuMTJfZW1pdF9mbHVzaChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIgbW9kZSkK
PiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBhc3NlcnRfcmVxdWVzdF92YWxp
ZChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiArewo+ICsJc3RydWN0IGludGVsX3JpbmcgKnJp
bmcgX19tYXliZV91bnVzZWQgPSBycS0+cmluZzsKPiArCj4gKwkvKiBDYW4gd2UgdW53aW5kIHRo
aXMgcmVxdWVzdCB3aXRob3V0IGFwcGVhcmluZyB0byBnbyBmb3J3YXJkcz8gKi8KPiArCUdFTV9C
VUdfT04oaW50ZWxfcmluZ19kaXJlY3Rpb24ocmluZywgcnEtPndhX3RhaWwsIHJxLT5oZWFkKSA8
PSAwKTsKCkNocmlzIGV4cGxhaW5lZCBpbiBpcmMgdGhhdCBhcyB0aGUgd2FfdGFpbCBpcyByZXNl
cnZlZCBmb3IgbmV4dApyZXN1Ym1pdCwgdGhlIG5vbmRpcmVjdGlvbiBpcyBhbHNvIHBvc3NpYmxl
LgoKPiArfQo+ICsKPiAgLyoKPiAgICogUmVzZXJ2ZSBzcGFjZSBmb3IgMiBOT09QcyBhdCB0aGUg
ZW5kIG9mIGVhY2ggcmVxdWVzdCB0byBiZQo+ICAgKiB1c2VkIGFzIGEgd29ya2Fyb3VuZCBmb3Ig
bm90IGJlaW5nIGFsbG93ZWQgdG8gZG8gbGl0ZQo+IEBAIC00NzcwLDYgKzQ3ODYsOSBAQCBzdGF0
aWMgdTMyICpnZW44X2VtaXRfd2FfdGFpbChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1
MzIgKmNzKQo+ICAJKmNzKysgPSBNSV9OT09QOwo+ICAJcmVxdWVzdC0+d2FfdGFpbCA9IGludGVs
X3Jpbmdfb2Zmc2V0KHJlcXVlc3QsIGNzKTsKPiAgCj4gKwkvKiBDaGVjayB0aGF0IGVudGlyZSBy
ZXF1ZXN0IGlzIGxlc3MgdGhhbiBoYWxmIHRoZSByaW5nICovCj4gKwlhc3NlcnRfcmVxdWVzdF92
YWxpZChyZXF1ZXN0KTsKCkkgd2FzIHRoaW5raW5nIGFib3V0IGFkZGluZyB0aGUgY2hlY2sgaW4g
dGhlIGFkdmFuY2UgcGFydCBidXQKdGhhdCBpcyB0b28gZWFybHkuIEFuZCBhbHNvIHRoZSB0YWls
IHZhbGlkYXRpb24gaXMgdG9vIGVhcmx5LgoKVGhpcyBpcyBzbyB0cmlja3kgd2l0aCB0aGUgd3Jh
cCBoYW5kbGluZy4gQnV0IGl0IGlzIGVhc2llciB0bwpzdGFuZCBiZWhpbmQgdGhlIGJyb2FkIHNo
b3VsZGVycyBvZiB0aGUgcmVhbGx5IGFwcHJlY2lhdGVkCnNlbGZ0ZXN0cy4KClJldmlld2VkLWJ5
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gKwo+ICAJ
cmV0dXJuIGNzOwo+ICB9Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMKPiBp
bmRleCA4Y2RhMWI3ZTE3YmEuLmJkYjMyNDE2N2VmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nLmMKPiBAQCAtMzE1LDMgKzMxNSw3IEBAIGludCBpbnRlbF9yaW5nX2NhY2hl
bGluZV9hbGlnbihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgCUdFTV9CVUdfT04ocnEtPnJp
bmctPmVtaXQgJiAoQ0FDSEVMSU5FX0JZVEVTIC0gMSkpOwo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAr
Cj4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKPiArI2luY2x1ZGUg
InNlbGZ0ZXN0X3JpbmcuYyIKPiArI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X21vY3MuYwo+IGluZGV4IDdiYWU2NDAxOGFkOS4uYjI1ZWJhNTBjODhlIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYwo+IEBAIC0xOCw2ICsxOCwyMCBAQCBz
dHJ1Y3QgbGl2ZV9tb2NzIHsKPiAgCXZvaWQgKnZhZGRyOwo+ICB9Owo+ICAKPiArc3RhdGljIHN0
cnVjdCBpbnRlbF9jb250ZXh0ICptb2NzX2NvbnRleHRfY3JlYXRlKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKPiArewo+ICsJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwo+ICsKPiAr
CWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZW5naW5lKTsKPiArCWlmIChJU19FUlIoY2UpKQo+
ICsJCXJldHVybiBjZTsKPiArCj4gKwkvKiBXZSBidWlsZCBsYXJnZSByZXF1ZXN0cyB0byByZWFk
IHRoZSByZWdpc3RlcnMgZnJvbSB0aGUgcmluZyAqLwo+ICsJY2UtPnJpbmcgPSBfX2ludGVsX2Nv
bnRleHRfcmluZ19zaXplKFNaXzE2Syk7Cj4gKwo+ICsJcmV0dXJuIGNlOwo+ICt9Cj4gKwo+ICBz
dGF0aWMgaW50IHJlcXVlc3RfYWRkX3N5bmMoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIGludCBl
cnIpCj4gIHsKPiAgCWk5MTVfcmVxdWVzdF9nZXQocnEpOwo+IEBAIC0zMDEsNyArMzE1LDcgQEAg
c3RhdGljIGludCBsaXZlX21vY3NfY2xlYW4odm9pZCAqYXJnKQo+ICAJZm9yX2VhY2hfZW5naW5l
KGVuZ2luZSwgZ3QsIGlkKSB7Cj4gIAkJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwo+ICAKPiAt
CQljZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGVuZ2luZSk7Cj4gKwkJY2UgPSBtb2NzX2NvbnRl
eHRfY3JlYXRlKGVuZ2luZSk7Cj4gIAkJaWYgKElTX0VSUihjZSkpIHsKPiAgCQkJZXJyID0gUFRS
X0VSUihjZSk7Cj4gIAkJCWJyZWFrOwo+IEBAIC0zOTUsNyArNDA5LDcgQEAgc3RhdGljIGludCBs
aXZlX21vY3NfcmVzZXQodm9pZCAqYXJnKQo+ICAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3Qs
IGlkKSB7Cj4gIAkJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwo+ICAKPiAtCQljZSA9IGludGVs
X2NvbnRleHRfY3JlYXRlKGVuZ2luZSk7Cj4gKwkJY2UgPSBtb2NzX2NvbnRleHRfY3JlYXRlKGVu
Z2luZSk7Cj4gIAkJaWYgKElTX0VSUihjZSkpIHsKPiAgCQkJZXJyID0gUFRSX0VSUihjZSk7Cj4g
IAkJCWJyZWFrOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9yaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yaW5nLmMKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMmE4YzUzNGRjMTI1Cj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jpbmcu
Ywo+IEBAIC0wLDAgKzEsMTEwIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wCj4gKy8qCj4gKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCj4gKyAq
Lwo+ICsKPiArc3RhdGljIHN0cnVjdCBpbnRlbF9yaW5nICptb2NrX3JpbmcodW5zaWduZWQgbG9u
ZyBzeikKPiArewo+ICsJc3RydWN0IGludGVsX3JpbmcgKnJpbmc7Cj4gKwo+ICsJcmluZyA9IGt6
YWxsb2Moc2l6ZW9mKCpyaW5nKSArIHN6LCBHRlBfS0VSTkVMKTsKPiArCWlmICghcmluZykKPiAr
CQlyZXR1cm4gTlVMTDsKPiArCj4gKwlrcmVmX2luaXQoJnJpbmctPnJlZik7Cj4gKwlyaW5nLT5z
aXplID0gc3o7Cj4gKwlyaW5nLT53cmFwID0gQklUU19QRVJfVFlQRShyaW5nLT5zaXplKSAtIGls
b2cyKHN6KTsKPiArCXJpbmctPmVmZmVjdGl2ZV9zaXplID0gc3o7Cj4gKwlyaW5nLT52YWRkciA9
ICh2b2lkICopKHJpbmcgKyAxKTsKPiArCWF0b21pY19zZXQoJnJpbmctPnBpbl9jb3VudCwgMSk7
Cj4gKwo+ICsJaW50ZWxfcmluZ191cGRhdGVfc3BhY2UocmluZyk7Cj4gKwo+ICsJcmV0dXJuIHJp
bmc7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIG1vY2tfcmluZ19mcmVlKHN0cnVjdCBpbnRlbF9y
aW5nICpyaW5nKQo+ICt7Cj4gKwlrZnJlZShyaW5nKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBj
aGVja19yaW5nX2RpcmVjdGlvbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZywKPiArCQkJCXUzMiBu
ZXh0LCB1MzIgcHJldiwKPiArCQkJCWludCBleHBlY3RlZCkKPiArewo+ICsJaW50IHJlc3VsdDsK
PiArCj4gKwlyZXN1bHQgPSBpbnRlbF9yaW5nX2RpcmVjdGlvbihyaW5nLCBuZXh0LCBwcmV2KTsK
PiArCWlmIChyZXN1bHQgPCAwKQo+ICsJCXJlc3VsdCA9IC0xOwo+ICsJZWxzZSBpZiAocmVzdWx0
ID4gMCkKPiArCQlyZXN1bHQgPSAxOwo+ICsKPiArCWlmIChyZXN1bHQgIT0gZXhwZWN0ZWQpIHsK
PiArCQlwcl9lcnIoImludGVsX3JpbmdfZGlyZWN0aW9uKCV1LCAldSk6JWQgIT0gJWRcbiIsCj4g
KwkJICAgICAgIG5leHQsIHByZXYsIHJlc3VsdCwgZXhwZWN0ZWQpOwo+ICsJCXJldHVybiAtRUlO
VkFMOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGNoZWNr
X3Jpbmdfc3RlcChzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZywgdTMyIHgsIHUzMiBzdGVwKQo+ICt7
Cj4gKwl1MzIgcHJldiA9IHgsIG5leHQgPSBpbnRlbF9yaW5nX3dyYXAocmluZywgeCArIHN0ZXAp
Owo+ICsJaW50IGVyciA9IDA7Cj4gKwo+ICsJZXJyIHw9IGNoZWNrX3JpbmdfZGlyZWN0aW9uKHJp
bmcsIG5leHQsIG5leHQsICAwKTsKPiArCWVyciB8PSBjaGVja19yaW5nX2RpcmVjdGlvbihyaW5n
LCBwcmV2LCBwcmV2LCAgMCk7Cj4gKwllcnIgfD0gY2hlY2tfcmluZ19kaXJlY3Rpb24ocmluZywg
bmV4dCwgcHJldiwgIDEpOwo+ICsJZXJyIHw9IGNoZWNrX3JpbmdfZGlyZWN0aW9uKHJpbmcsIHBy
ZXYsIG5leHQsIC0xKTsKPiArCj4gKwlyZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50
IGNoZWNrX3Jpbmdfb2Zmc2V0KHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCB1MzIgeCwgdTMyIHN0
ZXApCj4gK3sKPiArCWludCBlcnIgPSAwOwo+ICsKPiArCWVyciB8PSBjaGVja19yaW5nX3N0ZXAo
cmluZywgeCwgc3RlcCk7Cj4gKwllcnIgfD0gY2hlY2tfcmluZ19zdGVwKHJpbmcsIGludGVsX3Jp
bmdfd3JhcChyaW5nLCB4ICsgMSksIHN0ZXApOwo+ICsJZXJyIHw9IGNoZWNrX3Jpbmdfc3RlcChy
aW5nLCBpbnRlbF9yaW5nX3dyYXAocmluZywgeCAtIDEpLCBzdGVwKTsKPiArCj4gKwlyZXR1cm4g
ZXJyOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGlndF9yaW5nX2RpcmVjdGlvbih2b2lkICpkdW1t
eSkKPiArewo+ICsJc3RydWN0IGludGVsX3JpbmcgKnJpbmc7Cj4gKwl1bnNpZ25lZCBpbnQgaGFs
ZiA9IDIwNDg7Cj4gKwlpbnQgc3RlcCwgZXJyID0gMDsKPiArCj4gKwlyaW5nID0gbW9ja19yaW5n
KDIgKiBoYWxmKTsKPiArCWlmICghcmluZykKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwlH
RU1fQlVHX09OKHJpbmctPnNpemUgIT0gMiAqIGhhbGYpOwo+ICsKPiArCS8qIFByZWNpc2lvbiBv
ZiB3cmFwIGRldGVjdGlvbiBpcyBsaW1pdGVkIHRvIHJpbmctPnNpemUgLyAyICovCj4gKwlmb3Ig
KHN0ZXAgPSAxOyBzdGVwIDwgaGFsZjsgc3RlcCA8PD0gMSkgewo+ICsJCWVyciB8PSBjaGVja19y
aW5nX29mZnNldChyaW5nLCAwLCBzdGVwKTsKPiArCQllcnIgfD0gY2hlY2tfcmluZ19vZmZzZXQo
cmluZywgaGFsZiwgc3RlcCk7Cj4gKwl9Cj4gKwllcnIgfD0gY2hlY2tfcmluZ19zdGVwKHJpbmcs
IDAsIGhhbGYgLSA2NCk7Cj4gKwo+ICsJLyogQW5kIGNoZWNrIHVud3JhcHBlZCBoYW5kbGluZyBm
b3IgZ29vZCBtZWFzdXJlICovCj4gKwllcnIgfD0gY2hlY2tfcmluZ19vZmZzZXQocmluZywgMCwg
MiAqIGhhbGYgKyA2NCk7Cj4gKwllcnIgfD0gY2hlY2tfcmluZ19vZmZzZXQocmluZywgMyAqIGhh
bGYsIDEpOwo+ICsKPiArCW1vY2tfcmluZ19mcmVlKHJpbmcpOwo+ICsJcmV0dXJuIGVycjsKPiAr
fQo+ICsKPiAraW50IGludGVsX3JpbmdfbW9ja19zZWxmdGVzdHModm9pZCkKPiArewo+ICsJc3Rh
dGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKPiArCQlTVUJURVNUKGln
dF9yaW5nX2RpcmVjdGlvbiksCj4gKwl9Owo+ICsKPiArCXJldHVybiBpOTE1X3N1YnRlc3RzKHRl
c3RzLCBOVUxMKTsKPiArfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9tb2NrX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfbW9ja19zZWxmdGVzdHMuaAo+IGluZGV4IDE5MjlmZWJhNGU4ZS4uM2RiMzRkM2Vl
YTU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X21v
Y2tfc2VsZnRlc3RzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9tb2NrX3NlbGZ0ZXN0cy5oCj4gQEAgLTIxLDYgKzIxLDcgQEAgc2VsZnRlc3QoZmVuY2UsIGk5
MTVfc3dfZmVuY2VfbW9ja19zZWxmdGVzdHMpCj4gIHNlbGZ0ZXN0KHNjYXR0ZXJsaXN0LCBzY2F0
dGVybGlzdF9tb2NrX3NlbGZ0ZXN0cykKPiAgc2VsZnRlc3Qoc3luY21hcCwgaTkxNV9zeW5jbWFw
X21vY2tfc2VsZnRlc3RzKQo+ICBzZWxmdGVzdCh1bmNvcmUsIGludGVsX3VuY29yZV9tb2NrX3Nl
bGZ0ZXN0cykKPiArc2VsZnRlc3QocmluZywgaW50ZWxfcmluZ19tb2NrX3NlbGZ0ZXN0cykKPiAg
c2VsZnRlc3QoZW5naW5lLCBpbnRlbF9lbmdpbmVfY3NfbW9ja19zZWxmdGVzdHMpCj4gIHNlbGZ0
ZXN0KHRpbWVsaW5lcywgaW50ZWxfdGltZWxpbmVfbW9ja19zZWxmdGVzdHMpCj4gIHNlbGZ0ZXN0
KHJlcXVlc3RzLCBpOTE1X3JlcXVlc3RfbW9ja19zZWxmdGVzdHMpCj4gLS0gCj4gMi4yMC4xCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
