Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15441B07CD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B026EB98;
	Thu, 12 Sep 2019 04:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9F06E029;
 Thu, 12 Sep 2019 03:25:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 20:25:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336444939"
Received: from helsinki.fi.intel.com ([10.237.66.159])
 by orsmga004.jf.intel.com with ESMTP; 11 Sep 2019 20:25:15 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 06:24:54 +0300
Message-Id: <20190912032455.26095-7-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912032455.26095-1-gwan-gyeong.mun@intel.com>
References: <20190912032455.26095-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 6/7] drm/i915/dp: Program an Infoframe SDP
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
Cc: imirkin@alum.mit.edu, dri-devel@lists.freedesktop.org
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
bmQgdXNlcyBkaWZmZXJlbnQgcmVnaXN0ZXIKc2l6ZS4KClNldHVwIEluZm9mcmFtZSBTRFAgaGVh
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
LS0tLS0rCgp2MjogQWRkIGEgbWlzc2VkIGJsYW5rIGxpbmUgYWZ0ZXIgZnVuY3Rpb24gZGVjbGFy
YXRpb24uCnYzOiBSZW1vdmUgbm90IGhhbmRsZWQgcmV0dXJuIHZhbHVlcyBmcm9tCiAgICBpbnRl
bF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcCgpLiBbVW1hXQoKU2lnbmVkLW9m
Zi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jICB8IDg5ICsrKysrKysrKysrKysrKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICB8ICAzICsKIDMgZmlsZXMgY2hh
bmdlZCwgOTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCmluZGV4IDhkYzAzMDY1MDgwMS4uMzA2ZjZmOWYwMjA0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM2MjUsNiArMzYyNSw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX2VuYWJsZV9kZGlfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
aW50ZWxfZWRwX2JhY2tsaWdodF9vbihjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKIAlpbnRlbF9w
c3JfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKIAlpbnRlbF9kcF92c2NfZW5hYmxlKGlu
dGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKKwlpbnRlbF9kcF9oZHJfbWV0YWRhdGFf
ZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKIAlpbnRlbF9lZHBfZHJy
c19lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwogCiAJaWYgKGNydGNfc3RhdGUtPmhhc19h
dWRpbykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA3ZmUyMmIz
NzQ3NGQuLmFiYmYxZDVjNTRjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwpAQCAtNDU5OSw2ICs0NTk5LDgzIEBAIGludGVsX2RwX3NldHVwX3ZzY19zZHAoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKIAkJCWNydGNfc3RhdGUsIERQX1NEUF9WU0MsICZ2c2Nfc2Rw
LCBzaXplb2YodnNjX3NkcCkpOwogfQogCitzdGF0aWMgdm9pZAoraW50ZWxfZHBfc2V0dXBfaGRy
X21ldGFkYXRhX2luZm9mcmFtZV9zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkJ
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkJICBjb25z
dCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2Rw
KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVsX2Rp
Z19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKKwlzdHJ1Y3QgZHBfc2RwIGluZm9mcmFtZV9zZHAgPSB7
fTsKKwlzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lIGRybV9pbmZvZnJhbWUgPSB7fTsKKwljb25z
dCBpbnQgaW5mb2ZyYW1lX3NpemUgPSBIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArIEhETUlf
RFJNX0lORk9GUkFNRV9TSVpFOworCXVuc2lnbmVkIGNoYXIgYnVmW0hETUlfSU5GT0ZSQU1FX0hF
QURFUl9TSVpFICsgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkVdOworCXNzaXplX3QgbGVuOworCWlu
dCByZXQ7CisKKwlyZXQgPSBkcm1faGRtaV9pbmZvZnJhbWVfc2V0X2hkcl9tZXRhZGF0YSgmZHJt
X2luZm9mcmFtZSwgY29ubl9zdGF0ZSk7CisJaWYgKHJldCkgeworCQlEUk1fREVCVUdfS01TKCJj
b3VsZG4ndCBzZXQgSERSIG1ldGFkYXRhIGluIGluZm9mcmFtZVxuIik7CisJCXJldHVybjsKKwl9
CisKKwlsZW4gPSBoZG1pX2RybV9pbmZvZnJhbWVfcGFja19vbmx5KCZkcm1faW5mb2ZyYW1lLCBi
dWYsIHNpemVvZihidWYpKTsKKwlpZiAobGVuIDwgMCkgeworCQlEUk1fREVCVUdfS01TKCJidWZm
ZXIgc2l6ZSBpcyBzbWFsbGVyIHRoYW4gaGRyIG1ldGFkYXRhIGluZm9mcmFtZVxuIik7CisJCXJl
dHVybjsKKwl9CisKKwlpZiAobGVuICE9IGluZm9mcmFtZV9zaXplKSB7CisJCURSTV9ERUJVR19L
TVMoIndyb25nIHN0YXRpYyBoZHIgbWV0YWRhdGEgc2l6ZVxuIik7CisJCXJldHVybjsKKwl9CisK
KwkvKgorCSAqIFNldCB1cCB0aGUgaW5mb2ZyYW1lIHNkcCBwYWNrZXQgZm9yIEhEUiBzdGF0aWMg
bWV0YWRhdGEuCisJICogUHJlcGFyZSBWU0MgSGVhZGVyIGZvciBTVSBhcyBwZXIgRFAgMS40YSBz
cGVjLAorCSAqIFRhYmxlIDItMTAwIGFuZCBUYWJsZSAyLTEwMQorCSAqLworCisJLyogUGFja2V0
IElELCAwMGggZm9yIG5vbi1BdWRpbyBJTkZPRlJBTUUgKi8KKwlpbmZvZnJhbWVfc2RwLnNkcF9o
ZWFkZXIuSEIwID0gMDsKKwkvKgorCSAqIFBhY2tldCBUeXBlIDgwaCArIE5vbi1hdWRpbyBJTkZP
RlJBTUUgVHlwZSB2YWx1ZQorCSAqIEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJNOiAweDg3LAorCSAq
LworCWluZm9mcmFtZV9zZHAuc2RwX2hlYWRlci5IQjEgPSBkcm1faW5mb2ZyYW1lLnR5cGU7CisJ
LyoKKwkgKiBMZWFzdCBTaWduaWZpY2FudCBFaWdodCBCaXRzIG9mIChEYXRhIEJ5dGUgQ291bnQg
4oCTIDEpCisJICogaW5mb2ZyYW1lX3NpemUgLSAxLAorCSAqLworCWluZm9mcmFtZV9zZHAuc2Rw
X2hlYWRlci5IQjIgPSAweDFEOworCS8qIElORk9GUkFNRSBTRFAgVmVyc2lvbiBOdW1iZXIgKi8K
KwlpbmZvZnJhbWVfc2RwLnNkcF9oZWFkZXIuSEIzID0gKDB4MTMgPDwgMik7CisJLyogQ1RBIEhl
YWRlciBCeXRlIDIgKElORk9GUkFNRSBWZXJzaW9uIE51bWJlcikgKi8KKwlpbmZvZnJhbWVfc2Rw
LmRiWzBdID0gZHJtX2luZm9mcmFtZS52ZXJzaW9uOworCS8qIENUQSBIZWFkZXIgQnl0ZSAzIChM
ZW5ndGggb2YgSU5GT0ZSQU1FKTogSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUgKi8KKwlpbmZvZnJh
bWVfc2RwLmRiWzFdID0gZHJtX2luZm9mcmFtZS5sZW5ndGg7CisJLyoKKwkgKiBDb3B5IEhETUlf
RFJNX0lORk9GUkFNRV9TSVpFIHNpemUgZnJvbSBhIGJ1ZmZlciBhZnRlcgorCSAqIEhETUlfSU5G
T0ZSQU1FX0hFQURFUl9TSVpFCisJICovCisJbWVtY3B5KCZpbmZvZnJhbWVfc2RwLmRiWzJdLCAm
YnVmW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFXSwKKwkgICAgICAgSERNSV9EUk1fSU5GT0ZS
QU1FX1NJWkUpOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCisJCWludGVsX2Rp
Z19wb3J0LT53cml0ZV9pbmZvZnJhbWUoJmludGVsX2RpZ19wb3J0LT5iYXNlLAorCQkJCQkJY3J0
Y19zdGF0ZSwKKwkJCQkJCUhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEsCisJCQkJCQkm
aW5mb2ZyYW1lX3NkcCwKKwkJCQkJCVZJREVPX0RJUF9HTVBfREFUQV9TSVpFKTsKKwllbHNlCisJ
CS8qIFByaW9yIHRvIEdFTjExLCBIZWFkZXIgc2l6ZTogNCBieXRlcywgRGF0YSBzaXplOiAyOCBi
eXRlcyAqLworCQlpbnRlbF9kaWdfcG9ydC0+d3JpdGVfaW5mb2ZyYW1lKCZpbnRlbF9kaWdfcG9y
dC0+YmFzZSwKKwkJCQkJCWNydGNfc3RhdGUsCisJCQkJCQlIRE1JX1BBQ0tFVF9UWVBFX0dBTVVU
X01FVEFEQVRBLAorCQkJCQkJJmluZm9mcmFtZV9zZHAsCisJCQkJCQlWSURFT19ESVBfREFUQV9T
SVpFKTsKK30KKwogdm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsCiAJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJ
CQkgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCkBAIC00NjA5
LDYgKzQ2ODYsMTggQEAgdm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCiAJaW50ZWxfZHBfc2V0dXBfdnNjX3NkcChpbnRlbF9kcCwgY3J0Y19zdGF0ZSwg
Y29ubl9zdGF0ZSk7CiB9CiAKK3ZvaWQgaW50ZWxfZHBfaGRyX21ldGFkYXRhX2VuYWJsZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCisJCQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAq
Y29ubl9zdGF0ZSkKK3sKKwlpZiAoIWNvbm5fc3RhdGUtPmhkcl9vdXRwdXRfbWV0YWRhdGEpCisJ
CXJldHVybjsKKworCWludGVsX2RwX3NldHVwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwKGlu
dGVsX2RwLAorCQkJCQkJICBjcnRjX3N0YXRlLAorCQkJCQkJICBjb25uX3N0YXRlKTsKK30KKwog
c3RhdGljIHU4IGludGVsX2RwX2F1dG90ZXN0X2xpbmtfdHJhaW5pbmcoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkKIHsKIAlpbnQgc3RhdHVzID0gMDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuaAppbmRleCA4Nzg4M2QwZDU5NzcuLjU2MTMwNzNkMWRkNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaApAQCAtMTE2LDYgKzExNiw5IEBAIGJvb2wg
aW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSk7CiB2b2lkIGludGVsX2RwX3ZzY19lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKIAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJ
CSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7Cit2b2lkIGlu
dGVsX2RwX2hkcl9tZXRhZGF0YV9lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJ
CQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCSAgY29u
c3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOwogYm9vbCBpbnRlbF9k
aWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsKIAog
c3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQgaW50ZWxfZHBfdW51c2VkX2xhbmVfbWFzayhpbnQg
bGFuZV9jb3VudCkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
