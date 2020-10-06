Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE4A284964
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48A26E42C;
	Tue,  6 Oct 2020 09:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135A36E42C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:31:36 +0000 (UTC)
IronPort-SDR: HmYECjG1hsqIEywZgHqYVM912BQ/p/BVUJKUlURG6Z45OMfHciv+ZTSMQTIxB7jl200BrxOL48
 BZDb2vILtODQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="151356333"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="151356333"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:31:35 -0700
IronPort-SDR: L1uIZFS0UvaniFYId+xFYtkrVFlGW9pkzWkBaz/MjB/iNpCZ6pzEGBgO5xlai7GOwdNCKpPBcJ
 qLSc4Xbo7+9g==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="460716051"
Received: from kchandar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.35])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:31:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201001151640.14590-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
 <20201001151640.14590-6-ville.syrjala@linux.intel.com>
Date: Tue, 06 Oct 2020 12:31:57 +0300
Message-ID: <87ft6rk8du.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915: Wait for VLV/CHV/BXT/GLK
 DSI panel power cycle delay on reboot
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwMSBPY3QgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBBcyB3aXRoIGVEUCBhbmQgTFZEUyB3ZSBzaG91bGQgYWxzbyBy
ZXNwZWN0IHRoZSBwb3dlciBjeWNsZQo+IGRlbGF5IG9uIERTSSBwYW5lbHMuIFdlIGFyZSBub3Qg
dXNpbmcgdGhlIHBvd2VyIHNlcXVlbmNlcgo+IGZvciB0aGVzZSwgYW5kIHdlIGhhdmUgbm8gb3B0
aW1pemF0aW9ucyBhcm91bmQgdGhlIHNsZWVwCj4gZHVyYXRpb24sIHNvIHdlIGp1c3QgbXNsZWVw
KCkgdGhlIHdob2xlIHRoaW5nIGF3YXkuCj4KPiBOb3RlIHRoYXQgdGhlIElDTCsgRFNJIGNvZGUg
ZG9lc24ndCBzZWVtIHRvIGhhdmUgYW55IHBvd2VyCj4gb2ZmL3Bvd2VyIGN5Y2xlIGRlbGF5IGhh
bmRsaW5nIHdoYXRzb2V2ZXIuIFRoZSBvbmx5IHRoaW5nIGl0Cj4gaGFuZGxlcyBpcyB0aGUgcG93
ZXIgb24gZGVsYXkuIEFzIHRoYXQgbG9va3MgcHJldHR5IGJ1c3RlZAo+IGluIGdlbmVyYWwgSSB3
b24ndCBib3RoZXIgZGVhbGluZyB3aXRoIGl0IGZvciB0aGUgdGltZSBiZWluZy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
CgpCZXR0ZXIgdGhhbiBub3RoaW5nLgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zs
dl9kc2kuYyB8IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMKPiBpbmRleCA1ZTU1MjI5MjNi
MWUuLmQ1MmY5YzE3NzkwOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3Zsdl9kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2Rz
aS5jCj4gQEAgLTk4NSw2ICs5ODUsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHNpX3Bvc3RfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCWludGVsX2RzaV9tc2xl
ZXAoaW50ZWxfZHNpLCBpbnRlbF9kc2ktPnBhbmVsX3B3cl9jeWNsZV9kZWxheSk7Cj4gIH0KPiAg
Cj4gK3N0YXRpYyB2b2lkIGludGVsX2RzaV9zaHV0ZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikKPiArewo+ICsJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpID0gZW5jX3RvX2lu
dGVsX2RzaShlbmNvZGVyKTsKPiArCj4gKwlpbnRlbF9kc2lfbXNsZWVwKGludGVsX2RzaSwgaW50
ZWxfZHNpLT5wYW5lbF9wd3JfY3ljbGVfZGVsYXkpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgYm9vbCBp
bnRlbF9kc2lfZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJ
CQkJICAgZW51bSBwaXBlICpwaXBlKQo+ICB7Cj4gQEAgLTE4NDMsNiArMTg1MCw3IEBAIHZvaWQg
dmx2X2RzaV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCWludGVs
X2VuY29kZXItPmdldF9od19zdGF0ZSA9IGludGVsX2RzaV9nZXRfaHdfc3RhdGU7Cj4gIAlpbnRl
bF9lbmNvZGVyLT5nZXRfY29uZmlnID0gaW50ZWxfZHNpX2dldF9jb25maWc7Cj4gIAlpbnRlbF9l
bmNvZGVyLT51cGRhdGVfcGlwZSA9IGludGVsX3BhbmVsX3VwZGF0ZV9iYWNrbGlnaHQ7Cj4gKwlp
bnRlbF9lbmNvZGVyLT5zaHV0ZG93biA9IGludGVsX2RzaV9zaHV0ZG93bjsKPiAgCj4gIAlpbnRl
bF9jb25uZWN0b3ItPmdldF9od19zdGF0ZSA9IGludGVsX2Nvbm5lY3Rvcl9nZXRfaHdfc3RhdGU7
CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
