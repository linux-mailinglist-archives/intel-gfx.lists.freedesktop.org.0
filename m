Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3DBCDEE9
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 12:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42CB389E0D;
	Mon,  7 Oct 2019 10:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8317389E0D
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 10:15:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 03:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="186944555"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 07 Oct 2019 03:15:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Oct 2019 13:15:24 +0300
Date: Mon, 7 Oct 2019 13:15:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20191007101524.GM1208@intel.com>
References: <20190925201353.27565-2-james.ausmus@intel.com>
 <20190927222427.5491-1-james.ausmus@intel.com>
 <20190927222427.5491-2-james.ausmus@intel.com>
 <20191004205546.xeq43hvktkbs6pzr@ldmartin-desk1>
 <20191004215134.GB13100@jausmus-gentoo-dev6.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004215134.GB13100@jausmus-gentoo-dev6.jf.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Read SAGV block time
 from PCODE
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDI6NTE6MzRQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjU1OjQ2UE0gLTA3MDAsIEx1Y2FzIERl
IE1hcmNoaSB3cm90ZToKPiA+IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDAzOjI0OjI3UE0gLTA3
MDAsIEphbWVzIEF1c211cyB3cm90ZToKPiA+ID5TdGFydGluZyBmcm9tIFRHTCwgd2Ugbm93IG5l
ZWQgdG8gcmVhZCB0aGUgU0FHViBibG9jayB0aW1lIHZpYSBhIFBDT0RFCj4gPiA+bWFpbGJveCwg
cmF0aGVyIHRoYW4gaGF2aW5nIGEgc3RhdGljIHZhbHVlLgo+ID4gPgo+ID4gPkJTcGVjOiA0OTMy
Ngo+ID4gPgo+ID4gPnYyOiBGaXggdXAgcGNvZGUgdmFsIGRhdGEgdHlwZSAoVmlsbGUpLCB0aWdo
dGVuIHZhcmlhYmxlIHNjb3BlIChWaWxsZSkKPiA+ID4KPiA+ID5DYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID5DYzogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4gPiA+Q2M6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gPlNpZ25lZC1vZmYtYnk6IEphbWVz
IEF1c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPiA+ID5SZXZpZXdlZC1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4tLS0KPiA+ID4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICAxICsKPiA+ID4gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE1ICsrKysrKysrKysrKysrLQo+ID4gPiAyIGZpbGVzIGNo
YW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPiA+ID5pbmRleCAwNThhYTVjYThiNzMuLjZhNDVkZjlkYWQ5YyAxMDA2
NDQKPiA+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiA+KysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gPkBAIC04ODY5LDYgKzg4NjksNyBA
QCBlbnVtIHsKPiA+ID4gI2RlZmluZSAgICAgR0VOOV9TQUdWX0RJU0FCTEUJCQkweDAKPiA+ID4g
I2RlZmluZSAgICAgR0VOOV9TQUdWX0lTX0RJU0FCTEVECQkweDEKPiA+ID4gI2RlZmluZSAgICAg
R0VOOV9TQUdWX0VOQUJMRQkJCTB4Mwo+ID4gPisjZGVmaW5lIEdFTjEyX1BDT0RFX1JFQURfU0FH
Vl9CTE9DS19USU1FX1VTCTB4MjMKPiA+ID4gI2RlZmluZSBHRU42X1BDT0RFX0RBVEEJCQkJX01N
SU8oMHgxMzgxMjgpCj4gPiA+ICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfSUFfUkFUSU9fU0hJ
RlQJOAo+ID4gPiAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX1JJTkdfUkFUSU9fU0hJRlQJMTYK
PiA+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiA+ID5pbmRleCBiNDEzYTdmM2JjNWQuLjEzNzIx
YmE0NDAxMyAxMDA2NDQKPiA+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
Cj4gPiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ID4gPkBAIC0zNjQ1
LDcgKzM2NDUsMjAgQEAgaW50ZWxfaGFzX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+ID4gPiBzdGF0aWMgdm9pZAo+ID4gPiBza2xfc2V0dXBfc2Fndl9ibG9ja190aW1l
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4gewo+ID4gPi0JaWYgKElT
X0dFTihkZXZfcHJpdiwgMTEpKSB7Cj4gPiA+KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
Mikgewo+ID4gCj4gPiBzYWd2IHdpbGwgc3RpbGwgbmV2ZXIgYmUgZW5hYmxlZCBmb3IgVEdMLiBB
cmUgeW91IGdvaW5nIHRvIHJldmVydCAKPiA+IDhmZmE0MzkyYTMyZSAoImRybS9pOTE1L3RnbDog
ZGlzYWJsZSBTQUdWIHRlbXBvcmFyaWx5IikKPiA+IGluIGEgc2VwYXJldGUgcGF0Y2g/Cj4gCj4g
WWVzLCB0aGF0J3MgdGhlIGlkZWEgLSB3ZSBsYW5kIHRoZXNlIHR3byBwYXRjaGVzLCB0aGVuIG9u
Y2UgSFNECj4gMTQwOTU0Mjg5NSBnZXRzIHJlc29sdmVkLCB3ZSByZXZlcnQgOGZmYTQzOTJhMzJl
IGFuZCBldmVyeXRoaW5nIEp1c3QKPiBXb3Jrcy4gOykKClRoZSB3aG9sZSBzYWd2IHN0dWZmIGlz
IHdyb25nIGZvciBpY2wrLiBTdGFuIGlzIGF0dGVtcHRpbmcgdG8gcmVtZWR5CnRoYXQuCgo+IAo+
IC1KYW1lcwo+IAo+ID4gCj4gPiBMdWNhcyBEZSBNYXJjaGkKPiA+IAo+ID4gPisJCXUzMiB2YWwg
PSAwOwo+ID4gPisJCWludCByZXQ7Cj4gPiA+Kwo+ID4gPisJCXJldCA9IHNhbmR5YnJpZGdlX3Bj
b2RlX3JlYWQoZGV2X3ByaXYsCj4gPiA+KwkJCQkJICAgICBHRU4xMl9QQ09ERV9SRUFEX1NBR1Zf
QkxPQ0tfVElNRV9VUywKPiA+ID4rCQkJCQkgICAgICZ2YWwsIE5VTEwpOwo+ID4gPisJCWlmICgh
cmV0KSB7Cj4gPiA+KwkJCWRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMgPSB2YWw7Cj4gPiA+
KwkJCXJldHVybjsKPiA+ID4rCQl9Cj4gPiA+Kwo+ID4gPisJCURSTV9ERUJVR19EUklWRVIoIkNv
dWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7Cj4gPiA+Kwl9IGVsc2UgaWYgKElTX0dF
TihkZXZfcHJpdiwgMTEpKSB7Cj4gPiA+IAkJZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cyA9
IDEwOwo+ID4gPiAJCXJldHVybjsKPiA+ID4gCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAx
MCkpIHsKPiA+ID4tLSAKPiA+ID4yLjIyLjEKPiA+ID4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50
ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
