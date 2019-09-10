Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10EDAEAC1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 14:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2E26E8D0;
	Tue, 10 Sep 2019 12:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AAE6E8D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 12:43:03 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 05:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="189331465"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Sep 2019 05:43:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 15:42:59 +0300
Date: Tue, 10 Sep 2019 15:42:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190910124259.GM7482@intel.com>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
 <20190907002143.22591-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907002143.22591-8-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Enhance cdclk sanitization
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

T24gRnJpLCBTZXAgMDYsIDIwMTkgYXQgMDU6MjE6NDJQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBXaGVuIHJlYWRpbmcgb3V0IHRoZSBCSU9TLXByb2dyYW1tZWQgY2RjbGsgc3RhdGUsIGxl
dCdzIG1ha2Ugc3VyZSB0aGF0Cj4gdGhlIGNkY2xrIHZhbHVlIGlzIG9uIHRoZSB2YWxpZCBsaXN0
IGZvciB0aGUgcGxhdGZvcm0sIGVuc3VyZSB0aGF0IHRoZQo+IFZDTyBtYXRjaGVzIHRoZSBjZGNs
aywgYW5kIGVuc3VyZSB0aGF0IHRoZSBDRDJYIGRpdmlkZXIgd2FzIHNldAo+IHByb3Blcmx5LgoK
UmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDM0
ICsrKysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYwo+IGluZGV4IGE2Njk2Njk3YTA5Zi4uMzU2NDk1NTkxY2Y5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IEBAIC0xNjA3LDYgKzE2
MDcsNyBAQCBzdGF0aWMgdm9pZCBieHRfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiAgc3RhdGljIHZvaWQgYnh0X3Nhbml0aXplX2NkY2xrKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+ICAJdTMyIGNkY3RsLCBleHBlY3RlZDsKPiAr
CWludCBjZGNsaywgdmNvOwo+ICAKPiAgCWludGVsX3VwZGF0ZV9jZGNsayhkZXZfcHJpdik7Cj4g
IAlpbnRlbF9kdW1wX2NkY2xrX3N0YXRlKCZkZXZfcHJpdi0+Y2RjbGsuaHcsICJDdXJyZW50IENE
Q0xLIik7Cj4gQEAgLTE2MjksOCArMTYzMCwzNyBAQCBzdGF0aWMgdm9pZCBieHRfc2FuaXRpemVf
Y2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJICovCj4gIAljZGN0
bCAmPSB+QlhUX0NEQ0xLX0NEMlhfUElQRV9OT05FOwo+ICAKPiAtCWV4cGVjdGVkID0gKGNkY3Rs
ICYgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF9NQVNLKSB8Cj4gLQkJc2tsX2NkY2xrX2RlY2ltYWwo
ZGV2X3ByaXYtPmNkY2xrLmh3LmNkY2xrKTsKPiArCS8qIE1ha2Ugc3VyZSB0aGlzIGlzIGEgbGVn
YWwgY2RjbGsgdmFsdWUgZm9yIHRoZSBwbGF0Zm9ybSAqLwo+ICsJY2RjbGsgPSBjYWxjX2NkY2xr
KGRldl9wcml2LCBkZXZfcHJpdi0+Y2RjbGsuaHcuY2RjbGspOwo+ICsJaWYgKGNkY2xrICE9IGRl
dl9wcml2LT5jZGNsay5ody5jZGNsaykKPiArCQlnb3RvIHNhbml0aXplOwo+ICsKPiArCS8qIE1h
a2Ugc3VyZSB0aGUgVkNPIGlzIGNvcnJlY3QgZm9yIHRoZSBjZGNsayAqLwo+ICsJdmNvID0gY2Fs
Y19jZGNsa19wbGxfdmNvKGRldl9wcml2LCBjZGNsayk7Cj4gKwlpZiAodmNvICE9IGRldl9wcml2
LT5jZGNsay5ody52Y28pCj4gKwkJZ290byBzYW5pdGl6ZTsKPiArCj4gKwlleHBlY3RlZCA9IHNr
bF9jZGNsa19kZWNpbWFsKGNkY2xrKTsKPiArCj4gKwkvKiBGaWd1cmUgb3V0IHdoYXQgQ0QyWCBk
aXZpZGVyIHdlIHNob3VsZCBiZSB1c2luZyBmb3IgdGhpcyBjZGNsayAqLwo+ICsJc3dpdGNoIChE
SVZfUk9VTkRfQ0xPU0VTVChkZXZfcHJpdi0+Y2RjbGsuaHcudmNvLAo+ICsJCQkJICBkZXZfcHJp
di0+Y2RjbGsuaHcuY2RjbGspKSB7Cj4gKwljYXNlIDI6Cj4gKwkJZXhwZWN0ZWQgfD0gQlhUX0NE
Q0xLX0NEMlhfRElWX1NFTF8xOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSAzOgo+ICsJCWV4cGVjdGVk
IHw9IEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMV81Owo+ICsJCWJyZWFrOwo+ICsJY2FzZSA0Ogo+
ICsJCWV4cGVjdGVkIHw9IEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMjsKPiArCQlicmVhazsKPiAr
CWNhc2UgODoKPiArCQlleHBlY3RlZCB8PSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzQ7Cj4gKwkJ
YnJlYWs7Cj4gKwlkZWZhdWx0Ogo+ICsJCWdvdG8gc2FuaXRpemU7Cj4gKwl9Cj4gKwo+ICAJLyoK
PiAgCSAqIERpc2FibGUgU1NBIFByZWNoYXJnZSB3aGVuIENEIGNsb2NrIGZyZXF1ZW5jeSA8IDUw
MCBNSHosCj4gIAkgKiBlbmFibGUgb3RoZXJ3aXNlLgo+IC0tIAo+IDIuMjAuMQoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
