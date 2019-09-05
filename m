Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D93AA07C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 12:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ABBC6E03D;
	Thu,  5 Sep 2019 10:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529E06E045
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 10:51:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="177266318"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 05 Sep 2019 03:51:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 13:51:29 +0300
Date: Thu, 5 Sep 2019 13:51:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190905105129.GF7482@intel.com>
References: <20190904230241.20638-1-jose.souza@intel.com>
 <20190904230241.20638-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904230241.20638-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mst: Do not hardcoded the
 crtcs that encoder can connect
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMDQsIDIwMTkgYXQgMDQ6MDI6NDFQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUaWdlciBMYWtlIGhhcyB1cCB0byA0IHBpcGVzIHNvIHRoZSBtYXNr
IHdvdWxkIG5lZWQgdG8gYmUgMHhmIGluc3RlYWQgb2YKPiAweDcuIERvIG5vdCBoYXJkY29kZSB0
aGUgbWFzayBzbyBpdCBhbGxvd3MgdGhlIGZha2UgTVNUIGVuY29kZXJzIHRvCj4gY29ubmVjdCB0
byBhbGwgcGlwZXMgbm8gbWF0dGVyIGhvdyBtYW55IHRoZSBwbGF0Zm9ybSBoYXMuCj4gCj4gSXRl
cmF0aW5nIG92ZXIgYWxsIHBpcGVzIHRvIGtlZXAgY29uc2lzdGVudCB3aXRoIGludGVsX2RkaV9p
bml0KCkuCj4gCj4gSW5pdGlhbHkgdGhpcyBwYXRjaCB3YXMgcmVwbGFjZWQgYnkgY29tbWl0IDRl
YWNlZWEzYTAwZiAoImRybS9pOTE1Ogo+IEZpeCBEUC1NU1QgY3J0Y19tYXNrIikgYnV0IHVzZXJz
cGFjZSBpdCBub3QgY29ycmVjdGx5IHVzaW5nCj4gZW5jb2Rlci5wb3NzaWJsZV9jcnRjcyBhbmQg
aXQgd2FzIHJldmVydGVkIGJ5Cj4gY29tbWl0IGU4MzhiZmE4ZTE3MCAoIlJldmVydCAiZHJtL2k5
MTU6IEZpeCBEUC1NU1QgY3J0Y19tYXNrIiIpCj4gCj4gVXNlcnNwYWNlIHNob3VsZCBiZSBmaXhl
ZCBidXQgaXQgbWlnaHQgdGFrZSBhIHdoaWxlLCBzbyBicmluZ2luZyB0aGlzCj4gcGF0Y2ggYmFj
ayBmb3Igbm93Lgo+IAo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYwo+IGluZGV4IDM3MzY2ZjgxMjU1Yi4uNzkyYmNhY2UzZWRmIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gQEAgLTU5OSw2ICs1
OTksOCBAQCBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgZW51bQo+ICAJc3RydWN0IGludGVsX2RwX21zdF9l
bmNvZGVyICppbnRlbF9tc3Q7Cj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2Rl
cjsKPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5iYXNl
LmRldjsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2
KTsKPiArCWVudW0gcGlwZSBwaXBlX2l0ZXI7Cj4gIAo+ICAJaW50ZWxfbXN0ID0ga3phbGxvYyhz
aXplb2YoKmludGVsX21zdCksIEdGUF9LRVJORUwpOwo+ICAKPiBAQCAtNjE1LDggKzYxNyw5IEBA
IGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVyKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmludGVsX2RpZ19wb3J0LCBlbnVtCj4gIAlpbnRlbF9lbmNvZGVyLT50eXBlID0gSU5URUxf
T1VUUFVUX0RQX01TVDsKPiAgCWludGVsX2VuY29kZXItPnBvd2VyX2RvbWFpbiA9IGludGVsX2Rp
Z19wb3J0LT5iYXNlLnBvd2VyX2RvbWFpbjsKPiAgCWludGVsX2VuY29kZXItPnBvcnQgPSBpbnRl
bF9kaWdfcG9ydC0+YmFzZS5wb3J0Owo+IC0JaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gMHg3
Owo+ICAJaW50ZWxfZW5jb2Rlci0+Y2xvbmVhYmxlID0gMDsKPiArCWZvcl9lYWNoX3BpcGUoZGV2
X3ByaXYsIHBpcGVfaXRlcikKPiArCQlpbnRlbF9lbmNvZGVyLT5jcnRjX21hc2sgfD0gQklUKHBp
cGVfaXRlcik7Cj4gIAo+ICAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0ZV9jb25maWcgPSBpbnRlbF9k
cF9tc3RfY29tcHV0ZV9jb25maWc7Cj4gIAlpbnRlbF9lbmNvZGVyLT5kaXNhYmxlID0gaW50ZWxf
bXN0X2Rpc2FibGVfZHA7Cj4gLS0gCj4gMi4yMy4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
