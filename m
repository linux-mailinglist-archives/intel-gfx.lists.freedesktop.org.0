Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A6F85194
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA096E746;
	Wed,  7 Aug 2019 17:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346CC6E746
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:00:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 10:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="182336830"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Aug 2019 10:00:45 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x77H0h7q010955; Wed, 7 Aug 2019 18:00:44 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:00:29 +0000
Message-Id: <20190807170034.8440-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190807170034.8440-1-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/uc: HuC firmware can't be
 supported without GuC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgaXMgbm8gcG9pbnQgaW4gc2VsZWN0aW5nIEh1QyBmaXJtd2FyZSBpZiBHdUMgaXMgdW5z
dXBwb3J0ZWQKb3IgaXQgd2FzIGFscmVhZHkgZGlzYWJsZWQsIGFzIHdlIG5lZWQgR3VDIHRvIGF1
dGhlbnRpY2F0ZSBIdUMuCgpXaGlsZSBhcm91bmQsIG1ha2UgdWNfZndfaW5pdF9lYXJseSB3b3Jr
IHdpdGhvdXQgZGlyZWN0IGFjY2Vzcwp0byB3aG9sZSBpOTE1LCBwYXNzIG9ubHkgbmVlZGVkIHBs
YXRmb3JtL3JldiBpbmZvLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3
LmMgfCAgNSArKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMg
fCAgOCArKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAg
fCAxMyArKysrKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5oICB8ICA1ICsrKy0tCiA0IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMKaW5k
ZXggMjg3MzVjMTRiOWEwLi4xMTc2NWNmYjA0OTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19mdy5jCkBAIC0zOSw3ICszOSwxMCBAQAogICovCiB2b2lkIGludGVsX2d1
Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIHsKLQlpbnRlbF91Y19md19p
bml0X2Vhcmx5KCZndWMtPmZ3LCBJTlRFTF9VQ19GV19UWVBFX0dVQywgZ3VjX3RvX2d0KGd1Yykt
Pmk5MTUpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3RvX2d0KGd1Yykt
Pmk5MTU7CisKKwlpbnRlbF91Y19md19pbml0X2Vhcmx5KCZndWMtPmZ3LCBJTlRFTF9VQ19GV19U
WVBFX0dVQywgSEFTX0dUX1VDKGk5MTUpLAorCQkJICAgICAgIElOVEVMX0lORk8oaTkxNSktPnBs
YXRmb3JtLCBJTlRFTF9SRVZJRChpOTE1KSk7CiB9CiAKIHN0YXRpYyB2b2lkIGd1Y19wcmVwYXJl
X3hmZXIoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9odWNfZncuYwppbmRleCAwZTg4NTg1OWM4MjguLjg4ZGZlZDgzNzgyNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKQEAgLTMxLDcgKzMxLDEz
IEBACiAgKi8KIHZvaWQgaW50ZWxfaHVjX2Z3X2luaXRfZWFybHkoc3RydWN0IGludGVsX2h1YyAq
aHVjKQogewotCWludGVsX3VjX2Z3X2luaXRfZWFybHkoJmh1Yy0+ZncsIElOVEVMX1VDX0ZXX1RZ
UEVfSFVDLCBodWNfdG9fZ3QoaHVjKS0+aTkxNSk7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGh1
Y190b19ndChodWMpOworCXN0cnVjdCBpbnRlbF91YyAqdWMgPSAmZ3QtPnVjOworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisKKwlpbnRlbF91Y19md19pbml0X2Vh
cmx5KCZodWMtPmZ3LCBJTlRFTF9VQ19GV19UWVBFX0hVQywKKwkJCSAgICAgICBpbnRlbF91Y19z
dXBwb3J0c19ndWModWMpLAorCQkJICAgICAgIElOVEVMX0lORk8oaTkxNSktPnBsYXRmb3JtLCBJ
TlRFTF9SRVZJRChpOTE1KSk7CiB9CiAKIC8qKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjX2Z3LmMKaW5kZXggYTNhMjJhMjYwMTZjLi4wMDIzNWNhYzg0YWEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpAQCAtMTcxLDE2ICsxNzEsMTggQEAgX191
Y19md19vdmVycmlkZShzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3KQogCiAvKioKICAqIGludGVs
X3VjX2Z3X2luaXRfZWFybHkgLSBpbml0aWFsaXplIHRoZSB1QyBvYmplY3QgYW5kIHNlbGVjdCB0
aGUgZmlybXdhcmUKLSAqIEBpOTE1OiBkZXZpY2UgcHJpdmF0ZQogICogQHVjX2Z3OiB1QyBmaXJt
d2FyZQogICogQHR5cGU6IHR5cGUgb2YgdUMKKyAqIEBzdXBwb3J0ZWQ6IGlzIHVDIHN1cHBvcnQg
cG9zc2libGUKKyAqIEBwbGF0Zm9ybTogcGxhdGZvcm0gaWRlbnRpZmllcgorICogQHJldjogaGFy
ZHdhcmUgcmV2aXNpb24KICAqCiAgKiBJbml0aWFsaXplIHRoZSBzdGF0ZSBvZiBvdXIgdUMgb2Jq
ZWN0IGFuZCByZWxldmFudCB0cmFja2luZyBhbmQgc2VsZWN0IHRoZQogICogZmlybXdhcmUgdG8g
ZmV0Y2ggYW5kIGxvYWQuCiAgKi8KIHZvaWQgaW50ZWxfdWNfZndfaW5pdF9lYXJseShzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LAotCQkJICAgIGVudW0gaW50ZWxfdWNfZndfdHlwZSB0eXBlLAot
CQkJICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorCQkJICAgIGVudW0gaW50ZWxf
dWNfZndfdHlwZSB0eXBlLCBib29sIHN1cHBvcnRlZCwKKwkJCSAgICBlbnVtIGludGVsX3BsYXRm
b3JtIHBsYXRmb3JtLCB1OCByZXYpCiB7CiAJLyoKIAkgKiB3ZSB1c2UgRklSTVdBUkVfVU5JTklU
SUFMSVpFRCB0byBkZXRlY3QgY2hlY2tzIGFnYWluc3QgdWNfZnctPnN0YXR1cwpAQCAtMTkyLDkg
KzE5NCw4IEBAIHZvaWQgaW50ZWxfdWNfZndfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfdWNfZncg
KnVjX2Z3LAogCiAJdWNfZnctPnR5cGUgPSB0eXBlOwogCi0JaWYgKEhBU19HVF9VQyhpOTE1KSAm
JiBsaWtlbHkoIV9fdWNfZndfb3ZlcnJpZGUodWNfZncpKSkKLQkJX191Y19md19hdXRvX3NlbGVj
dCh1Y19mdywgSU5URUxfSU5GTyhpOTE1KS0+cGxhdGZvcm0sCi0JCQkJICAgIElOVEVMX1JFVklE
KGk5MTUpKTsKKwlpZiAoc3VwcG9ydGVkICYmIGxpa2VseSghX191Y19md19vdmVycmlkZSh1Y19m
dykpKQorCQlfX3VjX2Z3X2F1dG9fc2VsZWN0KHVjX2Z3LCBwbGF0Zm9ybSwgcmV2KTsKIAogCWlm
ICh1Y19mdy0+cGF0aCAmJiAqdWNfZnctPnBhdGgpCiAJCXVjX2Z3LT5zdGF0dXMgPSBJTlRFTF9V
Q19GSVJNV0FSRV9TRUxFQ1RFRDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjX2Z3LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19m
dy5oCmluZGV4IGJmZTM2MTQ2MTNiNy4uN2E4NTg3MTBkNDQ2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKQEAgLTI3LDYgKzI3LDcgQEAKIAogI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+CiAjaW5jbHVkZSAiaW50ZWxfdWNfZndfYWJpLmgiCisjaW5jbHVkZSAiaW50
ZWxfZGV2aWNlX2luZm8uaCIKICNpbmNsdWRlICJpOTE1X2dlbS5oIgogCiBzdHJ1Y3QgZHJtX3By
aW50ZXI7CkBAIC0xNzAsOCArMTcxLDggQEAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfdWNfZndf
Z2V0X3VwbG9hZF9zaXplKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCiB9CiAKIHZvaWQgaW50
ZWxfdWNfZndfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LAotCQkJICAgIGVu
dW0gaW50ZWxfdWNfZndfdHlwZSB0eXBlLAotCQkJICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKKwkJCSAgICBlbnVtIGludGVsX3VjX2Z3X3R5cGUgdHlwZSwgYm9vbCBzdXBwb3J0
ZWQsCisJCQkgICAgZW51bSBpbnRlbF9wbGF0Zm9ybSBwbGF0Zm9ybSwgdTggcmV2KTsKIHZvaWQg
aW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywKIAkJICAgICAgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxfdWNfZndfY2xlYW51cF9m
ZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3KTsKLS0gCjIuMTkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
