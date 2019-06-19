Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2053B4C114
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399596E454;
	Wed, 19 Jun 2019 18:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EED86E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:54:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 11:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="181692510"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 19 Jun 2019 11:54:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 21:54:12 +0300
Date: Wed, 19 Jun 2019 21:54:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190619185412.GF5942@intel.com>
References: <20190619170842.20579-1-ville.syrjala@linux.intel.com>
 <20190619170842.20579-4-ville.syrjala@linux.intel.com>
 <156096988267.664.152988980390708525@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156096988267.664.152988980390708525@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke drm_driver irq vfuncs
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

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDc6NDQ6NDJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wNi0xOSAxODowODo0MSkKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IFN0b3AgdXNpbmcgdGhlIGlycSB2ZnVuY3MgdW5kZXIgZHJtX2RyaXZlci4gVGhhdCdzIG5v
dCBnb2luZyB0byBmbHkKPiA+IGluIGEgbWl4ZWQgZ2VuIGVudmlyb25tZW50IHNpbmNlIHRoZSBz
dHJ1Y3R1cmUgaXMgc2hhcmVkIGJldHdlZW4gYWxsCj4gPiB0aGUgZGV2aWNlcy4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAgIDIg
Ky0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMjgwICsrKysrKysrKysr
KysrKystLS0tLS0tLS0tLS0tLS0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNDAgaW5zZXJ0aW9u
cygrKSwgMTQyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+
IGluZGV4IGY2MmUzMzk3ZDkzNi4uZWE2YjA2MTA5ZDVhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYwo+ID4gQEAgLTc1NCw3ICs3NTQsNyBAQCBzdGF0aWMgaW50IGk5MTVfbG9hZF9t
b2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiA+ICBjbGVhbnVwX21vZGVzZXQ6
Cj4gPiAgICAgICAgIGludGVsX21vZGVzZXRfY2xlYW51cChkZXYpOwo+IAo+IEFoYWghIGludGVs
X21vZGVzZXRfY2xlYW51cCgpIGFsc28gY2FsbHMgaW50ZWxfaXJxX3VuaW5zdGFsbCgpCgpPaCBk
ZWFyLiBUaGlzIGNvdWxkIGJlIGEgZGVlcCBnb3BoZXIgaG9sZS4uLgoKPiAKPiA+ICBjbGVhbnVw
X2lycToKPiA+IC0gICAgICAgZHJtX2lycV91bmluc3RhbGwoZGV2KTsKPiA+ICsgICAgICAgaW50
ZWxfaXJxX3VuaW5zdGFsbChkZXZfcHJpdik7Cj4gPiAgICAgICAgIGludGVsX2dtYnVzX3RlYXJk
b3duKGRldl9wcml2KTsKPiA+ICBjbGVhbnVwX2NzcjoKPiA+ICAgICAgICAgaW50ZWxfY3NyX3Vj
b2RlX2ZpbmkoZGV2X3ByaXYpOwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
