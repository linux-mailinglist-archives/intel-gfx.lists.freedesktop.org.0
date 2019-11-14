Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC876FC67E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 13:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEEBB6E25B;
	Thu, 14 Nov 2019 12:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8439A6E25B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 12:46:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 04:46:51 -0800
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="198808042"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 04:46:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191108214251.79305-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191108214251.79305-1-lucas.demarchi@intel.com>
Date: Thu, 14 Nov 2019 14:46:48 +0200
Message-ID: <87sgmq1v7r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not warn late about hdmi on
 port A
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

T24gRnJpLCAwOCBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFRoZSB3YXJuaW5nIHNob3VsZCBiZSBqdXN0IGEgd2FybmluZy4gV2hl
cmUgaXQgaXMgY3VycmVudGx5IGlzIHdyb25nCj4gc2luY2Ugd2UgYWxyZWFkeSByZWdpc3RlcmVk
IHRoZSBjb25uZWN0b3Igb24gZHJtLCBtZWFuaW5nIGl0IGRpZXMgbGF0ZXIKPiBvbiBhIE5VTEwg
cG9pbnRlciBkZXJlZiBpZiB0aGUgVkJULW92ZXJyaWRpbmcgd2UgaGF2ZSBpcyByZW1vdmVkLiBN
b3ZlCj4gdGhlIHdhcm5pbmcgdXAuCj4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkRvICpOT1QqIG1lcmdlIHBhdGNoZXMgd2l0aG91
dCBmdWxsIElHVCByZXN1bHRzLiBCQVQgaXMgKk5PVCogZW5vdWdoLgoKQlIsCkphbmkuCgoKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA1ICsrKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IGluZGV4IGUwODRjMmY3
NTM3OS4uZWQ0YTY4ZmIzNTFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMKPiBAQCAtMzE0MCw2ICszMTQwLDkgQEAgdm9pZCBpbnRlbF9oZG1pX2luaXRf
Y29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+ICAJ
RFJNX0RFQlVHX0tNUygiQWRkaW5nIEhETUkgY29ubmVjdG9yIG9uIFtFTkNPREVSOiVkOiVzXVxu
IiwKPiAgCQkgICAgICBpbnRlbF9lbmNvZGVyLT5iYXNlLmJhc2UuaWQsIGludGVsX2VuY29kZXIt
PmJhc2UubmFtZSk7Cj4gIAo+ICsJaWYgKFdBUk5fT04ocG9ydCA9PSBQT1JUX0EpKQo+ICsJCXJl
dHVybjsKPiArCj4gIAlpZiAoV0FSTihpbnRlbF9kaWdfcG9ydC0+bWF4X2xhbmVzIDwgNCwKPiAg
CQkgIk5vdCBlbm91Z2ggbGFuZXMgKCVkKSBmb3IgSERNSSBvbiBbRU5DT0RFUjolZDolc11cbiIs
Cj4gIAkJIGludGVsX2RpZ19wb3J0LT5tYXhfbGFuZXMsIGludGVsX2VuY29kZXItPmJhc2UuYmFz
ZS5pZCwKPiBAQCAtMzE1OSw4ICszMTYyLDYgQEAgdm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVj
dG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+ICAKPiAgCWlu
dGVsX2hkbWktPmRkY19idXMgPSBpbnRlbF9oZG1pX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwo+
ICAKPiAtCWlmIChXQVJOX09OKHBvcnQgPT0gUE9SVF9BKSkKPiAtCQlyZXR1cm47Cj4gIAlpbnRl
bF9lbmNvZGVyLT5ocGRfcGluID0gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0
KTsKPiAgCj4gIAlpZiAoSEFTX0RESShkZXZfcHJpdikpCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
