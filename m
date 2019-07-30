Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268B57B141
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 693216E5F9;
	Tue, 30 Jul 2019 18:06:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3826E5F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:06:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 11:06:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="200282630"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 11:06:34 -0700
Date: Tue, 30 Jul 2019 11:06:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190730180634.GD17720@mdroper-desk.amr.corp.intel.com>
References: <20190730175121.16413-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730175121.16413-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Ungate DDIC and DDID
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

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTA6NTE6MjFBTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBTcGVjaWZpY2F0aW9uIHN0YXRlcyB0aGF0IERESV9DTEtfU0VMIG5l
ZWRzIHRvIGJlIG1hcHBlZCB0byBNRyBjbG9jawo+IGV2ZW4gaWYgTUcgZG8gbm90IGV4aXN0IG9u
IEVITCwgdGhpcyB3aWxsIHVuZ2F0ZSB0aG9zZSBERElzLgo+IAo+IEJTcGVjOiAyMDg0NQo+IENj
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENjOiBWaXZlayBLYXNp
cmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KVGVzdGVkLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDkgKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCBjNmYzOGM3YjM5N2QuLmZiNTg4NDUwMjBkYyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC0yOTIxLDYg
KzI5MjEsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19zZWxlY3Qoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCj4gIAkJaWYgKCFpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYs
IHBoeSkpCj4gIAkJCUk5MTVfV1JJVEUoRERJX0NMS19TRUwocG9ydCksCj4gIAkJCQkgICBpY2xf
cGxsX3RvX2RkaV9jbGtfc2VsKGVuY29kZXIsIGNydGNfc3RhdGUpKTsKPiArCQllbHNlIGlmIChJ
U19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYgcG9ydCA+PSBQT1JUX0MpCj4gKwkJCS8qCj4gKwkJ
CSAqIE1HIGRvZXMgbm90IGV4aXN0IGJ1dCB0aGUgcHJvZ3JhbW1pbmcgaXMgcmVxdWlyZWQKPiAr
CQkJICogdG8gdW5nYXRlIERESUMgYW5kIERESUQKPiArCQkJICovCj4gKwkJCUk5MTVfV1JJVEUo
RERJX0NMS19TRUwocG9ydCksIERESV9DTEtfU0VMX01HKTsKPiAgCX0gZWxzZSBpZiAoSVNfQ0FO
Tk9OTEFLRShkZXZfcHJpdikpIHsKPiAgCQkvKiBDb25maWd1cmUgRFBDTEtBX0NGR0NSMCB0byBt
YXAgdGhlIERQTEwgdG8gdGhlIERESS4gKi8KPiAgCQl2YWwgPSBJOTE1X1JFQUQoRFBDTEtBX0NG
R0NSMCk7Cj4gQEAgLTI5NjEsNyArMjk2Nyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9jbGtf
ZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiAgCWVudW0gcGh5IHBoeSA9
IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKPiAgCj4gIAlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkgewo+IC0JCWlmICghaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2
LCBwaHkpKQo+ICsJCWlmICghaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpIHx8Cj4g
KwkJICAgIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYgcG9ydCA+PSBQT1JUX0MpKQo+ICAJ
CQlJOTE1X1dSSVRFKERESV9DTEtfU0VMKHBvcnQpLCBERElfQ0xLX1NFTF9OT05FKTsKPiAgCX0g
ZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpIHsKPiAgCQlJOTE1X1dSSVRFKERQQ0xL
QV9DRkdDUjAsIEk5MTVfUkVBRChEUENMS0FfQ0ZHQ1IwKSB8Cj4gLS0gCj4gMi4yMi4wCj4gCgot
LSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpJb1RHIFBsYXRmb3JtIEVu
YWJsaW5nICYgRGV2ZWxvcG1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
