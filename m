Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E92AFF14
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 16:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBDB89BBD;
	Wed, 11 Sep 2019 14:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9325089BBD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 14:47:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 07:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336271336"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga004.jf.intel.com with ESMTP; 11 Sep 2019 07:47:21 -0700
Date: Wed, 11 Sep 2019 07:47:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190911144721.GA27222@mdroper-desk.amr.corp.intel.com>
References: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Fix cdclk bypass freq readout
 for tgl/bxt/glk
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

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDQ6MzE6MjZQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IE9uIHRnbC9ieHQvZ2xrIHRoZSBjZGNsayBieXBhc3MgZnJlcXVlbmN5IGRlcGVu
ZHMgb24gdGhlIFBMTAo+IHJlZmVyZW5jZSBjbG9jay4gU28gbGV0J3MgcmVhZCBvdXQgdGhlIHJl
ZiBjbG9jayBiZWZvcmUgd2UKPiB0cnkgdG8gY29tcHV0ZSB0aGUgYnlwYXNzIGNsb2NrLgo+IAo+
IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IEZpeGVzOiA3MWRj
MzY3ZTJiYzMgKCJkcm0vaTkxNTogQ29uc29saWRhdGUgYnh0L2NubC9pY2wgY2RjbGsgcmVhZG91
dCIpCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4g
aW5kZXggNjE4YTkzYmFkMGE4Li42Yjc1ZDJhOTFjZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gQEAgLTEzNTEsNiArMTM1MSw4IEBAIHN0YXRp
YyB2b2lkIGJ4dF9nZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+
ICAJdTMyIGRpdmlkZXI7Cj4gIAlpbnQgZGl2Owo+ICAKPiArCWJ4dF9kZV9wbGxfcmVhZG91dChk
ZXZfcHJpdiwgY2RjbGtfc3RhdGUpOwo+ICsKPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKQo+ICAJCWNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+cmVmIC8gMjsKPiAg
CWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gQEAgLTEzNTgsNyArMTM2MCw2
IEBAIHN0YXRpYyB2b2lkIGJ4dF9nZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICAJZWxzZQo+ICAJCWNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+
cmVmOwo+ICAKPiAtCWJ4dF9kZV9wbGxfcmVhZG91dChkZXZfcHJpdiwgY2RjbGtfc3RhdGUpOwo+
ICAJaWYgKGNkY2xrX3N0YXRlLT52Y28gPT0gMCkgewo+ICAJCWNkY2xrX3N0YXRlLT5jZGNsayA9
IGNkY2xrX3N0YXRlLT5ieXBhc3M7Cj4gIAkJZ290byBvdXQ7Cj4gLS0gCj4gMi4yMS4wCj4gCgot
LSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9y
bSBFbmFibGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
