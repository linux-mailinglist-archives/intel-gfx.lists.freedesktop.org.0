Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B68E4826F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 14:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F62689182;
	Mon, 17 Jun 2019 12:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E26989182
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 12:31:47 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 05:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,385,1557212400"; d="scan'208";a="185721561"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2019 05:31:43 -0700
Date: Mon, 17 Jun 2019 15:31:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20190617123144.GB11627@ideak-desk.fi.intel.com>
References: <20190615020649.8018-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615020649.8018-1-vivek.kasireddy@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add power wells support for
 Elkhart Lake
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBGcmksIEp1biAxNCwgMjAxOSBhdCAwNzowNjo0OVBNIC0wNzAwLCBWaXZlayBLYXNp
cmVkZHkgd3JvdGU6Cj4gVGhlIG51bWJlciBvZiBwb3dlciB3ZWxscyBhbmQgdGhlIHJlbGV2YW50
IHNlcXVlbmNlcyBhcmUgY29tbW9uIGJldHdlZW4KPiBJQ0wgYW5kIEVITCBzaW5jZSB0aGV5IGJv
dGggYXJlIEdlbiAxMS4gVGhlIG9ubHkgc2lnbmlmaWNhbnQgZGlmZmVyZW5jZXMKPiBhcmUgdGhh
dCBFSEwgZG9lcyBub3QgaGF2ZSBEREkgRSBhbmQgRERJIEQgYW5kIHR5cGUgQy9UQlQgcG9ydHMu
CgpFSEwgY291bGQganVzdCByZXVzZSBpY2xfcG93ZXJfd2VsbHNbXS4gTm8gcG93ZXIgd2VsbHMg
YmUgdXNlZCBvbiBFSEwKdGhhdCBkb24ndCBleGlzdCBvbiBpdCAoc2luY2Ugd2UnbGwgbm90IHJl
Z2lzdGVyIHBvcnQgRS9EIG9yIHVzZSB0aGUKcG9ydHMgaW4gVEJUL0RQLWFsdCBtb2RlKS4KCi0t
SW1yZQoKPiAKPiBDYzogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4K
PiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZp
dmVrLmthc2lyZWRkeUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDIxMCArKysrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIwOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+IGluZGV4IGM2NzJjODA4MGE5My4u
ZTNlZDc3Yjg0M2QyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYwo+IEBAIC0yMzk3LDYgKzIzOTcsNjYgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2Vy
X3B1dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICNkZWZpbmUgSUNMX0FV
WF9UQlQ0X0lPX1BPV0VSX0RPTUFJTlMgKAkJCVwKPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FV
WF9UQlQ0KSkKPiAgCj4gKyNkZWZpbmUgRUhMX1BXXzRfUE9XRVJfRE9NQUlOUyAoCQkJXAo+ICsJ
QklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9DKSB8CQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01B
SU5fUElQRV9DX1BBTkVMX0ZJVFRFUikgfAlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklU
KSkKPiArCS8qIFZEU0Mvam9pbmluZyAqLwo+ICsjZGVmaW5lIEVITF9QV18zX1BPV0VSX0RPTUFJ
TlMgKAkJCVwKPiArCUVITF9QV180X1BPV0VSX0RPTUFJTlMgfAkJCVwKPiArCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1BJUEVfQikgfAkJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RSQU5TQ09E
RVJfQSkgfAkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9CKSB8CQlcCj4g
KwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0MpIHwJCVwKPiArCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1BJUEVfQl9QQU5FTF9GSVRURVIpIHwJXAo+ICsJQklUX1VMTChQT1dFUl9ET01B
SU5fUE9SVF9ERElfQl9MQU5FUykgfAlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9CX0lPKSB8CQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0xBTkVTKSB8
CVwKPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0NfSU8pIHwJCVwKPiArCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0RfTEFORVMpIHwJXAo+ICsJQklUX1VMTChQT1dFUl9E
T01BSU5fUE9SVF9ERElfRF9JTykgfAkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0Ip
IHwJCQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQykgfAkJCVwKPiArCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVWF9EKSB8CQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fVkdBKSB8
CQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU8pIHwJCQlcCj4gKwlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9JTklUKSkKPiArCS8qCj4gKwkgKiAtIHRyYW5zY29kZXIgV0QKPiArCSAqIC0g
S1ZNUiAoSFcgY29udHJvbCkKPiArCSAqLwo+ICsjZGVmaW5lIEVITF9QV18yX1BPV0VSX0RPTUFJ
TlMgKAkJCVwKPiArCUVITF9QV18zX1BPV0VSX0RPTUFJTlMgfAkJCVwKPiArCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0MpIHwJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX0lOSVQpKQo+ICsJLyoKPiArCSAqIC0gS1ZNUiAoSFcgY29udHJvbCkKPiArCSAqLwo+ICsj
ZGVmaW5lIEVITF9ESVNQTEFZX0RDX09GRl9QT1dFUl9ET01BSU5TICgJCVwKPiArCUVITF9QV18y
X1BPV0VSX0RPTUFJTlMgfAkJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX01PREVTRVQpIHwJ
CQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQSkgfAkJCVwKPiArCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX0lOSVQpKQo+ICsKPiArI2RlZmluZSBFSExfRERJX0lPX0FfUE9XRVJfRE9NQUlO
UyAoCQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfQV9JTykpCj4gKyNkZWZp
bmUgRUhMX0RESV9JT19CX1BPV0VSX0RPTUFJTlMgKAkJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0JfSU8pKQo+ICsjZGVmaW5lIEVITF9ERElfSU9fQ19QT1dFUl9ET01BSU5T
ICgJCQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0lPKSkKPiArI2RlZmlu
ZSBFSExfRERJX0lPX0RfUE9XRVJfRE9NQUlOUyAoCQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01B
SU5fUE9SVF9ERElfRF9JTykpCj4gKwo+ICsjZGVmaW5lIEVITF9BVVhfQV9JT19QT1dFUl9ET01B
SU5TICgJCQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfSU9fQSkgfAkJXAo+ICsJQklU
X1VMTChQT1dFUl9ET01BSU5fQVVYX0EpKQo+ICsjZGVmaW5lIEVITF9BVVhfQl9JT19QT1dFUl9E
T01BSU5TICgJCQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQikpCj4gKyNkZWZpbmUg
RUhMX0FVWF9DX0lPX1BPV0VSX0RPTUFJTlMgKAkJCVwKPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X0FVWF9DKSkKPiArI2RlZmluZSBFSExfQVVYX0RfSU9fUE9XRVJfRE9NQUlOUyAoCQkJXAo+ICsJ
QklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0QpKQo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
OTE1X3Bvd2VyX3dlbGxfb3BzIGk5eHhfYWx3YXlzX29uX3Bvd2VyX3dlbGxfb3BzID0gewo+ICAJ
LnN5bmNfaHcgPSBpOXh4X3Bvd2VyX3dlbGxfc3luY19od19ub29wLAo+ICAJLmVuYWJsZSA9IGk5
eHhfYWx3YXlzX29uX3Bvd2VyX3dlbGxfbm9vcCwKPiBAQCAtMzM1NCw2ICszNDE0LDE1MiBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIGljbF9wb3dlcl93ZWxsc1td
ID0gewo+ICAJfSwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93
ZWxsX2Rlc2MgZWhsX3Bvd2VyX3dlbGxzW10gPSB7Cj4gKwl7Cj4gKwkJLm5hbWUgPSAiYWx3YXlz
LW9uIiwKPiArCQkuYWx3YXlzX29uID0gdHJ1ZSwKPiArCQkuZG9tYWlucyA9IFBPV0VSX0RPTUFJ
Tl9NQVNLLAo+ICsJCS5vcHMgPSAmaTl4eF9hbHdheXNfb25fcG93ZXJfd2VsbF9vcHMsCj4gKwkJ
LmlkID0gRElTUF9QV19JRF9OT05FLAo+ICsJfSwKPiArCXsKPiArCQkubmFtZSA9ICJwb3dlciB3
ZWxsIDEiLAo+ICsJCS8qIEhhbmRsZWQgYnkgdGhlIERNQyBmaXJtd2FyZSAqLwo+ICsJCS5hbHdh
eXNfb24gPSB0cnVlLAo+ICsJCS5kb21haW5zID0gMCwKPiArCQkub3BzID0gJmhzd19wb3dlcl93
ZWxsX29wcywKPiArCQkuaWQgPSBTS0xfRElTUF9QV18xLAo+ICsJCXsKPiArCQkJLmhzdy5yZWdz
ID0gJmhzd19wb3dlcl93ZWxsX3JlZ3MsCj4gKwkJCS5oc3cuaWR4ID0gSUNMX1BXX0NUTF9JRFhf
UFdfMSwKPiArCQkJLmhzdy5oYXNfZnVzZXMgPSB0cnVlLAo+ICsJCX0sCj4gKwl9LAo+ICsJewo+
ICsJCS5uYW1lID0gIkRDIG9mZiIsCj4gKwkJLmRvbWFpbnMgPSBFSExfRElTUExBWV9EQ19PRkZf
UE9XRVJfRE9NQUlOUywKPiArCQkub3BzID0gJmdlbjlfZGNfb2ZmX3Bvd2VyX3dlbGxfb3BzLAo+
ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPiArCX0sCj4gKwl7Cj4gKwkJLm5hbWUgPSAicG93
ZXIgd2VsbCAyIiwKPiArCQkuZG9tYWlucyA9IEVITF9QV18yX1BPV0VSX0RPTUFJTlMsCj4gKwkJ
Lm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsCj4gKwkJLmlkID0gU0tMX0RJU1BfUFdfMiwKPiAr
CQl7Cj4gKwkJCS5oc3cucmVncyA9ICZoc3dfcG93ZXJfd2VsbF9yZWdzLAo+ICsJCQkuaHN3Lmlk
eCA9IElDTF9QV19DVExfSURYX1BXXzIsCj4gKwkJCS5oc3cuaGFzX2Z1c2VzID0gdHJ1ZSwKPiAr
CQl9LAo+ICsJfSwKPiArCXsKPiArCQkubmFtZSA9ICJwb3dlciB3ZWxsIDMiLAo+ICsJCS5kb21h
aW5zID0gRUhMX1BXXzNfUE9XRVJfRE9NQUlOUywKPiArCQkub3BzID0gJmhzd19wb3dlcl93ZWxs
X29wcywKPiArCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCj4gKwkJewo+ICsJCQkuaHN3LnJlZ3Mg
PSAmaHN3X3Bvd2VyX3dlbGxfcmVncywKPiArCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9Q
V18zLAo+ICsJCQkuaHN3LmlycV9waXBlX21hc2sgPSBCSVQoUElQRV9CKSwKPiArCQkJLmhzdy5o
YXNfdmdhID0gdHJ1ZSwKPiArCQkJLmhzdy5oYXNfZnVzZXMgPSB0cnVlLAo+ICsJCX0sCj4gKwl9
LAo+ICsJewo+ICsJCS5uYW1lID0gIkRESSBBIElPIiwKPiArCQkuZG9tYWlucyA9IEVITF9ERElf
SU9fQV9QT1dFUl9ET01BSU5TLAo+ICsJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAo+ICsJ
CS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPiArCQl7Cj4gKwkJCS5oc3cucmVncyA9ICZpY2xfZGRp
X3Bvd2VyX3dlbGxfcmVncywKPiArCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9ERElfQSwK
PiArCQl9LAo+ICsJfSwKPiArCXsKPiArCQkubmFtZSA9ICJEREkgQiBJTyIsCj4gKwkJLmRvbWFp
bnMgPSBFSExfRERJX0lPX0JfUE9XRVJfRE9NQUlOUywKPiArCQkub3BzID0gJmhzd19wb3dlcl93
ZWxsX29wcywKPiArCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsCj4gKwkJewo+ICsJCQkuaHN3LnJl
Z3MgPSAmaWNsX2RkaV9wb3dlcl93ZWxsX3JlZ3MsCj4gKwkJCS5oc3cuaWR4ID0gSUNMX1BXX0NU
TF9JRFhfRERJX0IsCj4gKwkJfSwKPiArCX0sCj4gKwl7Cj4gKwkJLm5hbWUgPSAiRERJIEMgSU8i
LAo+ICsJCS5kb21haW5zID0gRUhMX0RESV9JT19DX1BPV0VSX0RPTUFJTlMsCj4gKwkJLm9wcyA9
ICZoc3dfcG93ZXJfd2VsbF9vcHMsCj4gKwkJLmlkID0gRElTUF9QV19JRF9OT05FLAo+ICsJCXsK
PiArCQkJLmhzdy5yZWdzID0gJmljbF9kZGlfcG93ZXJfd2VsbF9yZWdzLAo+ICsJCQkuaHN3Lmlk
eCA9IElDTF9QV19DVExfSURYX0RESV9DLAo+ICsJCX0sCj4gKwl9LAo+ICsJewo+ICsJCS5uYW1l
ID0gIkRESSBEIElPIiwKPiArCQkuZG9tYWlucyA9IEVITF9ERElfSU9fRF9QT1dFUl9ET01BSU5T
LAo+ICsJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLAo+ICsJCS5pZCA9IERJU1BfUFdfSURf
Tk9ORSwKPiArCQl7Cj4gKwkJCS5oc3cucmVncyA9ICZpY2xfZGRpX3Bvd2VyX3dlbGxfcmVncywK
PiArCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9ERElfRCwKPiArCQl9LAo+ICsJfSwKPiAr
CXsKPiArCQkubmFtZSA9ICJBVVggQSIsCj4gKwkJLmRvbWFpbnMgPSBFSExfQVVYX0FfSU9fUE9X
RVJfRE9NQUlOUywKPiArCQkub3BzID0gJmljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfb3Bz
LAo+ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPiArCQl7Cj4gKwkJCS5oc3cucmVncyA9ICZp
Y2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKPiArCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9B
VVhfQSwKPiArCQl9LAo+ICsJfSwKPiArCXsKPiArCQkubmFtZSA9ICJBVVggQiIsCj4gKwkJLmRv
bWFpbnMgPSBFSExfQVVYX0JfSU9fUE9XRVJfRE9NQUlOUywKPiArCQkub3BzID0gJmljbF9jb21i
b19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzLAo+ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPiAr
CQl7Cj4gKwkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKPiArCQkJLmhz
dy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQiwKPiArCQl9LAo+ICsJfSwKPiArCXsKPiArCQku
bmFtZSA9ICJBVVggQyIsCj4gKwkJLmRvbWFpbnMgPSBFSExfQVVYX0NfSU9fUE9XRVJfRE9NQUlO
UywKPiArCQkub3BzID0gJmljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzLAo+ICsJCS5p
ZCA9IERJU1BfUFdfSURfTk9ORSwKPiArCQl7Cj4gKwkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bv
d2VyX3dlbGxfcmVncywKPiArCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQywKPiAr
CQl9LAo+ICsJfSwKPiArCXsKPiArCQkubmFtZSA9ICJBVVggRCIsCj4gKwkJLmRvbWFpbnMgPSBF
SExfQVVYX0RfSU9fUE9XRVJfRE9NQUlOUywKPiArCQkub3BzID0gJmljbF9jb21ib19waHlfYXV4
X3Bvd2VyX3dlbGxfb3BzLAo+ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwKPiArCQl7Cj4gKwkJ
CS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywKPiArCQkJLmhzdy5pZHggPSBJ
Q0xfUFdfQ1RMX0lEWF9BVVhfRCwKPiArCQl9LAo+ICsJfSwKPiArCXsKPiArCQkubmFtZSA9ICJw
b3dlciB3ZWxsIDQiLAo+ICsJCS5kb21haW5zID0gRUhMX1BXXzRfUE9XRVJfRE9NQUlOUywKPiAr
CQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywKPiArCQkuaWQgPSBESVNQX1BXX0lEX05PTkUs
Cj4gKwkJewo+ICsJCQkuaHN3LnJlZ3MgPSAmaHN3X3Bvd2VyX3dlbGxfcmVncywKPiArCQkJLmhz
dy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9QV180LAo+ICsJCQkuaHN3Lmhhc19mdXNlcyA9IHRydWUs
Cj4gKwkJCS5oc3cuaXJxX3BpcGVfbWFzayA9IEJJVChQSVBFX0MpLAo+ICsJCX0sCj4gKwl9LAo+
ICt9Owo+ICsKPiArCj4gIHN0YXRpYyBpbnQKPiAgc2FuaXRpemVfZGlzYWJsZV9wb3dlcl93ZWxs
X29wdGlvbihjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJCQkg
ICBpbnQgZGlzYWJsZV9wb3dlcl93ZWxsKQo+IEBAIC0zNDgxLDggKzM2ODcsMTAgQEAgaW50IGlu
dGVsX3Bvd2VyX2RvbWFpbnNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4gIAkgKiBUaGUgZW5hYmxpbmcgb3JkZXIgd2lsbCBiZSBmcm9tIGxvd2VyIHRvIGhpZ2hlciBp
bmRleGVkIHdlbGxzLAo+ICAJICogdGhlIGRpc2FibGluZyBvcmRlciBpcyByZXZlcnNlZC4KPiAg
CSAqLwo+IC0JaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7Cj4gKwlpZiAoSVNfSUNFTEFLRShk
ZXZfcHJpdikpIHsKPiAgCQllcnIgPSBzZXRfcG93ZXJfd2VsbHMocG93ZXJfZG9tYWlucywgaWNs
X3Bvd2VyX3dlbGxzKTsKPiArCX0gZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7
Cj4gKwkJZXJyID0gc2V0X3Bvd2VyX3dlbGxzKHBvd2VyX2RvbWFpbnMsIGVobF9wb3dlcl93ZWxs
cyk7Cj4gIAl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKSB7Cj4gIAkJZXJyID0g
c2V0X3Bvd2VyX3dlbGxzKHBvd2VyX2RvbWFpbnMsIGNubF9wb3dlcl93ZWxscyk7Cj4gIAo+IC0t
IAo+IDIuMjEuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
