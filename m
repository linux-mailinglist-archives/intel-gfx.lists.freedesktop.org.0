Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F7364A63
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 18:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2838B6E113;
	Wed, 10 Jul 2019 16:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF4D6E113
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 16:02:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 09:02:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="168349687"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.246])
 by orsmga003.jf.intel.com with ESMTP; 10 Jul 2019 09:02:23 -0700
Date: Wed, 10 Jul 2019 09:02:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190710160222.cj6cv5vj4cjdrpeo@ldmartin-desk1>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-11-lucas.demarchi@intel.com>
 <20190709115732.GC16315@intel.com>
 <20190709162042.okv75ozrvplii7tk@ldmartin-desk1>
 <20190710110429.GK16315@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710110429.GK16315@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 10/25] drm/i915/tgl: Add power well to
 support 4th pipe
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMDQ6MDQ6MjlBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDk6MjA6NDJBTSAtMDcwMCwgTHVjYXMgRGUg
TWFyY2hpIHdyb3RlOgo+PiBPbiBUdWUsIEp1bCAwOSwgMjAxOSBhdCAwNDo1NzozMkFNIC0wNzAw
LCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4+ID4gT24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6
MTRQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+PiA+ID4gRnJvbTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPj4gPiA+Cj4+ID4gPiBBZGQgcG93ZXIgd2VsbCA1
IHRvIHN1cHBvcnQgNHRoIHBpcGUgYW5kIHRyYW5zY29kZXIgb24gVEdMLgo+PiA+ID4KPj4gPiA+
IENjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Cj4+ID4gPiBDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+PiA+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPj4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+PiA+ID4gLS0tCj4+ID4gPiAg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMzAgKysrKysr
KysrKysrKysrKy0tLQo+PiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuaCAgICB8ICAzICsrCj4+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICAgICAgIHwgIDMgKy0KPj4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+ID4gPgo+PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPj4gPiA+IGluZGV4IGMz
ZjQyMTY5ODMxZi4uNDU1ZjlhYWIxODhkIDEwMDY0NAo+PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4+ID4gPiBAQCAt
MzcsMTggKzM3LDI0IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluX3N0cihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gPiA+ICAJCXJldHVybiAiUElQRV9CIjsKPj4gPiA+ICAJ
Y2FzZSBQT1dFUl9ET01BSU5fUElQRV9DOgo+PiA+ID4gIAkJcmV0dXJuICJQSVBFX0MiOwo+PiA+
ID4gKwljYXNlIFBPV0VSX0RPTUFJTl9QSVBFX0Q6Cj4+ID4gPiArCQlyZXR1cm4gIlBJUEVfRCI7
Cj4+ID4gPiAgCWNhc2UgUE9XRVJfRE9NQUlOX1BJUEVfQV9QQU5FTF9GSVRURVI6Cj4+ID4gPiAg
CQlyZXR1cm4gIlBJUEVfQV9QQU5FTF9GSVRURVIiOwo+PiA+ID4gIAljYXNlIFBPV0VSX0RPTUFJ
Tl9QSVBFX0JfUEFORUxfRklUVEVSOgo+PiA+ID4gIAkJcmV0dXJuICJQSVBFX0JfUEFORUxfRklU
VEVSIjsKPj4gPiA+ICAJY2FzZSBQT1dFUl9ET01BSU5fUElQRV9DX1BBTkVMX0ZJVFRFUjoKPj4g
PiA+ICAJCXJldHVybiAiUElQRV9DX1BBTkVMX0ZJVFRFUiI7Cj4+ID4gPiArCWNhc2UgUE9XRVJf
RE9NQUlOX1BJUEVfRF9QQU5FTF9GSVRURVI6Cj4+ID4gPiArCQlyZXR1cm4gIlBJUEVfRF9QQU5F
TF9GSVRURVIiOwo+PiA+ID4gIAljYXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0E6Cj4+ID4g
PiAgCQlyZXR1cm4gIlRSQU5TQ09ERVJfQSI7Cj4+ID4gPiAgCWNhc2UgUE9XRVJfRE9NQUlOX1RS
QU5TQ09ERVJfQjoKPj4gPiA+ICAJCXJldHVybiAiVFJBTlNDT0RFUl9CIjsKPj4gPiA+ICAJY2Fz
ZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9DOgo+PiA+ID4gIAkJcmV0dXJuICJUUkFOU0NPREVS
X0MiOwo+PiA+ID4gKwljYXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0Q6Cj4+ID4gPiArCQly
ZXR1cm4gIlRSQU5TQ09ERVJfRCI7Cj4+ID4gPiAgCWNhc2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09E
RVJfRURQOgo+PiA+ID4gIAkJcmV0dXJuICJUUkFOU0NPREVSX0VEUCI7Cj4+ID4gPiAgCWNhc2Ug
UE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0M6Cj4+ID4gPiBAQCAtMjQ1MSw3ICsyNDU3
LDYgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4+ID4gPiAgICogLSBERElfQQo+PiA+ID4gICAqIC0gRkJDCj4+ID4gPiAg
ICovCj4+ID4gPiAtLyogVE9ETzogVEdMX1BXXzVfUE9XRVJfRE9NQUlOUzogUElQRV9EICovCj4+
ID4gPiAgI2RlZmluZSBJQ0xfUFdfNF9QT1dFUl9ET01BSU5TICgJCQlcCj4+ID4gPiAgCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX1BJUEVfQykgfAkJCVwKPj4gPiA+ICAJQklUX1VMTChQT1dFUl9ET01B
SU5fUElQRV9DX1BBTkVMX0ZJVFRFUikgfAlcCj4+ID4gPiBAQCAtMjUzOSw3ICsyNTQ0LDEzIEBA
IHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+PiA+ID4gICNkZWZpbmUgSUNMX0FVWF9UQlQ0X0lPX1BPV0VSX0RPTUFJTlMgKAkJ
CVwKPj4gPiA+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDQpKQo+PiA+ID4KPj4gPiA+
ICsjZGVmaW5lIFRHTF9QV181X1BPV0VSX0RPTUFJTlMgKAkJCVwKPj4gPiA+ICsJQklUX1VMTChQ
T1dFUl9ET01BSU5fUElQRV9EKSB8CQkJXAo+PiA+ID4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9Q
SVBFX0RfUEFORUxfRklUVEVSKSB8ICAgICBcCj4+ID4gPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X0lOSVQpKQo+PiA+ID4gKwo+PiA+ID4gICNkZWZpbmUgVEdMX1BXXzRfUE9XRVJfRE9NQUlOUyAo
CQkJXAo+PiA+ID4gKwlUR0xfUFdfNV9QT1dFUl9ET01BSU5TIHwJCQlcCj4+ID4KPj4gPiB3aHk/
Cj4+Cj4+IG5vdCBzdXJlIEkgdW5kZXJzdGFuZCB0aGlzIG9uZS4gQXJlIHlvdSBzYXlpbmcgd2Ug
c2hvdWxkbid0IGhhdmUgYSBuZXcKPj4gcG93ZXIgd2VsbCBmb3IgcGlwZSBkPyBIb3cgd291bGQg
d2UgaGFuZGxlIHRoZSBkaWZmZXJlbnQgY3RsPwo+Cj5XZSBzaG91bGQgaGF2ZSBhIG5ldyBvbmUu
IFRoZSBhYm92ZSBibG9jayB3aG8gYWRkcyBQVzUgZG9tYWlucyBpcyBva2F5Lgo+V2hhdCBJIGRp
ZG4ndCB1bmRlcnN0YW5kIGlzIHdoeSB0byBhZGQgcGlwZSBEIGFsc28gb24gUFc0CgphcyB3ZSBj
aGF0ZWQgb24gSVJDLCBiZWNhdXNlIHRoZXJlJ3MgdGhpcyBkZXBlbmRlbmN5IG9uIHRoZSBlbmFi
bGluZwpzZXF1ZW5jZToKClBHMCAtPiBQRzEgLT4gUEcyIC0+IFBHMyAtPiBQRzQgLT4gUEc1CgpT
byB0byBlbmFibGUgUEc1IEkgbmVlZCB0byBlbmFibGUgYWxsIHRoZSBwcmV2aW91cyBwb3dlciB3
ZWxscy4gV2hlbiB3ZQpsb29rdXAsIHNheSwgUE9XRVJfRE9NQUlOX1BJUEVfRCwgdGhlIGJpdCB3
aWxsIGJlIHNldCBvbiBhbGwgdGhlCnBvd2VyIHdlbGxzLCB3aGljaCBtYWtlcyB0aGlzIGhhcHBl
bi4KCkx1Y2FzIERlIE1hcmNoaQoKPgo+Pgo+PiA+Cj4+ID4gPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BJUEVfQykgfAkJCVwKPj4gPiA+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9DX1BB
TkVMX0ZJVFRFUikgfAlcCj4+ID4gPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQo+PiA+
ID4gQEAgLTI1NDksNyArMjU2MCw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiA+ID4gIAlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9QSVBFX0IpIHwJCQlcCj4+ID4gPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RSQU5TQ09E
RVJfQikgfAkJXAo+PiA+ID4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0MpIHwJ
CVwKPj4gPiA+IC0JLyogVE9ETzogVFJBTlNDT0RFUl9EICovCQkJXAo+PiA+ID4gKwlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0QpIHwJCVwKPj4gPiA+ICAJQklUX1VMTChQT1dFUl9E
T01BSU5fUElQRV9CX1BBTkVMX0ZJVFRFUikgfAlcCj4+ID4gPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BPUlRfRERJX1RDMV9MQU5FUykgfAlcCj4+ID4gPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X1BPUlRfRERJX1RDMV9JTykgfAkJXAo+PiA+ID4gQEAgLTM4ODIsNyArMzg5Myw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7
Cj4+ID4gPiAgCX0sCj4+ID4gPiAgCXsKPj4gPiA+ICAJCS5uYW1lID0gInBvd2VyIHdlbGwgNCIs
Cj4+ID4gPiAtCQkuZG9tYWlucyA9IElDTF9QV180X1BPV0VSX0RPTUFJTlMsCj4+ID4gPiArCQku
ZG9tYWlucyA9IFRHTF9QV180X1BPV0VSX0RPTUFJTlMsCj4+ID4KPj4gPiB3aHk/Cj4+Cj4+IHRo
aXMgaXMgYSBsZWZ0b3ZlciBmcm9tIHYxIGFuZCBzaG91bGQgYmUgc3F1YXNoZWQgb24gcHJldmlv
dXMgcGF0Y2gsIG15Cj4+IGJhZC4gSW4gdjEgd2Ugd2VyZSByZXVzaW5nIHRoZSBJQ0wgZGVmaW5p
dGlvbnMuIEkgY2hhbmdlZCBpbiB0aGlzCj4+IHJldmlzaW9uIGFuZCBmb3Jnb3QgdG8gc3F1YXNo
IHRoaXMgY2hhbmdlIHRoZXJlLiBJIHdpbGwgc2VuZCBhIG5ldwo+PiB2ZXJzaW9uCj4+Cj4+IHRo
YW5rcwo+Pgo+PiBMdWNhcyBEZSBNYXJjaGkKPj4KPj4gPgo+PiA+ID4gIAkJLm9wcyA9ICZoc3df
cG93ZXJfd2VsbF9vcHMsCj4+ID4gPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCj4+ID4gPiAg
CQl7Cj4+ID4gPiBAQCAtMzg5Miw3ICszOTAzLDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkx
NV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7Cj4+ID4gPiAgCQkJLmhzdy5p
cnFfcGlwZV9tYXNrID0gQklUKFBJUEVfQyksCj4+ID4gPiAgCQl9Cj4+ID4gPiAgCX0sCj4+ID4g
PiAtCS8qIFRPRE86IHBvd2VyIHdlbGwgNSBmb3IgcGlwZSBEICovCj4+ID4gPiArCXsKPj4gPiA+
ICsJCS5uYW1lID0gInBvd2VyIHdlbGwgNSIsCj4+ID4gPiArCQkuZG9tYWlucyA9IFRHTF9QV181
X1BPV0VSX0RPTUFJTlMsCj4+ID4gPiArCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKPj4g
PiA+ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPj4gPiA+ICsJCXsKPj4gPiA+ICsJCQkuaHN3
LnJlZ3MgPSAmaHN3X3Bvd2VyX3dlbGxfcmVncywKPj4gPiA+ICsJCQkuaHN3LmlkeCA9IFRHTF9Q
V19DVExfSURYX1BXXzUsCj4+ID4gPiArCQkJLmhzdy5oYXNfZnVzZXMgPSB0cnVlLAo+PiA+ID4g
KwkJCS5oc3cuaXJxX3BpcGVfbWFzayA9IEJJVChQSVBFX0QpLAo+PiA+ID4gKwkJfSwKPj4gPiA+
ICsJfSwKPj4gPiA+ICB9Owo+PiA+ID4KPj4gPiA+ICBzdGF0aWMgaW50Cj4+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAo+PiA+
ID4gaW5kZXggODZhZmQ3MGMxZmIyLi5lYmIzOTdlMzMwZWEgMTAwNjQ0Cj4+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAo+PiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgK
Pj4gPiA+IEBAIC0xOCwxMiArMTgsMTUgQEAgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFp
biB7Cj4+ID4gPiAgCVBPV0VSX0RPTUFJTl9QSVBFX0EsCj4+ID4gPiAgCVBPV0VSX0RPTUFJTl9Q
SVBFX0IsCj4+ID4gPiAgCVBPV0VSX0RPTUFJTl9QSVBFX0MsCj4+ID4gPiArCVBPV0VSX0RPTUFJ
Tl9QSVBFX0QsCj4+ID4gPiAgCVBPV0VSX0RPTUFJTl9QSVBFX0FfUEFORUxfRklUVEVSLAo+PiA+
ID4gIAlQT1dFUl9ET01BSU5fUElQRV9CX1BBTkVMX0ZJVFRFUiwKPj4gPiA+ICAJUE9XRVJfRE9N
QUlOX1BJUEVfQ19QQU5FTF9GSVRURVIsCj4+ID4gPiArCVBPV0VSX0RPTUFJTl9QSVBFX0RfUEFO
RUxfRklUVEVSLAo+PiA+ID4gIAlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9BLAo+PiA+ID4gIAlQ
T1dFUl9ET01BSU5fVFJBTlNDT0RFUl9CLAo+PiA+ID4gIAlQT1dFUl9ET01BSU5fVFJBTlNDT0RF
Ul9DLAo+PiA+ID4gKwlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9ELAo+PiA+ID4gIAlQT1dFUl9E
T01BSU5fVFJBTlNDT0RFUl9FRFAsCj4+ID4gPiAgCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VE
UF9WRFNDLAo+PiA+ID4gIAlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9EU0lfQSwKPj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiA+ID4gaW5kZXggZjU5Y2I1YzQ1YzM0Li41Y2E3NGVjYTA1
YTQgMTAwNjQ0Cj4+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+ID4gPiBAQCAtOTE0
Nyw3ICs5MTQ3LDggQEAgZW51bSB7Cj4+ID4gPiAgI2RlZmluZSAgIEdMS19QV19DVExfSURYX0RE
SV9BCQkJMQo+PiA+ID4gICNkZWZpbmUgICBTS0xfUFdfQ1RMX0lEWF9NSVNDX0lPCQkwCj4+ID4g
Pgo+PiA+ID4gLS8qIElDTCAtIHBvd2VyIHdlbGxzICovCj4+ID4gPiArLyogSUNML1RHTCAtIHBv
d2VyIHdlbGxzICovCj4+ID4gPiArI2RlZmluZSAgIFRHTF9QV19DVExfSURYX1BXXzUJCQk0Cj4+
ID4gPiAgI2RlZmluZSAgIElDTF9QV19DVExfSURYX1BXXzQJCQkzCj4+ID4gPiAgI2RlZmluZSAg
IElDTF9QV19DVExfSURYX1BXXzMJCQkyCj4+ID4gPiAgI2RlZmluZSAgIElDTF9QV19DVExfSURY
X1BXXzIJCQkxCj4+ID4gPiAtLQo+PiA+ID4gMi4yMS4wCj4+ID4gPgo+PiA+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPiA+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPj4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
