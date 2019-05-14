Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1251C423
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 09:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C1D892C6;
	Tue, 14 May 2019 07:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3125F892C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 07:49:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 00:49:26 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 May 2019 00:49:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
In-Reply-To: <20190513140518.GD30042@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190510140255.25215-1-imre.deak@intel.com>
 <87a7fq8nli.fsf@intel.com> <20190513140518.GD30042@ideak-desk.fi.intel.com>
Date: Tue, 14 May 2019 10:51:26 +0300
Message-ID: <87tvdxjwxt.fsf@intel.com>
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMyBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBPbiBNb24sIE1heSAxMywgMjAxOSBhdCAwNDo1NjoyNVBNICswMzAwLCBKYW5pIE5pa3Vs
YSB3cm90ZToKPj4gT24gRnJpLCAxMCBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPiB3cm90ZToKPj4gPiBBZGQgYW5vdGhlciBJQ0wtWSBQQ0lJRCB0aGF0IHByb3ZlZCB0
byBoYXZlIG9ubHkgNSBwb3J0cyB0byB0aGUKPj4gPiBjb3JyZXNwb25kaW5nIFBDSUlEIGxpc3Qu
Cj4+ID4KPj4gPiBNZWFud2hpbGUgSSdtIHRyeWluZyB0byBnZXQgYSBjb21wbGV0ZSBsaXN0IG9m
IGFsbCBQQ0lJRHMgd2l0aCBsZXNzIHRoYW4KPj4gPiA2IHBvcnRzIGFuZC9vciBnZXQgYSBWQlQg
Zml4IHRvIG1hcmsgdGhlc2UgcG9ydHMgbm9uLWV4aXN0YW50LCBidXQgdW50aWwKPj4gPiB0aGVu
IHRoZSBvbmx5IHdheSBpcyB0byBnbyBvbmUtYnktb25lLgo+PiA+Cj4+ID4gVGhpcyBmaXhlcyB0
aGUgZm9sbG93aW5nIGVycm9yIG9uIG1hY2hpbmVzIHdpdGggbGVzcyB0aGFuIDYgcG9ydDoKPj4g
Pgo+PiA+IAlbZHJtOmludGVsX3Bvd2VyX3dlbGxfZW5hYmxlIFtpOTE1XV0gZW5hYmxpbmcgQVVY
IEYKPj4gPiAJLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+ID4gCVdBUk5f
T04oaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIHJlZ3MtPmRyaXZl
ciwgKDB4MSA8PCAoKHB3X2lkeCkgKiAyKSksICgweDEgPDwgKChwd19pZHgpICogMikpLCAxKSkK
Pj4gPgo+PiA+IChJbnRlcm5hbCByZWZlcmVuY2U6IEJTcGVjL0luZGV4LzIwNTg0L0lzc3Vlcywg
SFNELzEzMDYwODQxMTYpCj4+ID4KPj4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4KPj4gPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDg5MTUKPj4gCj4+IFdlJ3ZlIHVzZWQgQnVnemlsbGE6IGZvciBidWdz
IHRoYXQgdGhlIHBhdGNoIGF0IGhhbmQgZml4ZXMsIGFuZAo+PiBSZWZlcmVuY2VzOiBmb3Igb3Ro
ZXIgcmVsYXRlZCBsaW5rcyBhbmQgc3R1ZmYuIFNlZW1zIGxpa2UgdGhlIHBhdGNoCj4+IGFjdHVh
bGx5IGZpeGVkIHRoZSBidWcuCj4KPiBZZXMsIGl0J3MgYSBsaW5rIHRvIGEgcmVsYXRlZCBidWcu
IEl0IC0gdW5mb3J0dW5hdGVseSAtIGRvZXMgbm90IGZpeCB0aGUKPiBidWcsIHNpbmNlIHdlIGRv
bid0IGtub3cgeWV0IHRoZSBmdWxsIFBDSUlEIGxpc3QgZm9yIElDTHMgdGhhdCBoYXZlIG9ubHkK
PiA1IChvciBldmVuIGxlc3MpIHBvcnRzLgoKWWV0IHRoZSBidWcgd2FzIGNsb3NlZCByZWZlcmVu
Y2luZyB0aGlzIGNvbW1pdC4uLgoKQlIsCkphbmkuCgoKPgo+PiAKPj4gQlIsCj4+IEphbmkuCj4+
IAo+PiAKPj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
Cj4+ID4gLS0tCj4+ID4gIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCA0ICsrLS0KPj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4gPgo+PiA+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkx
NV9wY2lpZHMuaAo+PiA+IGluZGV4IDY0NzdkYTIyYWYyOC4uNmQ2MGVhNjhjMTcxIDEwMDY0NAo+
PiA+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPj4gPiArKysgYi9pbmNsdWRlL2Ry
bS9pOTE1X3BjaWlkcy5oCj4+ID4gQEAgLTU1OSw3ICs1NTksNiBAQAo+PiA+ICAjZGVmaW5lIElO
VEVMX0lDTF9QT1JUX0ZfSURTKGluZm8pIFwKPj4gPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUw
LCBpbmZvKSwgXAo+PiA+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNUMsIGluZm8pLCBcCj4+ID4g
LQlJTlRFTF9WR0FfREVWSUNFKDB4OEE1RCwgaW5mbyksIFwKPj4gPiAgCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg4QTU5LCBpbmZvKSwJXAo+PiA+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8p
LAlcCj4+ID4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MiwgaW5mbyksIFwKPj4gPiBAQCAtNTcz
LDcgKzU3Miw4IEBACj4+ID4gIAo+PiA+ICAjZGVmaW5lIElOVEVMX0lDTF8xMV9JRFMoaW5mbykg
XAo+PiA+ICAJSU5URUxfSUNMX1BPUlRfRl9JRFMoaW5mbyksIFwKPj4gPiAtCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg4QTUxLCBpbmZvKQo+PiA+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTEsIGluZm8p
LCBcCj4+ID4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OEE1RCwgaW5mbykKPj4gPiAgCj4+ID4gIC8q
IEVITCAqLwo+PiA+ICAjZGVmaW5lIElOVEVMX0VITF9JRFMoaW5mbykgXAo+PiAKPj4gLS0gCj4+
IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKCi0tIApKYW5p
IE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
