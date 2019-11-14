Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC92DFBCF6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 01:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D946B6EEA7;
	Thu, 14 Nov 2019 00:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673F36EEA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 00:20:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 16:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="214423148"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2019 16:20:25 -0800
Date: Wed, 13 Nov 2019 16:23:24 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191114002323.GH28227@intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
 <20191112141503.1116-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141503.1116-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915: Pass dev_priv to
 cpt_verify_modeset()
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

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDQ6MTU6MDBQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IEdldCByaWQgb2YgdGhlIGxhc3QgJ2RldicgdXNhZ2UgaW4gaXJvbmxha2VfY3J0
Y19lbmFibGUoKSBieQo+IHBhc3NpbmcgZGV2X3ByaXYgdG8gY3B0X3ZlcmlmeV9tb2Rlc2V0KCku
Cj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPgoKTWFuYXNpCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA3N2I3MzljZGEwNTMuLjZhZmRiZmJiMzI2NCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAg
LTU0NjIsOSArNTQ2Miw5IEBAIHN0YXRpYyB2b2lkIGxwdF9wY2hfZW5hYmxlKGNvbnN0IHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJbHB0X2VuYWJsZV9wY2hfdHJhbnNjb2Rl
cihkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBjcHRf
dmVyaWZ5X21vZGVzZXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgZW51bSBwaXBlIHBpcGUpCj4g
K3N0YXRpYyB2b2lkIGNwdF92ZXJpZnlfbW9kZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gKwkJCSAgICAgICBlbnVtIHBpcGUgcGlwZSkKPiAgewo+IC0Jc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwo+ICAJaTkxNV9yZWdfdCBk
c2xyZWcgPSBQSVBFRFNMKHBpcGUpOwo+ICAJdTMyIHRlbXA7Cj4gIAo+IEBAIC02NTM4LDcgKzY1
MzgsNyBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqcGlwZV9jb25maWcsCj4gIAlpbnRlbF9lbmNvZGVyc19lbmFibGUoc3RhdGUsIGlu
dGVsX2NydGMpOwo+ICAKPiAgCWlmIChIQVNfUENIX0NQVChkZXZfcHJpdikpCj4gLQkJY3B0X3Zl
cmlmeV9tb2Rlc2V0KGRldiwgaW50ZWxfY3J0Yy0+cGlwZSk7Cj4gKwkJY3B0X3ZlcmlmeV9tb2Rl
c2V0KGRldl9wcml2LCBwaXBlKTsKPiAgCj4gIAkvKgo+ICAJICogTXVzdCB3YWl0IGZvciB2Ymxh
bmsgdG8gYXZvaWQgc3B1cmlvdXMgUENIIEZJRk8gdW5kZXJydW5zLgo+IC0tIAo+IDIuMjMuMAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
