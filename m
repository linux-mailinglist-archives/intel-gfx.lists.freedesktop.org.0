Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA577166F8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 17:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F756E7F1;
	Tue,  7 May 2019 15:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECF26E7F1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 15:38:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 08:38:13 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 07 May 2019 08:38:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2019 18:38:10 +0300
Date: Tue, 7 May 2019 18:38:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20190507153810.GQ24299@intel.com>
References: <20190507130257.22837-1-shashank.sharma@intel.com>
 <20190507130257.22837-2-shashank.sharma@intel.com>
 <20190507140646.GO24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F81FEF5E1@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FEF5E1@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB
 conversion for BT2020 case
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDI6MzU6MTVQTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBJbnRlbC1n
ZnggW21haWx0bzppbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmddIE9uIEJl
aGFsZiBPZiBWaWxsZQo+ID5TeXJqw6Rsw6QKPiA+U2VudDogVHVlc2RheSwgTWF5IDcsIDIwMTkg
NzozNyBQTQo+ID5UbzogU2hhcm1hLCBTaGFzaGFuayA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNv
bT4KPiA+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+U3ViamVjdDogUmU6
IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvaWNsOiBIYW5kbGUgWUNiQ3IgdG8gUkdCIGNv
bnZlcnNpb24gZm9yCj4gPkJUMjAyMCBjYXNlCj4gPgo+ID5PbiBUdWUsIE1heSAwNywgMjAxOSBh
dCAwNjozMjo1N1BNICswNTMwLCBTaGFzaGFuayBTaGFybWEgd3JvdGU6Cj4gPj4gRnJvbTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiA+Pgo+ID4+IEN1cnJlbnRseSBpbnB1
dCBjc2MgZm9yIFlDYkNSIHRvIFJHQiBjb252ZXJzaW9uIGhhbmRsZXMgb25seQo+ID4+IEJUNjAx
IGFuZCBCdDcwOS4gRXh0ZW5kaW5nIGl0IHRvIHN1cHBvcnQgQlQyMDIwIGFzIHdlbGwuCj4gPj4K
PiA+PiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+
ID4+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVs
LmNvbT4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMg
fCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDI0IGlu
c2VydGlvbnMoKykKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9zcHJpdGUuYwo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMK
PiA+PiBpbmRleCA0NGFhZWFjMWIyZWQuLjI1MzZlNzU3YmVjMiAxMDA2NDQKPiA+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCj4gPj4gQEAgLTQzMyw2ICs0MzMsMTggQEAgaWNsX3By
b2dyYW1faW5wdXRfY3NjKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gPj4gIAkJCTB4OUVG
OCwgMHg3ODAwLCAweEFCRjgsCj4gPj4gIAkJCTB4MCwgMHg3ODAwLCAgMHg3RUQ4LAo+ID4+ICAJ
CX0sCj4gPj4gKwkJLyoKPiA+PiArCQkgKiBCVC4yMDIwIGZ1bGwgcmFuZ2UgWUNiQ3IgLT4gZnVs
bCByYW5nZSBSR0IKPiA+PiArCQkgKiBUaGUgbWF0cml4IHJlcXVpcmVkIGlzIDoKPiA+PiArCQkg
KiBbMS4wMDAsIDAuMDAwLCAxLjQ3NCwKPiA+PiArCQkgKiAgMS4wMDAsIC0wLjE2NDUsIC0wLjU3
MTMsCj4gPj4gKwkJICogIDEuMDAwLCAxLjg4MTQsIDAuMDAwMF0KPiA+PiArCQkgKi8KPiA+PiAr
CQlbRFJNX0NPTE9SX1lDQkNSX0JUMjAyMF0gPSB7Cj4gPj4gKwkJCTB4N0JDOCwgMHg3ODAwLCAw
eDAsCj4gPj4gKwkJCTB4ODkyOCwgMHg3ODAwLCAweEFBODgsCj4gPj4gKwkJCTB4MCwgMHg3ODAw
LCAweDdGMTAsCj4gPj4gKwkJfSwKPiA+PiAgCX07Cj4gPj4KPiA+PiAgCS8qIE1hdHJpeCBmb3Ig
TGltaXRlZCBSYW5nZSB0byBGdWxsIFJhbmdlIENvbnZlcnNpb24gKi8gQEAgLTQ2MSw2Cj4gPj4g
KzQ3MywxOCBAQCBpY2xfcHJvZ3JhbV9pbnB1dF9jc2Moc3RydWN0IGludGVsX3BsYW5lICpwbGFu
ZSwKPiA+PiAgCQkJMHg4ODg4LCAweDc5MTgsIDB4QURBOCwKPiA+PiAgCQkJMHgwLCAweDc5MTgs
ICAweDY4NzAsCj4gPj4gIAkJfSwKPiA+PiArCQkvKgo+ID4+ICsJCSAqIEJULjIwMjAgTGltaXRl
ZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgo+ID4+ICsJCSAqIFRoZSBtYXRyaXggcmVx
dWlyZWQgaXMgOgo+ID4+ICsJCSAqIFsxLjE2NCwgMC4wMDAsIDEuNzE3LAo+ID4+ICsJCSAqICAx
LjEzOCwgLTAuMTg3MywgLTAuNjUwNCwKPiA+PiArCQkgKiAgMS4xMzgwLCAyLjE0MTcsIDAuMDAw
MF0KPiA+Cj4gPldoZXJlIGFyZSB0aG9zZSAxLjEzOCBjb21pbmcgZnJvbT8KPiAKPiBIaSBWaWxs
ZSwKPiBUaGlzIGlzIHRoZSBvcmlnaW5hbCBZQ0JDUiB0byBSR0IgQlQyMDIwIG1hdHJpeDoKPiB7
Cj4gICAgICAgICAxLjAwMDAwMDAwMDAwLCAgMC4wMDAwMDAwMDAwMCwgIDEuNDc0NjAwMDAwMDAs
Cj4gICAgICAgICAxLjAwMDAwMDAwMDAwLCAgLTAuMTY0NTUzMTI2ODQsIC0wLjU3MTM1MzEyNjg0
LAo+ICAgICAgICAgMS4wMDAwMDAwMDAwMCwgIDEuODgxNDAwMDAwMDAsICAwLjAwMDAwMDAwMDAw
Cj4gfTsKPiAKPiBXZSBoYXZlIHRvIGNvbnZlcnQgTGltaXRlZCBSYW5nZSBZQ2JDciB0byBGdWxs
IFJhbmdlIFJHQi4gSGVuY2Ugd2UgbmVlZCB0byBhcHBseSBhIHNjYWxlIGZhY3RvcjoKPiAgeXNj
YWxlZmFjdG9yID0gMjE5LjAgKiBub3JtYWxpemluZ2ZhY3RvcjsKPiAgY2JjcnNjYWxlZmFjdG9y
ID0gMjI0LjAgKiBub3JtYWxpemluZ2ZhY3RvcjsKPiAKPiAgLyogU2NhbGUgZmFjdG9ycyBhcmUg
aW52ZXJ0ZWQgZm9yIExSIHRvIEZSIGNvbnZlcnNpb24gKi8KPiAgeXNjYWxlZmFjdG9yID0gMS4w
IC8geXNjYWxlZmFjdG9yOwo+ICBjYmNyc2NhbGVmYWN0b3IgPSAxLjAgLyBjYmNyc2NhbGVmYWN0
b3I7Cj4gCj4gVGhpcyB5aWVsZHMgdGhlIGFib3ZlIHJlc3VsdHMuIAoKVGhvc2UgYXJlIHRoZSBj
b2VmZmljaWVudHMgZm9yIFksIHNvIHRoZXkgc2hvdWxkIHN0aWxsCmJlIHRoZSBzYW1lIGZvciBh
bGwgdGhyZWUgb3V0cHV0IGNoYW5uZWxzLgoKaWd0X2NvbG9yX2VuY29kaW5nIGdpdmVzIG1lOgp8
MS4xNjQ0LCAwLjAwMDAsIDEuNjc4Nyx8CnwxLjE2NDQsLTAuMTg3MywtMC42NTA0LHwKfDEuMTY0
NCwgMi4xNDE4LCAwLjAwMDAsfAoKTG9va3MgbGlrZSB3ZSdyZSBhbHNvIG1pc3Byb2dyYW1taW5n
IHRoZSBZIHByZS1vZmZzZXQKZm9yIHRoZSBmdWxsIHJhbmdlIFlDYkNyIGNhc2UuCgotLSAKVmls
bGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
