Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1070BAFA7B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 12:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C056EA78;
	Wed, 11 Sep 2019 10:35:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC6F6EA78
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 10:35:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 03:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="200496309"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Sep 2019 03:34:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 13:34:58 +0300
Date: Wed, 11 Sep 2019 13:34:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190911103458.GV7482@intel.com>
References: <20190910160645.GU7482@intel.com>
 <20190910161506.7158-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910161506.7158-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 2/8] drm/i915: Use literal representation
 of cdclk tables
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

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDk6MTU6MDZBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oCj4gaW5kZXgg
NGQ2ZjdmNWY4OTMwLi4xYWZhODRhYjYwMTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5oCj4gQEAgLTE1LDYgKzE1LDEzIEBAIHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGU7Cj4gIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZTsKPiAgc3RydWN0IGludGVs
X2NydGNfc3RhdGU7Cj4gIAo+ICtzdHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyB7Cj4gKwl1MTYgcmVm
Y2xrOwo+ICsJdTMyIGNkY2xrOwoKVGhvc2UgdHdvIHNob3VsZCBiZSBzd2FwcGVkIGFyb3VuZCwg
b3RoZXJ3aXNlIHRoZSBjb21waWxlciB3aWxsIHBhZAp0aGluZ3Mgb3V0IG5lZWRsZXNzbHkuCgo+
ICsJdTggZGl2aWRlcjsJLyogQ0QyWCBkaXZpZGVyICogMiAqLwo+ICsJdTggcmF0aW87Cj4gK307
Cj4gKwo+ICBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQgaW50ZWxfY2RjbGtfaW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIHZvaWQgaW50ZWxfY2RjbGtfdW5pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBp
bmRleCBlMjg5YjRmZmQzNGIuLmZmNmFmZjJhNDg2NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAo+IEBAIC0xNDIwLDYgKzE0MjAsOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4g
IAkJLyogVGhlIGN1cnJlbnQgaGFyZHdhcmUgY2RjbGsgc3RhdGUgKi8KPiAgCQlzdHJ1Y3QgaW50
ZWxfY2RjbGtfc3RhdGUgaHc7Cj4gIAo+ICsJCS8qIGNkY2xrLCBkaXZpZGVyLCBhbmQgcmF0aW8g
dGFibGUgZnJvbSBic3BlYyAqLwo+ICsJCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzICp0
YWJsZTsKPiArCj4gIAkJaW50IGZvcmNlX21pbl9jZGNsazsKPiAgCX0gY2RjbGs7Cj4gIAo+IC0t
IAo+IDIuMjAuMQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
