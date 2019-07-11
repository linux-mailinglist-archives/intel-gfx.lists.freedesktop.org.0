Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FAC66212
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 01:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981506E293;
	Thu, 11 Jul 2019 23:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A18636E293
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 23:13:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 16:13:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="364980958"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jul 2019 16:13:19 -0700
Date: Thu, 11 Jul 2019 16:15:41 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190711231540.GA9029@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
 <20190711103841.GS5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711103841.GS5942@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDE6Mzg6NDFQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFdlZCwgSnVsIDEwLCAyMDE5IGF0IDAyOjM5OjUwUE0gLTA3MDAsIE1hbmFz
aSBOYXZhcmUgd3JvdGU6Cj4gPiBPbiBJQ0wrLCB0aGUgdmVydGljYWwgbGltaXRzIGZvciB0aGUg
dHJhbnNjb2RlcnMgYXJlIGluY3JlYXNlZCB0byA4MTkyIHNvIGJ1bXAgdXAKPiA+IGxpbWl0cyBp
biBpbnRlbF9tb2RlX3ZhbGlkKCkKPiA+IAo+ID4gdjM6Cj4gPiAqIFN1cHBvcnRlZCBzdGFydGlu
ZyBJQ0wgKFZpbGxlKQo+ID4gKiBVc2UgdGhlIGhpZ2hlciBsaW1pdHMgZnJvbSBUUkFOU19WVE9U
QUwgcmVnaXN0ZXIgKFZpbGxlKQo+ID4gdjI6Cj4gPiAqIENoZWNrcGF0Y2ggd2FybmluZyAoTWFu
YXNpKQo+ID4gCj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxp
bnV4LmludGVsLmNvbT4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQu
bmF2YXJlQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysrKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gaW5kZXggZjA3MDgxODE1YjgwLi45ODgz
ZjYwN2JiODggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiA+IEBAIC0xNTc2NCw4ICsxNTc2NCwxMyBAQCBpbnRlbF9tb2RlX3ZhbGlk
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiAgCQkJICAgRFJNX01PREVfRkxBR19DTEtESVYy
KSkKPiA+ICAJCXJldHVybiBNT0RFX0JBRDsKPiA+ICAKPiA+IC0JaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gOSB8fAo+ID4gLQkgICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNX
RUxMKGRldl9wcml2KSkgewo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewo+
ID4gKwkJaGRpc3BsYXlfbWF4ID0gODE5MjsKPiA+ICsJCXZkaXNwbGF5X21heCA9IDgxOTI7Cj4g
Cj4gVGhlIGhvcml6IGxpbWl0cyBzaG91bGQgYmUgMTZrLgoKU28gdGhlIFRSQU5TX0hUT1RBTCBo
YXMgaGFkIDE0IGJpdHMgc28gYWxsb3dlZCAxNksgZXZlbiBmb3IgR2VuOSssIHNob3VsZAp0aGlz
IGJlIGNoYW5nZWQgZm9yIGFsbD8KCk1hbmFzaQoKPiAKPiA+ICsJCWh0b3RhbF9tYXggPSA4MTky
Owo+ID4gKwkJdnRvdGFsX21heCA9IDgxOTI7Cj4gPiArCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSA5IHx8Cj4gPiArCQkgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hB
U1dFTEwoZGV2X3ByaXYpKSB7Cj4gPiAgCQloZGlzcGxheV9tYXggPSA4MTkyOyAvKiBGREkgbWF4
IDQwOTYgaGFuZGxlZCBlbHNld2hlcmUgKi8KPiA+ICAJCXZkaXNwbGF5X21heCA9IDQwOTY7Cj4g
PiAgCQlodG90YWxfbWF4ID0gODE5MjsKPiA+IC0tIAo+ID4gMi4xOS4xCj4gCj4gLS0gCj4gVmls
bGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
