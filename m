Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3140491F1F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 10:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 895BB6E0D3;
	Mon, 19 Aug 2019 08:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA8E6E0D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 08:41:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 01:41:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="180294901"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2019 01:41:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9C70A5C1F29; Mon, 19 Aug 2019 11:40:29 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190819075835.20065-2-chris@chris-wilson.co.uk>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-2-chris@chris-wilson.co.uk>
Date: Mon, 19 Aug 2019 11:40:29 +0300
Message-ID: <87imqt5z0i.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/18] drm/i915: Always wrap the ring offset
 before resetting
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2Ugd2Vy
ZSBwYXNzaW5nIGluIGFuIHVud3JhcHBlZCBvZmZzZXQgaW50byBpbnRlbF9yaW5nX3Jlc2V0KCkg
b24KPiB1bnBpbm5pbmcuIFNvb25lciBvciBsYXRlciB0aGF0IGhhZCB0byBsYW5kIG9uIHJpbmct
PnNpemUuCj4KPiA8Mz4gWzMxNC44NzIxNDddIGludGVsX3JpbmdfcmVzZXQ6MTIzNyBHRU1fQlVH
X09OKCFpbnRlbF9yaW5nX29mZnNldF92YWxpZChyaW5nLCB0YWlsKSkKPiA8ND4gWzMxNC44NzIy
NzJdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IDwyPiBbMzE0Ljg3MjI3
Nl0ga2VybmVsIEJVRyBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVy
LmM6MTIzNyEKPiA8ND4gWzMxNC44NzIzMjBdIGludmFsaWQgb3Bjb2RlOiAwMDAwIFsjMV0gUFJF
RU1QVCBTTVAgUFRJCj4gPDQ+IFszMTQuODcyMzMxXSBDUFU6IDEgUElEOiAzNDY2IENvbW06IGk5
MTVfc2VsZnRlc3QgVGFpbnRlZDogRyAgICAgVSAgICAgICAgICAgIDUuMy4wLXJjNC1DSS1QYXRj
aHdvcmtfMTQwNjErICMxCj4gPDQ+IFszMTQuODcyMzQ2XSBIYXJkd2FyZSBuYW1lOiBIZXdsZXR0
LVBhY2thcmQgSFAgQ29tcGFxIDgwMDAgRWxpdGUgQ01UIFBDLzM2NDdoLCBCSU9TIDc4Nkc3IHYw
MS4wMiAxMC8yMi8yMDA5Cj4gPDQ+IFszMTQuODcyNDc3XSBSSVA6IDAwMTA6aW50ZWxfcmluZ19y
ZXNldCsweDUxLzB4NzAgW2k5MTVdCj4gPDQ+IFszMTQuODcyNDg3XSBDb2RlOiA5ZSBkYiA1MSBl
MCA0OCA4YiAzNSBiNiBjNyAyMiAwMCA0OSBjNyBjMCBmOCBkOSBkNiBhMCBiOSBkNSAwNCAwMCAw
MCA0OCBjNyBjMiA3MCA1YiBkNCBhMCA0OCBjNyBjNyA2YyBmYyBjMCBhMCBlOCBjZiBiZSA1OCBl
MCA8MGY+IDBiIDg5IDc3IDIwIDg5IDc3IDFjIDg5IDc3IDI0IGU5IDRmIGVkIGZmIGZmIDBmIDFm
IDQ0IDAwIDAwIDY2Cj4gPDQ+IFszMTQuODcyNTEyXSBSU1A6IDAwMTg6ZmZmZmM5MDAwMDM0ZmE5
OCBFRkxBR1M6IDAwMDEwMjgyCj4gPDQ+IFszMTQuODcyNTIzXSBSQVg6IDAwMDAwMDAwMDAwMDAw
MTAgUkJYOiBmZmZmODg4MTAxOTQxMmM4IFJDWDogMDAwMDAwMDAwMDAwMDAwMAo+IDw0PiBbMzE0
Ljg3MjUzNF0gUkRYOiAwMDAwMDAwMDAwMDAwMDAxIFJTSTogMDAwMDAwMDAwMDAwMDAwOCBSREk6
IDAwMDAwMDAwMDAwMDBmMjAKPiA8ND4gWzMxNC44NzI1NDVdIFJCUDogZmZmZjg4ODEwNGUwZjc0
MCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwZjIwCj4gPDQ+IFszMTQu
ODcyNTU3XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiBmZmZmODg4MTE3MDk0NTE4IFIxMjog
ZmZmZmZmZmZhMGQzZDJjMAo+IDw0PiBbMzE0Ljg3MjU2OV0gUjEzOiBmZmZmZmZmZmEwZTJhMjUw
IFIxNDogZmZmZmZmZmZhMGUyYTFlMCBSMTU6IGZmZmZjOTAwMDAzNGZlODgKPiA8ND4gWzMxNC44
NzI1ODFdIEZTOiAgMDAwMDdmZTZkNDlmNmU0MCgwMDAwKSBHUzpmZmZmODg4MTE3YTgwMDAwKDAw
MDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPiA8ND4gWzMxNC44NzI1OTVdIENTOiAgMDAxMCBE
UzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPiA8ND4gWzMxNC44NzI2MDVd
IENSMjogMDAwMDU1ZTMyODNlOWNjOCBDUjM6IDAwMDAwMDAxMDg4NDIwMDAgQ1I0OiAwMDAwMDAw
MDAwMDQwNmUwCj4gPDQ+IFszMTQuODcyNjE2XSBDYWxsIFRyYWNlOgo+IDw0PiBbMzE0Ljg3Mjcw
MV0gIGludGVsX3JpbmdfdW5waW4rMHgxYS8weDIyMCBbaTkxNV0KPiA8ND4gWzMxNC44NzI3ODdd
ICByaW5nX2Rlc3Ryb3krMHg0OC8weGMwIFtpOTE1XQo+IDw0PiBbMzE0Ljg3Mjg3MF0gIGludGVs
X2VuZ2luZXNfY2xlYW51cCsweDI0LzB4NDAgW2k5MTVdCj4gPDQ+IFszMTQuODcyOTY0XSAgaTkx
NV9nZW1fZHJpdmVyX3JlbGVhc2UrMHgxYi8weGYwIFtpOTE1XQo+IDw0PiBbMzE0Ljg3Mjk4NF0g
IGk5MTVfZHJpdmVyX3JlbGVhc2UrMHgxYy8weDgwIFtpOTE1XQo+Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1ieTogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCAzICstLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gaW5kZXggMWQ5YzEyNWI3NmQwLi42MDFj
MTYyMzlmZGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmlu
Z2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZl
ci5jCj4gQEAgLTEyMzQsOCArMTIzNCw3IEBAIGludCBpbnRlbF9yaW5nX3BpbihzdHJ1Y3QgaW50
ZWxfcmluZyAqcmluZykKPiAgCj4gIHZvaWQgaW50ZWxfcmluZ19yZXNldChzdHJ1Y3QgaW50ZWxf
cmluZyAqcmluZywgdTMyIHRhaWwpCj4gIHsKPiAtCUdFTV9CVUdfT04oIWludGVsX3Jpbmdfb2Zm
c2V0X3ZhbGlkKHJpbmcsIHRhaWwpKTsKPiAtCj4gKwl0YWlsID0gaW50ZWxfcmluZ193cmFwKHJp
bmcsIHRhaWwpOwo+ICAJcmluZy0+dGFpbCA9IHRhaWw7Cj4gIAlyaW5nLT5oZWFkID0gdGFpbDsK
PiAgCXJpbmctPmVtaXQgPSB0YWlsOwo+IC0tIAo+IDIuMjMuMC5yYzEKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
