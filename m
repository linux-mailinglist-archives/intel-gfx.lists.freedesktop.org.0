Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D80284963
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0792689BA9;
	Tue,  6 Oct 2020 09:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D526F89BA9
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:30:49 +0000 (UTC)
IronPort-SDR: qPBDCkBkmlIuBkqMsQMRRIcp31R+sc96mIAfiBDqDWV2jnUgmAozap82EClcy0VgH61VlCJbJA
 iXE2POxHAhlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228560334"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="228560334"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:30:49 -0700
IronPort-SDR: QYvAEapcHCVXHseczVwDoQwKCmEe1EMStYPcXzczljqDIZbgGP+HkdYnilT/oZvbFCNYRyPNZe
 Z6jbpqhImSmQ==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="527265768"
Received: from kchandar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.35])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:30:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201001151640.14590-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
 <20201001151640.14590-5-ville.syrjala@linux.intel.com>
Date: Tue, 06 Oct 2020 12:31:10 +0300
Message-ID: <87imbnk8f5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915: Wait for LVDS panel power
 cycle delay on reboot
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
aW51eC5pbnRlbC5jb20+Cj4KPiBKdXN0IGxpa2Ugd2l0aCBlRFAgbGV0J3Mgd2FpdCBmb3IgdGhl
IHBvd2VyIHNlcXVlbmNlciBwb3dlcgo+IGN5Y2xlIGRlbGF5IGJlZm9yZSB3ZSByZWJvb3QgdGhl
IG1hY2hpbmUsIGFzIG90aGVyd2lzZSB3ZQo+IGNhbid0IGd1YXJhbnRlZSB0aGUgcGFuZWwncyBt
aW5pbXVtIHBvd2VyIGN5Y2xlIGRlbGF5IHdpbGwKPiBiZSByZXNwZWN0ZWQuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYyB8IDEwICsr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jCj4gaW5kZXggZTY1YzJkZTUyMmMzLi5j
NmM3YzBiOTk4OWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9sdmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2
ZHMuYwo+IEBAIC0zNzEsNiArMzcxLDE1IEBAIHN0YXRpYyB2b2lkIHBjaF9wb3N0X2Rpc2FibGVf
bHZkcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCWludGVsX2Rpc2FibGVf
bHZkcyhzdGF0ZSwgZW5jb2Rlciwgb2xkX2NydGNfc3RhdGUsIG9sZF9jb25uX3N0YXRlKTsKPiAg
fQo+ICAKPiArc3RhdGljIHZvaWQgaW50ZWxfbHZkc19zaHV0ZG93bihzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcikKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gKwo+ICsJaWYgKGludGVsX2RlX3dhaXRf
Zm9yX2NsZWFyKGRldl9wcml2LCBQUF9TVEFUVVMoMCksIFBQX0NZQ0xFX0RFTEFZX0FDVElWRSwg
NTAwMCkpCgpJIGd1ZXNzIHdlJ2xsIGJlIHNlZWluZyByZXBvcnRzIGlmIHdlIGhpdCB0aGUgNXMg
ZGVsYXkuIDp8CgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KCgo+ICsJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sCj4gKwkJCSJ0aW1lZCBvdXQgd2FpdGlu
ZyBmb3IgcGFuZWwgcG93ZXIgY3ljbGUgZGVsYXlcbiIpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgZW51
bSBkcm1fbW9kZV9zdGF0dXMKPiAgaW50ZWxfbHZkc19tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsCj4gIAkJICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUpCj4gQEAgLTg5Nyw2ICs5MDYsNyBAQCB2b2lkIGludGVsX2x2ZHNfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlpbnRlbF9lbmNvZGVyLT5nZXRfaHdfc3RhdGUg
PSBpbnRlbF9sdmRzX2dldF9od19zdGF0ZTsKPiAgCWludGVsX2VuY29kZXItPmdldF9jb25maWcg
PSBpbnRlbF9sdmRzX2dldF9jb25maWc7Cj4gIAlpbnRlbF9lbmNvZGVyLT51cGRhdGVfcGlwZSA9
IGludGVsX3BhbmVsX3VwZGF0ZV9iYWNrbGlnaHQ7Cj4gKwlpbnRlbF9lbmNvZGVyLT5zaHV0ZG93
biA9IGludGVsX2x2ZHNfc2h1dGRvd247Cj4gIAlpbnRlbF9jb25uZWN0b3ItPmdldF9od19zdGF0
ZSA9IGludGVsX2Nvbm5lY3Rvcl9nZXRfaHdfc3RhdGU7Cj4gIAo+ICAJaW50ZWxfY29ubmVjdG9y
X2F0dGFjaF9lbmNvZGVyKGludGVsX2Nvbm5lY3RvciwgaW50ZWxfZW5jb2Rlcik7CgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
