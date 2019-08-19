Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E0394AB8
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 18:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945D16E22C;
	Mon, 19 Aug 2019 16:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A816E6E22C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 16:46:07 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 09:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="353298853"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga005.jf.intel.com with ESMTP; 19 Aug 2019 09:46:06 -0700
Date: Mon, 19 Aug 2019 09:46:06 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190819164606.GF27240@mdroper-desk.amr.corp.intel.com>
References: <20190815215859.10970-1-matthew.d.roper@intel.com>
 <20190819161356.GV5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819161356.GV5942@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add Wa_1604278689:icl,ehl
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

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMDc6MTM6NTZQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgQXVnIDE1LCAyMDE5IGF0IDAyOjU4OjU5UE0gLTA3MDAsIE1hdHQg
Um9wZXIgd3JvdGU6Cj4gPiBGcm9tIHRoZSBic3BlYzoKPiA+IAo+ID4gICAgICAgICAiU1cgbXVz
dCBhbHdheXMgcHJvZ3JhbSB0aGUgRkJDX1JUX0JBU0VfQUREUl9SRUdJU1RFUl8qIHJlZ2lzdGVy
Cj4gPiAgICAgICAgIGluIFJlbmRlciBFbmdpbmUgdG8gYSByZXNlcnZlZCB2YWx1ZSAoMHhGRkZG
X0ZGRkYpIHN1Y2ggdGhhdCB0aGUKPiA+ICAgICAgICAgcHJvZ3JhbW1lZCB2YWx1ZSBkb2VzbuKA
mXQgbWF0Y2ggdGhlIHJlbmRlciB0YXJnZXQgc3VyZmFjZSBhZGRyZXNzCj4gPiAgICAgICAgIHBy
b2dyYW1tZWQuIFRoaXMgd291bGQgZGlzYWJsZSByZW5kZXIgZW5naW5lIGZyb20gZ2VuZXJhdGlu
Zwo+ID4gICAgICAgICBtb2RpZnkgbWVzc2FnZXMgdG8gRkJDIHVuaXQgaW4gZGlzcGxheS4iCj4g
Cj4gVGhpcyBsb29rcyBhIGJpdCBwZWN1bGlhci4gVGhhdCBtYWdpYyB2YWx1ZSBzZWVtcyB0byBp
bXBseSB0aGF0IHRoZQo+IFJUX1ZBTElEIGJpdCBubyBsb25nZXIgZnVuY3Rpb25zIGFzIGludGVu
ZGVkLiBJIGZpbGVkIGEgc3BlYyBpc3N1ZSB0bwo+IGdldCBzb21lIGNsYXJpZmljYXRpb24gb24g
dGhpcy4KClllYWgsIHRoaXMgd29ycmllZCBtZSBhcyB3ZWxsLCBhbHRob3VnaCBJIGZpZ3VyZWQg
dGhlaXIgbG9naWMgd2FzIHRoYXQKdHVybmluZyBvbiB0aGUgJ3ZhbGlkJyBiaXQgd2FzIG9rYXkg
YXMgbG9uZyBhcyB0aGUgYWRkcmVzcyBjb21wYXJpc29ucwphbHdheXMgcmV0dXJuZWQgYSBtaXNt
YXRjaC4gIEhvd2V2ZXIgQ0kgc3RhcnRzIGZhaWxpbmcgd2l0aCB0aGlzCndvcmthcm91bmQgYXBw
bGllZCwgYW5kIGV4cGVyaW1lbnRhdGlvbiB3aXRoIHRyeWJvdCBpbmRpY2F0ZXMgdGhhdAp0aGUg
ZmFpbHVyZXMgZ28gYXdheSB3aGVuIEkgYWRkIGEgIiYgflJUX1ZBTElEIiB0byB0aGUgUlRfQkFT
RSByZWdpc3Rlcgp2YWx1ZS4gIEknbGwgc3VibWl0IGFuIHVwZGF0ZWQgdmVyc2lvbiB0aGF0IHR1
cm5zIHRoYXQgYml0IG9mZiBpbiBhIGJpdC4KCgpNYXR0Cgo+IAo+ID4gCj4gPiBCc3BlYzogMTEz
ODgKPiA+IEJzcGVjOiAzMzQ1MQo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgfCAxICsKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKPiA+IGluZGV4IDcwNGFjZTAxZTdmNS4uMjliNTBlMmMwNjI3IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gQEAgLTU2Nyw2
ICs1NjcsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ICAJLyogYWxsb3cgaGVhZGVybGVzcyBtZXNzYWdl
cyBmb3IgcHJlZW1wdGlibGUgR1BHUFUgY29udGV4dCAqLwo+ID4gIAlXQV9TRVRfQklUX01BU0tF
RChHRU4xMF9TQU1QTEVSX01PREUsCj4gPiAgCQkJICBHRU4xMV9TQU1QTEVSX0VOQUJMRV9IRUFE
TEVTU19NU0cpOwo+ID4gKwo+ID4gKwkvKiBXYV8xNjA0Mjc4Njg5OmljbCxlaGwgKi8KPiA+ICsJ
d2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgSVZCX0ZCQ19SVF9CQVNFX1VQUEVSLAo+ID4gKwkJCSAg
IDAsIC8qIHdyaXRlLW9ubHkgcmVnaXN0ZXI7IHNraXAgdmFsaWRhdGlvbiAqLwo+ID4gKwkJCSAg
IDB4RkZGRkZGRkYpOwo+ID4gKwl3YV93cml0ZSh3YWwsIElWQl9GQkNfUlRfQkFTRSwgMHhGRkZG
RkZGRik7Cj4gPiAgfQo+ID4gIAo+ID4gIHN0YXRpYyB2b2lkCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiA+IGluZGV4IGRlZjZkYmRjN2UyZS4uMTRhZjFiMWRjMGQzIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gQEAgLTMyMTQsNiArMzIxNCw3IEBAIGVudW0gaTkxNV9w
b3dlcl93ZWxsX2lkIHsKPiA+ICAKPiA+ICAvKiBGcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBmb3Ig
SXZ5YnJpZGdlICovCj4gPiAgI2RlZmluZSBJVkJfRkJDX1JUX0JBU0UJCQlfTU1JTygweDcwMjAp
Cj4gPiArI2RlZmluZSBJVkJfRkJDX1JUX0JBU0VfVVBQRVIJCV9NTUlPKDB4NzAyNCkKPiAKPiBU
aGF0IHJlZ2lzdGVyIHNlZW1zIHRvIGJlIEJEVysgYWN0dWFsbHkuCj4gCj4gPiAgCj4gPiAgI2Rl
ZmluZSBJUFNfQ1RMCQlfTU1JTygweDQzNDA4KQo+ID4gICNkZWZpbmUgICBJUFNfRU5BQkxFCSgx
IDw8IDMxKQo+ID4gLS0gCj4gPiAyLjIwLjEKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gLS0gCj4gVmlsbGUgU3ly
asOkbMOkCj4gSW50ZWwKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVy
ClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2
LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
