Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D615038BD8
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 15:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3627389DA5;
	Fri,  7 Jun 2019 13:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C75289DA5
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 13:42:10 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 06:42:09 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 07 Jun 2019 06:42:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Jun 2019 16:42:06 +0300
Date: Fri, 7 Jun 2019 16:42:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190607134206.GZ5942@intel.com>
References: <20190604140214.9947-1-ville.syrjala@linux.intel.com>
 <20190604140214.9947-2-ville.syrjala@linux.intel.com>
 <20190604193646.GB7353@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604193646.GB7353@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Drop pointless WARN_ON
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

T24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMTI6MzY6NDZQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBUdWUsIEp1biAwNCwgMjAxOSBhdCAwNTowMjoxNFBNICswMzAwLCBWaWxsZSBT
eXJqYWxhIHdyb3RlOgo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiA+IAo+ID4gaW50ZWxfZHBfbGlua19kb3duKCkgaXMgc3RhdGljIGFu
ZCBpdCdzIG9ubHkgY2FsbGVkIGZyb20gdGhlIHByZS1kZGkKPiA+IERQIGZ1bmN0aW9ucywgc28g
aGF2aW5nIGEgV0FSTl9PTihIQVNfRERJKSBpbiB0aGVyZSBpcyBxdWl0ZSBwb2ludGxlc3MuCj4g
PiBSZW1vdmUgaXQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTG9va3MgZ29vZCB0byBtZSwKPiAKPiBS
ZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KClRo
YW5rcyBmb3IgdGhlIHJldmlldy4gU2VyaWVzIHB1c2hlZCB0byBkaW5xLgoKPiAKPiBNYW5hc2kK
PiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCAzIC0tLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RwLmMKPiA+IGluZGV4IDY0ZmVmYzlhZjdhNi4uNzY0ZTU0ZmVmNWVlIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gQEAgLTM5OTQsOSArMzk5NCw2IEBAIGludGVsX2Rw
X2xpbmtfZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiA+ICAJZW51bSBwb3J0
IHBvcnQgPSBlbmNvZGVyLT5wb3J0Owo+ID4gIAl1MzIgRFAgPSBpbnRlbF9kcC0+RFA7Cj4gPiAg
Cj4gPiAtCWlmIChXQVJOX09OKEhBU19EREkoZGV2X3ByaXYpKSkKPiA+IC0JCXJldHVybjsKPiA+
IC0KPiA+ICAJaWYgKFdBUk5fT04oKEk5MTVfUkVBRChpbnRlbF9kcC0+b3V0cHV0X3JlZykgJiBE
UF9QT1JUX0VOKSA9PSAwKSkKPiA+ICAJCXJldHVybjsKPiA+ICAKPiA+IC0tIAo+ID4gMi4yMS4w
Cj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
