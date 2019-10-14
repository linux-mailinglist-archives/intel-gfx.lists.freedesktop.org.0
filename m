Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3358D671A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 18:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2DFB89276;
	Mon, 14 Oct 2019 16:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E8E89276
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 16:20:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 09:20:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="346803089"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga004.jf.intel.com with ESMTP; 14 Oct 2019 09:20:25 -0700
Date: Mon, 14 Oct 2019 09:20:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20191014162058.GA4812@mdroper-desk1.amr.corp.intel.com>
References: <20191011002618.3087-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011002618.3087-1-vivek.kasireddy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Port C's hotplug interrupt is
 associated with TC1 bits
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

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDU6MjY6MThQTSAtMDcwMCwgVml2ZWsgS2FzaXJlZGR5
IHdyb3RlOgo+IE9uIHNvbWUgcGxhdGZvcm1zIHRoYXQgaGF2ZSB0aGUgTUNDIFBDSCwgUG9ydCBD
J3MgaG90cGx1ZyBpbnRlcnJ1cHQKPiBiaXRzIGFyZSBtYXBwZWQgdG8gVEMxIGJpdHMuCj4gCj4g
U3VnZ2VzdGVkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4K
CkFzIEpvc2UgcG9pbnRlZCBvdXQsIHRoZSAic29tZSIgaW4gdGhlIG1lc3NhZ2UgaGVyZSBpc24n
dCBjb3JyZWN0OyBhbGwKTUNDIHBsYXRmb3JtcyBzaG91bGQgYmVoYXZlIHRoaXMgd2F5LCBhbmQg
dGhlIG90aGVyIFBDSCB3ZSB3ZXJlIHdvcmtpbmcKd2l0aCBwcmV2aW91c2x5IHR1cm5lZCBvdXQg
dG8gYmUgc29tZXRoaW5nIGRpZmZlcmVudCAobm90IGFjdHVhbGx5IE1DQyk7CkknbGwgc2VuZCBh
IHNlcGFyYXRlIHBhdGNoIHRvIGRlYWwgd2l0aCB0aGF0IG90aGVyIFBDSCBpbiB0aGUgbmV4dCBk
YXkKb3IgdHdvLgoKQXNpZGUgZnJvbSB0aGF0LAoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CgpBcHBsaWVkIHRvIGRpbnEgKHdpdGggYSB0d2Vha2Vk
IGNvbW1pdCBtZXNzYWdlKS4gIFRoYW5rcyBmb3IgdGhlIHBhdGNoLgoKCk1hdHQKCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDMgKysrCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICB8IDggKysrKy0tLS0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDBlNDVjNjFkNzMzMS4uNjU5NGYy
YWYxMjU3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBA
IC01MjgyLDYgKzUyODIsOSBAQCBzdGF0aWMgYm9vbCBpY2xfY29tYm9fcG9ydF9jb25uZWN0ZWQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICB7Cj4gIAllbnVtIHBvcnQgcG9y
dCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gIAo+ICsJaWYgKEhBU19QQ0hfTUNDKGRl
dl9wcml2KSAmJiBwb3J0ID09IFBPUlRfQykKPiArCQlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikg
JiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOwo+ICsKPiAgCXJldHVybiBJOTE1X1JFQUQo
U0RFSVNSKSAmIFNERV9ERElfSE9UUExVR19JQ1AocG9ydCk7Cj4gIH0KPiAgCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jCj4gaW5kZXggM2FmN2Y3OTE0YzQwLi5hN2M5NjhiMDFhZjMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKPiBAQCAtMjI0OSw4ICsyMjQ5LDggQEAgc3RhdGljIHZvaWQg
aWNwX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBj
aF9paXIpCj4gIAkJdGNfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0ID0gdGdwX3RjX3BvcnRfaG90
cGx1Z19sb25nX2RldGVjdDsKPiAgCQlwaW5zID0gaHBkX3RncDsKPiAgCX0gZWxzZSBpZiAoSEFT
X1BDSF9NQ0MoZGV2X3ByaXYpKSB7Cj4gLQkJZGRpX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIg
JiBTREVfRERJX01BU0tfVEdQOwo+IC0JCXRjX2hvdHBsdWdfdHJpZ2dlciA9IDA7Cj4gKwkJZGRp
X2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBTREVfRERJX01BU0tfSUNQOwo+ICsJCXRjX2hv
dHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOwo+
ICAJCXBpbnMgPSBocGRfaWNwOwo+ICAJfSBlbHNlIHsKPiAgCQlkZGlfaG90cGx1Z190cmlnZ2Vy
ID0gcGNoX2lpciAmIFNERV9ERElfTUFTS19JQ1A7Cj4gQEAgLTMzNzcsOCArMzM3Nyw4IEBAIHN0
YXRpYyB2b2lkIGljcF9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiAgc3RhdGljIHZvaWQgbWNjX2hwZF9pcnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gIAlpY3BfaHBkX2lycV9zZXR1cChkZXZfcHJpdiwKPiAt
CQkJICBTREVfRERJX01BU0tfVEdQLCAwLAo+IC0JCQkgIFRHUF9ERElfSFBEX0VOQUJMRV9NQVNL
LCAwLAo+ICsJCQkgIFNERV9ERElfTUFTS19JQ1AsIFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RD
MSksCj4gKwkJCSAgSUNQX0RESV9IUERfRU5BQkxFX01BU0ssIElDUF9UQ19IUERfRU5BQkxFKFBP
UlRfVEMxKSwKPiAgCQkJICBocGRfaWNwKTsKPiAgfQo+ICAKPiAtLSAKPiAyLjIxLjAKPiAKCi0t
IApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3Jt
IEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
