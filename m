Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE221B7C0
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 16:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D4B89125;
	Mon, 13 May 2019 14:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3333F89125
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 14:05:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 07:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,465,1549958400"; d="scan'208";a="171200505"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 13 May 2019 07:05:41 -0700
Date: Mon, 13 May 2019 17:05:18 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190513140518.GD30042@ideak-desk.fi.intel.com>
References: <20190510140255.25215-1-imre.deak@intel.com>
 <87a7fq8nli.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a7fq8nli.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: More workaround for port F
 detection due to broken VBTs
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

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMDQ6NTY6MjVQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gRnJpLCAxMCBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PiB3cm90ZToKPiA+IEFkZCBhbm90aGVyIElDTC1ZIFBDSUlEIHRoYXQgcHJvdmVkIHRvIGhhdmUg
b25seSA1IHBvcnRzIHRvIHRoZQo+ID4gY29ycmVzcG9uZGluZyBQQ0lJRCBsaXN0Lgo+ID4KPiA+
IE1lYW53aGlsZSBJJ20gdHJ5aW5nIHRvIGdldCBhIGNvbXBsZXRlIGxpc3Qgb2YgYWxsIFBDSUlE
cyB3aXRoIGxlc3MgdGhhbgo+ID4gNiBwb3J0cyBhbmQvb3IgZ2V0IGEgVkJUIGZpeCB0byBtYXJr
IHRoZXNlIHBvcnRzIG5vbi1leGlzdGFudCwgYnV0IHVudGlsCj4gPiB0aGVuIHRoZSBvbmx5IHdh
eSBpcyB0byBnbyBvbmUtYnktb25lLgo+ID4KPiA+IFRoaXMgZml4ZXMgdGhlIGZvbGxvd2luZyBl
cnJvciBvbiBtYWNoaW5lcyB3aXRoIGxlc3MgdGhhbiA2IHBvcnQ6Cj4gPgo+ID4gCVtkcm06aW50
ZWxfcG93ZXJfd2VsbF9lbmFibGUgW2k5MTVdXSBlbmFibGluZyBBVVggRgo+ID4gCS0tLS0tLS0t
LS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+ID4gCVdBUk5fT04oaW50ZWxfd2FpdF9mb3Jf
cmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIHJlZ3MtPmRyaXZlciwgKDB4MSA8PCAoKHB3X2lk
eCkgKiAyKSksICgweDEgPDwgKChwd19pZHgpICogMikpLCAxKSkKPiA+Cj4gPiAoSW50ZXJuYWwg
cmVmZXJlbmNlOiBCU3BlYy9JbmRleC8yMDU4NC9Jc3N1ZXMsIEhTRC8xMzA2MDg0MTE2KQo+ID4K
PiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+ID4gUmVmZXJlbmNl
czogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4OTE1Cj4g
Cj4gV2UndmUgdXNlZCBCdWd6aWxsYTogZm9yIGJ1Z3MgdGhhdCB0aGUgcGF0Y2ggYXQgaGFuZCBm
aXhlcywgYW5kCj4gUmVmZXJlbmNlczogZm9yIG90aGVyIHJlbGF0ZWQgbGlua3MgYW5kIHN0dWZm
LiBTZWVtcyBsaWtlIHRoZSBwYXRjaAo+IGFjdHVhbGx5IGZpeGVkIHRoZSBidWcuCgpZZXMsIGl0
J3MgYSBsaW5rIHRvIGEgcmVsYXRlZCBidWcuIEl0IC0gdW5mb3J0dW5hdGVseSAtIGRvZXMgbm90
IGZpeCB0aGUKYnVnLCBzaW5jZSB3ZSBkb24ndCBrbm93IHlldCB0aGUgZnVsbCBQQ0lJRCBsaXN0
IGZvciBJQ0xzIHRoYXQgaGF2ZSBvbmx5CjUgKG9yIGV2ZW4gbGVzcykgcG9ydHMuCgo+IAo+IEJS
LAo+IEphbmkuCj4gCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIHwgNCArKy0t
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJt
L2k5MTVfcGNpaWRzLmgKPiA+IGluZGV4IDY0NzdkYTIyYWYyOC4uNmQ2MGVhNjhjMTcxIDEwMDY0
NAo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+ID4gKysrIGIvaW5jbHVkZS9k
cm0vaTkxNV9wY2lpZHMuaAo+ID4gQEAgLTU1OSw3ICs1NTksNiBAQAo+ID4gICNkZWZpbmUgSU5U
RUxfSUNMX1BPUlRfRl9JRFMoaW5mbykgXAo+ID4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MCwg
aW5mbyksIFwKPiA+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNUMsIGluZm8pLCBcCj4gPiAtCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg4QTVELCBpbmZvKSwgXAo+ID4gIAlJTlRFTF9WR0FfREVWSUNFKDB4
OEE1OSwgaW5mbyksCVwKPiA+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8pLAlcCj4g
PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUyLCBpbmZvKSwgXAo+ID4gQEAgLTU3Myw3ICs1NzIs
OCBAQAo+ID4gIAo+ID4gICNkZWZpbmUgSU5URUxfSUNMXzExX0lEUyhpbmZvKSBcCj4gPiAgCUlO
VEVMX0lDTF9QT1JUX0ZfSURTKGluZm8pLCBcCj4gPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUx
LCBpbmZvKQo+ID4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwgaW5mbyksIFwKPiA+ICsJSU5U
RUxfVkdBX0RFVklDRSgweDhBNUQsIGluZm8pCj4gPiAgCj4gPiAgLyogRUhMICovCj4gPiAgI2Rl
ZmluZSBJTlRFTF9FSExfSURTKGluZm8pIFwKPiAKPiAtLSAKPiBKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
