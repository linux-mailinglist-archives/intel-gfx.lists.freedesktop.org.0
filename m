Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A53675E7
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0295589BFB;
	Fri, 12 Jul 2019 20:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FB689BFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:29:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="174544990"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Jul 2019 13:29:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jul 2019 23:29:38 +0300
Date: Fri, 12 Jul 2019 23:29:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190712202938.GQ5942@intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712202214.3906-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display/icl: Bump up the
 hdisplay and vdisplay as per transcoder limits
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

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDE6MjI6MTNQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBJQ0wrLCB0aGUgdmVydGljYWwgbGltaXRzIGZvciB0aGUgdHJhbnNjb2RlcnMg
YXJlIGluY3JlYXNlZCB0byA4MTkyCj4gYW5kIGhvcml6b250YWwgbGltaXRzIGFyZSBidW1wZWQg
dG8gMTZLIHNvIGJ1bXAgdXAKPiBsaW1pdHMgaW4gaW50ZWxfbW9kZV92YWxpZCgpCj4gCj4gdjQ6
Cj4gKiBJbmNyZWFzZSB0aGUgaGRpc3BsYXkgdG8gMTZLIChWaWxsZSkKPiB2MzoKPiAqIFN1cHBv
cnRlZCBzdGFydGluZyBJQ0wgKFZpbGxlKQo+ICogVXNlIHRoZSBoaWdoZXIgbGltaXRzIGZyb20g
VFJBTlNfVlRPVEFMIHJlZ2lzdGVyIChWaWxsZSkKPiB2MjoKPiAqIENoZWNrcGF0Y2ggd2Fybmlu
ZyAoTWFuYXNpKQo+IAo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5h
dmFyZUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGYwNzA4MTgxNWI4MC4uMTUwMDY3NjQ4NjJi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiBAQCAtMTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+ICAJCQkgICBEUk1fTU9ERV9GTEFHX0NMS0RJVjIpKQo+ICAJCXJldHVybiBN
T0RFX0JBRDsKPiAgCj4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8Cj4gLQkgICAg
SVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewo+ICsJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPiArCQloZGlzcGxheV9tYXggPSAxNjM4NDsK
PiArCQl2ZGlzcGxheV9tYXggPSA4MTkyOwo+ICsJCWh0b3RhbF9tYXggPSAxNjM4NDsKPiArCQl2
dG90YWxfbWF4ID0gODE5MjsKPiArCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5
IHx8Cj4gKwkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2
KSkgewo+ICAJCWhkaXNwbGF5X21heCA9IDgxOTI7IC8qIEZESSBtYXggNDA5NiBoYW5kbGVkIGVs
c2V3aGVyZSAqLwo+ICAJCXZkaXNwbGF5X21heCA9IDQwOTY7Cj4gIAkJaHRvdGFsX21heCA9IDgx
OTI7Cj4gLS0gCj4gMi4xOS4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
