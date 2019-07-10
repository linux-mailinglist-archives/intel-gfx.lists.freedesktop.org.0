Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F764C6B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 20:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F426E122;
	Wed, 10 Jul 2019 18:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B776E122
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 18:55:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 11:55:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="193143354"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 11:55:35 -0700
Date: Wed, 10 Jul 2019 11:57:55 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190710185754.GB24720@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <d09a23d5049cf68e679feeda74cd6612a5ba82e1.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d09a23d5049cf68e679feeda74cd6612a5ba82e1.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Bump up the mode
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDQ6MDQ6NThQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA3LTA5IGF0IDE0OjQ3IC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdy
b3RlOgo+ID4gT24gVEdMKyB3ZSBzdXBwb3J0IDhLIGRpc3BsYXkgcmVzb2x1dGlvbiwgaGVuY2Ug
YnVtcCB1cCB0aGUgdmVydGljYWwKPiA+IGFjdGl2ZSBsaW1pdHMgdG8gNDMyMCBpbiBpbnRlbF9t
b2RlX3ZhbGlkKCkKPiA+IAo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCBmMDcwODE4
MTViODAuLjBkNWM4YWYwMWY1NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTE1NzY0LDggKzE1NzY0LDEzIEBAIGludGVs
X21vZGVfdmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiA+ICAJCQkgICBEUk1fTU9ERV9G
TEFHX0NMS0RJVjIpKQo+ID4gIAkJcmV0dXJuIE1PREVfQkFEOwo+ID4gIAo+ID4gLQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA5IHx8Cj4gPiAtCSAgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYp
IHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Cj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49MTIpIHsKPiAKPiAKPiBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewoKWXVwIGFs
cmVhZHkgbWFkZSB0aGlzIGNoYW5nZSBpbiB2Miwgci1iIHdpdGggdGhpcyBjaGFuZ2U/CgpNYW5h
c2kKCj4gCj4gPiArCQloZGlzcGxheV9tYXggPSA4MTkyOwo+ID4gKwkJdmRpc3BsYXlfbWF4ID0g
NDMyMDsKPiA+ICsJCWh0b3RhbF9tYXggPSA4MTkyOwo+ID4gKwkJdnRvdGFsX21heCA9IDgxOTI7
Cj4gPiArCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8Cj4gPiArCQkgICBJ
U19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Cj4gPiAgCQlo
ZGlzcGxheV9tYXggPSA4MTkyOyAvKiBGREkgbWF4IDQwOTYgaGFuZGxlZCBlbHNld2hlcmUKPiA+
ICovCj4gPiAgCQl2ZGlzcGxheV9tYXggPSA0MDk2Owo+ID4gIAkJaHRvdGFsX21heCA9IDgxOTI7
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
