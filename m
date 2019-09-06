Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBF3ABCD5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 17:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576326E2F2;
	Fri,  6 Sep 2019 15:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BC96E2F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 15:45:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 08:45:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; d="scan'208";a="185814486"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2019 08:45:05 -0700
Date: Fri, 6 Sep 2019 08:45:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190906154504.GX13677@mdroper-desk.amr.corp.intel.com>
References: <20190905181337.23727-1-matthew.d.roper@intel.com>
 <20190906113649.GR7482@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906113649.GR7482@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Use refclk/2 as bypass
 frequency
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

T24gRnJpLCBTZXAgMDYsIDIwMTkgYXQgMDI6MzY6NDlQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgU2VwIDA1LCAyMDE5IGF0IDExOjEzOjM3QU0gLTA3MDAsIE1hdHQg
Um9wZXIgd3JvdGU6Cj4gPiBVbmxpa2UgZ2VuMTEsIHdoaWNoIGFsd2F5cyByYW4gYXQgNTBNSHog
d2hlbiB0aGUgY2RjbGsgUExMIHdhcyBkaXNhYmxlZCwKPiA+IFRHTCBydW5zIGF0IHJlZmNsay8y
LiAgVGhlIDUwTUh6IGNyb2Nsay8yIGlzIG9ubHkgdXNlZCBieSBoYXJkd2FyZQo+ID4gZHVyaW5n
IHNvbWUgcG93ZXIgc3RhdGUgdHJhbnNpdGlvbnMuCj4gPiAKPiA+IEJzcGVjOiA0OTIwMQo+ID4g
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gU2ln
bmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDcgKysr
KystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiA+
IGluZGV4IDc2ZjExZDQ2NWU5MS4uZDNlNTY2MjhhZjcwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiA+IEBAIC0xODU1LDggKzE4NTUsNiBA
QCBzdGF0aWMgdm9pZCBpY2xfZ2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiA+ICAJdTMyIHZhbDsKPiA+ICAJaW50IGRpdjsKPiA+ICAKPiA+IC0JY2RjbGtfc3Rh
dGUtPmJ5cGFzcyA9IDUwMDAwOwo+ID4gLQo+ID4gIAl2YWwgPSBJOTE1X1JFQUQoU0tMX0RTU00p
Owo+ID4gIAlzd2l0Y2ggKHZhbCAmIElDTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfTUFTSykgewo+
ID4gIAlkZWZhdWx0Ogo+ID4gQEAgLTE4NzMsNiArMTg3MSwxMSBAQCBzdGF0aWMgdm9pZCBpY2xf
Z2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ICAJCWJyZWFr
Owo+ID4gIAl9Cj4gPiAgCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ID4g
KwkJY2RjbGtfc3RhdGUtPmJ5cGFzcyA9IGNkY2xrX3N0YXRlLT5yZWYgLyAyOwo+ID4gKwllbHNl
Cj4gPiArCQljZGNsa19zdGF0ZS0+YnlwYXNzID0gNTAwMDA7Cj4gCj4gUmV2aWV3ZWQtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUFMuIEkn
ZCBzdGlsbCBsaWtlIHRvIHNlZSBhIGljbF9jZGNsa19wbGxfdXBkYXRlKCkgc28gSSB3b3VsZG4n
dCBoYXZlIHRvCj4gc2NyYXRjaCBteSBoZWFkIHdoeSB0aGlzIGxvb2tzIHNvIGRpZmZlcmVudCB0
byBieHQvY25sIGNvZGUuCgpBcHBsaWVkIHRvIGRpbnE7IHRoYW5rcyBmb3IgdGhlIHJldmlldy4g
IEFzIHlvdSBtZW50aW9uZWQsIEknbGwgbG9vawppbnRvIGZ1cnRoZXIgdXBkYXRlcyB0byB0aGUg
SUNMLXN0eWxlIGNkY2xrIGNvZGUgdG8gYnJpbmcgaXQgbW9yZSBpbgpsaW5lIHdpdGggb3RoZXIg
cGxhdGZvcm1zLgoKCk1hdHQKCj4gCj4gPiArCj4gPiAgCXZhbCA9IEk5MTVfUkVBRChCWFRfREVf
UExMX0VOQUJMRSk7Cj4gPiAgCWlmICgodmFsICYgQlhUX0RFX1BMTF9QTExfRU5BQkxFKSA9PSAw
IHx8Cj4gPiAgCSAgICAodmFsICYgQlhUX0RFX1BMTF9MT0NLKSA9PSAwKSB7Cj4gPiAtLSAKPiA+
IDIuMjAuMQo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbAoKLS0g
Ck1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0g
RW5hYmxlbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
