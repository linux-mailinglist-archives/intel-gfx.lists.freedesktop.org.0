Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CED842EFBA3
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jan 2021 00:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2996E8C2;
	Fri,  8 Jan 2021 23:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FC26E860
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 23:19:26 +0000 (UTC)
IronPort-SDR: GHgtjzna3DGq0aEdAq2aZX8xnOY2NH2JdkJ2es5y9S6rETO92jCLg/Y+y792qChNA6Xsm9VWBd
 Usi/8qYP3FiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177814764"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="177814764"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 15:19:26 -0800
IronPort-SDR: TZvs/1v24hdsmAt1QXHXZpFVVcZUfvsrHIZZPe8p5fOHe0vW+lfm9VbcM7i+zHCI1BFI9OmeMY
 rXSg+eU0kIow==
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="380285094"
Received: from ssapkota-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.118.251])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 15:19:26 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 15:18:53 -0800
Message-Id: <20210108231853.2859646-3-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210108231853.2859646-1-aditya.swarup@intel.com>
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: Add ADL-S platform info and
 PCI ids
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgoKLSBBZGQgdGhlIGlu
aXRpYWwgcGxhdGZvcm0gaW5mb3JtYXRpb24gZm9yIEFsZGVybGFrZS1TLgotIFNwZWNpZnkgcHBn
dHRfc2l6ZSB2YWx1ZQotIEFkZCBkbWFfbWFza19zaXplCi0gQWRkIEFETFMgUkVWSURzCi0gSFcg
dHJhY2tpbmcoU2VsZWN0aXZlIFVwZGF0ZSBUcmFja2luZyBFbmFibGUpIGhhcyBiZWVuCiAgcmVt
b3ZlZCBmcm9tIEFETFMuIERpc2FibGUgUFNSMiB0aWxsIHdlIGVuYWJsZSBzb2Z0d2FyZS8KICBt
YW51YWwgdHJhY2tpbmcuCgp2MjoKLSBBZGQgc3VwcG9ydCBmb3IgZGlmZmVyZW50IEFETFMgU09D
IHN0ZXBwaW5ncyB0byBzZWxlY3QKICBjb3JyZWN0IEdUL0RJU1Agc3RlcHBpbmcgYmFzZWQgb24g
QnNwZWMgNTM2NTUgYmFzZWQgb24KICBmZWVkYmFjayBmcm9tIE1hdHQgUm9wZXIuKGFzd2FydXAp
Cgp2MzoKLSBNYWtlIGRpc3BsYXkvZ3Qgc3RlcHBpbmdzIGluZm8gZ2VuZXJpYyBmb3IgcmV1c2Ug
d2l0aCBUR0wgYW5kIEFETFMuCi0gTW9kaWZ5IHRoZSBtYWNyb3MgdG8gcmV1c2UgdGdsX3Jldmlk
c19nZXQoKQotIEFkZCBIVEkgc3VwcG9ydCB0byBhZGxzIGRldmljZSBpbmZvLihtZHJvcGVyKQoK
djQ6Ci0gUmViYXNlIG9uIFRHTCBwYXRjaCBmb3IgYXBwbHlpbmcgV0FzIGJhc2VkIG9uIHN0ZXBw
aW5nIGluZm8gZnJvbQogIE1hdHQgUm9wZXIncyBmZWVkYmFjay4oYXN3YXJ1cCkKCkJzcGVjOiA1
MzU5NwpCc3BlYzogNTM2NDgKQnNwZWM6IDUzNjU1CkJzcGVjOiA0ODAyOApCc3BlYzogNTM2NTAK
QlNwZWM6IDUwNDIyCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBB
ZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgIDggKysrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgIHwgMjcgKysrKysrKysrKysrKysrKysrKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgIHwgMTMgKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAgICB8ICAxICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgfCAgMSArCiBpbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oICAgICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysrCiA2
IGZpbGVzIGNoYW5nZWQsIDYwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCAxMTFkMDFlMmY4MWUu
LmM4OWJkNjUzYWYxNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jCkBAIC04NCw2ICs4NCwxNCBAQCBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdz
IHRnbF9yZXZpZF9zdGVwX3RibFtdID0gewogCVsxXSA9IHsgLmd0X3N0ZXBwaW5nID0gU1RFUF9C
MCwgLmRpc3Bfc3RlcHBpbmcgPSBTVEVQX0QwIH0sCiB9OwogCitjb25zdCBzdHJ1Y3QgaTkxNV9y
ZXZfc3RlcHBpbmdzIGFkbHNfcmV2aWRfc3RlcF90YmxbXSA9IHsKKwlbQURMU19SRVZJRF9BMF0g
PSB7IC5ndF9zdGVwcGluZyA9IFNURVBfQTAsIC5kaXNwX3N0ZXBwaW5nID0gU1RFUF9BMCB9LAor
CVtBRExTX1JFVklEX0EyXSA9IHsgLmd0X3N0ZXBwaW5nID0gU1RFUF9BMCwgLmRpc3Bfc3RlcHBp
bmcgPSBTVEVQX0EyIH0sCisJW0FETFNfUkVWSURfQjBdID0geyAuZ3Rfc3RlcHBpbmcgPSBTVEVQ
X0IwLCAuZGlzcF9zdGVwcGluZyA9IFNURVBfQjAgfSwKKwlbQURMU19SRVZJRF9HMF0gPSB7IC5n
dF9zdGVwcGluZyA9IFNURVBfQzAsIC5kaXNwX3N0ZXBwaW5nID0gU1RFUF9CMCB9LAorCVtBRExT
X1JFVklEX0MwXSA9IHsgLmd0X3N0ZXBwaW5nID0gU1RFUF9EMCwgLmRpc3Bfc3RlcHBpbmcgPSBT
VEVQX0MwIH0sCit9OworCiBzdGF0aWMgdm9pZCB3YV9pbml0X3N0YXJ0KHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCwgY29uc3QgY2hhciAqbmFtZSwgY29uc3QgY2hhciAqZW5naW5lX25hbWUpCiB7
CiAJd2FsLT5uYW1lID0gbmFtZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDExZDZlOGFi
ZGU0Ni4uOGQ4YTA0NmE3YjBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE0MTcsNiAr
MTQxNyw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAogI2RlZmluZSBJU19USUdFUkxBS0UoZGV2X3ByaXYpCUlTX1BMQVRGT1JNKGRldl9wcml2
LCBJTlRFTF9USUdFUkxBS0UpCiAjZGVmaW5lIElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpCUlTX1BM
QVRGT1JNKGRldl9wcml2LCBJTlRFTF9ST0NLRVRMQUtFKQogI2RlZmluZSBJU19ERzEoZGV2X3By
aXYpICAgICAgICBJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfREcxKQorI2RlZmluZSBJU19B
TERFUkxBS0VfUyhkZXZfcHJpdikgSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0FMREVSTEFL
RV9TKQogI2RlZmluZSBJU19IU1dfRUFSTFlfU0RWKGRldl9wcml2KSAoSVNfSEFTV0VMTChkZXZf
cHJpdikgJiYgXAogCQkJCSAgICAoSU5URUxfREVWSUQoZGV2X3ByaXYpICYgMHhGRjAwKSA9PSAw
eDBDMDApCiAjZGVmaW5lIElTX0JEV19VTFQoZGV2X3ByaXYpIFwKQEAgLTE1NjAsNiArMTU2MSw3
IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIGtibF9yZXZpZHNbXTsK
IAogZW51bSB7CiAJU1RFUF9BMCwKKwlTVEVQX0EyLAogCVNURVBfQjAsCiAJU1RFUF9CMSwKIAlT
VEVQX0MwLApAQCAtMTU2OCw5ICsxNTcwLDExIEBAIGVudW0gewogCiAjZGVmaW5lIFRHTF9VWV9S
RVZJRF9TVEVQX1RCTF9TSVpFCTQKICNkZWZpbmUgVEdMX1JFVklEX1NURVBfVEJMX1NJWkUJCTIK
KyNkZWZpbmUgQURMU19SRVZJRF9TVEVQX1RCTF9TSVpFCTEzCiAKIGV4dGVybiBjb25zdCBzdHJ1
Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF91eV9yZXZpZF9zdGVwX3RibFtUR0xfVVlfUkVWSURf
U1RFUF9UQkxfU0laRV07CiBleHRlcm4gY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyB0
Z2xfcmV2aWRfc3RlcF90YmxbVEdMX1JFVklEX1NURVBfVEJMX1NJWkVdOworZXh0ZXJuIGNvbnN0
IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgYWRsc19yZXZpZF9zdGVwX3RibFtBRExTX1JFVklE
X1NURVBfVEJMX1NJWkVdOwogCiBzdGF0aWMgaW5saW5lIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9z
dGVwcGluZ3MgKgogdGdsX3N0ZXBwaW5nX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCkBAIC0xNTc5LDcgKzE1ODMsMTAgQEAgdGdsX3N0ZXBwaW5nX2dldChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdTggc2l6ZTsKIAljb25zdCBzdHJ1Y3QgaTkxNV9y
ZXZfc3RlcHBpbmdzICpyZXZpZF9zdGVwX3RibDsKIAotCWlmIChJU19UR0xfVShkZXZfcHJpdikg
fHwgSVNfVEdMX1koZGV2X3ByaXYpKSB7CisJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkg
eworCQlyZXZpZF9zdGVwX3RibCA9IGFkbHNfcmV2aWRfc3RlcF90Ymw7CisJCXNpemUgPSBBUlJB
WV9TSVpFKGFkbHNfcmV2aWRfc3RlcF90YmwpOworCX0gZWxzZSBpZiAoSVNfVEdMX1UoZGV2X3By
aXYpIHx8IElTX1RHTF9ZKGRldl9wcml2KSkgewogCQlyZXZpZF9zdGVwX3RibCA9IHRnbF91eV9y
ZXZpZF9zdGVwX3RibDsKIAkJc2l6ZSA9IEFSUkFZX1NJWkUodGdsX3V5X3JldmlkX3N0ZXBfdGJs
KTsKIAl9IGVsc2UgewpAQCAtMTYyMSw2ICsxNjI4LDI0IEBAIHRnbF9zdGVwcGluZ19nZXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogI2RlZmluZSBJU19ERzFfUkVWSUQocCwg
c2luY2UsIHVudGlsKSBcCiAJKElTX0RHMShwKSAmJiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwp
KQogCisjZGVmaW5lIEFETFNfUkVWSURfQTAJCTB4MAorI2RlZmluZSBBRExTX1JFVklEX0EyCQkw
eDEKKyNkZWZpbmUgQURMU19SRVZJRF9CMAkJMHg0CisjZGVmaW5lIEFETFNfUkVWSURfRzAJCTB4
OAorI2RlZmluZSBBRExTX1JFVklEX0MwCQkweEMgLypTYW1lIGFzIEgwIEFETFMgU09DIHN0ZXBw
aW5nKi8KKworZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgYWRsc19yZXZp
ZHNbXTsKKworI2RlZmluZSBJU19BRExTX0RJU1BfU1RFUFBJTkcocCwgc2luY2UsIHVudGlsKSBc
CisJKElTX0FMREVSTEFLRV9TKHApICYmIFwKKwkgdGdsX3N0ZXBwaW5nX2dldChwKS0+ZGlzcF9z
dGVwcGluZyA+PSAoc2luY2UpICYmIFwKKwkgdGdsX3N0ZXBwaW5nX2dldChwKS0+ZGlzcF9zdGVw
cGluZyA8PSAodW50aWwpKQorCisjZGVmaW5lIElTX0FETFNfR1RfU1RFUFBJTkcocCwgc2luY2Us
IHVudGlsKSBcCisJKElTX0FMREVSTEFLRV9TKHApICYmIFwKKwkgdGdsX3N0ZXBwaW5nX2dldChw
KS0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcCisJIHRnbF9zdGVwcGluZ19nZXQocCktPmd0
X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCisKICNkZWZpbmUgSVNfTFAoZGV2X3ByaXYpCShJTlRFTF9J
TkZPKGRldl9wcml2KS0+aXNfbHApCiAjZGVmaW5lIElTX0dFTjlfTFAoZGV2X3ByaXYpCShJU19H
RU4oZGV2X3ByaXYsIDkpICYmIElTX0xQKGRldl9wcml2KSkKICNkZWZpbmUgSVNfR0VOOV9CQyhk
ZXZfcHJpdikJKElTX0dFTihkZXZfcHJpdiwgOSkgJiYgIUlTX0xQKGRldl9wcml2KSkKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jCmluZGV4IDExZmU3OTBiMTk2OS4uMjZlNGJmOGJiNGVmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMKQEAgLTkyNSw2ICs5MjUsMTggQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9kZXZpY2VfaW5mbyBkZzFfaW5mbyBfX21heWJlX3VudXNlZCA9IHsKIAkucHBndHRf
c2l6ZSA9IDQ3LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBh
ZGxfc19pbmZvID0geworCUdFTjEyX0ZFQVRVUkVTLAorCVBMQVRGT1JNKElOVEVMX0FMREVSTEFL
RV9TKSwKKwkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQSVBF
X0MpIHwgQklUKFBJUEVfRCksCisJLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAxLAorCS5kaXNwbGF5
Lmhhc19odGkgPSAxLAorCS5kaXNwbGF5Lmhhc19wc3JfaHdfdHJhY2tpbmcgPSAwLAorCS5wbGF0
Zm9ybV9lbmdpbmVfbWFzayA9CisJCUJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkg
fCBCSVQoVkNTMCkgfCBCSVQoVkNTMiksCisJLmRtYV9tYXNrX3NpemUgPSA0NiwKK307CisKICN1
bmRlZiBHRU4KICN1bmRlZiBQTEFURk9STQogCkBAIC0xMDAxLDYgKzEwMTMsNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgcGNpaWRsaXN0W10gPSB7CiAJSU5URUxfSlNMX0lE
UygmanNsX2luZm8pLAogCUlOVEVMX1RHTF8xMl9JRFMoJnRnbF9pbmZvKSwKIAlJTlRFTF9SS0xf
SURTKCZya2xfaW5mbyksCisJSU5URUxfQURMU19JRFMoJmFkbF9zX2luZm8pLAogCXswLCAwLCAw
fQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUocGNpLCBwY2lpZGxpc3QpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZjJkNWFlNTkwODFlLi42OTk0MTJjMTRj
MWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtNjYsNiAr
NjYsNyBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHBsYXRmb3JtX25hbWVzW10gPSB7CiAJ
UExBVEZPUk1fTkFNRShUSUdFUkxBS0UpLAogCVBMQVRGT1JNX05BTUUoUk9DS0VUTEFLRSksCiAJ
UExBVEZPUk1fTkFNRShERzEpLAorCVBMQVRGT1JNX05BTUUoQUxERVJMQUtFX1MpLAogfTsKICN1
bmRlZiBQTEFURk9STV9OQU1FCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5oCmluZGV4IDE3ZDBmZGI5NGQyZC4uZDA5ODU3Y2RjOTU0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTg0LDYgKzg0LDcgQEAgZW51bSBpbnRlbF9wbGF0
Zm9ybSB7CiAJSU5URUxfVElHRVJMQUtFLAogCUlOVEVMX1JPQ0tFVExBS0UsCiAJSU5URUxfREcx
LAorCUlOVEVMX0FMREVSTEFLRV9TLAogCUlOVEVMX01BWF9QTEFURk9STVMKIH07CiAKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlk
cy5oCmluZGV4IDkzMWU0NjE5MTA0Ny4uZWJkMGRkMWMzNWIzIDEwMDY0NAotLS0gYS9pbmNsdWRl
L2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTYz
NCw0ICs2MzQsMTUgQEAKIAlJTlRFTF9WR0FfREVWSUNFKDB4NDkwNywgaW5mbyksIFwKIAlJTlRF
TF9WR0FfREVWSUNFKDB4NDkwOCwgaW5mbykKIAorLyogQURMLVMgKi8KKyNkZWZpbmUgSU5URUxf
QURMU19JRFMoaW5mbykgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NjgwLCBpbmZvKSwgXAorCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg0NjgxLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0Njgy
LCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NjgzLCBpbmZvKSwgXAorCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg0NjkwLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NjkxLCBpbmZv
KSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NjkyLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0NjkzLCBpbmZvKQorCiAjZW5kaWYgLyogX0k5MTVfUENJSURTX0ggKi8KLS0gCjIuMjcu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
