Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 279F1E76D9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 17:43:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB04B6E983;
	Mon, 28 Oct 2019 16:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D66C6E863
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 16:43:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 09:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="203313442"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 28 Oct 2019 09:43:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 18:43:12 +0200
Date: Mon, 28 Oct 2019 18:43:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191028164312.GQ1208@intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025230623.27829-5-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Provide more information on
 DP AUX failures
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

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MDY6MjJQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBXZSdyZSBzZWVpbmcgc29tZSBmYWlsdXJlcyB3aGVyZSBhbiBhdXggdHJhbnNhY3Rpb24g
c3RpbGwgc2hvd3MgYXMKPiAnYnVzeScgd2VsbCBhZnRlciB0aGUgdGltZW91dCBsaW1pdCB0aGF0
IHRoZSBoYXJkd2FyZSBpcyBzdXBwb3NlZCB0bwo+IGVuZm9yY2UuICBJbXByb3ZlIHRoZSBlcnJv
ciBtZXNzYWdlIHNvIHRoYXQgd2UgY2FuIHNlZSBleGFjdGx5IHdoaWNoIGF1eAo+IGNoYW5uZWwg
dGhpcyBlcnJvciBoYXBwZW5lZCBvbiBhbmQgd2hhdCB0aGUgc3RhdHVzIGJpdHMgd2VyZSBkdXJp
bmcgdGhpcwo+IGNhc2UgdGhhdCBpc24ndCBzdXBwb3NlZCB0byBoYXBwZW4uCgpQcmV0dHkgc3Vy
ZSBJIGhhdmUgYSBwYXRjaCBzb21ld2hlcmUgdGhhdCBhZGRzIHRoZSBhdXggbmFtZQp0byBhbGwg
dGhlIG1lc3NhZ2VzLiBJIHNob3VsZCBwcm9iYWJseSBkaWcgdGhhdCB1cCBhbmQgcG9zdCBpdC4K
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMyAr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCA2NWJhYjQ2Zjdi
NDMuLjJiNDkxNWI1Y2Y1MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKPiBAQCAtMTE5MCw3ICsxMTkwLDggQEAgaW50ZWxfZHBfYXV4X3dhaXRfZG9uZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAJdHJhY2VfaTkxNV9yZWdfcncoZmFsc2UsIGNoX2N0
bCwgc3RhdHVzLCBzaXplb2Yoc3RhdHVzKSwgdHJ1ZSk7Cj4gIAo+ICAJaWYgKCFkb25lKQo+IC0J
CURSTV9FUlJPUigiZHAgYXV4IGh3IGRpZCBub3Qgc2lnbmFsIHRpbWVvdXQhXG4iKTsKPiArCQlE
Uk1fRVJST1IoIiVzIGRpZCBub3QgY29tcGxldGUgb3IgdGltZW91dCB3aXRoaW4gMTBtcyAoc3Rh
dHVzIDB4JTA4eClcbiIsCj4gKwkJCSAgaW50ZWxfZHAtPmF1eC5uYW1lID86ICJBVVgiLCBzdGF0
dXMpOwo+ICAjdW5kZWYgQwo+ICAKPiAgCXJldHVybiBzdGF0dXM7Cj4gLS0gCj4gMi4yMS4wCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cgot
LSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
