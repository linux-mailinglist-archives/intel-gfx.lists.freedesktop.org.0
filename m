Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1063FBD4E9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 00:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CDD6EB01;
	Tue, 24 Sep 2019 22:28:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9AE6EB01
 for <Intel-GFX@lists.freedesktop.org>; Tue, 24 Sep 2019 22:28:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 15:28:28 -0700
X-IronPort-AV: E=Sophos;i="5.64,545,1559545200"; d="scan'208";a="201049232"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Sep 2019 15:28:28 -0700
Date: Tue, 24 Sep 2019 15:28:58 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190924222858.GE4022@intel.com>
References: <20190923235152.35979-1-John.C.Harrison@Intel.com>
 <20190923235152.35979-2-John.C.Harrison@Intel.com>
 <e07fb7d8-0d8f-de96-6a2c-2536e6273f5d@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e07fb7d8-0d8f-de96-6a2c-2536e6273f5d@linux.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Engine relative MMIO
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
Cc: Intel-GFX@lists.freedesktop.org, Chris P Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgMDk6NDU6MDJBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gCj4gT24gMjQvMDkvMjAxOSAwMDo1MSwgSm9obi5DLkhhcnJpc29uQEludGVsLmNv
bSB3cm90ZToKPiA+IEZyb206IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5j
b20+Cj4gPiAKPiA+IFdpdGggdmlydHVhbCBlbmdpbmVzLCBpdCBpcyBubyBsb25nZXIgcG9zc2li
bGUgdG8ga25vdyB3aGljaCBzcGVjaWZpYwo+ID4gcGh5c2ljYWwgZW5naW5lIGEgZ2l2ZW4gcmVx
dWVzdCB3aWxsIGJlIGV4ZWN1dGVkIG9uIGF0IHRoZSB0aW1lIHRoYXQKPiA+IHJlcXVlc3QgaXMg
Z2VuZXJhdGVkLiBUaGlzIG1lYW5zIHRoYXQgdGhlIHJlcXVlc3QgaXRzZWxmIG11c3QgYmUgZW5n
aW5lCj4gPiBhZ25vc3RpYyAtIGFueSBkaXJlY3QgcmVnaXN0ZXIgd3JpdGVzIG11c3QgYmUgcmVs
YXRpdmUgdG8gdGhlIGVuZ2luZQo+ID4gYW5kIG5vdCBhYnNvbHV0ZSBhZGRyZXNzZXMuCj4gPiAK
PiA+IFRoZSBMUkkgY29tbWFuZCBoYXMgc3VwcG9ydCBmb3IgZW5naW5lIHJlbGF0aXZlIGFkZHJl
c3NpbmcuIEhvd2V2ZXIsCj4gPiB0aGUgbWVjaGFuaXNtIGlzIG5vdCB0cmFuc3BhcmVudCB0byB0
aGUgZHJpdmVyLiBUaGUgc2NoZW1lIGZvciBHZW4xMQo+ID4gKE1JX0xSSV9BRERfQ1NfTU1JT19T
VEFSVCkgcmVxdWlyZXMgdGhlIExSSSBhZGRyZXNzIHRvIGhhdmUgbm8KPiA+IGFic29sdXRlIGVu
Z2luZSBiYXNlIGNvbXBvbmVudC4gVGhlIGhhcmR3YXJlIHRoZW4gYWRkcyBvbiB0aGUgY29ycmVj
dAo+ID4gZW5naW5lIG9mZnNldCBhdCBleGVjdXRpb24gdGltZS4KPiA+IAo+ID4gRHVlIHRvIHRo
ZSBub24tdHJpdmlhbCBhbmQgZGlmZmVyaW5nIHNjaGVtZXMgb24gZGlmZmVyZW50IGhhcmR3YXJl
LCBpdAo+ID4gaXMgbm90IHBvc3NpYmxlIHRvIHNpbXBseSB1cGRhdGUgdGhlIGNvZGUgdGhhdCBj
cmVhdGVzIHRoZSBMUkkKPiA+IGNvbW1hbmRzIHRvIHNldCBhIHJlbWFwIGZsYWcgYW5kIGxldCB0
aGUgaGFyZHdhcmUgZ2V0IG9uIHdpdGggaXQuCj4gPiBJbnN0ZWFkLCB0aGlzIHBhdGNoIGFkZHMg
ZnVuY3Rpb24gd3JhcHBlcnMgZm9yIGdlbmVyYXRpbmcgdGhlIExSSQo+ID4gY29tbWFuZCBpdHNl
bGYgYW5kIHRoZW4gZm9yIGNvbnN0cnVjdGluZyB0aGUgY29ycmVjdCBhZGRyZXNzIHRvIHVzZQo+
ID4gd2l0aCB0aGUgTFJJLgo+ID4gCj4gPiB2MjogRml4IGJ1aWxkIGJyZWFrIGluIEdWVC4gUmVt
b3ZlIGZsYWdzIHBhcmFtZXRlciBbcmV2aWV3IGZlZWRiYWNrCj4gPiBmcm9tIENocmlzIFddLgo+
ID4gCj4gPiB2MzogRml4IGJ1aWxkIGJyZWFrIGluIHNlbGZ0ZXN0LiBSZWJhc2UgdG8gbmV3ZXIg
YmFzZSB0cmVlIGFuZCBmaXgKPiA+IG1lcmdlIGNvbmZsaWN0Lgo+ID4gCj4gPiB2NDogTW9yZSBy
ZWJhc2luZy4gUm1vdmVkIHJlbGF0aXZlIGFkZHJlc3Npbmcgc3VwcG9ydCBmcm9tIEdlbjctOSBv
bmx5Cj4gPiBjb2RlIHBhdGhzIFtyZXZpZXcgZmVlZGJhY2sgZnJvbSBDaHJpcyBXXS4KPiA+IAo+
ID4gdjU6IE1vcmUgcmViYXNpbmcgKG5ldyAnZ3QnIGRpcmVjdG9yeSkuIEZpeCB3aGl0ZSBzcGFj
ZSBpc3N1ZS4gVXNlCj4gPiBDT1BZIGNsYXNzIHJhdGhlciB0aGFuIEJDUzAgaWQgZm9yIGNoZWNr
aW5nIGFnYWluc3QgQkNTIGVuZ2luZS4KPiA+IAo+ID4gdjY6IENoYW5nZSB0byBNSV9MUkkgZm9y
IGdlbmVyaWMgY29kZSBhbmQgX19NSV9MUkkgZm9yIGxlZ2FjeSBjb2RlLgo+ID4gTUlfTFJJIGlz
IG5vdyBhIG1hY3JvIHdyYXBwZXIgYXJvdW5kIGFuIGVuZ2luZSBmdW5jdGlvbiBwb2ludGVyIHRv
Cj4gPiByZWR1Y2UgcnVudGltZSBjaGVja3Mgb24gTFJJIHJlbGF0aXZlIHN1cHBvcnQuIFtyZXZp
ZXcgZmVlZGJhY2sgZnJvbQo+ID4gVHZydGtvXQo+ID4gCj4gPiB2NzogUmVwbGFjZSBlbmdpbmUg
ZnVuY3Rpb24gcG9pbnRlciB3aXRoIGEgcGVyIGVuZ2luZSBmbGFncyBmaWVsZCB0aGF0Cj4gPiBp
cyBhZGRlZCBieSBhIGNvbW1vbiBmdW5jdGlvbi4gW0RhbmllbGVdCj4gPiAKPiA+IHY4OiBSZS13
cml0ZSBvbiB0b3Agb2YgcGF0Y2ggc2VyaWVzIGJ5IE1pa2EuCj4gPiAKPiA+IHY5OiBGaXggd29y
a2Fyb3VuZCBJR1QgZmFpbHVyZS4gTm90IHN1cmUgd2h5IGJ1dCBteSBsb2NhbCB0ZXN0IHJ1bnMK
PiA+IHdlcmUgcGFzc2luZyBieSBjbGFpbWluZyBubyB3b3JrYXJvdW5kcyB3aGVyZWFzIHRoZSBw
cmUtY29tbWl0IGNoZWNrCj4gPiBmYWlsZWQuIEFzIGFsbCB0aGUgd29ya2Fyb3VuZCByZWdpc3Rl
cnMgYXJlIGN1cnJlbnRseSBlbmdpbmUKPiA+IGluZGVwZW5kZW50LCBpdCBpcyBzYWZlIHRvIHNp
bXBseSBub3QgYWRkIHRoZSBlbmdpbmUgcmVsYXRpdmUgZmxhZwo+ID4gKHdoaWNoIGlzIHdoYXQg
dGhlIHNlbGZ0ZXN0IHdhcyBleHBlY3RpbmcpLgo+ID4gCj4gPiBCc3BlYzogNDU2MDYKPiA+IFNp
Z25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4g
PiBDQzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gQ0M6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiBDQzogQ2hyaXMgUCBXaWxz
b24gPGNocmlzLnAud2lsc29uQGludGVsLmNvbT4KPiA+IENDOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgIHwgIDcgKystLQo+ID4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8IDI0ICsrKysrKysr
KysrKwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8
ICAzICsrCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
IHwgIDcgKysrLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAg
ICAgICB8IDQwICsrKysrKysrKystLS0tLS0tLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX21vY3MuYyAgICAgICAgIHwgIDYgKy0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyAgIHwgMTIgKysrLS0tCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgIHwgIDggKysrLQo+ID4gICA4IGZpbGVz
IGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+IGluZGV4IDRhMzRj
NGY2MjA2NS4uYzhkNzA3NWE0ODFkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+ID4gQEAgLTk4MCw3ICs5ODAsNyBAQCBzdGF0aWMgaW50
IGVtaXRfcHBndHRfdXBkYXRlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQo+
ID4gICB7Cj4gPiAgIAlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9IHJxLT5od19jb250
ZXh0LT52bTsKPiA+ICAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IHJxLT5lbmdp
bmU7Cj4gPiAtCXUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7Cj4gPiArCXUzMiBiYXNlID0g
ZW5naW5lLT5scmlfbW1pb19iYXNlOwo+ID4gICAJdTMyICpjczsKPiA+ICAgCWludCBpOwo+ID4g
QEAgLTk5Miw3ICs5OTIsNyBAQCBzdGF0aWMgaW50IGVtaXRfcHBndHRfdXBkYXRlKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQo+ID4gICAJCWlmIChJU19FUlIoY3MpKQo+ID4g
ICAJCQlyZXR1cm4gUFRSX0VSUihjcyk7Cj4gPiAtCQkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJf
SU1NKDIpOwo+ID4gKwkJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgyKSB8IGVuZ2luZS0+
bHJpX2NtZF9tb2RlOwo+IAo+IEkgbWlzc2VkIHRoZSBwYXJ0IHdoZXJlIHdlIGVuZGVkIHVwIHdp
dGggdGhpcyBuZXcgZmxhdm91ciBhbmQgSSBjYW4ndCBzYXkgSQo+IGFtIGEgZmFuLgo+IAo+IFdo
YXQncyB0aGUgcG9pbnQgaW4gaGF2aW5nIHRvIHJlbWVtYmVyIHRvIG9yLWluIHRoZSBmbGFncyBh
dCBzbyBtYW55IGNhbGwKPiBzaXRlcz8gQXJlIHlvdSBub3cgdG91Y2hpbmcgYWxsIG1pX2xyaSwg
b3IgbW9zdCwgb3IgaG93IG1hbnk/IElmIGFsbCBvciBtb3N0Cj4gdGhlbiB3aHkgbm90IE1JX0xP
QURfUkVHSVNURVJfSU1NKGVuZ2luZSwgMik/IElmIG5vdCBtb3N0IHRoZW4gdGhlIHNhbWUgd2l0
aAo+IF9SRUwgc3VmZml4IGFzIGRpc2N1c3NlZCBiZWZvcmUgYW5kIGxlYXZlIHRoZSBsZWdhY3kg
dW50b3VjaGVkLgoKWWVhcCwgSSBhbHNvIGJlbGlldmUgdGhhdCBpdCBpcyBiZXR0ZXIgdG8gbm90
IHRvdWNoIGxlZ2FjeSBhbmQgY3JlYXRlIHRoZQpuZXcgb25lIG9ubHkgd2l0aCBuZXcgY2FzZXMu
IFRoZSByZWFsIGNoYW5nZSBnZXRzIG11Y2ggY2xlYXIuCgo+IAo+IERvbid0IGtub3cgcmVhbGx5
IG9uIGFsbCB0aGUgZGV0YWlscyBzaW5jZSBJIGxvc3QgdHJhY2ssIGJ1dCB0aGUgY3VycmVudAo+
IG9wdGlvbiBsZWF2ZXMgbWUgY29uY2VybmVkLgo+IAo+IFJlZ2FyZHMsCj4gCj4gVHZydGtvCj4g
Cj4gPiAgIAkJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChHRU44X1JJTkdfUERQX1VEVyhi
YXNlLCAwKSk7Cj4gPiAgIAkJKmNzKysgPSB1cHBlcl8zMl9iaXRzKHBkX2RhZGRyKTsKPiA+IEBA
IC0xMDE0LDcgKzEwMTQsOCBAQCBzdGF0aWMgaW50IGVtaXRfcHBndHRfdXBkYXRlKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCB2b2lkICpkYXRhKQo+ID4gICAJCWlmIChJU19FUlIoY3MpKQo+ID4g
ICAJCQlyZXR1cm4gUFRSX0VSUihjcyk7Cj4gPiAtCQkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJf
SU1NKDIgKiBHRU44XzNMVkxfUERQRVMpIHwgTUlfTFJJX0ZPUkNFX1BPU1RFRDsKPiA+ICsJCSpj
cysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMiAqIEdFTjhfM0xWTF9QRFBFUykgfAo+ID4gKwkJ
CU1JX0xSSV9GT1JDRV9QT1NURUQgfCBlbmdpbmUtPmxyaV9jbWRfbW9kZTsKPiA+ICAgCQlmb3Ig
KGkgPSBHRU44XzNMVkxfUERQRVM7IGktLTsgKSB7Cj4gPiAgIAkJCWNvbnN0IGRtYV9hZGRyX3Qg
cGRfZGFkZHIgPSBpOTE1X3BhZ2VfZGlyX2RtYV9hZGRyKHBwZ3R0LCBpKTsKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gPiBpbmRleCBmNDUxZDUwNzZiZGUu
LjVhYTU4ZTA2OTgwNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYwo+ID4gQEAgLTIzNiw2ICsyMzYsMjggQEAgc3RhdGljIHUzMiBfX2VuZ2luZV9t
bWlvX2Jhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gPiAgIAlyZXR1cm4gYmFz
ZXNbaV0uYmFzZTsKPiA+ICAgfQo+ID4gK3N0YXRpYyBib29sIGk5MTVfZW5naW5lX2hhc19yZWxh
dGl2ZV9scmkoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gK3sKPiA+
ICsJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpIDwgMTEpCj4gPiArCQlyZXR1cm4gZmFsc2U7
Cj4gPiArCj4gPiArCWlmIChlbmdpbmUtPmNsYXNzID09IENPUFlfRU5HSU5FX0NMQVNTKQo+ID4g
KwkJcmV0dXJuIGZhbHNlOwo+ID4gKwo+ID4gKwlyZXR1cm4gdHJ1ZTsKPiA+ICt9Cj4gPiArCj4g
PiArc3RhdGljIHZvaWQgbHJpX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+
ID4gK3sKPiA+ICsJaWYgKGk5MTVfZW5naW5lX2hhc19yZWxhdGl2ZV9scmkoZW5naW5lKSkgewo+
ID4gKwkJZW5naW5lLT5scmlfY21kX21vZGUgPSBNSV9MUklfQUREX0NTX01NSU9fU1RBUlRfR0VO
MTE7Cj4gPiArCQllbmdpbmUtPmxyaV9tbWlvX2Jhc2UgPSAwOwo+ID4gKwl9IGVsc2Ugewo+ID4g
KwkJZW5naW5lLT5scmlfY21kX21vZGUgPSAwOwo+ID4gKwkJZW5naW5lLT5scmlfbW1pb19iYXNl
ID0gZW5naW5lLT5tbWlvX2Jhc2U7Cj4gPiArCX0KPiA+ICt9Cj4gPiArCj4gPiAgIHN0YXRpYyB2
b2lkIF9fc3ByaW50X2VuZ2luZV9uYW1lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
PiA+ICAgewo+ID4gICAJLyoKPiA+IEBAIC0zMjAsNiArMzQyLDggQEAgc3RhdGljIGludCBpbnRl
bF9lbmdpbmVfc2V0dXAoc3RydWN0IGludGVsX2d0ICpndCwgZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQpCj4gPiAgIAkvKiBOb3RoaW5nIHRvIGRvIGhlcmUsIGV4ZWN1dGUgaW4gb3JkZXIgb2YgZGVw
ZW5kZW5jaWVzICovCj4gPiAgIAllbmdpbmUtPnNjaGVkdWxlID0gTlVMTDsKPiA+ICsJbHJpX2lu
aXQoZW5naW5lKTsKPiA+ICsKPiA+ICAgCXNlcWxvY2tfaW5pdCgmZW5naW5lLT5zdGF0cy5sb2Nr
KTsKPiA+ICAgCUFUT01JQ19JTklUX05PVElGSUVSX0hFQUQoJmVuZ2luZS0+Y29udGV4dF9zdGF0
dXNfbm90aWZpZXIpOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3R5cGVzLmgKPiA+IGluZGV4IDk0M2YwNjYzODM3ZS4uMzhmNDg2ZjdmN2UzIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPiBAQCAt
MzA2LDYgKzMwNiw5IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mgewo+ID4gICAJdTMyIGNvbnRl
eHRfc2l6ZTsKPiA+ICAgCXUzMiBtbWlvX2Jhc2U7Cj4gPiArCXUzMiBscmlfbW1pb19iYXNlOwo+
ID4gKwl1MzIgbHJpX2NtZF9tb2RlOwo+ID4gKwo+ID4gICAJdTMyIHVhYmlfY2FwYWJpbGl0aWVz
Owo+ID4gICAJc3RydWN0IHJiX25vZGUgdWFiaV9ub2RlOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKPiA+IGluZGV4IGY3OGIxM2Q3NGUxNy4uYmZi
NTFkOGQ3Y2UyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3B1X2NvbW1hbmRzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dw
dV9jb21tYW5kcy5oCj4gPiBAQCAtMTMzLDExICsxMzMsMTYgQEAKPiA+ICAgICogICBzaW1wbHkg
aWdub3JlcyB0aGUgcmVnaXN0ZXIgbG9hZCB1bmRlciBjZXJ0YWluIGNvbmRpdGlvbnMuCj4gPiAg
ICAqIC0gT25lIGNhbiBhY3R1YWxseSBsb2FkIGFyYml0cmFyeSBtYW55IGFyYml0cmFyeSByZWdp
c3RlcnM6IFNpbXBseSBpc3N1ZSB4Cj4gPiAgICAqICAgYWRkcmVzcy92YWx1ZSBwYWlycy4gRG9u
J3Qgb3ZlcmR1ZSBpdCwgdGhvdWdoLCB4IDw9IDJeNCBtdXN0IGhvbGQhCj4gPiArICogLSBOZXdl
ciBoYXJkd2FyZSBzdXBwb3J0cyBlbmdpbmUgcmVsYXRpdmUgYWRkcmVzc2luZyBidXQgb2xkZXIg
aGFyZHdhcmUgZG9lcwo+ID4gKyAqICAgbm90LiBUaGlzIGlzIHJlcXVpcmVkIGZvciBodyBlbmdp
bmUgbG9hZCBiYWxhbmNpbmcuIEhlbmNlIHRoZSBNSV9MUkkKPiA+ICsgKiAgIGluc3RydWN0aW9u
IGl0c2VsZiBpcyBwcmVmaXhlZCB3aXRoICdfXycgYW5kIHNob3VsZCBvbmx5IGJlIHVzZWQgb24K
PiA+ICsgKiAgIGxlZ2FjeSBoYXJkd2FyZSBjb2RlIHBhdGhzLiBHZW5lcmljIGNvZGUgbXVzdCBh
bHdheXMgdXNlIHRoZSBNSV9MUkkKPiA+ICsgKiAgIGFuZCBpOTE1X2dldF9scmlfcmVnKCkgaGVs
cGVyIGZ1bmN0aW9ucyBpbnN0ZWFkLgo+ID4gICAgKi8KPiA+ICAgI2RlZmluZSBNSV9MT0FEX1JF
R0lTVEVSX0lNTSh4KQlNSV9JTlNUUigweDIyLCAyKih4KS0xKQo+ID4gICAvKiBHZW4xMSsuIGFk
ZHIgPSBiYXNlICsgKGN0eF9yZXN0b3JlID8gb2Zmc2V0ICYgR0VOTUFTSygxMiwyKSA6IG9mZnNl
dCkgKi8KPiA+IC0jZGVmaW5lICAgTUlfTFJJX0NTX01NSU8JCSgxPDwxOSkKPiA+ICAgI2RlZmlu
ZSAgIE1JX0xSSV9GT1JDRV9QT1NURUQJCSgxPDwxMikKPiA+ICsjZGVmaW5lICAgTUlfTFJJX0FE
RF9DU19NTUlPX1NUQVJUX0dFTjExCUJJVCgxOSkKPiA+ICAgI2RlZmluZSBNSV9TVE9SRV9SRUdJ
U1RFUl9NRU0gICAgICAgIE1JX0lOU1RSKDB4MjQsIDEpCj4gPiAgICNkZWZpbmUgTUlfU1RPUkVf
UkVHSVNURVJfTUVNX0dFTjggICBNSV9JTlNUUigweDI0LCAyKQo+ID4gICAjZGVmaW5lICAgTUlf
U1JNX0xSTV9HTE9CQUxfR1RUCQkoMTw8MjIpCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+ID4gaW5kZXggNmNmZGMwZjlmMmI5Li43Y2Q1OWQyOWM0ZTQgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0yMDEwLDExICsyMDEwLDEyIEBAIHN0
cnVjdCBscmkgewo+ID4gICAJdTMyIHZhbHVlOwo+ID4gICB9Owo+ID4gLXN0YXRpYyB1MzIgKmVt
aXRfbHJpKHUzMiAqYmF0Y2gsIGNvbnN0IHN0cnVjdCBscmkgKmxyaSwgdW5zaWduZWQgaW50IGNv
dW50KQo+ID4gK3N0YXRpYyB1MzIgKmVtaXRfbHJpKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwgdTMyICpiYXRjaCwKPiA+ICsJCSAgICAgY29uc3Qgc3RydWN0IGxyaSAqbHJpLCB1bnNp
Z25lZCBpbnQgY291bnQpCj4gPiAgIHsKPiA+ICAgCUdFTV9CVUdfT04oIWNvdW50IHx8IGNvdW50
ID4gNjMpOwo+ID4gLQkqYmF0Y2grKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKGNvdW50KTsKPiA+
ICsJKmJhdGNoKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShjb3VudCkgfCBlbmdpbmUtPmxyaV9j
bWRfbW9kZTsKPiA+ICAgCWRvIHsKPiA+ICAgCQkqYmF0Y2grKyA9IGk5MTVfbW1pb19yZWdfb2Zm
c2V0KGxyaS0+cmVnKTsKPiA+ICAgCQkqYmF0Y2grKyA9IGxyaS0+dmFsdWU7Cj4gPiBAQCAtMjA1
NCw3ICsyMDU1LDcgQEAgc3RhdGljIHUzMiAqZ2VuOV9pbml0X2luZGlyZWN0Y3R4X2JiKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgdTMyICpiYXRjaCkKPiA+ICAgCS8qIFdhRmx1c2hD
b2hlcmVudEwzQ2FjaGVMaW5lc0F0Q29udGV4dFN3aXRjaDpza2wsYnh0LGdsayAqLwo+ID4gICAJ
YmF0Y2ggPSBnZW44X2VtaXRfZmx1c2hfY29oZXJlbnRsM193YShlbmdpbmUsIGJhdGNoKTsKPiA+
IC0JYmF0Y2ggPSBlbWl0X2xyaShiYXRjaCwgbHJpLCBBUlJBWV9TSVpFKGxyaSkpOwo+ID4gKwli
YXRjaCA9IGVtaXRfbHJpKGVuZ2luZSwgYmF0Y2gsIGxyaSwgQVJSQVlfU0laRShscmkpKTsKPiA+
ICAgCS8qIFdhTWVkaWFQb29sU3RhdGVDbWRJbldBQkI6Ynh0LGdsayAqLwo+ID4gICAJaWYgKEhB
U19QT09MRURfRVUoZW5naW5lLT5pOTE1KSkgewo+ID4gQEAgLTMyODIsNyArMzI4Myw3IEBAIHN0
YXRpYyB2b2lkIGluaXRfY29tbW9uX3JlZ19zdGF0ZSh1MzIgKiBjb25zdCByZWdzLAo+ID4gICAJ
CQkJICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gPiAgIAkJCQkgIHN0cnVjdCBp
bnRlbF9yaW5nICpyaW5nKQo+ID4gICB7Cj4gPiAtCWNvbnN0IHUzMiBiYXNlID0gZW5naW5lLT5t
bWlvX2Jhc2U7Cj4gPiArCWNvbnN0IHUzMiBiYXNlID0gZW5naW5lLT5scmlfbW1pb19iYXNlOwo+
ID4gICAJQ1RYX1JFRyhyZWdzLCBDVFhfQ09OVEVYVF9DT05UUk9MLCBSSU5HX0NPTlRFWFRfQ09O
VFJPTChiYXNlKSwKPiA+ICAgCQlfTUFTS0VEX0JJVF9ESVNBQkxFKENUWF9DVFJMX0VOR0lORV9D
VFhfUkVTVE9SRV9JTkhJQklUKSB8Cj4gPiBAQCAtMzMwNyw3ICszMzA4LDcgQEAgc3RhdGljIHZv
aWQgaW5pdF93YV9iYl9yZWdfc3RhdGUodTMyICogY29uc3QgcmVncywKPiA+ICAgCQkJCSB1MzIg
cG9zX2JiX3Blcl9jdHgpCj4gPiAgIHsKPiA+ICAgCXN0cnVjdCBpOTE1X2N0eF93b3JrYXJvdW5k
cyAqIGNvbnN0IHdhX2N0eCA9ICZlbmdpbmUtPndhX2N0eDsKPiA+IC0JY29uc3QgdTMyIGJhc2Ug
PSBlbmdpbmUtPm1taW9fYmFzZTsKPiA+ICsJY29uc3QgdTMyIGJhc2UgPSBlbmdpbmUtPmxyaV9t
bWlvX2Jhc2U7Cj4gPiAgIAljb25zdCB1MzIgcG9zX2luZGlyZWN0X2N0eCA9IHBvc19iYl9wZXJf
Y3R4ICsgMjsKPiA+ICAgCWNvbnN0IHUzMiBwb3NfaW5kaXJlY3RfY3R4X29mZnNldCA9IHBvc19p
bmRpcmVjdF9jdHggKyAyOwo+ID4gQEAgLTMzMzUsNiArMzMzNiw3IEBAIHN0YXRpYyB2b2lkIGlu
aXRfd2FfYmJfcmVnX3N0YXRlKHUzMiAqIGNvbnN0IHJlZ3MsCj4gPiAgIH0KPiA+ICAgc3RhdGlj
IHZvaWQgaW5pdF9wcGd0dF9yZWdfc3RhdGUodTMyICpyZWdzLCB1MzIgYmFzZSwKPiA+ICsJCQkJ
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ICAgCQkJCSBzdHJ1Y3QgaTkxNV9w
cGd0dCAqcHBndHQpCj4gPiAgIHsKPiA+ICAgCS8qIFBEUCB2YWx1ZXMgd2VsbCBiZSBhc3NpZ25l
ZCBsYXRlciBpZiBuZWVkZWQgKi8KPiA+IEBAIC0zMzc2LDE0ICszMzc4LDEyIEBAIHN0YXRpYyB2
b2lkIGdlbjhfaW5pdF9yZWdfc3RhdGUodTMyICogY29uc3QgcmVncywKPiA+ICAgewo+ID4gICAJ
c3RydWN0IGk5MTVfcHBndHQgKiBjb25zdCBwcGd0dCA9IHZtX2FsaWFzKGNlLT52bSk7Cj4gPiAg
IAljb25zdCBib29sIHJjcyA9IGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNTOwo+ID4gLQlj
b25zdCB1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOwo+ID4gLQljb25zdCB1MzIgbHJpX2Jh
c2UgPQo+ID4gLQkJaW50ZWxfZW5naW5lX2hhc19yZWxhdGl2ZV9tbWlvKGVuZ2luZSkgPyBNSV9M
UklfQ1NfTU1JTyA6IDA7Cj4gPiArCWNvbnN0IHUzMiBiYXNlID0gZW5naW5lLT5scmlfbW1pb19i
YXNlOwo+ID4gICAJcmVnc1tDVFhfTFJJX0hFQURFUl8wXSA9Cj4gPiAgIAkJTUlfTE9BRF9SRUdJ
U1RFUl9JTU0ocmNzID8gMTQgOiAxMSkgfAo+ID4gICAJCU1JX0xSSV9GT1JDRV9QT1NURUQgfAo+
ID4gLQkJbHJpX2Jhc2U7Cj4gPiArCQllbmdpbmUtPmxyaV9jbWRfbW9kZTsKPiA+ICAgCWluaXRf
Y29tbW9uX3JlZ19zdGF0ZShyZWdzLCBwcGd0dCwgZW5naW5lLCByaW5nKTsKPiA+ICAgCUNUWF9S
RUcocmVncywgQ1RYX1NFQ09ORF9CQl9IRUFEX1UsIFJJTkdfU0JCQUREUl9VRFcoYmFzZSksIDAp
Owo+ID4gQEAgLTMzOTUsMTUgKzMzOTUsMTcgQEAgc3RhdGljIHZvaWQgZ2VuOF9pbml0X3JlZ19z
dGF0ZSh1MzIgKiBjb25zdCByZWdzLAo+ID4gICAJcmVnc1tDVFhfTFJJX0hFQURFUl8xXSA9Cj4g
PiAgIAkJTUlfTE9BRF9SRUdJU1RFUl9JTU0oOSkgfAo+ID4gICAJCU1JX0xSSV9GT1JDRV9QT1NU
RUQgfAo+ID4gLQkJbHJpX2Jhc2U7Cj4gPiArCQllbmdpbmUtPmxyaV9jbWRfbW9kZTsKPiA+ICAg
CUNUWF9SRUcocmVncywgQ1RYX0NUWF9USU1FU1RBTVAsIFJJTkdfQ1RYX1RJTUVTVEFNUChiYXNl
KSwgMCk7Cj4gPiAtCWluaXRfcHBndHRfcmVnX3N0YXRlKHJlZ3MsIGJhc2UsIHBwZ3R0KTsKPiA+
ICsJaW5pdF9wcGd0dF9yZWdfc3RhdGUocmVncywgYmFzZSwgZW5naW5lLCBwcGd0dCk7Cj4gPiAg
IAlpZiAocmNzKSB7Cj4gPiAtCQlyZWdzW0NUWF9MUklfSEVBREVSXzJdID0gTUlfTE9BRF9SRUdJ
U1RFUl9JTU0oMSkgfCBscmlfYmFzZTsKPiA+IC0JCUNUWF9SRUcocmVncywgQ1RYX1JfUFdSX0NM
S19TVEFURSwgR0VOOF9SX1BXUl9DTEtfU1RBVEUsIDApOwo+ID4gKwkJcmVnc1tDVFhfTFJJX0hF
QURFUl8yXSA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDEpIHwKPiA+ICsJCQkJCSBlbmdpbmUtPmxy
aV9jbWRfbW9kZTsKPiA+ICsJCUNUWF9SRUcocmVncywgQ1RYX1JfUFdSX0NMS19TVEFURSwKPiA+
ICsJCQlHRU44X1JfUFdSX0NMS19TVEFURSwgMCk7Cj4gPiAgIAl9Cj4gPiAgIAlyZWdzW0NUWF9F
TkRdID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKPiA+IEBAIC0zNDE4LDE0ICszNDIwLDEyIEBAIHN0
YXRpYyB2b2lkIGdlbjEyX2luaXRfcmVnX3N0YXRlKHUzMiAqIGNvbnN0IHJlZ3MsCj4gPiAgIHsK
PiA+ICAgCXN0cnVjdCBpOTE1X3BwZ3R0ICogY29uc3QgcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0
KGNlLT52bSk7Cj4gPiAgIAljb25zdCBib29sIHJjcyA9IGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVS
X0NMQVNTOwo+ID4gLQljb25zdCB1MzIgYmFzZSA9IGVuZ2luZS0+bW1pb19iYXNlOwo+ID4gLQlj
b25zdCB1MzIgbHJpX2Jhc2UgPQo+ID4gLQkJaW50ZWxfZW5naW5lX2hhc19yZWxhdGl2ZV9tbWlv
KGVuZ2luZSkgPyBNSV9MUklfQ1NfTU1JTyA6IDA7Cj4gPiArCWNvbnN0IHUzMiBiYXNlID0gZW5n
aW5lLT5scmlfbW1pb19iYXNlOwo+ID4gICAJcmVnc1tDVFhfTFJJX0hFQURFUl8wXSA9Cj4gPiAg
IAkJTUlfTE9BRF9SRUdJU1RFUl9JTU0ocmNzID8gMTEgOiA5KSB8Cj4gPiAgIAkJTUlfTFJJX0ZP
UkNFX1BPU1RFRCB8Cj4gPiAtCQlscmlfYmFzZTsKPiA+ICsJCWVuZ2luZS0+bHJpX2NtZF9tb2Rl
Owo+ID4gICAJaW5pdF9jb21tb25fcmVnX3N0YXRlKHJlZ3MsIHBwZ3R0LCBlbmdpbmUsIHJpbmcp
Owo+ID4gQEAgLTM0MzUsMTUgKzM0MzUsMTUgQEAgc3RhdGljIHZvaWQgZ2VuMTJfaW5pdF9yZWdf
c3RhdGUodTMyICogY29uc3QgcmVncywKPiA+ICAgCXJlZ3NbQ1RYX0xSSV9IRUFERVJfMV0gPQo+
ID4gICAJCU1JX0xPQURfUkVHSVNURVJfSU1NKDkpIHwKPiA+ICAgCQlNSV9MUklfRk9SQ0VfUE9T
VEVEIHwKPiA+IC0JCWxyaV9iYXNlOwo+ID4gKwkJZW5naW5lLT5scmlfY21kX21vZGU7Cj4gPiAg
IAlDVFhfUkVHKHJlZ3MsIENUWF9DVFhfVElNRVNUQU1QLCBSSU5HX0NUWF9USU1FU1RBTVAoYmFz
ZSksIDApOwo+ID4gLQlpbml0X3BwZ3R0X3JlZ19zdGF0ZShyZWdzLCBiYXNlLCBwcGd0dCk7Cj4g
PiArCWluaXRfcHBndHRfcmVnX3N0YXRlKHJlZ3MsIGJhc2UsIGVuZ2luZSwgcHBndHQpOwo+ID4g
ICAJaWYgKHJjcykgewo+ID4gICAJCXJlZ3NbR0VOMTJfQ1RYX0xSSV9IRUFERVJfM10gPQo+ID4g
LQkJCU1JX0xPQURfUkVHSVNURVJfSU1NKDEpIHwgbHJpX2Jhc2U7Cj4gPiArCQkJTUlfTE9BRF9S
RUdJU1RFUl9JTU0oMSkgfCBlbmdpbmUtPmxyaV9jbWRfbW9kZTsKPiA+ICAgCQlDVFhfUkVHKHJl
Z3MsIENUWF9SX1BXUl9DTEtfU1RBVEUsIEdFTjhfUl9QV1JfQ0xLX1NUQVRFLCAwKTsKPiA+ICAg
CQkvKiBUT0RPOiBvYV9pbml0X3JlZ19zdGF0ZSA/ICovCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jCj4gPiBpbmRleCA3Mjg3MDRiYmJlMTguLjhlOGZlM2RlYjk1YyAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gPiBAQCAtMzY4LDkgKzM2OCw2
IEBAIHN0YXRpYyB1MzIgZ2V0X2VudHJ5X2NvbnRyb2woY29uc3Qgc3RydWN0IGRybV9pOTE1X21v
Y3NfdGFibGUgKnRhYmxlLAo+ID4gICAvKioKPiA+ICAgICogaW50ZWxfbW9jc19pbml0X2VuZ2lu
ZSgpIC0gZW1pdCB0aGUgbW9jcyBjb250cm9sIHRhYmxlCj4gPiAgICAqIEBlbmdpbmU6CVRoZSBl
bmdpbmUgZm9yIHdob20gdG8gZW1pdCB0aGUgcmVnaXN0ZXJzLgo+ID4gLSAqCj4gPiAtICogVGhp
cyBmdW5jdGlvbiBzaW1wbHkgZW1pdHMgYSBNSV9MT0FEX1JFR0lTVEVSX0lNTSBjb21tYW5kIGZv
ciB0aGUKPiA+IC0gKiBnaXZlbiB0YWJsZSBzdGFydGluZyBhdCB0aGUgZ2l2ZW4gYWRkcmVzcy4K
PiA+ICAgICovCj4gPiAgIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCj4gPiAgIHsKPiA+IEBAIC00NTYsNyArNDUzLDggQEAgc3RhdGlj
IGludCBlbWl0X21vY3NfY29udHJvbF90YWJsZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiA+
ICAgCWlmIChJU19FUlIoY3MpKQo+ID4gICAJCXJldHVybiBQVFJfRVJSKGNzKTsKPiA+IC0JKmNz
KysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSh0YWJsZS0+bl9lbnRyaWVzKTsKPiA+ICsJKmNzKysg
PSBNSV9MT0FEX1JFR0lTVEVSX0lNTSh0YWJsZS0+bl9lbnRyaWVzKSB8Cj4gPiArCQlycS0+ZW5n
aW5lLT5scmlfY21kX21vZGU7Cj4gPiAgIAlmb3IgKGluZGV4ID0gMDsgaW5kZXggPCB0YWJsZS0+
c2l6ZTsgaW5kZXgrKykgewo+ID4gICAJCXUzMiB2YWx1ZSA9IGdldF9lbnRyeV9jb250cm9sKHRh
YmxlLCBpbmRleCk7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZl
ci5jCj4gPiBpbmRleCAwNzQ3YjhjOWY3NjguLjcwMjczNjdiMWYxYSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gPiBAQCAtMTUzNiwxMiAr
MTUzNiwxMyBAQCBzdGF0aWMgaW50IGxvYWRfcGRfZGlyKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
LCBjb25zdCBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCj4gPiAgIAlpZiAoSVNfRVJSKGNzKSkK
PiA+ICAgCQlyZXR1cm4gUFRSX0VSUihjcyk7Cj4gPiAtCSpjcysrID0gTUlfTE9BRF9SRUdJU1RF
Ul9JTU0oMSk7Cj4gPiAtCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19QUF9ESVJf
RENMVihlbmdpbmUtPm1taW9fYmFzZSkpOwo+ID4gKwkvKiBDYW4gdGhlc2Ugbm90IGJlIG1lcmdl
ZCBpbnRvIGEgc2luZ2xlIExSST8/PyAqLwo+ID4gKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJf
SU1NKDEpIHwgZW5naW5lLT5scmlfY21kX21vZGU7Cj4gPiArCSpjcysrID0gaTkxNV9tbWlvX3Jl
Z19vZmZzZXQoUklOR19QUF9ESVJfRENMVihlbmdpbmUtPmxyaV9tbWlvX2Jhc2UpKTsKPiA+ICAg
CSpjcysrID0gUFBfRElSX0RDTFZfMkc7Cj4gPiAtCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9J
TU0oMSk7Cj4gPiAtCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19QUF9ESVJfQkFT
RShlbmdpbmUtPm1taW9fYmFzZSkpOwo+ID4gKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1N
KDEpIHwgZW5naW5lLT5scmlfY21kX21vZGU7Cj4gPiArCSpjcysrID0gaTkxNV9tbWlvX3JlZ19v
ZmZzZXQoUklOR19QUF9ESVJfQkFTRShlbmdpbmUtPmxyaV9tbWlvX2Jhc2UpKTsKPiA+ICAgCSpj
cysrID0gcHhfYmFzZShwcGd0dC0+cGQpLT5nZ3R0X29mZnNldCA8PCAxMDsKPiA+ICAgCWludGVs
X3JpbmdfYWR2YW5jZShycSwgY3MpOwo+ID4gQEAgLTE3MDksNyArMTcxMCw4IEBAIHN0YXRpYyBp
bnQgcmVtYXBfbDNfc2xpY2Uoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIGludCBzbGljZSkKPiA+
ICAgCSAqIGhlcmUgYmVjYXVzZSBubyBvdGhlciBjb2RlIHNob3VsZCBhY2Nlc3MgdGhlc2UgcmVn
aXN0ZXJzIG90aGVyIHRoYW4KPiA+ICAgCSAqIGF0IGluaXRpYWxpemF0aW9uIHRpbWUuCj4gPiAg
IAkgKi8KPiA+IC0JKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShHRU43X0wzTE9HX1NJWkUv
NCk7Cj4gPiArCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oR0VON19MM0xPR19TSVpFIC8g
NCkgfAo+ID4gKwkJcnEtPmVuZ2luZS0+bHJpX2NtZF9tb2RlOwo+ID4gICAJZm9yIChpID0gMDsg
aSA8IEdFTjdfTDNMT0dfU0laRS80OyBpKyspIHsKPiA+ICAgCQkqY3MrKyA9IGk5MTVfbW1pb19y
ZWdfb2Zmc2V0KEdFTjdfTDNMT0coc2xpY2UsIGkpKTsKPiA+ICAgCQkqY3MrKyA9IHJlbWFwX2lu
Zm9baV07Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ID4gaW5kZXggYzFiNzY0MjMzNzYx
Li44Yjg1Y2RmYWRhMjEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiA+IEBA
IC0xNjkzLDYgKzE2OTMsMTEgQEAgZ2VuOF91cGRhdGVfcmVnX3N0YXRlX3VubG9ja2VkKHN0cnVj
dCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gPiAgIAl9Owo+ID4gICAJaW50IGk7Cj4gPiAr
CS8qCj4gPiArCSAqIE5COiBUaGUgTFJJIGluc3RydWN0aW9uIGlzIGdlbmVyYXRlZCBieSB0aGUg
aGFyZHdhcmUuCj4gPiArCSAqIFNob3VsZCB3ZSByZWFkIGl0IGluIGFuZCBhc3NlcnQgdGhhdCB0
aGUgb2Zmc2V0IGZsYWcgaXMgc2V0Pwo+ID4gKwkgKi8KPiA+ICsKPiA+ICAgCUNUWF9SRUcocmVn
X3N0YXRlLCBjdHhfb2FjdHhjdHJsLCBHRU44X09BQ1RYQ09OVFJPTCwKPiA+ICAgCQkoc3RyZWFt
LT5wZXJpb2RfZXhwb25lbnQgPDwgR0VOOF9PQV9USU1FUl9QRVJJT0RfU0hJRlQpIHwKPiA+ICAg
CQkoc3RyZWFtLT5wZXJpb2RpYyA/IEdFTjhfT0FfVElNRVJfRU5BQkxFIDogMCkgfAo+ID4gQEAg
LTE3NTIsOCArMTc1Nyw5IEBAIGdlbjhfbG9hZF9mbGV4KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
LAo+ID4gICAJaWYgKElTX0VSUihjcykpCj4gPiAgIAkJcmV0dXJuIFBUUl9FUlIoY3MpOwo+ID4g
LQkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKGNvdW50KTsKPiA+ICsJKmNzKysgPSBNSV9M
T0FEX1JFR0lTVEVSX0lNTShjb3VudCkgfCBycS0+ZW5naW5lLT5scmlfY21kX21vZGU7Cj4gPiAg
IAlkbyB7Cj4gPiArCQkvKiBGSVhNRTogSXMgdGhpcyB0YWJsZSBMUkkgcmVtYXAvb2Zmc2V0IGZy
aWVuZGx5PyAqLwo+ID4gICAJCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoZmxleC0+cmVn
KTsKPiA+ICAgCQkqY3MrKyA9IGZsZXgtPnZhbHVlOwo+ID4gICAJfSB3aGlsZSAoZmxleCsrLCAt
LWNvdW50KTsKPiA+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
