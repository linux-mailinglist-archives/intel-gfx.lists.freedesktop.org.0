Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD9943494
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 11:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E103189807;
	Thu, 13 Jun 2019 09:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352CF89807
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 09:19:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 02:19:46 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 13 Jun 2019 02:19:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Jun 2019 12:19:43 +0300
Date: Thu, 13 Jun 2019 12:19:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Message-ID: <20190613091943.GU5942@intel.com>
References: <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight enable
 sequence.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>,
 intel-gfx@lists.freedesktop.org, Lee@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTA6NDc6MjJQTSAtMDcwMCwgTGVlLCBTaGF3biBDIHdy
b3RlOgo+IE1vZGlmeSBhdXggYmFja2xpZ2h0IGVuYWJsZSBzZXF1ZW5jZSBqdXN0IGxpa2Ugd2hh
dCB3ZQo+IGRpZCBmb3IgZ2VuZXJuYWwgZURQIHBhbmVsLgo+IDEuIFNldHVwIFBXTSBmcmVxIGFu
ZCBicmlnaHRuZXNzIGxldmVsIGJlZm9yZSBlbmFibGUgZGlzcGxheSBiYWNrbGlnaHQuCj4gMi4g
QWRkIFQ4ICh2YWxpZCBkYXRhIHRvIGJhY2tsaWdodCBlbmFibGUpIGRlbGF5LgoKSWYgd2UgcmVz
cGVjdCB0aGUgb25fZGVsYXkgc2hvdWxkbid0IHdlIHRoZW4gcmVzcGVjdCB0aGUgb2ZmX2RlbGF5
IHRvbz8KCkluIHdoaWNoIGNhc2UgSSBzdWdnZXN0IHR3byBwYXRjaGVzOgoxLiBzd2FhcCB0aGUg
ZW5hYmxlIHZzLiBzZXRfYnJpZ2h0bmVzcyBvcmRlcgoyLiBhZGQgdGhlIG9uL29mZiBkZWxheXMK
Cj4gCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IEpvc2Ug
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IENvb3BlciBDaGlv
dSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMZWUsIFNoYXdu
IEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgNiArKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPiBpbmRleCA3ZGVkOTVhMzM0ZGIuLmMxMTJlMGI5
MzBkZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xp
Z2h0LmMKPiBAQCAtMjE2LDggKzIxNiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhfZW5h
YmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdAo+ICAJ
CX0KPiAgCX0KPiAgCj4gLQlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUp
Owo+ICAJaW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQoY29ubl9zdGF0ZSwgY29ubmVjdG9yLT5w
YW5lbC5iYWNrbGlnaHQubGV2ZWwpOwo+ICsKPiArCXdhaXRfcmVtYWluaW5nX21zX2Zyb21famlm
ZmllcyhpbnRlbF9kcC0+bGFzdF9wb3dlcl9vbiwKPiArCQkJCSAgICAgICBpbnRlbF9kcC0+YmFj
a2xpZ2h0X29uX2RlbGF5KTsKPiArCj4gKwlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxf
ZHAsIHRydWUpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhfZGlzYWJsZV9i
YWNrbGlnaHQoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRl
KQo+IC0tIAo+IDIuNy40Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
