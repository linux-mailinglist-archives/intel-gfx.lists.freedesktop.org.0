Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2E71B655
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 14:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26BFD89C96;
	Mon, 13 May 2019 12:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1848D89C96
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 12:47:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 05:47:48 -0700
X-ExtLoop1: 1
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga008.fm.intel.com with ESMTP; 13 May 2019 05:47:47 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.108]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.142]) with mapi id 14.03.0415.000;
 Mon, 13 May 2019 13:47:43 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/icl: More workaround for port F detection due
 to broken VBTs
Thread-Index: AQHVBzkm8H2+5neZP0CvHO/VhVaORaZo9TyA
Date: Mon, 13 May 2019 12:47:43 +0000
Message-ID: <a2c771a90d95873afe70f4d1f4731db98c8f70c2.camel@intel.com>
References: <20190510140255.25215-1-imre.deak@intel.com>
In-Reply-To: <20190510140255.25215-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.207]
Content-ID: <9A2AF20BB1C3E64EA7FC0635F3C54E75@intel.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBmaXhlcyB0aGUgaXNzdWUgb24gbXkgSUNMLVkuCgpPbiBGcmksIDIwMTktMDUtMTAgYXQg
MTc6MDIgKzAzMDAsIEltcmUgRGVhayB3cm90ZToKPiBBZGQgYW5vdGhlciBJQ0wtWSBQQ0lJRCB0
aGF0IHByb3ZlZCB0byBoYXZlIG9ubHkgNSBwb3J0cyB0byB0aGUKPiBjb3JyZXNwb25kaW5nIFBD
SUlEIGxpc3QuCj4gCj4gTWVhbndoaWxlIEknbSB0cnlpbmcgdG8gZ2V0IGEgY29tcGxldGUgbGlz
dCBvZiBhbGwgUENJSURzIHdpdGggbGVzcwo+IHRoYW4KPiA2IHBvcnRzIGFuZC9vciBnZXQgYSBW
QlQgZml4IHRvIG1hcmsgdGhlc2UgcG9ydHMgbm9uLWV4aXN0YW50LCBidXQKPiB1bnRpbAo+IHRo
ZW4gdGhlIG9ubHkgd2F5IGlzIHRvIGdvIG9uZS1ieS1vbmUuCj4gCj4gVGhpcyBmaXhlcyB0aGUg
Zm9sbG93aW5nIGVycm9yIG9uIG1hY2hpbmVzIHdpdGggbGVzcyB0aGFuIDYgcG9ydDoKPiAKPiAJ
W2RybTppbnRlbF9wb3dlcl93ZWxsX2VuYWJsZSBbaTkxNV1dIGVuYWJsaW5nIEFVWCBGCj4gCS0t
LS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IAlXQVJOX09OKGludGVsX3dhaXRf
Zm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5jb3JlLCByZWdzLQo+ID5kcml2ZXIsICgweDEgPDwg
KChwd19pZHgpICogMikpLCAoMHgxIDw8ICgocHdfaWR4KSAqIDIpKSwgMSkpCj4gCj4gKEludGVy
bmFsIHJlZmVyZW5jZTogQlNwZWMvSW5kZXgvMjA1ODQvSXNzdWVzLCBIU0QvMTMwNjA4NDExNikK
PiAKPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPiBSZWZlcmVuY2Vz
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg5MTUKPiBT
aWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CgpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KCj4gLS0tCj4gIGluY2x1ZGUv
ZHJtL2k5MTVfcGNpaWRzLmggfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9w
Y2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiBpbmRleCA2NDc3ZGEyMmFmMjgu
LjZkNjBlYTY4YzE3MSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCj4g
KysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+IEBAIC01NTksNyArNTU5LDYgQEAKPiAg
I2RlZmluZSBJTlRFTF9JQ0xfUE9SVF9GX0lEUyhpbmZvKSBcCj4gIAlJTlRFTF9WR0FfREVWSUNF
KDB4OEE1MCwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVDLCBpbmZvKSwgXAo+
IC0JSU5URUxfVkdBX0RFVklDRSgweDhBNUQsIGluZm8pLCBcCj4gIAlJTlRFTF9WR0FfREVWSUNF
KDB4OEE1OSwgaW5mbyksCVwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTU4LCBpbmZvKSwJXAo+
ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTIsIGluZm8pLCBcCj4gQEAgLTU3Myw3ICs1NzIsOCBA
QAo+ICAKPiAgI2RlZmluZSBJTlRFTF9JQ0xfMTFfSURTKGluZm8pIFwKPiAgCUlOVEVMX0lDTF9Q
T1JUX0ZfSURTKGluZm8pLCBcCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwgaW5mbykKPiAr
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUxLCBpbmZvKSwgXAo+ICsJSU5URUxfVkdBX0RFVklDRSgw
eDhBNUQsIGluZm8pCj4gIAo+ICAvKiBFSEwgKi8KPiAgI2RlZmluZSBJTlRFTF9FSExfSURTKGlu
Zm8pIFwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
