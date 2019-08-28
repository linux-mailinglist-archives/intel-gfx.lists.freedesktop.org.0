Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D884A078D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD9189DA4;
	Wed, 28 Aug 2019 16:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8992D89D84
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 16:40:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 09:40:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="188274073"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 28 Aug 2019 09:40:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Aug 2019 19:40:13 +0300
Date: Wed, 28 Aug 2019 19:40:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Simon Ser <simon.ser@intel.com>
Message-ID: <20190828164013.GI7482@intel.com>
References: <20190823094946.5708-1-simon.ser@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823094946.5708-1-simon.ser@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: add port info to debugfs
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
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <nanasi.d.navare@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMTI6NDk6NDZQTSArMDMwMCwgU2ltb24gU2VyIHdyb3Rl
Ogo+IFRoaXMgcGF0Y2ggYWRkcyBhIGxpbmUgd2l0aCB0aGUgcG9ydCBuYW1lIHRvIGNvbm5lY3Rv
cnMgaW4KPiBkZWJ1Z2ZzL2k5MTVfZGVidWdfaW5mby4gSWYgdGhlIHBvcnQgaXMgVHlwZS1DLCB0
aGUgVHlwZS1DIHBvcnQgbnVtYmVyIGlzCj4gcHJpbnRlZCB0b28uCj4gCj4gU2lnbmVkLW9mZi1i
eTogU2ltb24gU2VyIDxzaW1vbi5zZXJAaW50ZWwuY29tPgo+IENjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG5hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAt
LS0KPiAKPiBSZXNlbmRpbmcgdjIgdG8gdGhlIGNvcnJlY3QgbWFpbGluZyBsaXN0Lgo+IAo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDEwICsrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+IGluZGV4IGIzOTIyNmQ3ZjhkMi4uNGJhNTA4Yzk1NGY4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBAQCAtMjU1Nyw5ICsyNTU3LDExIEBAIHN0YXRpYyB2
b2lkIGludGVsX2x2ZHNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gIHN0YXRpYyB2b2lkIGlu
dGVsX2Nvbm5lY3Rvcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKPiAgCQkJCSBzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ICB7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpOwo+ICAJc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4gIAlz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciA9IGludGVsX2Nvbm5lY3Rvci0+ZW5j
b2RlcjsKPiAgCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlOwo+ICsJZW51bSB0Y19wb3J0
IHRjX3BvcnQ7Cj4gCj4gIAlzZXFfcHJpbnRmKG0sICJjb25uZWN0b3IgJWQ6IHR5cGUgJXMsIHN0
YXR1czogJXNcbiIsCj4gIAkJICAgY29ubmVjdG9yLT5iYXNlLmlkLCBjb25uZWN0b3ItPm5hbWUs
Cj4gQEAgLTI1NzgsNiArMjU4MCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5m
byhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gIAlpZiAoIWludGVsX2VuY29kZXIpCj4gIAkJcmV0dXJu
Owo+IAo+ICsJaWYgKGludGVsX2VuY29kZXItPnBvcnQgIT0gUE9SVF9OT05FKSB7Cj4gKwkJc2Vx
X3ByaW50ZihtLCAiXHRwb3J0OiAlYyIsIHBvcnRfbmFtZShpbnRlbF9lbmNvZGVyLT5wb3J0KSk7
Cj4gKwkJdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkxNSwgaW50ZWxfZW5jb2Rlci0+cG9y
dCk7Cj4gKwkJaWYgKHRjX3BvcnQgIT0gUE9SVF9UQ19OT05FKQo+ICsJCQlzZXFfcHJpbnRmKG0s
ICIvVEMjJWQiLCB0Y19wb3J0ICsgMSk7Cj4gKwkJc2VxX3ByaW50ZihtLCAiXG4iKTsKCk1heWJl
IGp1c3QgcHJpbnQgZW5jb2Rlci0+bmFtZSBpbnN0ZWFkPwoKPiArCX0KPiArCj4gIAlzd2l0Y2gg
KGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUpIHsKPiAgCWNhc2UgRFJNX01PREVfQ09OTkVDVE9S
X0Rpc3BsYXlQb3J0Ogo+ICAJY2FzZSBEUk1fTU9ERV9DT05ORUNUT1JfZURQOgo+IC0tCj4gMi4y
Mi4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
