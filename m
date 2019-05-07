Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5139916AC1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 20:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272426E827;
	Tue,  7 May 2019 18:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D9426E827
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 18:53:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 11:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,443,1549958400"; d="scan'208";a="169315901"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 07 May 2019 11:53:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2019 21:53:55 +0300
Date: Tue, 7 May 2019 21:53:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20190507185355.GT24299@intel.com>
References: <20190430000028.4690-1-aditya.swarup@intel.com>
 <20190507181856.16091-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507181856.16091-1-aditya.swarup@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Fix setting 10 bit deep
 color mode
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMTE6MTg6NTZBTSAtMDcwMCwgQWRpdHlhIFN3YXJ1cCB3
cm90ZToKPiBUaGVyZSBpcyBhIGJ1ZyBpbiBoZG1pX2RlZXBfY29sb3JfcG9zc2libGUoKSAtIHdl
IGNvbXBhcmUgcGlwZV9icHAKPiA8PSA4KjMgd2hpY2ggcmV0dXJucyB0cnVlIGV2ZXJ5IHRpbWUg
Zm9yIGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZSAxMiBiaXQKPiBkZWVwIGNvbG9yIG1vZGUgdGVz
dCBpbiBpbnRlbF9oZG1pX2NvbXB1dGVfY29uZmlnKCkuKEV2ZW4gd2hlbiB0aGUKPiByZXF1ZXN0
ZWQgY29sb3IgbW9kZSBpcyAxMCBiaXQgdGhyb3VnaCBtYXggYnBjIHByb3BlcnR5KQo+IAo+IENv
bXBhcmluZyBwaXBlX2JwcCB3aXRoIGJwYyAqIDMgdGFrZXMgY2FyZSBvZiB0aGlzIGNvbmRpdGlv
biB3aGVyZQo+IHJlcXVlc3RlZCBtYXggYnBjIGlzIDEwIGJpdCwgc28gaGRtaV9kZWVwX2NvbG9y
X3Bvc3NpYmxlIHdpdGggMTIgYml0Cj4gcmV0dXJucyBmYWxzZSB3aGVuIHJlcXVlc3RlZCBtYXgg
YnBjIGlzIDEwLihWaWxsZSkKPiAKPiB2MjpBZGQgc3VnZ2VzdGVkIGJ5IFZpbGxlIFN5cmrDpGzD
pAo+IAo+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVw
QGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBD
YzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiBDYzogQ2xpbnRv
biBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgoKVGhhbmtzLiBDb2Rld2lzZSB0
aGlzIGlzIGlkZW50aWNhbCB0byB0aGUgcHJldmlvdXMgdmVyc2lvbgp3aGljaCB3YXMgYWxyZWFk
eSB0ZXN0ZWQgc3VjY2VzZnVsbHkgLT4gcHVzaGVkLgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfaGRtaS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCj4gaW5kZXgg
OTkxZWIzNjJlZjRmLi43NGYyZGNiOGIxYWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRt
aS5jCj4gQEAgLTIxNTksNyArMjE1OSw3IEBAIHN0YXRpYyBib29sIGhkbWlfZGVlcF9jb2xvcl9w
b3NzaWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCWlm
IChicGMgPT0gMTAgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8IDExKQo+ICAJCXJldHVybiBmYWxz
ZTsKPiAgCj4gLQlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAgPD0gOCozKQo+ICsJaWYgKGNydGNf
c3RhdGUtPnBpcGVfYnBwIDwgYnBjICogMykKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+ICAJaWYg
KCFjcnRjX3N0YXRlLT5oYXNfaGRtaV9zaW5rKQo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
