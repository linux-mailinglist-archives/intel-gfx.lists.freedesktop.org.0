Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180B99A4F4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 03:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C846EB9B;
	Fri, 23 Aug 2019 01:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66AA96EB94;
 Fri, 23 Aug 2019 01:35:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 18:35:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; d="scan'208";a="203614269"
Received: from helsinki.fi.intel.com ([10.237.66.174])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 18:35:05 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 04:35:00 +0300
Message-Id: <20190823013501.14256-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823013501.14256-1-gwan-gyeong.mun@intel.com>
References: <20190823013501.14256-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/dp: Program an Infoframe SDP
 Header and DB for HDR Static Metadata
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnVuY3Rpb24gaW50ZWxfZHBfc2V0dXBfaGRyX21ldGFkYXRhX2luZm9mcmFtZV9zZHAgaGFuZGxl
cyBJbmZvZnJhbWUgU0RQCmhlYWRlciBhbmQgZGF0YSBibG9jayBzZXR1cCBmb3IgSERSIFN0YXRp
YyBNZXRhZGF0YS4gSXQgZW5hYmxlcyB3cml0aW5nIG9mCkhEUiBtZXRhZGF0YSBpbmZvZnJhbWUg
U0RQIHRvIHBhbmVsLiBTdXBwb3J0IGZvciBIRFIgdmlkZW8gd2FzIGludHJvZHVjZWQKaW4gRGlz
cGxheVBvcnQgMS40LiBJdCBpbXBsZW1lbnRzIHRoZSBDVEEtODYxLUcgc3RhbmRhcmQgZm9yIHRy
YW5zcG9ydCBvZgpzdGF0aWMgSERSIG1ldGFkYXRhLiBUaGUgSERSIE1ldGFkYXRhIHdpbGwgYmUg
cHJvdmlkZWQgYnkgdXNlcnNwYWNlCmNvbXBvc2l0b3JzLCBiYXNlZCBvbiBibGVuZGluZyBwb2xp
Y2llcyBhbmQgcGFzc2VkIHRvIHRoZSBkcml2ZXIgdGhyb3VnaAphIGJsb2IgcHJvcGVydHkuCgpC
ZWNhdXNlIGVhY2ggb2YgR0VOMTEgYW5kIHByaW9yIEdFTjExIGhhdmUgZGlmZmVyZW50IHJlZ2lz
dGVyIHNpemUgZm9yCkhEUiBNZXRhZGF0YSBJbmZvZnJhbWUgU0RQIHBhY2tldCwgaXQgYWRkcyBh
bmQgdXNlcyBkaWZmZXJlbnQgcmVnaXN0ZXIgc2l6ZS4KClNldHVwIEluZm9mcmFtZSBTRFAgaGVh
ZGVyIGFuZCBkYXRhIGJsb2NrIGluIGZ1bmN0aW9uCmludGVsX2RwX3NldHVwX2hkcl9tZXRhZGF0
YV9pbmZvZnJhbWVfc2RwIGZvciBIRFIgU3RhdGljIE1ldGFkYXRhIGFzIHBlcgpkcCAxLjQgc3Bl
YyBhbmQgQ1RBLTg2MS1GIHNwZWMuCkFzIHBlciBEUCAxLjQgc3BlYywgMi4yLjIuNSBTRFAgRm9y
bWF0cy4gSXQgZW5hYmxlcyBEeW5hbWljIFJhbmdlIGFuZApNYXN0ZXJpbmcgSW5mb2ZyYW1lIGZv
ciBIRFIgY29udGVudCwgd2hpY2ggaXMgZGVmaW5lZCBpbiBDVEEtODYxLUYgc3BlYy4KQWNjb3Jk
aW5nIHRvIERQIDEuNCBzcGVjIGFuZCBDRUEtODYxLUYgc3BlYyBUYWJsZSA1LCBpbiBvcmRlciB0
byB0cmFuc21pdApzdGF0aWMgSERSIG1ldGFkYXRhLCB3ZSBoYXZlIHRvIHVzZSBOb24tYXVkaW8g
SU5GT0ZSQU1FIFNEUCB2MS4zLgoKKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCnwgICAgICBbIFBhY2tldCBUeXBlIFZhbHVl
IF0gICAgIHwgICAgICAgWyBQYWNrZXQgVHlwZSBdICAgICAgICAgfAorLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKfCA4MGgg
KyBOb24tYXVkaW8gSU5GT0ZSQU1FIFR5cGUgfCBDRUEtODYxLUYgTm9uLWF1ZGlvIElORk9GUkFN
RSB8CistLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tKwp8ICAgICAgW1RyYW5zbWlzc2lvbiBUaW1pbmddICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCnwgQXMgcGVyIENFQS04NjEtRiBmb3Ig
SU5GT0ZSQU1FLCBpbmNsdWRpbmcgQ0VBLTg2MS4zIHdpdGhpbiAgICAgfAp8IHdoaWNoIER5bmFt
aWMgUmFuZ2UgYW5kIE1hc3RlcmluZyBJTkZPRlJBTUUgYXJlIGRlZmluZWQgICAgICAgIHwKKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0rCgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8
ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgfCA5MCArKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuaCAgfCAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwg
IDEgKwogNCBmaWxlcyBjaGFuZ2VkLCA5NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYTk0NGQ3YzUwOTFiLi5hN2I3ZjA1YTdhZGEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzQ3OCw2ICsz
NDc4LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZW5hYmxlX2RkaV9kcChzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAlpbnRlbF9lZHBfYmFja2xpZ2h0X29uKGNydGNfc3RhdGUsIGNvbm5f
c3RhdGUpOwogCWludGVsX3Bzcl9lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwogCWludGVs
X2RwX3ZzY19lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOworCWludGVs
X2RwX2hkcl9tZXRhZGF0YV9lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUp
OwogCWludGVsX2VkcF9kcnJzX2VuYWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CiAKIAlpZiAo
Y3J0Y19zdGF0ZS0+aGFzX2F1ZGlvKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCmluZGV4IGE5YTkxZjY3NWI0YS4uZWRiMjFiMjYxMzE5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC00NTUzLDYgKzQ1NTMsODQgQEAgaW50ZWxfZHBfc2V0
dXBfdnNjX3NkcChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWludGVsX2RpZ19wb3J0LT53
cml0ZV9pbmZvZnJhbWUoJmludGVsX2RpZ19wb3J0LT5iYXNlLAogCQkJY3J0Y19zdGF0ZSwgRFBf
U0RQX1ZTQywgJnZzY19zZHAsIHNpemVvZih2c2Nfc2RwKSk7CiB9CitzdGF0aWMgaW50CitpbnRl
bF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAorCQkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAorCQkJCQkgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQor
eworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZHBfdG9fZGln
X3BvcnQoaW50ZWxfZHApOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOworCXN0cnVjdCBkcF9zZHAgaW5m
b2ZyYW1lX3NkcCA9IHt9OworCXN0cnVjdCBoZG1pX2RybV9pbmZvZnJhbWUgZHJtX2luZm9mcmFt
ZSA9IHt9OworCWNvbnN0IGludCBpbmZvZnJhbWVfc2l6ZSA9IEhETUlfSU5GT0ZSQU1FX0hFQURF
Ul9TSVpFICsgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkU7CisJdW5zaWduZWQgY2hhciBidWZbSERN
SV9JTkZPRlJBTUVfSEVBREVSX1NJWkUgKyBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRV07CisJc3Np
emVfdCBsZW47CisJaW50IHJldDsKKworCXJldCA9IGRybV9oZG1pX2luZm9mcmFtZV9zZXRfaGRy
X21ldGFkYXRhKCZkcm1faW5mb2ZyYW1lLCBjb25uX3N0YXRlKTsKKwlpZiAocmV0KSB7CisJCURS
TV9ERUJVR19LTVMoImNvdWxkbid0IHNldCBIRFIgbWV0YWRhdGEgaW4gaW5mb2ZyYW1lXG4iKTsK
KwkJcmV0dXJuIHJldDsKKwl9CisKKwlsZW4gPSBoZG1pX2RybV9pbmZvZnJhbWVfcGFja19vbmx5
KCZkcm1faW5mb2ZyYW1lLCBidWYsIHNpemVvZihidWYpKTsKKwlpZiAobGVuIDwgMCkgeworCQlE
Uk1fREVCVUdfS01TKCJidWZmZXIgc2l6ZSBpcyBzbWFsbGVyIHRoYW4gaGRyIG1ldGFkYXRhIGlu
Zm9mcmFtZVxuIik7CisJCXJldHVybiAoaW50KWxlbjsKKwl9CisKKwlpZiAobGVuICE9IGluZm9m
cmFtZV9zaXplKSB7CisJCURSTV9ERUJVR19LTVMoIndyb25nIHN0YXRpYyBoZHIgbWV0YWRhdGEg
c2l6ZVxuIik7CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCS8qCisJICogU2V0IHVwIHRoZSBp
bmZvZnJhbWUgc2RwIHBhY2tldCBmb3IgSERSIHN0YXRpYyBtZXRhZGF0YS4KKwkgKiBQcmVwYXJl
IFZTQyBIZWFkZXIgZm9yIFNVIGFzIHBlciBEUCAxLjRhIHNwZWMsCisJICogVGFibGUgMi0xMDAg
YW5kIFRhYmxlIDItMTAxCisJICovCisKKwkvKiBQYWNrZXQgSUQsIDAwaCBmb3Igbm9uLUF1ZGlv
IElORk9GUkFNRSAqLworCWluZm9mcmFtZV9zZHAuc2RwX2hlYWRlci5IQjAgPSAwOworCS8qCisJ
ICogUGFja2V0IFR5cGUgODBoICsgTm9uLWF1ZGlvIElORk9GUkFNRSBUeXBlIHZhbHVlCisJICog
SERNSV9JTkZPRlJBTUVfVFlQRV9EUk06IDB4ODcsCisJICovCisJaW5mb2ZyYW1lX3NkcC5zZHBf
aGVhZGVyLkhCMSA9IGRybV9pbmZvZnJhbWUudHlwZTsKKwkvKgorCSAqIExlYXN0IFNpZ25pZmlj
YW50IEVpZ2h0IEJpdHMgb2YgKERhdGEgQnl0ZSBDb3VudCDigJMgMSkKKwkgKiBpbmZvZnJhbWVf
c2l6ZSAtIDEsCisJICovCisJaW5mb2ZyYW1lX3NkcC5zZHBfaGVhZGVyLkhCMiA9IDB4MUQ7CisJ
LyogSU5GT0ZSQU1FIFNEUCBWZXJzaW9uIE51bWJlciAqLworCWluZm9mcmFtZV9zZHAuc2RwX2hl
YWRlci5IQjMgPSAoMHgxMyA8PCAyKTsKKwkvKiBDVEEgSGVhZGVyIEJ5dGUgMiAoSU5GT0ZSQU1F
IFZlcnNpb24gTnVtYmVyKSAqLworCWluZm9mcmFtZV9zZHAuZGJbMF0gPSBkcm1faW5mb2ZyYW1l
LnZlcnNpb247CisJLyogQ1RBIEhlYWRlciBCeXRlIDMgKExlbmd0aCBvZiBJTkZPRlJBTUUpOiBI
RE1JX0RSTV9JTkZPRlJBTUVfU0laRSAqLworCWluZm9mcmFtZV9zZHAuZGJbMV0gPSBkcm1faW5m
b2ZyYW1lLmxlbmd0aDsKKwkvKgorCSAqIENvcHkgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUgc2l6
ZSBmcm9tIGEgYnVmZmVyIGFmdGVyCisJICogSERNSV9JTkZPRlJBTUVfSEVBREVSX1NJWkUKKwkg
Ki8KKwltZW1jcHkoJmluZm9mcmFtZV9zZHAuZGJbMl0sICZidWZbSERNSV9JTkZPRlJBTUVfSEVB
REVSX1NJWkVdLAorCSAgICAgICBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSk7CisKKwlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwkJaW50ZWxfZGlnX3BvcnQtPndyaXRlX2luZm9mcmFt
ZSgmaW50ZWxfZGlnX3BvcnQtPmJhc2UsCisJCQkJCQljcnRjX3N0YXRlLAorCQkJCQkJSERNSV9Q
QUNLRVRfVFlQRV9HQU1VVF9NRVRBREFUQSwKKwkJCQkJCSZpbmZvZnJhbWVfc2RwLAorCQkJCQkJ
VklERU9fRElQX0dNUF9EQVRBX1NJWkUpOworCWVsc2UKKwkJLyogUHJpb3IgdG8gR0VOMTEsIEhl
YWRlciBzaXplOiA0IGJ5dGVzLCBEYXRhIHNpemU6IDI4IGJ5dGVzICovCisJCWludGVsX2RpZ19w
b3J0LT53cml0ZV9pbmZvZnJhbWUoJmludGVsX2RpZ19wb3J0LT5iYXNlLAorCQkJCQkJY3J0Y19z
dGF0ZSwKKwkJCQkJCUhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEsCisJCQkJCQkmaW5m
b2ZyYW1lX3NkcCwKKwkJCQkJCVZJREVPX0RJUF9EQVRBX1NJWkUpOworCisJcmV0dXJuIDA7Cit9
CiAKIHZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAog
CQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLApAQCAtNDU2NSw2
ICs0NjQzLDE4IEBAIHZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAogCWludGVsX2RwX3NldHVwX3ZzY19zZHAoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNv
bm5fc3RhdGUpOwogfQogCit2b2lkIGludGVsX2RwX2hkcl9tZXRhZGF0YV9lbmFibGUoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAorCQkJCSAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNv
bm5fc3RhdGUpCit7CisJaWYgKCFjb25uX3N0YXRlLT5oZHJfb3V0cHV0X21ldGFkYXRhKQorCQly
ZXR1cm47CisKKwlpbnRlbF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChpbnRl
bF9kcCwKKwkJCQkJCSAgY3J0Y19zdGF0ZSwKKwkJCQkJCSAgY29ubl9zdGF0ZSk7Cit9CisKIHN0
YXRpYyB1OCBpbnRlbF9kcF9hdXRvdGVzdF9saW5rX3RyYWluaW5nKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCiB7CiAJaW50IHN0YXR1cyA9IDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmgKaW5kZXggYjJkYTdjOTk5OGY3Li5jMzU5MzY5MWRkMzggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKQEAgLTExNSw2ICsxMTUsOSBAQCBib29sIGlu
dGVsX2RwX25lZWRzX3ZzY19jb2xvcmltZXRyeSh1MzIgY29sb3JzcGFjZSk7CiB2b2lkIGludGVs
X2RwX3ZzY19lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCSBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nv
bm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7Cit2b2lkIGludGVsX2RwX2hkcl9tZXRhZGF0YV9l
bmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCSAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOwogYm9vbCBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVk
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsKIAogc3RhdGljIGlubGluZSB1bnNpZ25l
ZCBpbnQgaW50ZWxfZHBfdW51c2VkX2xhbmVfbWFzayhpbnQgbGFuZV9jb3VudCkKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCmluZGV4IGVhMmYwZmEyNDAyZC4uOTI4ODU0MTZkNTM5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKQEAgLTQ2NDUsNiArNDY0NSw3IEBAIGVudW0gewogICogKEhhc3dlbGwg
YW5kIG5ld2VyKSB0byBzZWUgd2hpY2ggVklERU9fRElQX0RBVEEgYnl0ZSBjb3JyZXNwb25kcyB0
byBlYWNoIGJ5dGUKICAqIG9mIHRoZSBpbmZvZnJhbWUgc3RydWN0dXJlIHNwZWNpZmllZCBieSBD
RUEtODYxLiAqLwogI2RlZmluZSAgIFZJREVPX0RJUF9EQVRBX1NJWkUJMzIKKyNkZWZpbmUgICBW
SURFT19ESVBfR01QX0RBVEFfU0laRQkzNgogI2RlZmluZSAgIFZJREVPX0RJUF9WU0NfREFUQV9T
SVpFCTM2CiAjZGVmaW5lICAgVklERU9fRElQX1BQU19EQVRBX1NJWkUJMTMyCiAjZGVmaW5lIFZJ
REVPX0RJUF9DVEwJCV9NTUlPKDB4NjExNzApCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
