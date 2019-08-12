Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 260F58AA23
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 00:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269706E5E6;
	Mon, 12 Aug 2019 22:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545CB6E5E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 22:09:06 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 15:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,379,1559545200"; d="scan'208";a="166864810"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by orsmga007.jf.intel.com with ESMTP; 12 Aug 2019 15:09:05 -0700
Date: Mon, 12 Aug 2019 15:10:33 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190812221033.GA16513@InViCtUs>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726000226.26914-4-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Implement Wa_1406941453
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
Cc: Michel Thierry <michel.thierry@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMDU6MDI6MjZQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+
Cj4gCj4gRW5hYmxlIFNtYWxsIFBMIGZvciBwb3dlciBiZW5lZml0Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gUmV2aWV3
ZWQtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29t
Pgo+IExpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDE5MDcxMzAxMDk0MC4xNzcxMS0xOC1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDUgKysrKysKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDMgKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggMzIzNWVmMzU1ZGZkLi44MzBjY2Q0MTZh
MjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
PiBAQCAtMTI3OSw2ICsxMjc5LDExIEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgCQl3YV93cml0
ZV9vcih3YWwsCj4gIAkJCSAgICBHRU4xMl9MM1NRQ1JFRzIsCj4gIAkJCSAgICBHRU4xMl9MUVND
X0ZMVVNIX0NPSEVSRU5UX0xJTkVTKTsKPiArCj4gKwkJLyogV2FfMTQwNjk0MTQ1Mzp0Z2wgKi8K
PiArCQl3YV9tYXNrZWRfZW4od2FsLAo+ICsJCQkgICAgIFNBTVBMRVJfTU9ERSwKPiArCQkJICAg
ICBTQU1QTEVSX0VOQUJMRV9TTUFMTF9QTCk7Cj4gIAl9Cj4gIAo+ICAJaWYgKElTX0dFTihpOTE1
LCAxMSkpIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBmYmJiODlmNmNhMmYuLjcx
ZWZiMzdmNTRhMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC04OTY1LDYgKzg5
NjUsOSBAQCBlbnVtIHsKPiAgI2RlZmluZSAgIEdFTjlfREdfTUlSUk9SX0ZJWF9FTkFCTEUJKDEg
PDwgNSkKPiAgI2RlZmluZSAgIEdFTjlfQ0NTX1RMQl9QUkVGRVRDSF9FTkFCTEUJKDEgPDwgMykK
PiAgCj4gKyNkZWZpbmUgU0FNUExFUl9NT0RFCQkJX01NSU8oMHhlMThjKQo+ICsjZGVmaW5lICAg
U0FNUExFUl9FTkFCTEVfU01BTExfUEwJKDEgPDwgMTUpCj4gKwo+ICAjZGVmaW5lIEdFTjhfUk9X
X0NISUNLRU4JCV9NTUlPKDB4ZTRmMCkKPiAgI2RlZmluZSAgIEZMT1dfQ09OVFJPTF9FTkFCTEUJ
CSgxIDw8IDE1KQo+ICAjZGVmaW5lICAgUEFSVElBTF9JTlNUUlVDVElPTl9TSE9PVERPV05fRElT
QUJMRQkoMSA8PCA4KQo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
