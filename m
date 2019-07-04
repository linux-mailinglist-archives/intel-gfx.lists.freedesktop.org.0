Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6686F5FC68
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 19:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD5D899E8;
	Thu,  4 Jul 2019 17:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50310899E8
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 17:21:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 10:21:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="164682190"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jul 2019 10:21:39 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x64HLclC021686; Thu, 4 Jul 2019 18:21:38 +0100
To: intel-gfx@lists.freedesktop.org, "Lucas De Marchi"
 <lucas.demarchi@intel.com>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
Date: Thu, 04 Jul 2019 19:21:38 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190704000649.20661-3-lucas.demarchi@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNCBKdWwgMjAxOSAwMjowNjo0NyArMDIwMCwgTHVjYXMgRGUgTWFyY2hpICAKPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4gd3JvdGU6Cgo+IE1ha2UgaW50ZWxfdGMuaCB0aGUgZmly
c3QgaW5jbHVkZSBzbyB3ZSBndWFyYW50ZWUgaXQncyBzZWxmLWNvbnRhaW5lZC4KPiBTb3J0IHRo
ZSByZXN0LiBTYW1lIHByaW5jaXBsZSBhcHBsaWVzIGZvciBpbmNsdWRlcyBpbiB0aGUgaGVhZGVy
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8
IDUgKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oIHwgNSAr
KystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMg
IAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCj4gaW5kZXggMWE5
ZGQzMmZiMGE1Li5lNmU2MTYzYzEyMzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jCj4gQEAgLTMsMTAgKzMsMTEgQEAKPiAgICogQ29weXJpZ2h0IMKpIDIwMTkg
SW50ZWwgQ29ycG9yYXRpb24KPiAgICovCj4gKyNpbmNsdWRlICJpbnRlbF90Yy5oIgo+ICsKPiAr
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCgp0aGlzIG1hc3RlciBoZWFkZXIgd2lsbCBsaWtlbHkgaW5j
bHVkZSBldmVyeXRoaW5nLCBzbyB3aGlsZQp5b3VyIC5oIGlzIG5vdyBzZWxmLWNvbnRhaW5lZCwg
LmMgcmVtYWlucyB1bmNsZWFuCgo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIgo+ICAjaW5j
bHVkZSAiaW50ZWxfZHBfbXN0LmgiCj4gLSNpbmNsdWRlICJpOTE1X2Rydi5oIgo+IC0jaW5jbHVk
ZSAiaW50ZWxfdGMuaCIKPiBzdGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51
bSB0Y19wb3J0X21vZGUgbW9kZSkKPiAgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmggIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5oCj4gaW5kZXggMGQ4NDExZDRhOTFkLi40NWFlMzA1MzdiNzggMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gQEAgLTYsMTAgKzYsMTEgQEAK
PiAgI2lmbmRlZiBfX0lOVEVMX1RDX0hfXwo+ICAjZGVmaW5lIF9fSU5URUxfVENfSF9fCj4gLSNp
bmNsdWRlIDxsaW51eC90eXBlcy5oPgo+IC0jaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPiAgI2lu
Y2x1ZGUgImludGVsX2Rydi5oIgoKYXJlIHlvdSBzdXJlIHlvdSB3YW50IHRoaXMgZ2lhbnQgaGVh
ZGVyIHRvIGJlIGluY2x1ZGVkIGhlcmU/Cm5vdGUgdGhhdCBpdCB3aWxsICNpbmNsdWRlIGFsbW9z
dCBldmVyeXRoaW5nIChpOTE1X2Rydi5oIHRvbykKYW5kIG1heSBpbnRyb2R1Y2UgaGFyZCB0byBy
ZXNvbHZlIGNpcmN1bGFyIGRlcGVuZGVuY2llcwoKPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+
Cgp3ZSBkb24ndCBuZWVkIG11dGV4IGRlZmluaXRpb25zIGhlcmUgaW4gY3VycmVudCBoZWFkZXIg
ZmlsZQoKPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gKwoKc28geW91IG5lZWQgb25seSBh
Ym92ZSB0eXBlcy5oIGFuZCB0aGVuIGFkZCBmb3J3YXJkIGRlY2wgZm9yOgoKc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydDsKCj4gIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+ICB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFu
ZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPiAgaW50IGludGVs
X3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgIAo+
ICpkaWdfcG9ydCk7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
