Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258D9FB88F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E726EE11;
	Wed, 13 Nov 2019 19:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F5B6EE11
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 19:12:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:12:43 -0800
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="207888184"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.167])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:12:43 -0800
Date: Wed, 13 Nov 2019 11:12:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191113191238.pznppcxiwqdqhm66@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191106014504.167656-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106014504.167656-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Add bits per pixel
 limitation
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMDU6NDU6MDBQTSAtMDgwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPlBTUjIgSFcgb25seSBzdXBwb3J0IGEgbGltaXRlZCBudW1iZXIgb2YgYml0cyBwZXIgcGl4
ZWwsIGlmIG1vZGUgaGFzCj5tb3JlIHRoYW4gc3VwcG9ydGVkIFBTUjIgc2hvdWxkIG5vdCBiZSBl
bmFibGVkLgo+Cj5CU3BlYzogNTA0MjIKPkJTcGVjOiA3NzEzCgptYXRjaGVzIGJvdGggc3BlY3MK
CgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
CgpMdWNhcyBEZSBNYXJjaGkKCj5DYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgMTEgKysrKysrKysrKy0KPiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKPmluZGV4IGMxZDEzMzM2MmI3Ni4uMGQ4NGVhMjhiYzZmIDEwMDY0NAo+LS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+QEAgLTYwOCw3ICs2MDgsNyBAQCBzdGF0aWMgYm9v
bCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+IAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsK
PiAJaW50IGNydGNfaGRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
aGRpc3BsYXk7Cj4gCWludCBjcnRjX3ZkaXNwbGF5ID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRf
bW9kZS5jcnRjX3ZkaXNwbGF5Owo+LQlpbnQgcHNyX21heF9oID0gMCwgcHNyX21heF92ID0gMDsK
PisJaW50IHBzcl9tYXhfaCA9IDAsIHBzcl9tYXhfdiA9IDAsIG1heF9icHAgPSAwOwo+Cj4gCWlm
ICghZGV2X3ByaXYtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCkKPiAJCXJldHVybiBmYWxzZTsKPkBA
IC02MzIsMTIgKzYzMiwxNSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
Mikgewo+IAkJcHNyX21heF9oID0gNTEyMDsKPiAJCXBzcl9tYXhfdiA9IDMyMDA7Cj4rCQltYXhf
YnBwID0gMzA7Cj4gCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19H
RU1JTklMQUtFKGRldl9wcml2KSkgewo+IAkJcHNyX21heF9oID0gNDA5NjsKPiAJCXBzcl9tYXhf
diA9IDIzMDQ7Cj4rCQltYXhfYnBwID0gMjQ7Cj4gCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2
LCA5KSkgewo+IAkJcHNyX21heF9oID0gMzY0MDsKPiAJCXBzcl9tYXhfdiA9IDIzMDQ7Cj4rCQlt
YXhfYnBwID0gMjQ7Cj4gCX0KPgo+IAlpZiAoY3J0Y19oZGlzcGxheSA+IHBzcl9tYXhfaCB8fCBj
cnRjX3ZkaXNwbGF5ID4gcHNyX21heF92KSB7Cj5AQCAtNjQ3LDYgKzY1MCwxMiBAQCBzdGF0aWMg
Ym9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
IAkJcmV0dXJuIGZhbHNlOwo+IAl9Cj4KPisJaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwID4gbWF4
X2JwcCkgewo+KwkJRFJNX0RFQlVHX0tNUygiUFNSMiBub3QgZW5hYmxlZCwgcGlwZSBicHAgJWQg
PiBtYXggc3VwcG9ydGVkICVkXG4iLAo+KwkJCSAgICAgIGNydGNfc3RhdGUtPnBpcGVfYnBwLCBt
YXhfYnBwKTsKPisJCXJldHVybiBmYWxzZTsKPisJfQo+Kwo+IAkvKgo+IAkgKiBIVyBzZW5kcyBT
VSBibG9ja3Mgb2Ygc2l6ZSBmb3VyIHNjYW4gbGluZXMsIHdoaWNoIG1lYW5zIHRoZSBzdGFydGlu
Zwo+IAkgKiBYIGNvb3JkaW5hdGUgYW5kIFkgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHdpbGwg
YWx3YXlzIGJlIG1ldC4gV2UKPi0tIAo+Mi4yNC4wCj4KPl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
