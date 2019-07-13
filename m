Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5367771
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1522F6E3C9;
	Sat, 13 Jul 2019 01:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1E96E39C
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850966"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:39 -0700
Message-Id: <20190713010940.17711-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/22] drm/i915/tgl: Add and use new DC5 and DC6
 residency counter registers
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaWdl
ciBMYXNrIGhhcyBhIG5ldyByZWdpc3RlciBvZmZzZXQgZm9yIERDNSBhbmQgREM2IHJlc2lkZW5j
eSBjb3VudGVycy4KClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyB8IDIxICsrKysrKysrKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggYTE4NDNlM2Rl
NmQ3Li40YjEyYjU1ODhkZDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0y
NDY1LDYgKzI0NjUsNyBAQCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxl
ICptLCB2b2lkICp1bnVzZWQpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
bm9kZV90b19pOTE1KG0tPnByaXZhdGUpOwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCXN0
cnVjdCBpbnRlbF9jc3IgKmNzcjsKKwlpOTE1X3JlZ190IGRjNV9yZWcsIGRjNl9yZWcgPSB7fTsK
IAogCWlmICghSEFTX0NTUihkZXZfcHJpdikpCiAJCXJldHVybiAtRU5PREVWOwpAQCAtMjQ4Miwx
NSArMjQ4MywxOSBAQCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxlICpt
LCB2b2lkICp1bnVzZWQpCiAJc2VxX3ByaW50ZihtLCAidmVyc2lvbjogJWQuJWRcbiIsIENTUl9W
RVJTSU9OX01BSk9SKGNzci0+dmVyc2lvbiksCiAJCSAgIENTUl9WRVJTSU9OX01JTk9SKGNzci0+
dmVyc2lvbikpOwogCi0JaWYgKFdBUk5fT04oSU5URUxfR0VOKGRldl9wcml2KSA+IDExKSkKLQkJ
Z290byBvdXQ7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKKwkJZGM1X3JlZyA9
IFRHTF9DU1JfREM1X1JFU19DT1VOVDsKKwkJZGM2X3JlZyA9IFRHTF9DU1JfREM2X1JFU19DT1VO
VDsKKwl9IGVsc2UgeworCQlkYzVfcmVnID0gSVNfQlJPWFRPTihkZXZfcHJpdikgPyBCWFRfQ1NS
X0RDM19EQzVfQ09VTlQgOgorCQkJCQkJIFNLTF9DU1JfREMzX0RDNV9DT1VOVDsKKwkJaWYgKCFJ
U19HRU45X0xQKGRldl9wcml2KSkKKwkJCWRjNl9yZWcgPSBTS0xfQ1NSX0RDNV9EQzZfQ09VTlQ7
CisJfQogCi0Jc2VxX3ByaW50ZihtLCAiREMzIC0+IERDNSBjb3VudDogJWRcbiIsCi0JCSAgIEk5
MTVfUkVBRChJU19CUk9YVE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9DT1VOVCA6Ci0J
CQkJCQkgICAgU0tMX0NTUl9EQzNfREM1X0NPVU5UKSk7Ci0JaWYgKCFJU19HRU45X0xQKGRldl9w
cml2KSkKLQkJc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRcbiIsCi0JCQkgICBJ
OTE1X1JFQUQoU0tMX0NTUl9EQzVfREM2X0NPVU5UKSk7CisJc2VxX3ByaW50ZihtLCAiREMzIC0+
IERDNSBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChkYzVfcmVnKSk7CisJaWYgKGRjNl9yZWcucmVn
KQorCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2IGNvdW50OiAlZFxuIiwgSTkxNV9SRUFEKGRj
Nl9yZWcpKTsKIAogb3V0OgogCXNlcV9wcmludGYobSwgInByb2dyYW0gYmFzZTogMHglMDh4XG4i
LCBJOTE1X1JFQUQoQ1NSX1BST0dSQU0oMCkpKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4
IDZjZmNkZjZiYjFiYi4uNWUzNDM0Y2RkMWU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAg
LTcyNjksNiArNzI2OSw4IEBAIGVudW0gewogI2RlZmluZSBTS0xfQ1NSX0RDM19EQzVfQ09VTlQJ
X01NSU8oMHg4MDAzMCkKICNkZWZpbmUgU0tMX0NTUl9EQzVfREM2X0NPVU5UCV9NTUlPKDB4ODAw
MkMpCiAjZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDM4KQorI2RlZmlu
ZSBUR0xfQ1NSX0RDNV9SRVNfQ09VTlQJX01NSU8oMHgxMDEwODQpCisjZGVmaW5lIFRHTF9DU1Jf
REM2X1JFU19DT1VOVAlfTU1JTygweDEwMTA4OCkKIAogLyogaW50ZXJydXB0cyAqLwogI2RlZmlu
ZSBERV9NQVNURVJfSVJRX0NPTlRST0wgICAoMSA8PCAzMSkKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
