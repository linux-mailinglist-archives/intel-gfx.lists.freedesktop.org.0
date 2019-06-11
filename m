Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6263D155
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 17:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B325D8922A;
	Tue, 11 Jun 2019 15:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB7A8922A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 15:49:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 08:49:33 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Jun 2019 08:49:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2019 18:49:30 +0300
Date: Tue, 11 Jun 2019 18:49:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190611154930.GE5942@intel.com>
References: <20190610214449.9447-1-lucas.demarchi@intel.com>
 <20190610214819.9703-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610214819.9703-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/icl: use ranges for voltage
 level lookup
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

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMDI6NDg6MTlQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFNwZWMgc2hvd3Mgdm9sdGFnZSBsZXZlbCAwIGFzIDMwNy4yLCAzMTIsIG9yIGxv
d2VyIGFuZCBzdWdnZXN0cyB0byB1c2UKPiByYW5nZSBjaGVja3MuIFByZXBhcmUgZm9yIGhhdmlu
ZyBvdGhlciBmcmVxdWVuY2llcyBpbiB0aGVzZSByYW5nZXMgYnkKPiBub3QgY29tcGFyaW5nIHRo
ZSBleGFjdCBmcmVxdWVuY3kuCj4gCj4gdjI6IGludmVydCBjaGVja3MgYnkgY29tcGFyaW5nIGJp
Z2dlc3QgY2RjbGsgZmlyc3QgKHN1Z2dlc3RlZCBieSBWaWxsZSkKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCmxndG0KClNlcmll
cyBpcwpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMgfCAx
OSArKysrKy0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDE0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwo+IGluZGV4
IDY5ODhjNmNiYzM2Mi4uNDY1YTcyZDE4NWFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NkY2xrLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
ZGNsay5jCj4gQEAgLTE4NjUsMjEgKzE4NjUsMTIgQEAgc3RhdGljIHZvaWQgaWNsX3NldF9jZGNs
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAo+ICBzdGF0aWMgdTggaWNs
X2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCj4gIHsKPiAtCXN3aXRjaCAoY2RjbGspIHsK
PiAtCWNhc2UgNTAwMDA6Cj4gLQljYXNlIDMwNzIwMDoKPiAtCWNhc2UgMzEyMDAwOgo+IC0JCXJl
dHVybiAwOwo+IC0JY2FzZSA1NTY4MDA6Cj4gLQljYXNlIDU1MjAwMDoKPiAtCQlyZXR1cm4gMTsK
PiAtCWRlZmF1bHQ6Cj4gLQkJTUlTU0lOR19DQVNFKGNkY2xrKTsKPiAtCQkvKiBmYWxsIHRocm91
Z2ggKi8KPiAtCWNhc2UgNjUyODAwOgo+IC0JY2FzZSA2NDgwMDA6Cj4gKwlpZiAoY2RjbGsgPiA1
NTY4MDApCj4gIAkJcmV0dXJuIDI7Cj4gLQl9Cj4gKwllbHNlIGlmIChjZGNsayA+IDMxMjAwMCkK
PiArCQlyZXR1cm4gMTsKPiArCWVsc2UKPiArCQlyZXR1cm4gMDsKPiAgfQo+ICAKPiAgc3RhdGlj
IHZvaWQgaWNsX2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4g
LS0gCj4gMi4yMS4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
