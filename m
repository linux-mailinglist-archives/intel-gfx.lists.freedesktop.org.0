Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BB565F5C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 20:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4A06E26D;
	Thu, 11 Jul 2019 18:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2360D6E26D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 18:14:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 11:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="186427408"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2019 11:14:47 -0700
Date: Thu, 11 Jul 2019 11:17:07 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190711181707.GC6706@intel.com>
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
Cj4gVGhlIGhvcml6IGxpbWl0cyBzaG91bGQgYmUgMTZrLgoKT2ggeWVzIGRpZG50IGxvb2sgYXQg
dGhlIFRSQU5TX0hUT1RBTCBzbyB5ZXMgdGhhdHMgMTQgYml0cyBzbyAxNjM4NCwgd2lsbCBtYWtl
IHRoYXQgY2hhbmdlCgpNYW5hc2kKCj4gCj4gPiArCQlodG90YWxfbWF4ID0gODE5MjsKPiA+ICsJ
CXZ0b3RhbF9tYXggPSA4MTkyOwo+ID4gKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gOSB8fAo+ID4gKwkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRl
dl9wcml2KSkgewo+ID4gIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyogRkRJIG1heCA0MDk2IGhh
bmRsZWQgZWxzZXdoZXJlICovCj4gPiAgCQl2ZGlzcGxheV9tYXggPSA0MDk2Owo+ID4gIAkJaHRv
dGFsX21heCA9IDgxOTI7Cj4gPiAtLSAKPiA+IDIuMTkuMQo+IAo+IC0tIAo+IFZpbGxlIFN5cmrD
pGzDpAo+IEludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
