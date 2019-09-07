Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D27BEAC3CF
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 03:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B098C6E12C;
	Sat,  7 Sep 2019 01:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8156E12C
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 01:10:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 18:10:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="183306903"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2019 18:10:13 -0700
Date: Fri, 6 Sep 2019 18:10:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20190907011013.GA13677@mdroper-desk.amr.corp.intel.com>
References: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
 <70e23298-611d-ff33-b892-b57cacd1b983@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70e23298-611d-ff33-b892-b57cacd1b983@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMDYsIDIwMTkgYXQgMDM6NDY6NDJQTSAtMDcwMCwgRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyB3cm90ZToKPiAKPiAKPiBPbiA5LzYvMTkgMzo0MSBQTSwgUmFkaGFrcmlzaG5hIFNy
aXBhZGEgd3JvdGU6Cj4gPiBEaXNhYmxlIENQUyBhd2FyZSBjb2xvciBwaXBlIGJ5IHNldHRpbmcg
Y2hpY2tlbiBiaXQuCj4gPiAKPiA+IEJTcGVjOiA1Mjg5MAo+ID4gSFNERVM6IDE0MDkxNDIyNTkK
PiA+IAo+ID4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4g
PiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IFNpZ25lZC1v
ZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5j
b20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyB8IDUgKysrKysKPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICB8IDEgKwo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+IGlu
ZGV4IDI0M2QzZjc3YmUxMy4uMTRlM2Y5Njc3YjA2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gQEAgLTg5NCw2ICs4OTQsMTEgQEAg
aWNsX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiA+ICAgc3RhdGljIHZvaWQKPiA+ICAgdGdsX2d0X3dv
cmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1
X3dhX2xpc3QgKndhbCkKPiA+ICAgewo+ID4gKwl3YV9pbml0X21jcihpOTE1LCB3YWwpOwo+IAo+
IHRoaXMgaXMgbm90IHBhcnQgb2YgdGhlIFdBIHlvdSdyZSB0cnlpbmcgdG8gYXBwbHksIHJpZ2h0
Pwo+IAo+ID4gKwo+ID4gKwkvKiBXYV8xNDA5MTQyMjU5ICovCj4gPiArCVdBX1NFVF9CSVRfTUFT
S0VEKEdFTjExX0NPTU1PTl9TTElDRV9DSElDS0VOMywKPiA+ICsJCQkgIEdFTjEyX0RJU0FCTEVf
Q1BTX0FXQVJFX0NPTE9SX1BJUEUpOwo+IAo+IEFGQUlDUyB0aGUgcmVnaXN0ZXIgaXMgcGFydCBv
ZiB0aGUgcmVuZGVyIGNvbnRleHQsIHNvIHNob3VsZG4ndCB3ZSBzZXQgdGhpcwo+IGFzIHBhcnQg
b2YgdGhlIGN0eF93b3JrYXJvdW5kcz8gdGhhdCdzIHdoYXQgd2UgZG8gZm9yIGFub3RoZXIgV0Eg
b24gdGhlIHNhbWUKPiByZWdpc3RlciBvbiBJQ0wuCgpIb3cgZG8geW91IHVzdWFsbHkgZGV0ZXJt
aW5lIGlmIGEgcmVnaXN0ZXIgaXMgcGFydCBvZiB0aGUgY29udGV4dCBvcgpub3Q/ICBUaGlzIG9u
ZSBkb2Vzbid0IGhhdmUgdGhlICJUaGlzIFJlZ2lzdGVyIGlzIHNhdmVkIGFuZCByZXN0b3JlZCBh
cwpwYXJ0IG9mIENvbnRleHQiIG5vdGF0aW9uIHRoYXQgb3RoZXIgY29udGV4dCByZWdpc3RlcnMg
aGF2ZSwgc28gaXMgdGhlcmUKc29tZXdoZXJlIGVsc2Ugd2UncmUgc3VwcG9zZWQgdG8gZmluZCB0
aGF0IGluZm9ybWF0aW9uPwoKCk1hdHQKCj4gCj4gRGFuaWVsZQo+IAo+ID4gICB9Cj4gPiAgIHN0
YXRpYyB2b2lkCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IGluZGV4IDAwNmNmZmQ1NmJl
Mi4uNTNlMDc4ODJlZmI3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gQEAg
LTc2NjgsNiArNzY2OCw3IEBAIGVudW0gewo+ID4gICAjZGVmaW5lIEdFTjExX0NPTU1PTl9TTElD
RV9DSElDS0VOMwkJX01NSU8oMHg3MzA0KQo+ID4gICAgICNkZWZpbmUgR0VOMTFfQkxFTkRfRU1C
X0ZJWF9ESVNBQkxFX0lOX1JDQwkoMSA8PCAxMSkKPiA+ICsgICNkZWZpbmUgR0VOMTJfRElTQUJM
RV9DUFNfQVdBUkVfQ09MT1JfUElQRQkoMSA8PCA5KQo+ID4gICAjZGVmaW5lIEhJWl9DSElDS0VO
CQkJCQlfTU1JTygweDcwMTgpCj4gPiAgICMgZGVmaW5lIENIVl9IWl84WDhfTU9ERV9JTl8xWAkJ
CQkoMSA8PCAxNSkKPiA+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIK
VlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYt
Mjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
