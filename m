Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 854106CE99
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 15:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D28066E3B7;
	Thu, 18 Jul 2019 13:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A326E3B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 13:10:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 06:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,278,1559545200"; d="scan'208";a="187788031"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 Jul 2019 06:10:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 16:10:13 +0300
Date: Thu, 18 Jul 2019 16:10:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190718131013.GA5942@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-23-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713010940.17711-23-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 22/22] drm/i915/mst: Do not hardcoded the
 crtcs that encoder can connect
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

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDY6MDk6NDBQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IAo+IFRpZ2VyIExha2UgaGFzIHVwIHRvIDQgcGlwZXMgc28gdGhlIG1hc2sgd291bGQg
bmVlZCB0byBiZSAweGYgaW5zdGVhZCBvZgo+IDB4Ny4gRG8gbm90IGhhcmRjb2RlIHRoZSBtYXNr
IHNvIGl0IGFsbG93cyB0aGUgZmFrZSBNU1QgZW5jb2RlcnMgdG8KPiBjb25uZWN0IHRvIGFsbCBw
aXBlcyBubyBtYXR0ZXIgaG93IG1hbnkgdGhlIHBsYXRmb3JtIGhhcy4KPiAKPiBJdGVyYXRpbmcg
b3ZlciBhbGwgcGlwZXMgdG8ga2VlcCBjb25zaXN0ZW50IHdpdGggaW50ZWxfZGRpX2luaXQoKS4K
PiAKPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCA1
ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBpbmRl
eCA2MDY1MmViYmRmNjEuLjFiNzliNmJlZmE5MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IEBAIC01ODYsNiArNTg2LDggQEAgaW50ZWxfZHBf
Y3JlYXRlX2Zha2VfbXN0X2VuY29kZXIoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxf
ZGlnX3BvcnQsIGVudW0KPiAgCXN0cnVjdCBpbnRlbF9kcF9tc3RfZW5jb2RlciAqaW50ZWxfbXN0
Owo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXI7Cj4gIAlzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXY7Cj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gKwllbnVtIHBpcGUg
cGlwZV9pdGVyOwo+ICAKPiAgCWludGVsX21zdCA9IGt6YWxsb2Moc2l6ZW9mKCppbnRlbF9tc3Qp
LCBHRlBfS0VSTkVMKTsKPiAgCj4gQEAgLTYwMiw4ICs2MDQsOSBAQCBpbnRlbF9kcF9jcmVhdGVf
ZmFrZV9tc3RfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9y
dCwgZW51bQo+ICAJaW50ZWxfZW5jb2Rlci0+dHlwZSA9IElOVEVMX09VVFBVVF9EUF9NU1Q7Cj4g
IAlpbnRlbF9lbmNvZGVyLT5wb3dlcl9kb21haW4gPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3dl
cl9kb21haW47Cj4gIAlpbnRlbF9lbmNvZGVyLT5wb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2Uu
cG9ydDsKPiAtCWludGVsX2VuY29kZXItPmNydGNfbWFzayA9IDB4NzsKPiAgCWludGVsX2VuY29k
ZXItPmNsb25lYWJsZSA9IDA7Cj4gKwlmb3JfZWFjaF9waXBlKGRldl9wcml2LCBwaXBlX2l0ZXIp
Cj4gKwkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrIHw9IEJJVChwaXBlX2l0ZXIpOwoKaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMxNjU1NS8/c2VyaWVzPTYzMzk5JnJl
dj0xCgo+ICAKPiAgCWludGVsX2VuY29kZXItPmNvbXB1dGVfY29uZmlnID0gaW50ZWxfZHBfbXN0
X2NvbXB1dGVfY29uZmlnOwo+ICAJaW50ZWxfZW5jb2Rlci0+ZGlzYWJsZSA9IGludGVsX21zdF9k
aXNhYmxlX2RwOwo+IC0tIAo+IDIuMjEuMAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
