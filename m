Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 346E6F71E5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD3289622;
	Mon, 11 Nov 2019 10:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481B989622
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:28:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:28:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="213738770"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 11 Nov 2019 02:28:36 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6AB7E5C1DF4; Mon, 11 Nov 2019 12:28:27 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191108190107.25417-1-chris@chris-wilson.co.uk>
References: <20191108190107.25417-1-chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 12:28:27 +0200
Message-ID: <87ftiu671w.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Show guilty context name on GPU
 reset
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2UgbWVu
dGlvbiB0aGF0IHdlIGFyZSByZXNldHRpbmcgdGhlIEdQVSwgYW5kIGR1bXAgdGhlIGRldmljZSBz
dGF0ZSBmb3IKPiBwb3N0IG1vcnRlbSBkZWJ1Z2dpbmcuIEhvd2V2ZXIsIHdoaWxlIHRoYXQgZHVt
cCBjb250YWlucyB0aGUgYWN0aXZlCj4gcHJvY2Vzc2VzIGFuZCB0aGUgb25lIGZsYWdnZWQgYXMg
Y2F1c2luZyB0aGUgZXJyb3IsIHdlIGRvIG5vdCBhbHdheXMKPiBpbmNsdWRlIHRoYXQgaW5mb3Jt
YXRpb24gaW4gZG1lc2cuIEluY2x1ZGUgdGhlIG5hbWUgb2YgdGhlIGd1aWx0eQo+IHByb2Nlc3Mg
aW4gZG1lc2cgZm9yIHJlZmVyZW5jZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gaW5kZXggZjAzZTAwMDA1MWMxLi44NmQ1
MjM4M2JmOWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAt
ODcsNiArODcsMTAgQEAgc3RhdGljIGJvb2wgY29udGV4dF9tYXJrX2d1aWx0eShzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4KQo+ICAJaWYgKCFpOTE1X2dlbV9jb250ZXh0X2lzX2Jhbm5hYmxl
KGN0eCkpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiArCWRldl9ub3RpY2UoY3R4LT5pOTE1LT5k
cm0uZGV2LAo+ICsJCSAgICIlcyBjb250ZXh0IHJlc2V0IGR1ZSB0byBHUFUgaGFuZ1xuIiwKPiAr
CQkgICBjdHgtPm5hbWUpOwo+ICsKPiAgCS8qIFJlY29yZCB0aGUgdGltZXN0YW1wIGZvciB0aGUg
bGFzdCBOIGhhbmdzICovCj4gIAlwcmV2X2hhbmcgPSBjdHgtPmhhbmdfdGltZXN0YW1wWzBdOwo+
ICAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY3R4LT5oYW5nX3RpbWVzdGFtcCkgLSAxOyBp
KyspCj4gLS0gCj4gMi4yNC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
