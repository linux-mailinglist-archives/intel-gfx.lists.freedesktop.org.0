Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BE149120
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 22:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5456E6E090;
	Mon, 17 Jun 2019 20:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A9C6E09A
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 20:14:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 13:14:00 -0700
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Jun 2019 13:14:00 -0700
Date: Mon, 17 Jun 2019 13:14:31 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190617201431.GG30528@intel.com>
References: <20190617195154.30292-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617195154.30292-1-jose.souza@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Force manual PSR exit in
 older gens
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMTcsIDIwMTkgYXQgMTI6NTE6NTRQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUbyBkbyBmcm9udGJ1ZmZlciB0cmFja2luZyB3ZSBhcmUgZGVwZW5k
aW5nIG9uIERpc3BsYXkgV0EgIzA4ODQgdG8KPiBleGl0IFBTUiB3aGVuIHRoZXJlIGlzIGEgZnJv
bnRidWZmZXIgbW9kaWZpY2F0aW9uIGJ1dCBhY2NvcmRpbmcgdG8KPiB1c2VyIHJlcG9ydHMgYSB3
cml0ZSB0byBDVVJTVVJGTElWRSBkbyBub3QgY2F1c2UgUFNSIHRvIGV4aXQgaW4gb2xkZXIKPiBn
ZW5zIHNvIGxldHMgZm9yY2UgYSBQU1IgZXhpdC4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNzk5Cgo6KAoKUmV2aWV3ZWQtYnk6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KCmFuZCBpZiBidWdzIHBlcnNp
c3Qgb3IgdGhpcyBicmluZ3MgYmFjayBvbGRlciBidWdzIGl0IGlzIHRpbWUKdG8gY29uc2lkZXIg
cmVtb3ZpbmcgcHNyIHN1cHBvcnQgYXQgYWxsIGZvciBnZW4gPCA5ICA6LS8KCj4gQ2M6IERoaW5h
a2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+IENjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzNiArKysrKysrKysrKysrKysrKy0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDY5
NzA5ZGY0YTY0OC4uNjlkOTA4ZTZhMDUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gQEAgLTg2MywxNiArODYzLDIzIEBAIHZvaWQgaW50ZWxfcHNyX2Rp
c2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCj4gIHN0YXRpYyB2b2lkIHBzcl9m
b3JjZV9od190cmFja2luZ19leGl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgewo+IC0JLyoKPiAtCSAqIERpc3BsYXkgV0EgIzA4ODQ6IGFsbAo+IC0JICogVGhpcyBkb2N1
bWVudGVkIFdBIGZvciBieHQgY2FuIGJlIHNhZmVseSBhcHBsaWVkCj4gLQkgKiBicm9hZGx5IHNv
IHdlIGNhbiBmb3JjZSBIVyB0cmFja2luZyB0byBleGl0IFBTUgo+IC0JICogaW5zdGVhZCBvZiBk
aXNhYmxpbmcgYW5kIHJlLWVuYWJsaW5nLgo+IC0JICogV29ya2Fyb3VuZCB0ZWxscyB1cyB0byB3
cml0ZSAwIHRvIENVUl9TVVJGTElWRV9BLAo+IC0JICogYnV0IGl0IG1ha2VzIG1vcmUgc2Vuc2Ug
d3JpdGUgdG8gdGhlIGN1cnJlbnQgYWN0aXZlCj4gLQkgKiBwaXBlLgo+IC0JICovCj4gLQlJOTE1
X1dSSVRFKENVUlNVUkZMSVZFKGRldl9wcml2LT5wc3IucGlwZSksIDApOwo+ICsJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gOSkKPiArCQkvKgo+ICsJCSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNr
bCsKPiArCQkgKiBUaGlzIGRvY3VtZW50ZWQgV0EgZm9yIGJ4dCBjYW4gYmUgc2FmZWx5IGFwcGxp
ZWQKPiArCQkgKiBicm9hZGx5IHNvIHdlIGNhbiBmb3JjZSBIVyB0cmFja2luZyB0byBleGl0IFBT
Ugo+ICsJCSAqIGluc3RlYWQgb2YgZGlzYWJsaW5nIGFuZCByZS1lbmFibGluZy4KPiArCQkgKiBX
b3JrYXJvdW5kIHRlbGxzIHVzIHRvIHdyaXRlIDAgdG8gQ1VSX1NVUkZMSVZFX0EsCj4gKwkJICog
YnV0IGl0IG1ha2VzIG1vcmUgc2Vuc2Ugd3JpdGUgdG8gdGhlIGN1cnJlbnQgYWN0aXZlCj4gKwkJ
ICogcGlwZS4KPiArCQkgKi8KPiArCQlJOTE1X1dSSVRFKENVUlNVUkZMSVZFKGRldl9wcml2LT5w
c3IucGlwZSksIDApOwo+ICsJZWxzZQo+ICsJCS8qCj4gKwkJICogQSB3cml0ZSB0byBDVVJTVVJG
TElWRSBkbyBub3QgY2F1c2UgSFcgdHJhY2tpbmcgdG8gZXhpdCBQU1IKPiArCQkgKiBvbiBvbGRl
ciBnZW5zIHNvIGRvaW5nIHRoZSBtYW51YWwgZXhpdCBpbnN0ZWFkLgo+ICsJCSAqLwo+ICsJCWlu
dGVsX3Bzcl9leGl0KGRldl9wcml2KTsKPiAgfQo+ICAKPiAgLyoqCj4gQEAgLTkwMyw2ICs5MTAs
MTUgQEAgdm9pZCBpbnRlbF9wc3JfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4g
IAkJLyogRm9yY2UgYSBQU1IgZXhpdCB3aGVuIGVuYWJsaW5nIENSQyB0byBhdm9pZCBDUkMgdGlt
ZW91dHMgKi8KPiAgCQlpZiAoY3J0Y19zdGF0ZS0+Y3JjX2VuYWJsZWQgJiYgcHNyLT5lbmFibGVk
KQo+ICAJCQlwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChkZXZfcHJpdik7Cj4gKwkJZWxzZSBp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDkgJiYgcHNyLT5lbmFibGVkKSB7Cj4gKwkJCS8qCj4g
KwkJCSAqIEFjdGl2YXRlIFBTUiBhZ2FpbiBhZnRlciBhIGZvcmNlIGV4aXQgd2hlbiBlbmFibGlu
Zwo+ICsJCQkgKiBDUkMgaW4gb2xkZXIgZ2Vucwo+ICsJCQkgKi8KPiArCQkJaWYgKCFkZXZfcHJp
di0+cHNyLmFjdGl2ZSAmJgo+ICsJCQkgICAgIWRldl9wcml2LT5wc3IuYnVzeV9mcm9udGJ1ZmZl
cl9iaXRzKQo+ICsJCQkJc2NoZWR1bGVfd29yaygmZGV2X3ByaXYtPnBzci53b3JrKTsKPiArCQl9
Cj4gIAo+ICAJCWdvdG8gdW5sb2NrOwo+ICAJfQo+IC0tIAo+IDIuMjIuMAo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
