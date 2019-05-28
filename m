Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF352CDF3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 19:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495146E045;
	Tue, 28 May 2019 17:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46976E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 17:49:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:49:28 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 28 May 2019 10:49:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2019 20:49:25 +0300
Date: Tue, 28 May 2019 20:49:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190528174925.GP5942@intel.com>
References: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
 <20190513133904.20374-3-ville.syrjala@linux.intel.com>
 <a8876aac-bdab-30df-1354-3b7235faf4bc@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8876aac-bdab-30df-1354-3b7235faf4bc@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add debugs for the C8 vs.
 legacy LUT case
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

T24gVHVlLCBNYXkgMjgsIDIwMTkgYXQgMTI6NTE6MDRQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMTMtMDUtMjAxOSBvbSAxNTozOSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6
Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4KPiA+IExlYXZlIGEgaGludCBpbiBkbWVzZyB3aGVuIHdlIHJlamVjdCBhIGNvbmZpZ3Vy
YXRpb24gYXR0ZW1wdGluZwo+ID4gdG8gdXNlIEM4IHBsYW5lcyB3aXRob3V0IHRoZSBsZWdhY3kg
TFVUIGxvYWRlZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY29sb3IuYyB8IDQgKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMK
PiA+IGluZGV4IDk2MmRiMTIzNjk3MC4uNDU2NDk5MDRiYTVjIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY29sb3IuYwo+ID4gQEAgLTk1OSw4ICs5NTksMTAgQEAgc3RhdGljIGludCBj
aGVja19sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ID4g
IAkJcmV0dXJuIDA7Cj4gPiAgCj4gPiAgCS8qIEM4IHJlbGllcyBvbiBpdHMgcGFsZXR0ZSBiZWlu
ZyBzdG9yZWQgaW4gdGhlIGxlZ2FjeSBMVVQgKi8KPiA+IC0JaWYgKGNydGNfc3RhdGUtPmM4X3Bs
YW5lcykKPiA+ICsJaWYgKGNydGNfc3RhdGUtPmM4X3BsYW5lcykgewo+ID4gKwkJRFJNX0RFQlVH
X0tNUygiQzggcGl4ZWxmb3JtYXQgcmVxdWlyZXMgdGhlIGxlZ2FjeSBMVVRcbiIpOwo+ID4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4gPiArCX0KPiA+ICAKPiA+ICAJZGVnYW1tYV9sZW5ndGggPSBJTlRF
TF9JTkZPKGRldl9wcml2KS0+Y29sb3IuZGVnYW1tYV9sdXRfc2l6ZTsKPiA+ICAJZ2FtbWFfbGVu
Z3RoID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9zaXplOwo+IAo+IEZv
ciB0aGUgc2VyaWVzOgo+IAo+IFJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKVGhhbmtzLiBQdXNoZWQuCgotLSAKVmlsbGUg
U3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
