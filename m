Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EA76776A
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7534E6E3B5;
	Sat, 13 Jul 2019 01:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE82F6E369
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850926"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:27 -0700
Message-Id: <20190713010940.17711-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/22] drm/i915/tgl: re-indent code to prepare
 for DKL changes
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

VGhlIGZpbmFsIHNhdmUgb3BlcmF0aW9uIGludG8gcGxsX3N0YXRlIG9mIHRoZSBjYWxjdWxhdGlv
bnMgZG9uZSB3aWxsCmJlIGRpZmZlcmVudCBmb3IgREtMIFBIWS4gUHJlcGFyZSBmb3IgdGhhdCBi
eSByZWluZGVudGluZyBjb2RlIHNvIGl0J3MKZWFzaWVyIHRvIGNoZWNrIGZvciBjb3JyZWN0bmVz
cy4gVGhpcyBvbmUgaGFzIG5vIGNoYW5nZSBpbiBiZWhhdmlvci4KClNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDExOSArKysrKysrKysrLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCA1MyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKaW5kZXggMzE5
YTI2YTFlYzEwLi43MzEyYTQ3Zjc5YWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTI4MDQsNjAgKzI4MDQsNzMgQEAgc3RhdGljIGJvb2wg
aWNsX2NhbGNfbWdfcGxsX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAogCX0KIAlzc2Nfc3RlcGxvZyA9IDQ7CiAKLQlwbGxfc3RhdGUtPm1nX3BsbF9kaXYwID0gKG0y
ZGl2X3JlbSA+IDAgPyBNR19QTExfRElWMF9GUkFDTkVOX0ggOiAwKSB8Ci0JCQkJICBNR19QTExf
RElWMF9GQkRJVl9GUkFDKG0yZGl2X2ZyYWMpIHwKLQkJCQkgIE1HX1BMTF9ESVYwX0ZCRElWX0lO
VChtMmRpdl9pbnQpOwotCi0JcGxsX3N0YXRlLT5tZ19wbGxfZGl2MSA9IE1HX1BMTF9ESVYxX0lS
RUZfTkRJVlJBVElPKGlyZWZfbmRpdikgfAotCQkJCSBNR19QTExfRElWMV9ESVRIRVJfRElWXzIg
fAotCQkJCSBNR19QTExfRElWMV9ORElWUkFUSU8oMSkgfAotCQkJCSBNR19QTExfRElWMV9GQlBS
RURJVihtMWRpdik7Ci0KLQlwbGxfc3RhdGUtPm1nX3BsbF9sZiA9IE1HX1BMTF9MRl9URENUQVJH
RVRDTlQodGRjX3RhcmdldGNudCkgfAotCQkJICAgICAgIE1HX1BMTF9MRl9BRkNDTlRTRUxfNTEy
IHwKLQkJCSAgICAgICBNR19QTExfTEZfR0FJTkNUUkwoMSkgfAotCQkJICAgICAgIE1HX1BMTF9M
Rl9JTlRfQ09FRkYoaW50X2NvZWZmKSB8Ci0JCQkgICAgICAgTUdfUExMX0xGX1BST1BfQ09FRkYo
cHJvcF9jb2VmZik7Ci0KLQlwbGxfc3RhdGUtPm1nX3BsbF9mcmFjX2xvY2sgPSBNR19QTExfRlJB
Q19MT0NLX1RSVUVMT0NLX0NSSVRfMzIgfAotCQkJCSAgICAgIE1HX1BMTF9GUkFDX0xPQ0tfRUFS
TFlMT0NLX0NSSVRfMzIgfAotCQkJCSAgICAgIE1HX1BMTF9GUkFDX0xPQ0tfTE9DS1RIUkVTSCgx
MCkgfAotCQkJCSAgICAgIE1HX1BMTF9GUkFDX0xPQ0tfRENPRElUSEVSRU4gfAotCQkJCSAgICAg
IE1HX1BMTF9GUkFDX0xPQ0tfRkVFREZXUkRHQUlOKGZlZWRmd2dhaW4pOwotCWlmICh1c2Vfc3Nj
IHx8IG0yZGl2X3JlbSA+IDApCi0JCXBsbF9zdGF0ZS0+bWdfcGxsX2ZyYWNfbG9jayB8PSBNR19Q
TExfRlJBQ19MT0NLX0ZFRURGV1JEQ0FMX0VOOwotCi0JcGxsX3N0YXRlLT5tZ19wbGxfc3NjID0g
KHVzZV9zc2MgPyBNR19QTExfU1NDX0VOIDogMCkgfAotCQkJCU1HX1BMTF9TU0NfVFlQRSgyKSB8
Ci0JCQkJTUdfUExMX1NTQ19TVEVQTEVOR1RIKHNzY19zdGVwbGVuKSB8Ci0JCQkJTUdfUExMX1NT
Q19TVEVQTlVNKHNzY19zdGVwbG9nKSB8Ci0JCQkJTUdfUExMX1NTQ19GTExFTiB8Ci0JCQkJTUdf
UExMX1NTQ19TVEVQU0laRShzc2Nfc3RlcHNpemUpOwotCi0JcGxsX3N0YXRlLT5tZ19wbGxfdGRj
X2NvbGRzdF9iaWFzID0gTUdfUExMX1REQ19DT0xEU1RfQ09MRFNUQVJUIHwKLQkJCQkJICAgIE1H
X1BMTF9URENfQ09MRFNUX0lSRUZJTlRfRU4gfAotCQkJCQkgICAgTUdfUExMX1REQ19DT0xEU1Rf
UkVGQklBU19TVEFSVF9QVUxTRV9XKGlyZWZfcHVsc2VfdykgfAotCQkJCQkgICAgTUdfUExMX1RE
Q19URENPVkNDT1JSX0VOIHwKLQkJCQkJICAgIE1HX1BMTF9URENfVERDU0VMKDMpOwotCi0JcGxs
X3N0YXRlLT5tZ19wbGxfYmlhcyA9IE1HX1BMTF9CSUFTX0JJQVNfR0JfU0VMKDMpIHwKLQkJCQkg
TUdfUExMX0JJQVNfSU5JVF9EQ09BTVAoMHgzRikgfAotCQkJCSBNR19QTExfQklBU19CSUFTX0JP
TlVTKDEwKSB8Ci0JCQkJIE1HX1BMTF9CSUFTX0JJQVNDQUxfRU4gfAotCQkJCSBNR19QTExfQklB
U19DVFJJTSgxMikgfAotCQkJCSBNR19QTExfQklBU19WUkVGX1JEQUMoNCkgfAotCQkJCSBNR19Q
TExfQklBU19JUkVGVFJJTShpcmVmX3RyaW0pOwotCi0JaWYgKHJlZmNsa19raHogPT0gMzg0MDAp
IHsKLQkJcGxsX3N0YXRlLT5tZ19wbGxfdGRjX2NvbGRzdF9iaWFzX21hc2sgPSBNR19QTExfVERD
X0NPTERTVF9DT0xEU1RBUlQ7Ci0JCXBsbF9zdGF0ZS0+bWdfcGxsX2JpYXNfbWFzayA9IDA7Ci0J
fSBlbHNlIHsKLQkJcGxsX3N0YXRlLT5tZ19wbGxfdGRjX2NvbGRzdF9iaWFzX21hc2sgPSAtMVU7
Ci0JCXBsbF9zdGF0ZS0+bWdfcGxsX2JpYXNfbWFzayA9IC0xVTsKLQl9CisJLyogd3JpdGUgcGxs
X3N0YXRlIGNhbGN1bGF0aW9ucyAqLworCXsKKwkJcGxsX3N0YXRlLT5tZ19wbGxfZGl2MCA9CisJ
CQkobTJkaXZfcmVtID4gMCA/IE1HX1BMTF9ESVYwX0ZSQUNORU5fSCA6IDApIHwKKwkJCU1HX1BM
TF9ESVYwX0ZCRElWX0ZSQUMobTJkaXZfZnJhYykgfAorCQkJTUdfUExMX0RJVjBfRkJESVZfSU5U
KG0yZGl2X2ludCk7CisKKwkJcGxsX3N0YXRlLT5tZ19wbGxfZGl2MSA9CisJCQlNR19QTExfRElW
MV9JUkVGX05ESVZSQVRJTyhpcmVmX25kaXYpIHwKKwkJCU1HX1BMTF9ESVYxX0RJVEhFUl9ESVZf
MiB8CisJCQlNR19QTExfRElWMV9ORElWUkFUSU8oMSkgfAorCQkJTUdfUExMX0RJVjFfRkJQUkVE
SVYobTFkaXYpOworCisJCXBsbF9zdGF0ZS0+bWdfcGxsX2xmID0KKwkJCU1HX1BMTF9MRl9URENU
QVJHRVRDTlQodGRjX3RhcmdldGNudCkgfAorCQkJTUdfUExMX0xGX0FGQ0NOVFNFTF81MTIgfAor
CQkJTUdfUExMX0xGX0dBSU5DVFJMKDEpIHwKKwkJCU1HX1BMTF9MRl9JTlRfQ09FRkYoaW50X2Nv
ZWZmKSB8CisJCQlNR19QTExfTEZfUFJPUF9DT0VGRihwcm9wX2NvZWZmKTsKKworCQlwbGxfc3Rh
dGUtPm1nX3BsbF9mcmFjX2xvY2sgPQorCQkJTUdfUExMX0ZSQUNfTE9DS19UUlVFTE9DS19DUklU
XzMyIHwKKwkJCU1HX1BMTF9GUkFDX0xPQ0tfRUFSTFlMT0NLX0NSSVRfMzIgfAorCQkJTUdfUExM
X0ZSQUNfTE9DS19MT0NLVEhSRVNIKDEwKSB8CisJCQlNR19QTExfRlJBQ19MT0NLX0RDT0RJVEhF
UkVOIHwKKwkJCU1HX1BMTF9GUkFDX0xPQ0tfRkVFREZXUkRHQUlOKGZlZWRmd2dhaW4pOworCQlp
ZiAodXNlX3NzYyB8fCBtMmRpdl9yZW0gPiAwKQorCQkJcGxsX3N0YXRlLT5tZ19wbGxfZnJhY19s
b2NrIHw9CisJCQkJTUdfUExMX0ZSQUNfTE9DS19GRUVERldSRENBTF9FTjsKKworCQlwbGxfc3Rh
dGUtPm1nX3BsbF9zc2MgPQorCQkJKHVzZV9zc2MgPyBNR19QTExfU1NDX0VOIDogMCkgfAorCQkJ
TUdfUExMX1NTQ19UWVBFKDIpIHwKKwkJCU1HX1BMTF9TU0NfU1RFUExFTkdUSChzc2Nfc3RlcGxl
bikgfAorCQkJTUdfUExMX1NTQ19TVEVQTlVNKHNzY19zdGVwbG9nKSB8CisJCQlNR19QTExfU1ND
X0ZMTEVOIHwKKwkJCU1HX1BMTF9TU0NfU1RFUFNJWkUoc3NjX3N0ZXBzaXplKTsKKworCQlwbGxf
c3RhdGUtPm1nX3BsbF90ZGNfY29sZHN0X2JpYXMgPQorCQkJTUdfUExMX1REQ19DT0xEU1RfQ09M
RFNUQVJUIHwKKwkJCU1HX1BMTF9URENfQ09MRFNUX0lSRUZJTlRfRU4gfAorCQkJTUdfUExMX1RE
Q19DT0xEU1RfUkVGQklBU19TVEFSVF9QVUxTRV9XKGlyZWZfcHVsc2VfdykgfAorCQkJTUdfUExM
X1REQ19URENPVkNDT1JSX0VOIHwKKwkJCU1HX1BMTF9URENfVERDU0VMKDMpOworCisJCXBsbF9z
dGF0ZS0+bWdfcGxsX2JpYXMgPQorCQkJTUdfUExMX0JJQVNfQklBU19HQl9TRUwoMykgfAorCQkJ
TUdfUExMX0JJQVNfSU5JVF9EQ09BTVAoMHgzRikgfAorCQkJTUdfUExMX0JJQVNfQklBU19CT05V
UygxMCkgfAorCQkJTUdfUExMX0JJQVNfQklBU0NBTF9FTiB8CisJCQlNR19QTExfQklBU19DVFJJ
TSgxMikgfAorCQkJTUdfUExMX0JJQVNfVlJFRl9SREFDKDQpIHwKKwkJCU1HX1BMTF9CSUFTX0lS
RUZUUklNKGlyZWZfdHJpbSk7CisKKwkJaWYgKHJlZmNsa19raHogPT0gMzg0MDApIHsKKwkJCXBs
bF9zdGF0ZS0+bWdfcGxsX3RkY19jb2xkc3RfYmlhc19tYXNrID0KKwkJCQlNR19QTExfVERDX0NP
TERTVF9DT0xEU1RBUlQ7CisJCQlwbGxfc3RhdGUtPm1nX3BsbF9iaWFzX21hc2sgPSAwOworCQl9
IGVsc2UgeworCQkJcGxsX3N0YXRlLT5tZ19wbGxfdGRjX2NvbGRzdF9iaWFzX21hc2sgPSAtMVU7
CisJCQlwbGxfc3RhdGUtPm1nX3BsbF9iaWFzX21hc2sgPSAtMVU7CisJCX0KIAotCXBsbF9zdGF0
ZS0+bWdfcGxsX3RkY19jb2xkc3RfYmlhcyAmPSBwbGxfc3RhdGUtPm1nX3BsbF90ZGNfY29sZHN0
X2JpYXNfbWFzazsKLQlwbGxfc3RhdGUtPm1nX3BsbF9iaWFzICY9IHBsbF9zdGF0ZS0+bWdfcGxs
X2JpYXNfbWFzazsKKwkJcGxsX3N0YXRlLT5tZ19wbGxfdGRjX2NvbGRzdF9iaWFzICY9CisJCQlw
bGxfc3RhdGUtPm1nX3BsbF90ZGNfY29sZHN0X2JpYXNfbWFzazsKKwkJcGxsX3N0YXRlLT5tZ19w
bGxfYmlhcyAmPSBwbGxfc3RhdGUtPm1nX3BsbF9iaWFzX21hc2s7CisJfQogCiAJcmV0dXJuIHRy
dWU7CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
