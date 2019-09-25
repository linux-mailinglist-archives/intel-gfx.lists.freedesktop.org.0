Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 880CFBDE75
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 15:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C626EBB0;
	Wed, 25 Sep 2019 13:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4366EBB0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 13:02:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 06:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="189662033"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 25 Sep 2019 06:02:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2019 16:02:18 +0300
Date: Wed, 25 Sep 2019 16:02:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190925130218.GZ1208@intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-9-maarten.lankhorst@linux.intel.com>
 <20190925045531.GN1869@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925045531.GN1869@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 09/23] drm/i915: Do not add all planes when
 checking scalers on glk+
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

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgMDk6NTU6MzFQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBGcmksIFNlcCAyMCwgMjAxOSBhdCAwMTo0MjoyMVBNICswMjAwLCBNYWFydGVuIExh
bmtob3JzdCB3cm90ZToKPiA+IFdlIGNhbm5vdCBzd2l0Y2ggYmV0d2VlbiBIUSBhbmQgbm9ybWFs
IG1vZGUgb24gR0xLKywgc28gb25seQo+ID4gYWRkIHBsYW5lcyBvbiBwbGF0Zm9ybXMgd2hlcmUg
aXQgbWFrZXMgc2Vuc2UuCj4gPiAKPiA+IFdlIGNvdWxkIHByb2JhYmx5IHJlc3RyaWN0IGl0IGV2
ZW4gbW9yZSB0byBvbmx5IGFkZCB3aGVuIHNjYWxlcgo+ID4gdXNlcnMgdG9nZ2xlcyBiZXR3ZWVu
IDEgYW5kIDIsIGJ1dCBsZXRzIGp1c3QgbGVhdmUgaXQgZm9yIG5vdy4KPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljLmMgfCA1ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiA+IGlu
ZGV4IDE1ODU5NGU2NGJiOS4uYzUwZTBiMjE4YmQ2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+ID4gQEAgLTQyMSw2ICs0MjEsMTEgQEAg
aW50IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPiA+ICAJCQkgKi8KPiA+ICAJCQlpZiAoIXBsYW5lKSB7Cj4gPiAgCQkJCXN0cnVj
dCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlOwo+ID4gKwo+ID4gKwkJCQkvKiBObyBuZWVkIHRvIHJl
cHJvZ3JhbSwgd2UncmUgbm90IGNoYW5naW5nIHNjYWxpbmcgbW9kZSAqLwo+ID4gKwkJCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKPiA+
ICsJCQkJCWNvbnRpbnVlOwo+ID4gKwo+IAo+IFdlIGNvdWxkIHByb2JhYmx5IGp1c3QgY29tYmlu
ZSB0aGlzIGludG8gdGhlIGV4aXN0aW5nICFwbGFuZSBjb25kaXRpb24KPiBhbmQgZW5oYW5jZSB0
aGUgY29tbWVudCBhYm92ZSB0aGF0IHRvIHNheSAiTm90ZSB0aGF0IEdMSysgc2NhbGVycyBkb24n
dAo+IGhhdmUgYSBIUSBtb2RlIHNvIHRoaXMgaXNuJ3QgbmVjZXNzYXJ5IG9uIHRob3NlIHBsYXRm
b3Jtcy4iCgpJJ20gcmV3cml0aW5nIHRoaXMgd2hvbGUgc2NhbGVyIG1lc3MuCgo+IAo+IEVpdGhl
ciB3YXksCj4gCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+Cj4gCj4gCj4gPiAgCQkJCXBsYW5lID0gZHJtX3BsYW5lX2Zyb21faW5kZXgoJmRldl9w
cml2LT5kcm0sIGkpOwo+ID4gIAkJCQlzdGF0ZSA9IGRybV9hdG9taWNfZ2V0X3BsYW5lX3N0YXRl
KGRybV9zdGF0ZSwgcGxhbmUpOwo+ID4gIAkJCQlpZiAoSVNfRVJSKHN0YXRlKSkgewo+ID4gLS0g
Cj4gPiAyLjIwLjEKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gLS0gCj4gTWF0dCBSb3Blcgo+IEdyYXBoaWNzIFNv
ZnR3YXJlIEVuZ2luZWVyCj4gVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudAo+IEludGVsIENv
cnBvcmF0aW9uCj4gKDkxNikgMzU2LTI3OTUKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
