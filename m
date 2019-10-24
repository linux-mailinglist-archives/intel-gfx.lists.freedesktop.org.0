Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F34EE4035
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 01:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15DAC6E84D;
	Thu, 24 Oct 2019 23:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E137B6E84D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 23:09:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 16:09:26 -0700
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="192350741"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 16:09:27 -0700
Date: Thu, 24 Oct 2019 16:09:56 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191024230956.GB28407@intel.com>
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
 <20191024220859.isc5dwc6d5f3j7qi@ldmartin-desk1.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024220859.isc5dwc6d5f3j7qi@ldmartin-desk1.jf.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Add is_dgfx to device info
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

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMDM6MDg6NTlQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIFRodSwgT2N0IDI0LCAyMDE5IGF0IDEyOjUxOjE5UE0gLTA3MDAsIEx1Y2Fz
IERlIE1hcmNoaSB3cm90ZToKPiA+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgo+ID4gCj4gPiBUaGlzIHdpbGwgYmUgaGVscGZ1bCB0byBkaWZlcmVu
dGlhdGUgYSBzZXQgb2YgR1BVcwo+ID4gd2l0aCB0aGUgc2FtZSBHRU4gdmVyc2lvbi4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KPiAKPiAKPiBSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPgoKPiAKPiBMdWNhcyBEZSBNYXJjaGkKPiAKPiA+IC0tLQo+ID4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8IDEgKwo+ID4gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDEgKwo+ID4gMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiBpbmRleCA2
NzRlOWU5MjE4MzkuLjEyNjQ2Yjk0YWY4NyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKPiA+IEBAIC0xNTQ0LDYgKzE1NDQsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiA+IH0KPiA+IAo+ID4gI2RlZmluZSBJU19NT0JJTEUo
ZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aXNfbW9iaWxlKQo+ID4gKyNkZWZpbmUg
SVNfREdGWChkZXZfcHJpdikgICAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmlzX2RnZngpCj4gPiAK
PiA+ICNkZWZpbmUgSVNfSTgzMChkZXZfcHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVM
X0k4MzApCj4gPiAjZGVmaW5lIElTX0k4NDVHKGRldl9wcml2KQlJU19QTEFURk9STShkZXZfcHJp
diwgSU5URUxfSTg0NUcpCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmgKPiA+IGluZGV4IGU5OTQwZjkzMmQyNi4uNzhhMzgzZjYzOTU3IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAo+ID4gQEAgLTEwNyw2ICsxMDcsNyBA
QCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgewo+ID4gCWZ1bmMoaXNfbW9iaWxlKTsgXAo+ID4gCWZ1
bmMoaXNfbHApOyBcCj4gPiAJZnVuYyhyZXF1aXJlX2ZvcmNlX3Byb2JlKTsgXAo+ID4gKwlmdW5j
KGlzX2RnZngpOyBcCj4gPiAJLyogS2VlcCBoYXNfKiBpbiBhbHBoYWJldGljYWwgb3JkZXIgKi8g
XAo+ID4gCWZ1bmMoaGFzXzY0Yml0X3JlbG9jKTsgXAo+ID4gCWZ1bmMoZ3B1X3Jlc2V0X2Nsb2Ji
ZXJzX2Rpc3BsYXkpOyBcCj4gPiAtLSAKPiA+IDIuMjMuMAo+ID4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
