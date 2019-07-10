Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAD664C9B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 21:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076376E124;
	Wed, 10 Jul 2019 19:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432276E124
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 19:15:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 12:15:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="159850940"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 10 Jul 2019 12:15:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Jul 2019 22:15:05 +0300
Date: Wed, 10 Jul 2019 22:15:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190710191505.GM5942@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190710000613.18866-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710000613.18866-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
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

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDU6MDY6MTNQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBUR0wrIHdlIHN1cHBvcnQgOEsgZGlzcGxheSByZXNvbHV0aW9uLCBoZW5jZSBi
dW1wIHVwIHRoZSB2ZXJ0aWNhbAo+IGFjdGl2ZSBsaW1pdHMgdG8gNDMyMCBpbiBpbnRlbF9tb2Rl
X3ZhbGlkKCkKPiAKPiB2MjoKPiAqIENoZWNrcGF0Y2ggd2FybmluZyAoTWFuYXNpKQo+IAo+IENj
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+
IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSAr
KysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
IGluZGV4IGYwNzA4MTgxNWI4MC4uY2ZjZWIyN2U0YjllIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTU3NjQsOCArMTU3NjQsMTMg
QEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAJCQkgICBEUk1f
TU9ERV9GTEFHX0NMS0RJVjIpKQo+ICAJCXJldHVybiBNT0RFX0JBRDsKPiAgCj4gLQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA5IHx8Cj4gLQkgICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8
fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIpIHsKPiArCQloZGlzcGxheV9tYXggPSA4MTkyOwo+ICsJCXZkaXNwbGF5X21heCA9IDQzMjA7
Cj4gKwkJaHRvdGFsX21heCA9IDgxOTI7Cj4gKwkJdnRvdGFsX21heCA9IDgxOTI7CgpJIHdvbmRl
ciBpZiB3ZSBjYW4gc2FmZWx5IGJ1bXAgdGhlc2UgYmVmb3JlIHdlIGdldCB0aGUgam9pbmVyIHN0
dWZmIHNvcnRlZC4KSG1tLiBJIGd1ZXNzIGl0IHNob3VsZCBiZSBmaW5lIGFzIHRoZSBsaW1pdCB0
aGF0IGlzIHN1cHBvc2VkIHRvIG92ZXJjb21lCmlzIGNhdXNlZCBieSB0aGUgY2RjbGsgbWF4IGZy
ZXF1ZW5jeSBiZWluZyB0b28gbG93IHRvIGFsbG93IGEgc2luZ2xlCnBpcGUgdG8gcHVzaCBlbm91
Z2ggcGl4ZWxzLiBBbmQgc2luY2Ugd2UgY2hlY2sgdGhhdCBpbiAubW9kZV92YWxpZCgpIHdlCnNo
b3VsZG4ndCBhY2NpZGVudGFsbHkgc3RhcnQgdG8gYWR2ZXJ0aXplIHN1cHBvcnQgZm9yIG1vZGVz
IHdlIGNhbid0IGRvLgoKV2hpY2ggbWVhbnMgdGhlc2UgbGltaXRzIHNob3VsZCBhY3R1YWxseSBi
ZSBoaWdoZXIgdGhhbiB0aGlzLiAxNmsgZm9yCmh0b3RhbCtoZGlzcGxheSBhbmQgOGsgZm9yIHZ0
b3RhbCt2ZGlzcGxheSBhbHJlYWR5IG9uIGljbCBJIGJlbGlldmUuCgo+ICsJfSBlbHNlIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDkgfHwKPiArCQkgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYp
IHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Cj4gIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyog
RkRJIG1heCA0MDk2IGhhbmRsZWQgZWxzZXdoZXJlICovCj4gIAkJdmRpc3BsYXlfbWF4ID0gNDA5
NjsKPiAgCQlodG90YWxfbWF4ID0gODE5MjsKPiAtLSAKPiAyLjE5LjEKCi0tIApWaWxsZSBTeXJq
w6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
