Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF703BDA07
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 10:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CE1A6E81E;
	Wed, 25 Sep 2019 08:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBE66E81E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 08:40:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 01:40:31 -0700
X-IronPort-AV: E=Sophos;i="5.64,547,1559545200"; d="scan'208";a="183187738"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 01:40:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190924135820.11850-1-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190924135820.11850-1-swati2.sharma@intel.com>
Date: Wed, 25 Sep 2019 11:40:25 +0300
Message-ID: <878sqcu5ty.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/color: Extract
 icl_read_luts()"
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyNCBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gVGhpcyByZXZlcnRzIGNvbW1pdCA4NGFmNzY0OTE4ODE5NGE3NGNkZDY0Mzcy
MzVhNWUzYzg2MTA4ZjBmLgo+Cj4gVGhpcyBpcyBjYXVzaW5nIHByb2JsZW1zIHdpdGggdGhlIGRp
c3BsYXksIGRpc3BsYXlzIGFyZSBhbGwKPiBicmlnaHQgY29sb3JzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KClB1c2hlZCwgdGhhbmtz
IGZvciB0aGUgcGF0Y2guCgpOb3cgd2UgZG8gbmVlZCB0byBmaWd1cmUgb3V0IGhvdyB0byBkbyBh
dCBsZWFzdCBzb21ldGhpbmcgdXNlZnVsIGFuZApub24tcmVncmVzc2luZyB3aXRoIGljbC90Z2wg
cmVhZG91dHMuCgpDb3VsZCB3ZSBhZGQgdGhlIGxlZ2FjeSBnYW1tYSBjaGVja3MgZmlyc3Q/CgpB
bHNvIG9uZSBvdGhlciBub3RlIGlubGluZSBiZWxvdy4KCkJSLApKYW5pLgoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTI2ICsrKy0tLS0tLS0t
LS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
fCAgIDYgLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDExNyBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPiBp
bmRleCA0MDIxNTExMjhlMWYuLjlhYjM0OTAyNjYzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPiBAQCAtMTQyMCw5ICsxNDIwLDYgQEAgc3RhdGlj
IGludCBpY2xfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Cj4gIAo+ICBzdGF0aWMgaW50IGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gLQlpZiAoIWNydGNfc3RhdGUtPmdhbW1h
X2VuYWJsZSkKPiAtCQlyZXR1cm4gMDsKPiAtCj4gIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1h
X21vZGUpIHsKPiAgCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6Cj4gIAkJcmV0dXJuIDg7Cj4g
QEAgLTE0MzYsOSArMTQzMyw2IEBAIHN0YXRpYyBpbnQgaTl4eF9nYW1tYV9wcmVjaXNpb24oY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIAo+ICBzdGF0aWMgaW50
IGlsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCj4gIHsKPiAtCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQo+IC0JCXJldHVy
biAwOwo+IC0KPiAgCWlmICgoY3J0Y19zdGF0ZS0+Y3NjX21vZGUgJiBDU0NfUE9TSVRJT05fQkVG
T1JFX0dBTU1BKSA9PSAwKQo+ICAJCXJldHVybiAwOwo+ICAKPiBAQCAtMTQ1NSw5ICsxNDQ5LDYg
QEAgc3RhdGljIGludCBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQo+ICAKPiAgc3RhdGljIGludCBjaHZfZ2FtbWFfcHJlY2lzaW9u
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gLQlpZiAo
IWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKPiAtCQlyZXR1cm4gMDsKPiAtCj4gIAlpZiAoY3J0
Y19zdGF0ZS0+Y2dtX21vZGUgJiBDR01fUElQRV9NT0RFX0dBTU1BKQo+ICAJCXJldHVybiAxMDsK
PiAgCWVsc2UKPiBAQCAtMTQ2Niw5ICsxNDU3LDYgQEAgc3RhdGljIGludCBjaHZfZ2FtbWFfcHJl
Y2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAKPiAg
c3RhdGljIGludCBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gLQlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkK
PiAtCQlyZXR1cm4gMDsKPiAtCj4gIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsK
PiAgCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6Cj4gIAkJcmV0dXJuIDg7Cj4gQEAgLTE0ODAs
MzkgKzE0NjgsMjEgQEAgc3RhdGljIGludCBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJfQo+ICB9Cj4gIAo+IC1zdGF0aWMg
aW50IGljbF9nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCj4gLXsKPiAtCWlmICgoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIFBPU1RfQ1ND
X0dBTU1BX0VOQUJMRSkgPT0gMCkKPiAtCQlyZXR1cm4gMDsKPiAtCj4gLQlzd2l0Y2ggKGNydGNf
c3RhdGUtPmdhbW1hX21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgewo+IC0JY2FzZSBHQU1N
QV9NT0RFX01PREVfOEJJVDoKPiAtCQlyZXR1cm4gODsKPiAtCWNhc2UgR0FNTUFfTU9ERV9NT0RF
XzEwQklUOgo+IC0JCXJldHVybiAxMDsKPiAtCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01V
TFRJX1NFR01FTlRFRDoKPiAtCQlyZXR1cm4gMTY7Cj4gLQlkZWZhdWx0Ogo+IC0JCU1JU1NJTkdf
Q0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsKPiAtCQlyZXR1cm4gMDsKPiAtCX0KPiAtCj4g
LX0KPiAtCj4gIGludCBpbnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+ICAJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKPiAgCj4gKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKPiArCQlyZXR1cm4gMDsK
PiArCj4gIAlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpKSB7Cj4gIAkJaWYgKElTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpKQo+ICAJCQlyZXR1cm4gY2h2X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsK
PiAgCQllbHNlCj4gIAkJCXJldHVybiBpOXh4X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsK
PiAgCX0gZWxzZSB7Cj4gLQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gLQkJCXJl
dHVybiBpY2xfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwo+IC0JCWVsc2UgaWYgKElTX0NB
Tk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQo+ICsJCWlmIChJ
U19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKPiAgCQkJ
cmV0dXJuIGdsa19nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gIAkJZWxzZSBpZiAoSVNf
SVJPTkxBS0UoZGV2X3ByaXYpKQo+ICAJCQlyZXR1cm4gaWxrX2dhbW1hX3ByZWNpc2lvbihjcnRj
X3N0YXRlKTsKPiBAQCAtMTU0MywyMCArMTUxMyw2IEBAIHN0YXRpYyBib29sIGludGVsX2NvbG9y
X2x1dF9lbnRyeV9lcXVhbChzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwKPiAgCXJldHVybiB0
cnVlOwo+ICB9Cj4gIAo+IC1zdGF0aWMgYm9vbCBpbnRlbF9jb2xvcl9sdXRfZW50cnlfbXVsdGlf
ZXF1YWwoc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDEsCj4gLQkJCQkJICAgICAgc3RydWN0IGRy
bV9jb2xvcl9sdXQgKmx1dDIsCj4gLQkJCQkJICAgICAgaW50IGx1dF9zaXplLCB1MzIgZXJyKQo+
IC17Cj4gLQlpbnQgaTsKPiAtCj4gLQlmb3IgKGkgPSAwOyBpIDwgOTsgaSsrKSB7Cj4gLQkJaWYg
KCFlcnJfY2hlY2soJmx1dDFbaV0sICZsdXQyW2ldLCBlcnIpKQo+IC0JCQlyZXR1cm4gZmFsc2U7
Cj4gLQl9Cj4gLQo+IC0JcmV0dXJuIHRydWU7Cj4gLX0KPiAtCj4gIGJvb2wgaW50ZWxfY29sb3Jf
bHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCj4gIAkJCSAgIHN0cnVj
dCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjIsCj4gIAkJCSAgIHUzMiBnYW1tYV9tb2RlLCB1MzIg
Yml0X3ByZWNpc2lvbikKPiBAQCAtMTU3NSw4ICsxNTMxLDE2IEBAIGJvb2wgaW50ZWxfY29sb3Jf
bHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCj4gIAlsdXRfc2l6ZTIg
PSBkcm1fY29sb3JfbHV0X3NpemUoYmxvYjIpOwo+ICAKPiAgCS8qIGNoZWNrIHN3IGFuZCBodyBs
dXQgc2l6ZSAqLwo+IC0JaWYgKGx1dF9zaXplMSAhPSBsdXRfc2l6ZTIpCj4gLQkJcmV0dXJuIGZh
bHNlOwo+ICsJc3dpdGNoIChnYW1tYV9tb2RlKSB7Cj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV84
QklUOgo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4gKwkJaWYgKGx1dF9zaXplMSAh
PSBsdXRfc2l6ZTIpCj4gKwkJCXJldHVybiBmYWxzZTsKPiArCQlicmVhazsKPiArCWRlZmF1bHQ6
Cj4gKwkJTUlTU0lOR19DQVNFKGdhbW1hX21vZGUpOwo+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gKwl9
Cj4gIAo+ICAJbHV0MSA9IGJsb2IxLT5kYXRhOwo+ICAJbHV0MiA9IGJsb2IyLT5kYXRhOwo+IEBA
IC0xNTg0LDE4ICsxNTQ4LDEzIEBAIGJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBk
cm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCj4gIAllcnIgPSAweGZmZmYgPj4gYml0X3ByZWNpc2lv
bjsKPiAgCj4gIAkvKiBjaGVjayBzdyBhbmQgaHcgbHV0IGVudHJ5IHRvIGJlIGVxdWFsICovCj4g
LQlzd2l0Y2ggKGdhbW1hX21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgewo+ICsJc3dpdGNo
IChnYW1tYV9tb2RlKSB7Cj4gIAljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgo+ICAJY2FzZSBH
QU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4gIAkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZW50cnlfZXF1
YWwobHV0MSwgbHV0MiwKPiAgCQkJCQkJIGx1dF9zaXplMiwgZXJyKSkKPiAgCQkJcmV0dXJuIGZh
bHNlOwo+ICAJCWJyZWFrOwo+IC0JY2FzZSBHQU1NQV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VH
TUVOVEVEOgo+IC0JCWlmICghaW50ZWxfY29sb3JfbHV0X2VudHJ5X211bHRpX2VxdWFsKGx1dDEs
IGx1dDIsCj4gLQkJCQkJCSAgICAgICBsdXRfc2l6ZTIsIGVycikpCj4gLQkJCXJldHVybiBmYWxz
ZTsKPiAtCQlicmVhazsKPiAgCWRlZmF1bHQ6Cj4gIAkJTUlTU0lOR19DQVNFKGdhbW1hX21vZGUp
Owo+ICAJCQlyZXR1cm4gZmFsc2U7Cj4gQEAgLTE4MzUsNjAgKzE3OTQsNiBAQCBzdGF0aWMgdm9p
ZCBnbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAJ
CWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfbHV0XzEwKGNydGNfc3RhdGUs
IFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKPiAgfQo+ICAKPiAtc3RhdGljIHN0cnVjdCBkcm1f
cHJvcGVydHlfYmxvYiAqCj4gLWljbF9yZWFkX2x1dF9tdWx0aV9zZWdtZW50KGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+IC17Cj4gLQlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKPiAtCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+
IC0JaW50IGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9z
aXplOwo+IC0JZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+IC0Jc3RydWN0IGRybV9wcm9w
ZXJ0eV9ibG9iICpibG9iOwo+IC0Jc3RydWN0IGRybV9jb2xvcl9sdXQgKmJsb2JfZGF0YTsKPiAt
CXUzMiBpLCB2YWwxLCB2YWwyOwo+IC0KPiAtCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Js
b2IoJmRldl9wcml2LT5kcm0sCj4gLQkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAq
IGx1dF9zaXplLAo+IC0JCQkJCU5VTEwpOwo+IC0JaWYgKElTX0VSUihibG9iKSkKPiAtCQlyZXR1
cm4gTlVMTDsKPiAtCj4gLQlibG9iX2RhdGEgPSBibG9iLT5kYXRhOwo+IC0KPiAtCUk5MTVfV1JJ
VEUoUFJFQ19QQUxfTVVMVElfU0VHX0lOREVYKHBpcGUpLCBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVO
VCk7Cj4gLQo+IC0JZm9yIChpID0gMDsgaSA8IDk7IGkrKykgewo+IC0JCXZhbDEgPSBJOTE1X1JF
QUQoUFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSkpOwo+IC0JCXZhbDIgPSBJOTE1X1JFQUQo
UFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSkpOwo+IC0KPiAtCQlibG9iX2RhdGFbaV0ucmVk
ID0gUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfUkVEX1VEV19NQVNLLCB2YWwyKSA8
PCA2IHwKPiAtCQkJCSAgIFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9MRFdf
TUFTSywgdmFsMSk7Cj4gLQkJYmxvYl9kYXRhW2ldLmdyZWVuID0gUkVHX0ZJRUxEX0dFVChQQUxf
UFJFQ19NVUxUSV9TRUdfR1JFRU5fVURXX01BU0ssIHZhbDIpIDw8IDYgfAo+IC0JCQkJICAgICBS
RUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19HUkVFTl9MRFdfTUFTSywgdmFsMSk7Cj4g
LQkJYmxvYl9kYXRhW2ldLmJsdWUgPSBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19C
TFVFX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwKPiAtCQkJCSAgICBSRUdfRklFTERfR0VUKFBBTF9Q
UkVDX01VTFRJX1NFR19CTFVFX0xEV19NQVNLLCB2YWwxKTsKPiAtCX0KPiAtCj4gLQkvKgo+IC0J
ICogRklYTUUgcmVhZG91dHMgZnJvbSBQQUxfUFJFQ19EQVRBIHJlZ2lzdGVyIGFyZW4ndCBnaXZp
bmcgY29ycmVjdCB2YWx1ZXMKPiAtCSAqIGluIHRoZSBjYXNlIG9mIGZpbmUgYW5kIGNvYXJzZSBz
ZWdtZW50cy4gUmVzdHJpY3RpbmcgcmVhZG91dHMgb25seSBmb3IKPiAtCSAqIHN1cGVyIGZpbmUg
c2VnbWVudCBhcyBvZiBub3cuCj4gLQkgKi8KPiAtCj4gLQlyZXR1cm4gYmxvYjsKPiAtfQo+IC0K
PiAtc3RhdGljIHZvaWQgaWNsX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKPiAtewo+IC0JaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9E
RV9NT0RFX01BU0spID09Cj4gLQkgICAgR0FNTUFfTU9ERV9NT0RFXzhCSVQpCj4gLQkJY3J0Y19z
dGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpOXh4X3JlYWRfbHV0XzgoY3J0Y19zdGF0ZSk7Cj4gLQll
bHNlIGlmICgoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSA9
PQo+IC0JCSBHQU1NQV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VHTUVOVEVEKQo+IC0JCWNydGNf
c3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaWNsX3JlYWRfbHV0X211bHRpX3NlZ21lbnQoY3J0Y19z
dGF0ZSk7Cj4gLQllbHNlCj4gLQkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBnbGtfcmVh
ZF9sdXRfMTAoY3J0Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOwo+IC19Cj4gLQo+
ICB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIHsKPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOwo+IEBAIC0xOTMyLDcgKzE4MzcsNiBAQCB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0
IGludGVsX2NydGMgKmNydGMpCj4gIAo+ICAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
KSB7Cj4gIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGljbF9sb2FkX2x1dHM7Cj4g
LQkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGljbF9yZWFkX2x1dHM7Cj4gIAkJfSBl
bHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2
KSkgewo+ICAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBnbGtfbG9hZF9sdXRzOwo+
ICAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBnbGtfcmVhZF9sdXRzOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGE2OWMxOWFhZTViYi4uNjYxY2JlNGM5MzNhIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTEwNTc0LDEyICsxMDU3NCw2IEBAIGVudW0g
c2tsX3Bvd2VyX2dhdGUgewo+ICAKPiAgI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFf
QQkweDRBNDBDCj4gICNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IJMHg0QUMwQwo+
IC0jZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfUkVEX0xEV19NQVNLICAgUkVHX0dFTk1BU0so
MjksIDI0KQo+IC0jZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfUkVEX1VEV19NQVNLICAgUkVH
X0dFTk1BU0soMjksIDIwKQo+IC0jZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fTERX
X01BU0sgUkVHX0dFTk1BU0soMTksIDE0KQo+IC0jZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdf
R1JFRU5fVURXX01BU0sgUkVHX0dFTk1BU0soMTksIDEwKQo+IC0jZGVmaW5lICBQQUxfUFJFQ19N
VUxUSV9TRUdfQkxVRV9MRFdfTUFTSyAgUkVHX0dFTk1BU0soOSwgNCkKPiAtI2RlZmluZSAgUEFM
X1BSRUNfTVVMVElfU0VHX0JMVUVfVURXX01BU0sgIFJFR19HRU5NQVNLKDksIDApCgpBIHBhdGNo
IGFkZGluZyBqdXN0IHRoZSByZWdpc3RlciBkZWZpbml0aW9ucyBjb3VsZCBiZSBtZXJnZWQgYXMg
d2VsbC4KCj4gIAo+ICAjZGVmaW5lIFBSRUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBlKQlfTU1J
T19QSVBFKHBpcGUsIFwKPiAgCQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0EsIFwKCi0t
IApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
