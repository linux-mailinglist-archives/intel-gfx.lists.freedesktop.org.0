Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26456517C9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 17:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765CF89CAD;
	Mon, 24 Jun 2019 15:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF5789CB5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 15:57:16 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 08:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="182660573"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 24 Jun 2019 08:57:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2019 18:57:12 +0300
Date: Mon, 24 Jun 2019 18:57:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190624155712.GU5942@intel.com>
References: <20190620214613.14481-1-maarten.lankhorst@linux.intel.com>
 <20190620214613.14481-5-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620214613.14481-5-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Use intel_crtc_state in
 sanitize_watermarks() too
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

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTE6NDY6MDhQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNCArKysrKystLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYTUxOGQ3NGY4OThmLi5iYWEw
ZTE5NTdmZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+IEBAIC0xNTczOCw4ICsxNTczOCw4IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX3dh
dGVybWFya3Moc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAgCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRl
ICpzdGF0ZTsKPiAgCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXRlOwo+IC0J
c3RydWN0IGRybV9jcnRjICpjcnRjOwo+IC0Jc3RydWN0IGRybV9jcnRjX3N0YXRlICpjc3RhdGU7
Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjc3RhdGU7CgpzL2NzdGF0ZS9jcnRjX3N0YXRlLyBtaWdodCBiZSBnb29kIGhlcmUgdG9vLgoK
UmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cgo+ICAJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4IGN0eDsKPiAgCWludCByZXQ7
Cj4gIAlpbnQgaTsKPiBAQCAtMTU3OTQsMTMgKzE1Nzk0LDExIEBAIHN0YXRpYyB2b2lkIHNhbml0
aXplX3dhdGVybWFya3Moc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgCX0KPiAgCj4gIAkvKiBX
cml0ZSBjYWxjdWxhdGVkIHdhdGVybWFyayB2YWx1ZXMgYmFjayAqLwo+IC0JZm9yX2VhY2hfbmV3
X2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNzdGF0ZSwgaSkgewo+IC0JCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcyA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3N0YXRlKTsKPiAtCj4gLQkJ
Y3MtPndtLm5lZWRfcG9zdHZibF91cGRhdGUgPSB0cnVlOwo+IC0JCWRldl9wcml2LT5kaXNwbGF5
Lm9wdGltaXplX3dhdGVybWFya3MoaW50ZWxfc3RhdGUsIGNzKTsKPiArCWZvcl9lYWNoX25ld19p
bnRlbF9jcnRjX2luX3N0YXRlKGludGVsX3N0YXRlLCBjcnRjLCBjc3RhdGUsIGkpIHsKPiArCQlj
c3RhdGUtPndtLm5lZWRfcG9zdHZibF91cGRhdGUgPSB0cnVlOwo+ICsJCWRldl9wcml2LT5kaXNw
bGF5Lm9wdGltaXplX3dhdGVybWFya3MoaW50ZWxfc3RhdGUsIGNzdGF0ZSk7Cj4gIAo+IC0JCXRv
X2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+c3RhdGUpLT53bSA9IGNzLT53bTsKPiArCQl0b19pbnRl
bF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpLT53bSA9IGNzdGF0ZS0+d207Cj4gIAl9Cj4g
IAo+ICBwdXRfc3RhdGU6Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
