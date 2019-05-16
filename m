Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EA820DC1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 19:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158BC89142;
	Thu, 16 May 2019 17:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D8F89142
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 17:16:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 10:16:20 -0700
X-ExtLoop1: 1
Received: from genxfsim-desktop.iind.intel.com ([10.223.34.158])
 by orsmga004.jf.intel.com with ESMTP; 16 May 2019 10:16:19 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2019 22:41:56 +0530
Message-Id: <1558026716-26053-1-git-send-email-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] Revert "ICL HACK: Disable ACPI idle driver"
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
Cc: ville.syrjala@intel.com, martin.peres@intel.com, daniel.vetter@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyByZXZlcnRzIGNvbW1pdCA5OWI2OWRiNTc1NDRlYzdlZDQyNzYwN2YxYTJhMTg1OGE3ZDQz
YjYxCkNvcmUtZm9yLUNJOklDTF9vbmx5ICBEaXNhYmxlIEFDUEkgaWRsZSBkcml2ZXIuCgpUaGlz
IGhhY2sgaGFzIGJlZW4gcHJvdmlkZWQgY29uc2lkZXJpbmcgdGhlIEJ1ZyBhc3Nlc3NtZW50CnRo
YXQgQUNQSSBpZGxlIGRyaXZlciBwYWdlIGZhdWx0IGNhdXNlcyBiZWxvdyBidWcuCkZETyBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg4NDAKQnV0IHRoaXMg
YnVnIGlzIHN0aWxsIHJlcHJvZHVjaWJsZSBhZnRlciBkaXNhYmxpbmcgQUNQSSBpZGxlIGRyaXZl
ci4KCkl0IGxvb2tzICJyY3VfcHJlZW1wdCBzZWxmLWRldGVjdGVkIHN0YWxsIG9uIENQVSIgY2F1
c2VzIHRvCmh1bmcga3dvcmtlciBhbmQgZm9sbG93ZWQgYnkgcGFuaWMgcmVzdWx0ZWQgdGhpcyBi
dWcuCgpIZW5jZSBpdCBtYWtlIHNlbnNlIHRvIHJldmVydCB0aGlzIHBhdGNoLgoKQ2M6IG1hcnRp
bi5wZXJlc0BpbnRlbC5jb20KQ2M6IGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tCkNjOiB2aWxsZS5z
eXJqYWxhQGludGVsLmNvbQpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4u
Z3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvYWNwaS9wcm9jZXNzb3JfZHJpdmVyLmMgfCAx
OCArLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL3Byb2Nlc3Nvcl9kcml2ZXIu
YyBiL2RyaXZlcnMvYWNwaS9wcm9jZXNzb3JfZHJpdmVyLmMKaW5kZXggZWU4NDJhMmYuLjlkNmFm
ZjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYWNwaS9wcm9jZXNzb3JfZHJpdmVyLmMKKysrIGIvZHJp
dmVycy9hY3BpL3Byb2Nlc3Nvcl9kcml2ZXIuYwpAQCAtMzUsMTIgKzM1LDYgQEAKIAogI2luY2x1
ZGUgPGFjcGkvcHJvY2Vzc29yLmg+CiAKLS8qIE9ubHkgZm9yIENvcmUtZm9yLUNJIHNvIGRvbid0
IHdhbnQgaWE2NCB0byBmYWlsIGNvbXBpbGF0aW9uLiovCi0jaWZkZWYgQ09ORklHX1g4NgotI2lu
Y2x1ZGUgPGFzbS9jcHVfZGV2aWNlX2lkLmg+Ci0jaW5jbHVkZSA8YXNtL2ludGVsLWZhbWlseS5o
PgotI2VuZGlmCi0KICNpbmNsdWRlICJpbnRlcm5hbC5oIgogCiAjZGVmaW5lIEFDUElfUFJPQ0VT
U09SX05PVElGWV9QRVJGT1JNQU5DRSAweDgwCkBAIC02NCwxMyArNTgsNiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGFjcGlfZGV2aWNlX2lkIHByb2Nlc3Nvcl9kZXZpY2VfaWRzW10gPSB7CiB9Owog
TU9EVUxFX0RFVklDRV9UQUJMRShhY3BpLCBwcm9jZXNzb3JfZGV2aWNlX2lkcyk7CiAKLSNkZWZp
bmUgSUNQVShtb2RlbCkJeyBYODZfVkVORE9SX0lOVEVMLCA2LCBtb2RlbCwgWDg2X0ZFQVRVUkVf
QU5ZLCB9Ci1zdGF0aWMgY29uc3Qgc3RydWN0IHg4Nl9jcHVfaWQgaW50ZWxfY3B1X2lkc1tdID0g
ewotCUlDUFUoSU5URUxfRkFNNl9JQ0VMQUtFX01PQklMRSksCS8qIElDTCAqLwotCXt9Ci19Owot
TU9EVUxFX0RFVklDRV9UQUJMRSh4ODZjcHUsIGludGVsX2NwdV9pZHMpOwotCiBzdGF0aWMgc3Ry
dWN0IGRldmljZV9kcml2ZXIgYWNwaV9wcm9jZXNzb3JfZHJpdmVyID0gewogCS5uYW1lID0gInBy
b2Nlc3NvciIsCiAJLmJ1cyA9ICZjcHVfc3Vic3lzLApAQCAtMjM5LDcgKzIyNiw2IEBAIHN0YXRp
YyBpbmxpbmUgdm9pZCBhY3BpX3Bzc19wZXJmX2V4aXQoc3RydWN0IGFjcGlfcHJvY2Vzc29yICpw
ciwKIHN0YXRpYyBpbnQgX19hY3BpX3Byb2Nlc3Nvcl9zdGFydChzdHJ1Y3QgYWNwaV9kZXZpY2Ug
KmRldmljZSkKIHsKIAlzdHJ1Y3QgYWNwaV9wcm9jZXNzb3IgKnByID0gYWNwaV9kcml2ZXJfZGF0
YShkZXZpY2UpOwotCWNvbnN0IHN0cnVjdCB4ODZfY3B1X2lkICppZDsKIAlhY3BpX3N0YXR1cyBz
dGF0dXM7CiAJaW50IHJlc3VsdCA9IDA7CiAKQEAgLTI1Myw5ICsyMzksNyBAQCBzdGF0aWMgaW50
IF9fYWNwaV9wcm9jZXNzb3Jfc3RhcnQoc3RydWN0IGFjcGlfZGV2aWNlICpkZXZpY2UpCiAJaWYg
KHJlc3VsdCAmJiAhSVNfRU5BQkxFRChDT05GSUdfQUNQSV9DUFVfRlJFUV9QU1MpKQogCQlkZXZf
ZGJnKCZkZXZpY2UtPmRldiwgIkNQUEMgZGF0YSBpbnZhbGlkIG9yIG5vdCBwcmVzZW50XG4iKTsK
IAotCWlkID0geDg2X21hdGNoX2NwdShpbnRlbF9jcHVfaWRzKTsKLQlpZiAoIWlkICYmICghY3B1
aWRsZV9nZXRfZHJpdmVyKCkgfHwgY3B1aWRsZV9nZXRfZHJpdmVyKCkgPT0KLQkJJmFjcGlfaWRs
ZV9kcml2ZXIpKQorCWlmICghY3B1aWRsZV9nZXRfZHJpdmVyKCkgfHwgY3B1aWRsZV9nZXRfZHJp
dmVyKCkgPT0gJmFjcGlfaWRsZV9kcml2ZXIpCiAJCWFjcGlfcHJvY2Vzc29yX3Bvd2VyX2luaXQo
cHIpOwogCiAJcmVzdWx0ID0gYWNwaV9wc3NfcGVyZl9pbml0KHByLCBkZXZpY2UpOwotLSAKMi43
LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
