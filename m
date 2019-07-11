Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BFC65498
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 12:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B0D6E18F;
	Thu, 11 Jul 2019 10:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47F96E18F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 10:38:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 03:38:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="186353220"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Jul 2019 03:38:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 13:38:41 +0300
Date: Thu, 11 Jul 2019 13:38:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190711103841.GS5942@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710213951.517-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/display/icl: Bump up the
 vdisplay to reflect higher transcoder vertical limits
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMDI6Mzk6NTBQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBJQ0wrLCB0aGUgdmVydGljYWwgbGltaXRzIGZvciB0aGUgdHJhbnNjb2RlcnMg
YXJlIGluY3JlYXNlZCB0byA4MTkyIHNvIGJ1bXAgdXAKPiBsaW1pdHMgaW4gaW50ZWxfbW9kZV92
YWxpZCgpCj4gCj4gdjM6Cj4gKiBTdXBwb3J0ZWQgc3RhcnRpbmcgSUNMIChWaWxsZSkKPiAqIFVz
ZSB0aGUgaGlnaGVyIGxpbWl0cyBmcm9tIFRSQU5TX1ZUT1RBTCByZWdpc3RlciAoVmlsbGUpCj4g
djI6Cj4gKiBDaGVja3BhdGNoIHdhcm5pbmcgKE1hbmFzaSkKPiAKPiBDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
YW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysrKysrKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBmMDcwODE4
MTViODAuLjk4ODNmNjA3YmI4OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE1NzY0LDggKzE1NzY0LDEzIEBAIGludGVsX21vZGVf
dmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCQkJICAgRFJNX01PREVfRkxBR19DTEtE
SVYyKSkKPiAgCQlyZXR1cm4gTU9ERV9CQUQ7Cj4gIAo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gOSB8fAo+IC0JICAgIElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChk
ZXZfcHJpdikpIHsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7Cj4gKwkJaGRp
c3BsYXlfbWF4ID0gODE5MjsKPiArCQl2ZGlzcGxheV9tYXggPSA4MTkyOwoKVGhlIGhvcml6IGxp
bWl0cyBzaG91bGQgYmUgMTZrLgoKPiArCQlodG90YWxfbWF4ID0gODE5MjsKPiArCQl2dG90YWxf
bWF4ID0gODE5MjsKPiArCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8Cj4g
KwkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewo+
ICAJCWhkaXNwbGF5X21heCA9IDgxOTI7IC8qIEZESSBtYXggNDA5NiBoYW5kbGVkIGVsc2V3aGVy
ZSAqLwo+ICAJCXZkaXNwbGF5X21heCA9IDQwOTY7Cj4gIAkJaHRvdGFsX21heCA9IDgxOTI7Cj4g
LS0gCj4gMi4xOS4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
