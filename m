Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F334C460B0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 16:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D49F89791;
	Fri, 14 Jun 2019 14:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8261289791
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 14:27:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 07:27:22 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 07:27:23 -0700
Date: Fri, 14 Jun 2019 07:27:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <20190614142723.GD32200@mdroper-desk.amr.corp.intel.com>
References: <20190612182745.GO13184@mdroper-desk.amr.corp.intel.com>
 <20190612183631.30540-1-matthew.d.roper@intel.com>
 <957c710d-78bb-0e03-4937-e467f3803854@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <957c710d-78bb-0e03-4937-e467f3803854@intel.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add Wa_1409120013:icl,ehl
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

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTE6NDA6NTNBTSAtMDcwMCwgQ2xpbnRvbiBUYXlsb3Ig
d3JvdGU6Cj4gTG9va3MgZ29vZCBub3cuCj4gCj4gUmV2aWV3ZWQtYnk6IENsaW50IFRheWxvciA8
Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+Cj4gCgpDSSBjYW1lIGJhY2sgY2xlYW4sIHNvIHB1
c2hlZCB0byBkaW5xLiAgVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKCk1hdHQKCj4gCj4gLUNsaW50
Cj4gCj4gCj4gT24gNi8xMi8xOSAxMTozNiBBTSwgTWF0dCBSb3BlciB3cm90ZToKPiA+IFRoaXMg
Y2hpY2tlbiBiaXQgc2hvdWxkIGJlIHNldCBiZWZvcmUgZW5hYmxpbmcgRkJDIHRvIGF2b2lkIHNj
cmVlbgo+ID4gY29ycnVwdGlvbiB3aGVuIHRoZSBwbGFuZSBzaXplIGhhcyBvZGQgdmVydGljYWwg
YW5kIGhvcml6b250YWwKPiA+IGRpbWVuc2lvbnMuICBJdCBpcyBzYWZlIHRvIGxlYXZlIHRoZSBi
aXQgc2V0IGV2ZW4gd2hlbiBGQkMgaXMgZGlzYWJsZWQuCj4gPiAKPiA+IHYyOgo+ID4gICAtIFRo
ZSBic3BlYydzIG5hbWUgZm9yIHRoaXMgYml0IG9uIHRoZXNlIHBsYXRmb3JtcyAoIlNwYXJlIDE0
IikgaXMKPiA+ICAgICBwcmV0dHkgbWVhbmluZ2xlc3MuICBMZXQncyByZW5hbWUgdGhlIGJpdCBk
ZWZpbml0aW9uIHRvIHNvbWV0aGluZwo+ID4gICAgIHRoYXQgbW9yZSBhY2N1cmF0ZWx5IHJlZmxl
Y3RzIHdoYXQgdGhlIGJpdCByZWFsbHkgZG9lcy4gIChDbGludCkKPiA+IAo+ID4gdjM6Cj4gPiAg
IC0gVGhlIGNoaWNrZW4gcmVnaXN0ZXIgd2FzIGFscmVhZHkgZGVmaW5lZCAoYWxvbmcgd2l0aCBh
IGZldyBvdGhlcgo+ID4gICAgIGdlbjktc3BlY2lmaWMgYml0cykgZmFydGhlciBkb3duLiAgSnVz
dCBhZGQgdGhlIG5ldyBiaXQgZGVmaW5pdGlvbgo+ID4gICAgIHRoZXJlLiAgKENsaW50KQo+ID4g
Cj4gPiBDYzogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgo+ID4g
U2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICB8IDEgKwo+ID4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyB8IDQgKysrKwo+ID4gICAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+
IGluZGV4IGVkZjlmOTM5MzRhMS4uMzY4ZWU3MTc1ODBjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAo+ID4gQEAgLTMxNjMsNiArMzE2Myw3IEBAIGVudW0gaTkxNV9wb3dlcl93ZWxs
X2lkIHsKPiA+ICAgI2RlZmluZSBJTEtfRFBGQ19GRU5DRV9ZT0ZGCV9NTUlPKDB4NDMyMTgpCj4g
PiAgICNkZWZpbmUgSUxLX0RQRkNfQ0hJQ0tFTglfTU1JTygweDQzMjI0KQo+ID4gICAjZGVmaW5l
ICAgSUxLX0RQRkNfRElTQUJMRV9EVU1NWTAgKDEgPDwgOCkKPiA+ICsjZGVmaW5lICAgSUxLX0RQ
RkNfQ0hJQ0tFTl9DT01QX0RVTU1ZX1BJWEVMCSgxIDw8IDE0KQo+ID4gICAjZGVmaW5lICAgSUxL
X0RQRkNfTlVLRV9PTl9BTllfTU9ESUZJQ0FUSU9OCSgxIDw8IDIzKQo+ID4gICAjZGVmaW5lIElM
S19GQkNfUlRfQkFTRQkJX01NSU8oMHgyMTI4KQo+ID4gICAjZGVmaW5lICAgSUxLX0ZCQ19SVF9W
QUxJRAkoMSA8PCAwKQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMKPiA+IGluZGV4IDU2Nzlm
MmZmZmI3Yy4uZDM2Y2FkYTJjYzdkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZmJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiYy5j
Cj4gPiBAQCAtMzQ0LDYgKzM0NCwxMCBAQCBzdGF0aWMgdm9pZCBnZW43X2ZiY19hY3RpdmF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgIAkJCSAgIEhTV19GQkNRX0RJ
Uyk7Cj4gPiAgIAl9Cj4gPiArCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKPiA+ICsJCS8qIFdh
XzE0MDkxMjAwMTM6aWNsLGVobCAqLwo+ID4gKwkJSTkxNV9XUklURShJTEtfRFBGQ19DSElDS0VO
LCBJTEtfRFBGQ19DSElDS0VOX0NPTVBfRFVNTVlfUElYRUwpOwo+ID4gKwo+ID4gICAJSTkxNV9X
UklURShJTEtfRFBGQ19DT05UUk9MLCBkcGZjX2N0bCB8IERQRkNfQ1RMX0VOKTsKPiA+ICAgCWlu
dGVsX2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNv
ZnR3YXJlIEVuZ2luZWVyCklvVEcgUGxhdGZvcm0gRW5hYmxpbmcgJiBEZXZlbG9wbWVudApJbnRl
bCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
