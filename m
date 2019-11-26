Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB78A10A73F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 00:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28B36E1B8;
	Tue, 26 Nov 2019 23:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8106E1B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 23:52:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 15:52:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="408825390"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with ESMTP; 26 Nov 2019 15:52:20 -0800
Date: Tue, 26 Nov 2019 15:52:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20191126235220.GH6337@mdroper-desk1.amr.corp.intel.com>
References: <20191125125313.17584-1-kai.vehmanen@linux.intel.com>
 <20191125125313.17584-2-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125125313.17584-2-kai.vehmanen@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: fix DP infoframe init
 for PORT_A on gen12+
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

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMDI6NTM6MTNQTSArMDIwMCwgS2FpIFZlaG1hbmVuIHdy
b3RlOgo+IFN0YXJ0aW5nIHdpdGggZ2VuMTIsIFBPUlRfQSBjYW4gYmUgYWxzbyBjb25uZWN0ZWQg
dG8gRFAKPiB0cmFuc2NvZGVyLiBVcGRhdGUgY29kZSBpbiBpbnRlbF9kcF9pbml0KCkgdG8gdGFr
ZSB0aGlzCj4gaW50byBhY2NvdW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEthaSBWZWhtYW5lbiA8
a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT4KCkkgZG9uJ3QgdGhpbmsgdGhpcyBmdW5jdGlv
biBnZXRzIGNhbGxlZCBvbiBnZW4xMjsgdGhpcyBvbmUgaXMgZm9yCnByZS1EREkgcGxhdGZvcm1z
LiAgRFAgaW5pdGlhbGl6YXRpb24gb24gcmVjZW50IHBsYXRmb3JtcyBoYXBwZW5zIHZpYQppbnRl
bF9kZGlfaW5pdCgpIGFuZCB0aGF0IG9uZSBjYWxscyBpbnRlbF9pbmZvZnJhbWVfaW5pdCB3aXRo
b3V0IHRoZQpQT1JUX0EgcmVzdHJpY3Rpb24uCgoKTWF0dAoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCj4gaW5kZXggNDUxOWMzMmY2YzI0Li5mZDJiMzlmZTBlNjAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTczMzUsNyArNzMzNSw3
IEBAIGJvb2wgaW50ZWxfZHBfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gIAo+ICAJaW50ZWxfZGlnX3BvcnQtPmhwZF9wdWxzZSA9IGludGVsX2RwX2hwZF9wdWxzZTsK
PiAgCj4gLQlpZiAocG9ydCAhPSBQT1JUX0EpCj4gKwlpZiAocG9ydCAhPSBQT1JUX0EgfHwgSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAgMTIpCj4gIAkJaW50ZWxfaW5mb2ZyYW1lX2luaXQoaW50ZWxf
ZGlnX3BvcnQpOwo+ICAKPiAgCWludGVsX2RpZ19wb3J0LT5hdXhfY2ggPSBpbnRlbF9iaW9zX3Bv
cnRfYXV4X2NoKGRldl9wcml2LCBwb3J0KTsKPiAtLSAKPiAyLjE3LjEKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVy
CkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQK
SW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
