Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F19C9AACC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB8F6EC38;
	Fri, 23 Aug 2019 08:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993266EC35
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702087"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:49 -0700
Message-Id: <20190823082055.5992-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 17/23] FIXME: drm/i915/tgl: Register state
 context definition for Gen12
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkdlbjEyIGhh
cyBzdWJ0bGUgY2hhbmdlcyBpbiB0aGUgcmVnIHN0YXRlIGNvbnRleHQgb2Zmc2V0cyAoc29tZSBm
aWVsZHMKYXJlIGdvbmUsIHNvbWUgYXJlIGluIGEgZGlmZmVyZW50IGxvY2F0aW9uKSwgY29tcGFy
ZWQgdG8gcHJldmlvdXMgR2Vucy4KClRoZSBzaW1wbGVzdCBhcHByb2FjaCBzZWVtcyB0byBiZSBr
ZWVwaW5nIEdlbjEyIChhbmQgZnV0dXJlIHBsYXRmb3JtKQpjaGFuZ2VzIGFwYXJ0IGZyb20gdGhl
IHByZXZpb3VzIGdlbnMsIHdoaWxlIGtlZXBpbmcgdGhlIHJlZ2lzdGVycyB0aGF0CmFyZSBjb250
aWd1b3VzIGluIGZ1bmN0aW9ucyB3ZSBjYW4gcmV1c2UuCgpGSVhNRTogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMyNDQ3OS8/c2VyaWVzPTY1MjkwJnJldj00CgpCc3Bl
YzogNDYyNTUKQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
PgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgIHwgMTU2
ICsrKysrKysrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmggICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcu
aCB8ICAzMCArKysrLQogMyBmaWxlcyBjaGFuZ2VkLCAxNDMgaW5zZXJ0aW9ucygrKSwgNDUgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBkNDI1ODQ0Mzlm
NTEuLjZiN2MwYTdmN2VjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTMx
NDksMjggKzMxNDksMTIgQEAgc3RhdGljIHUzMiBpbnRlbF9scl9pbmRpcmVjdF9jdHhfb2Zmc2V0
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlyZXR1cm4gaW5kaXJlY3RfY3R4X29m
ZnNldDsKIH0KIAotc3RhdGljIHZvaWQgZXhlY2xpc3RzX2luaXRfcmVnX3N0YXRlKHUzMiAqcmVn
cywKLQkJCQkgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKLQkJCQkgICAgIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKLQkJCQkgICAgIHN0cnVjdCBpbnRlbF9yaW5nICpyaW5n
KQorc3RhdGljIHZvaWQgaW5pdF9jb21tb25fcmVnX3N0YXRlKHUzMiAqcmVncywKKwkJCQkgIHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJCQkgIHN0cnVjdCBpbnRlbF9yaW5nICpy
aW5nKQogewotCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQoY2Ut
PnZtKTsKLQlib29sIHJjcyA9IGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNTOwogCXUzMiBi
YXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7CiAKLQkvKgotCSAqIEEgY29udGV4dCBpcyBhY3R1YWxs
eSBhIGJpZyBiYXRjaCBidWZmZXIgd2l0aCBzZXZlcmFsCi0JICogTUlfTE9BRF9SRUdJU1RFUl9J
TU0gY29tbWFuZHMgZm9sbG93ZWQgYnkgKHJlZywgdmFsdWUpIHBhaXJzLiBUaGUKLQkgKiB2YWx1
ZXMgd2UgYXJlIHNldHRpbmcgaGVyZSBhcmUgb25seSBmb3IgdGhlIGZpcnN0IGNvbnRleHQgcmVz
dG9yZToKLQkgKiBvbiBhIHN1YnNlcXVlbnQgc2F2ZSwgdGhlIEdQVSB3aWxsIHJlY3JlYXRlIHRo
aXMgYmF0Y2hidWZmZXIgd2l0aCBuZXcKLQkgKiB2YWx1ZXMgKGluY2x1ZGluZyBhbGwgdGhlIG1p
c3NpbmcgTUlfTE9BRF9SRUdJU1RFUl9JTU0gY29tbWFuZHMgdGhhdAotCSAqIHdlIGFyZSBub3Qg
aW5pdGlhbGl6aW5nIGhlcmUpLgotCSAqCi0JICogTXVzdCBrZWVwIGNvbnNpc3RlbnQgd2l0aCB2
aXJ0dWFsX3VwZGF0ZV9yZWdpc3Rlcl9vZmZzZXRzKCkuCi0JICovCi0JcmVnc1tDVFhfTFJJX0hF
QURFUl8wXSA9IE1JX0xPQURfUkVHSVNURVJfSU1NKHJjcyA/IDE0IDogMTEpIHwKLQkJCQkgTUlf
TFJJX0ZPUkNFX1BPU1RFRDsKLQogCUNUWF9SRUcocmVncywgQ1RYX0NPTlRFWFRfQ09OVFJPTCwg
UklOR19DT05URVhUX0NPTlRST0woYmFzZSksCiAJCV9NQVNLRURfQklUX0RJU0FCTEUoQ1RYX0NU
UkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lOSElCSVQpIHwKIAkJX01BU0tFRF9CSVRfRU5BQkxFKENU
WF9DVFJMX0lOSElCSVRfU1lOX0NUWF9TV0lUQ0gpKTsKQEAgLTMxODcsMzggKzMxNzEsNDQgQEAg
c3RhdGljIHZvaWQgZXhlY2xpc3RzX2luaXRfcmVnX3N0YXRlKHUzMiAqcmVncywKIAlDVFhfUkVH
KHJlZ3MsIENUWF9CQl9IRUFEX1UsIFJJTkdfQkJBRERSX1VEVyhiYXNlKSwgMCk7CiAJQ1RYX1JF
RyhyZWdzLCBDVFhfQkJfSEVBRF9MLCBSSU5HX0JCQUREUihiYXNlKSwgMCk7CiAJQ1RYX1JFRyhy
ZWdzLCBDVFhfQkJfU1RBVEUsIFJJTkdfQkJTVEFURShiYXNlKSwgUklOR19CQl9QUEdUVCk7Ci0J
Q1RYX1JFRyhyZWdzLCBDVFhfU0VDT05EX0JCX0hFQURfVSwgUklOR19TQkJBRERSX1VEVyhiYXNl
KSwgMCk7Ci0JQ1RYX1JFRyhyZWdzLCBDVFhfU0VDT05EX0JCX0hFQURfTCwgUklOR19TQkJBRERS
KGJhc2UpLCAwKTsKLQlDVFhfUkVHKHJlZ3MsIENUWF9TRUNPTkRfQkJfU1RBVEUsIFJJTkdfU0JC
U1RBVEUoYmFzZSksIDApOwotCWlmIChyY3MpIHsKLQkJc3RydWN0IGk5MTVfY3R4X3dvcmthcm91
bmRzICp3YV9jdHggPSAmZW5naW5lLT53YV9jdHg7Ci0KLQkJQ1RYX1JFRyhyZWdzLCBDVFhfUkNT
X0lORElSRUNUX0NUWCwgUklOR19JTkRJUkVDVF9DVFgoYmFzZSksIDApOwotCQlDVFhfUkVHKHJl
Z3MsIENUWF9SQ1NfSU5ESVJFQ1RfQ1RYX09GRlNFVCwKLQkJCVJJTkdfSU5ESVJFQ1RfQ1RYX09G
RlNFVChiYXNlKSwgMCk7Ci0JCWlmICh3YV9jdHgtPmluZGlyZWN0X2N0eC5zaXplKSB7Ci0JCQl1
MzIgZ2d0dF9vZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KHdhX2N0eC0+dm1hKTsKK30KIAotCQkJ
cmVnc1tDVFhfUkNTX0lORElSRUNUX0NUWCArIDFdID0KLQkJCQkoZ2d0dF9vZmZzZXQgKyB3YV9j
dHgtPmluZGlyZWN0X2N0eC5vZmZzZXQpIHwKLQkJCQkod2FfY3R4LT5pbmRpcmVjdF9jdHguc2l6
ZSAvIENBQ0hFTElORV9CWVRFUyk7CitzdGF0aWMgdm9pZCBpbml0X3dhX2JiX3JlZ19zdGF0ZSh1
MzIgKnJlZ3MsCisJCQkJIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJCQkgdTMy
IHBvc19iYl9wZXJfY3R4KQoreworCXN0cnVjdCBpOTE1X2N0eF93b3JrYXJvdW5kcyAqd2FfY3R4
ID0gJmVuZ2luZS0+d2FfY3R4OworCXUzMiBiYXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7CisJdTMy
IHBvc19pbmRpcmVjdF9jdHggPSBwb3NfYmJfcGVyX2N0eCArIDI7CisJdTMyIHBvc19pbmRpcmVj
dF9jdHhfb2Zmc2V0ID0gcG9zX2luZGlyZWN0X2N0eCArIDI7CiAKLQkJCXJlZ3NbQ1RYX1JDU19J
TkRJUkVDVF9DVFhfT0ZGU0VUICsgMV0gPQotCQkJCWludGVsX2xyX2luZGlyZWN0X2N0eF9vZmZz
ZXQoZW5naW5lKSA8PCA2OwotCQl9CisJR0VNX0JVR19PTihlbmdpbmUtPmlkICE9IFJDUzApOwor
CUNUWF9SRUcocmVncywgcG9zX2luZGlyZWN0X2N0eCwgUklOR19JTkRJUkVDVF9DVFgoYmFzZSks
IDApOworCUNUWF9SRUcocmVncywgcG9zX2luZGlyZWN0X2N0eF9vZmZzZXQsCisJCVJJTkdfSU5E
SVJFQ1RfQ1RYX09GRlNFVChiYXNlKSwgMCk7CisJaWYgKHdhX2N0eC0+aW5kaXJlY3RfY3R4LnNp
emUpIHsKKwkJdTMyIGdndHRfb2Zmc2V0ID0gaTkxNV9nZ3R0X29mZnNldCh3YV9jdHgtPnZtYSk7
CiAKLQkJQ1RYX1JFRyhyZWdzLCBDVFhfQkJfUEVSX0NUWF9QVFIsIFJJTkdfQkJfUEVSX0NUWF9Q
VFIoYmFzZSksIDApOwotCQlpZiAod2FfY3R4LT5wZXJfY3R4LnNpemUpIHsKLQkJCXUzMiBnZ3R0
X29mZnNldCA9IGk5MTVfZ2d0dF9vZmZzZXQod2FfY3R4LT52bWEpOworCQlyZWdzW3Bvc19pbmRp
cmVjdF9jdHggKyAxXSA9CisJCQkoZ2d0dF9vZmZzZXQgKyB3YV9jdHgtPmluZGlyZWN0X2N0eC5v
ZmZzZXQpIHwKKwkJCSh3YV9jdHgtPmluZGlyZWN0X2N0eC5zaXplIC8gQ0FDSEVMSU5FX0JZVEVT
KTsKIAotCQkJcmVnc1tDVFhfQkJfUEVSX0NUWF9QVFIgKyAxXSA9Ci0JCQkJKGdndHRfb2Zmc2V0
ICsgd2FfY3R4LT5wZXJfY3R4Lm9mZnNldCkgfCAweDAxOwotCQl9CisJCXJlZ3NbcG9zX2luZGly
ZWN0X2N0eF9vZmZzZXQgKyAxXSA9CisJCQlpbnRlbF9scl9pbmRpcmVjdF9jdHhfb2Zmc2V0KGVu
Z2luZSkgPDwgNjsKIAl9CiAKLQlyZWdzW0NUWF9MUklfSEVBREVSXzFdID0gTUlfTE9BRF9SRUdJ
U1RFUl9JTU0oOSkgfCBNSV9MUklfRk9SQ0VfUE9TVEVEOworCUNUWF9SRUcocmVncywgcG9zX2Ji
X3Blcl9jdHgsIFJJTkdfQkJfUEVSX0NUWF9QVFIoYmFzZSksIDApOworCWlmICh3YV9jdHgtPnBl
cl9jdHguc2l6ZSkgeworCQl1MzIgZ2d0dF9vZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KHdhX2N0
eC0+dm1hKTsKIAotCUNUWF9SRUcocmVncywgQ1RYX0NUWF9USU1FU1RBTVAsIFJJTkdfQ1RYX1RJ
TUVTVEFNUChiYXNlKSwgMCk7CisJCXJlZ3NbcG9zX2JiX3Blcl9jdHggKyAxXSA9CisJCQkoZ2d0
dF9vZmZzZXQgKyB3YV9jdHgtPnBlcl9jdHgub2Zmc2V0KSB8IDB4MDE7CisJfQorfQorCitzdGF0
aWMgdm9pZCBpbml0X3BwZ3R0X3JlZ19zdGF0ZSh1MzIgKnJlZ3MsIHUzMiBiYXNlLAorCQkJCSBz
dHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCit7CiAJLyogUERQIHZhbHVlcyB3ZWxsIGJlIGFzc2ln
bmVkIGxhdGVyIGlmIG5lZWRlZCAqLwogCUNUWF9SRUcocmVncywgQ1RYX1BEUDNfVURXLCBHRU44
X1JJTkdfUERQX1VEVyhiYXNlLCAzKSwgMCk7CiAJQ1RYX1JFRyhyZWdzLCBDVFhfUERQM19MRFcs
IEdFTjhfUklOR19QRFBfTERXKGJhc2UsIDMpLCAwKTsKQEAgLTMyNDEsNiArMzIzMSwzMiBAQCBz
dGF0aWMgdm9pZCBleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdzLAogCQlBU1NJR05f
Q1RYX1BEUChwcGd0dCwgcmVncywgMSk7CiAJCUFTU0lHTl9DVFhfUERQKHBwZ3R0LCByZWdzLCAw
KTsKIAl9Cit9CisKK3N0YXRpYyB2b2lkIGdlbjhfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdzLAor
CQkJCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsCisJCQkJc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCit7CisJc3RydWN0IGk5MTVf
cHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dChjZS0+dm0pOworCWJvb2wgcmNzID0gZW5n
aW5lLT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1M7CisJdTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFz
ZTsKKworCXJlZ3NbQ1RYX0xSSV9IRUFERVJfMF0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShyY3Mg
PyAxNCA6IDExKSB8CisJCQkJIE1JX0xSSV9GT1JDRV9QT1NURUQ7CisKKwlpbml0X2NvbW1vbl9y
ZWdfc3RhdGUocmVncywgZW5naW5lLCByaW5nKTsKKwlDVFhfUkVHKHJlZ3MsIENUWF9TRUNPTkRf
QkJfSEVBRF9VLCBSSU5HX1NCQkFERFJfVURXKGJhc2UpLCAwKTsKKwlDVFhfUkVHKHJlZ3MsIENU
WF9TRUNPTkRfQkJfSEVBRF9MLCBSSU5HX1NCQkFERFIoYmFzZSksIDApOworCUNUWF9SRUcocmVn
cywgQ1RYX1NFQ09ORF9CQl9TVEFURSwgUklOR19TQkJTVEFURShiYXNlKSwgMCk7CisJaWYgKHJj
cykKKwkJaW5pdF93YV9iYl9yZWdfc3RhdGUocmVncywgZW5naW5lLCBDVFhfQkJfUEVSX0NUWF9Q
VFIpOworCisJcmVnc1tDVFhfTFJJX0hFQURFUl8xXSA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDkp
IHwgTUlfTFJJX0ZPUkNFX1BPU1RFRDsKKworCUNUWF9SRUcocmVncywgQ1RYX0NUWF9USU1FU1RB
TVAsIFJJTkdfQ1RYX1RJTUVTVEFNUChiYXNlKSwgMCk7CisKKwlpbml0X3BwZ3R0X3JlZ19zdGF0
ZShyZWdzLCBiYXNlLCBwcGd0dCk7CiAKIAlpZiAocmNzKSB7CiAJCXJlZ3NbQ1RYX0xSSV9IRUFE
RVJfMl0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKQEAgLTMyNTIsNiArMzI2OCw1OCBAQCBz
dGF0aWMgdm9pZCBleGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdzLAogCQlyZWdzW0NU
WF9FTkRdIHw9IEJJVCgwKTsKIH0KIAorc3RhdGljIHZvaWQgZ2VuMTJfaW5pdF9yZWdfc3RhdGUo
dTMyICpyZWdzLAorCQkJCSBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCisJCQkJIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJCQkgc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCit7
CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dChjZS0+dm0pOwor
CWJvb2wgcmNzID0gZW5naW5lLT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1M7CisJdTMyIGJhc2UgPSBl
bmdpbmUtPm1taW9fYmFzZTsKKworCUdFTV9ERUJVR19FWEVDKERSTV9JTkZPX09OQ0UoIlVzaW5n
IEdFTjEyIFJlZ2lzdGVyIFN0YXRlIENvbnRleHRcbiIpKTsKKworCXJlZ3NbR0VOMTJfQ1RYX0xS
SV9IRUFERVJfMF0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxMykgfAorCQkJCSAgICAgICBNSV9M
UklfRk9SQ0VfUE9TVEVEOworCisJaW5pdF9jb21tb25fcmVnX3N0YXRlKHJlZ3MsIGVuZ2luZSwg
cmluZyk7CisJaWYgKHJjcykKKwkJaW5pdF93YV9iYl9yZWdfc3RhdGUocmVncywgZW5naW5lLCBH
RU4xMl9DVFhfQkJfUEVSX0NUWF9QVFIpOworCisJcmVnc1tHRU4xMl9DVFhfTFJJX0hFQURFUl8x
XSA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDkpIHwKKwkJCQkgICAgICAgTUlfTFJJX0ZPUkNFX1BP
U1RFRDsKKworCUNUWF9SRUcocmVncywgR0VOMTJfQ1RYX0NUWF9USU1FU1RBTVAsIFJJTkdfQ1RY
X1RJTUVTVEFNUChiYXNlKSwgMCk7CisKKwlpbml0X3BwZ3R0X3JlZ19zdGF0ZShyZWdzLCBiYXNl
LCBwcGd0dCk7CisKKwlpZiAocmNzKSB7CisJCXJlZ3NbR0VOMTJfQ1RYX0xSSV9IRUFERVJfM10g
PSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKKwkJQ1RYX1JFRyhyZWdzLCBHRU4xMl9DVFhfUl9Q
V1JfQ0xLX1NUQVRFLCBHRU44X1JfUFdSX0NMS19TVEFURSwKKwkJCTApOworCisJCS8qIFRPRE86
IG9hX2luaXRfcmVnX3N0YXRlID8gKi8KKwl9Cit9CisKK3N0YXRpYyB2b2lkIGV4ZWNsaXN0c19p
bml0X3JlZ19zdGF0ZSh1MzIgKnJlZ3MsCisJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsCisJCQkJICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCisJCQkJICAgICBz
dHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKK3sKKwkvKiBBIGNvbnRleHQgaXMgYWN0dWFsbHkgYSBi
aWcgYmF0Y2ggYnVmZmVyIHdpdGggc2V2ZXJhbAorCSAqIE1JX0xPQURfUkVHSVNURVJfSU1NIGNv
bW1hbmRzIGZvbGxvd2VkIGJ5IChyZWcsIHZhbHVlKSBwYWlycy4gVGhlCisJICogdmFsdWVzIHdl
IGFyZSBzZXR0aW5nIGhlcmUgYXJlIG9ubHkgZm9yIHRoZSBmaXJzdCBjb250ZXh0IHJlc3RvcmU6
CisJICogb24gYSBzdWJzZXF1ZW50IHNhdmUsIHRoZSBHUFUgd2lsbCByZWNyZWF0ZSB0aGlzIGJh
dGNoYnVmZmVyIHdpdGggbmV3CisJICogdmFsdWVzIChpbmNsdWRpbmcgYWxsIHRoZSBtaXNzaW5n
IE1JX0xPQURfUkVHSVNURVJfSU1NIGNvbW1hbmRzIHRoYXQKKwkgKiB3ZSBhcmUgbm90IGluaXRp
YWxpemluZyBoZXJlKS4KKwkgKi8KKwlpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIp
CisJCWdlbjEyX2luaXRfcmVnX3N0YXRlKHJlZ3MsIGNlLCBlbmdpbmUsIHJpbmcpOworCWVsc2UK
KwkJZ2VuOF9pbml0X3JlZ19zdGF0ZShyZWdzLCBjZSwgZW5naW5lLCByaW5nKTsKK30KKwogc3Rh
dGljIGludAogcG9wdWxhdGVfbHJfY29udGV4dChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJ
CSAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqY3R4X29iaiwKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmgKaW5kZXggYzJiYmE4MmJjYzE2Li42OTI4NWQzNTRkOWIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCkBAIC00OSw2ICs0OSw4IEBAIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3M7CiAKICNkZWZpbmUJICBFTF9DVFJMX0xPQUQJCQkJKDEgPDwgMCkKIAorI2RlZmlu
ZSBHRU4xMl9FTkdJTkVfU0VNQVBIT1JFX1RPS0VOKGVuZ2luZSkJX01NSU8oKGVuZ2luZSktPm1t
aW9fYmFzZSArIDB4MmI0KQorCiAvKiBUaGUgZG9jcyBzcGVjaWZ5IHRoYXQgdGhlIHdyaXRlIHBv
aW50ZXIgd3JhcHMgYXJvdW5kIGFmdGVyIDVoLCAiQWZ0ZXIgc3RhdHVzCiAgKiBpcyB3cml0dGVu
IG91dCB0byB0aGUgbGFzdCBhdmFpbGFibGUgc3RhdHVzIFFXIGF0IG9mZnNldCA1aCwgdGhpcyBw
b2ludGVyCiAgKiB3cmFwcyB0byAwLiIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyY19yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19y
ZWcuaAppbmRleCBiOGYyMGFkNzExNjkuLmI3Njk1Yjk2ZTQ4NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyY19yZWcuaApAQCAtOSw3ICs5LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4
L3R5cGVzLmg+CiAKLS8qIEdFTjgrIFJlZyBTdGF0ZSBDb250ZXh0ICovCisvKiBHRU44IHRvIEdF
TjExIFJlZyBTdGF0ZSBDb250ZXh0ICovCiAjZGVmaW5lIENUWF9MUklfSEVBREVSXzAJCTB4MDEK
ICNkZWZpbmUgQ1RYX0NPTlRFWFRfQ09OVFJPTAkJMHgwMgogI2RlZmluZSBDVFhfUklOR19IRUFE
CQkJMHgwNApAQCAtMzksNiArMzksMzQgQEAKICNkZWZpbmUgQ1RYX1JfUFdSX0NMS19TVEFURQkJ
MHg0MgogI2RlZmluZSBDVFhfRU5ECQkJCTB4NDQKIAorLyogR0VOMTIrIFJlZyBTdGF0ZSBDb250
ZXh0ICovCisjZGVmaW5lIEdFTjEyX0NUWF9MUklfSEVBREVSXzAJCQlDVFhfTFJJX0hFQURFUl8w
CisjZGVmaW5lIEdFTjEyX0NUWF9DT05URVhUX0NPTlRST0wJCUNUWF9DT05URVhUX0NPTlRST0wK
KyNkZWZpbmUgR0VOMTJfQ1RYX1JJTkdfSEVBRAkJCUNUWF9SSU5HX0hFQUQKKyNkZWZpbmUgR0VO
MTJfQ1RYX1JJTkdfVEFJTAkJCUNUWF9SSU5HX1RBSUwKKyNkZWZpbmUgR0VOMTJfQ1RYX1JJTkdf
QlVGRkVSX1NUQVJUCQlDVFhfUklOR19CVUZGRVJfU1RBUlQKKyNkZWZpbmUgR0VOMTJfQ1RYX1JJ
TkdfQlVGRkVSX0NPTlRST0wJCUNUWF9SSU5HX0JVRkZFUl9DT05UUk9MCisjZGVmaW5lIEdFTjEy
X0NUWF9CQl9IRUFEX1UJCQlDVFhfQkJfSEVBRF9VCisjZGVmaW5lIEdFTjEyX0NUWF9CQl9IRUFE
X0wJCQlDVFhfQkJfSEVBRF9MCisjZGVmaW5lIEdFTjEyX0NUWF9CQl9TVEFURQkJCUNUWF9CQl9T
VEFURQorI2RlZmluZSBHRU4xMl9DVFhfQkJfUEVSX0NUWF9QVFIJCTB4MTIKKyNkZWZpbmUgR0VO
MTJfQ1RYX1JDU19JTkRJUkVDVF9DVFgJCTB4MTQKKyNkZWZpbmUgR0VOMTJfQ1RYX1JDU19JTkRJ
UkVDVF9DVFhfT0ZGU0VUCTB4MTYKKyNkZWZpbmUgR0VOMTJfQ1RYX0xSSV9IRUFERVJfMQkJCUNU
WF9MUklfSEVBREVSXzEKKyNkZWZpbmUgR0VOMTJfQ1RYX0NUWF9USU1FU1RBTVAJCQlDVFhfQ1RY
X1RJTUVTVEFNUAorI2RlZmluZSBHRU4xMl9DVFhfUERQM19VRFcJCQlDVFhfUERQM19VRFcKKyNk
ZWZpbmUgR0VOMTJfQ1RYX1BEUDNfTERXCQkJQ1RYX1BEUDNfTERXCisjZGVmaW5lIEdFTjEyX0NU
WF9QRFAyX1VEVwkJCUNUWF9QRFAyX1VEVworI2RlZmluZSBHRU4xMl9DVFhfUERQMl9MRFcJCQlD
VFhfUERQMl9MRFcKKyNkZWZpbmUgR0VOMTJfQ1RYX1BEUDFfVURXCQkJQ1RYX1BEUDFfVURXCisj
ZGVmaW5lIEdFTjEyX0NUWF9QRFAxX0xEVwkJCUNUWF9QRFAxX0xEVworI2RlZmluZSBHRU4xMl9D
VFhfUERQMF9VRFcJCQlDVFhfUERQMF9VRFcKKyNkZWZpbmUgR0VOMTJfQ1RYX1BEUDBfTERXCQkJ
Q1RYX1BEUDBfTERXCisjZGVmaW5lIEdFTjEyX0NUWF9MUklfSEVBREVSXzIJCQkweDM0CisjZGVm
aW5lIEdFTjEyX0NUWF9MUklfSEVBREVSXzMJCQkweDQxCisjZGVmaW5lIEdFTjEyX0NUWF9SX1BX
Ul9DTEtfU1RBVEUJCTB4NDIKKyNkZWZpbmUgR0VOMTJfQ1RYX0dQR1BVX0NTUl9CQVNFX0FERFJF
U1MJMHg0NAorCiAjZGVmaW5lIENUWF9SRUcocmVnX3N0YXRlLCBwb3MsIHJlZywgdmFsKSBkbyB7
IFwKIAl1MzIgKnJlZ19zdGF0ZV9fID0gKHJlZ19zdGF0ZSk7IFwKIAljb25zdCB1MzIgcG9zX18g
PSAocG9zKTsgXAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
