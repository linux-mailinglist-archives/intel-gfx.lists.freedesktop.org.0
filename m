Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BB0AC3A9
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 02:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2506E044;
	Sat,  7 Sep 2019 00:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8441A6E044
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 00:21:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 17:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="177796010"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 06 Sep 2019 17:21:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 17:21:36 -0700
Message-Id: <20190907002143.22591-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190907002143.22591-1-matthew.d.roper@intel.com>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Consolidate bxt/cnl/icl cdclk
 readout
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

QXNpZGUgZnJvbSBhIGZldyBtaW5vciByZWdpc3RlciBjaGFuZ2VzIGFuZCBzb21lIGRpZmZlcmVu
dCBjbG9jayB2YWx1ZXMsCmNkY2xrIGRlc2lnbiBoYXNuJ3QgY2hhbmdlZCBtdWNoIHNpbmNlIGdl
bjlscC4gIExldCdzIGNvbnNvbGlkYXRlIHRoZQpoYW5kbGVycyBmb3IgYnh0LCBjbmwsIGFuZCBp
Y2wgdG8ga2VlcCB0aGUgY29kZWZsb3cgY29uc2lzdGVudC4KCkFsc28sIHdoaWxlIHdlJ3JlIGF0
IGl0LCBzL2J4dF9kZV9wbGxfdXBkYXRlL2J4dF9kZV9wbGxfcmVhZG91dC8gc2luY2UKInVwZGF0
ZSIgbWFrZXMgbWUgdGhpbmsgd2Ugc2hvdWxkIGJlIHdyaXRpbmcgdG8gaGFyZHdhcmUgcmF0aGVy
IHRoYW4KcmVhZGluZyBmcm9tIGl0LgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMgfCAzMjUgKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTM4IGluc2VydGlvbnMoKyksIDE4NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggZDNlNTY2MjhhZjcwLi5lMDdkZTNiODRjZWMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTExOTAs
NiArMTE5MCwzNiBAQCBzdGF0aWMgdTggYnh0X2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGsp
CiAJcmV0dXJuIERJVl9ST1VORF9VUChjZGNsaywgMjUwMDApOwogfQogCitzdGF0aWMgdTggY25s
X2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCit7CisJaWYgKGNkY2xrID4gMzM2MDAwKQor
CQlyZXR1cm4gMjsKKwllbHNlIGlmIChjZGNsayA+IDE2ODAwMCkKKwkJcmV0dXJuIDE7CisJZWxz
ZQorCQlyZXR1cm4gMDsKK30KKworc3RhdGljIHU4IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50
IGNkY2xrKQoreworCWlmIChjZGNsayA+IDU1NjgwMCkKKwkJcmV0dXJuIDI7CisJZWxzZSBpZiAo
Y2RjbGsgPiAzMjY0MDApCisJCXJldHVybiAxOworCWVsc2UKKwkJcmV0dXJuIDA7Cit9CisKK3N0
YXRpYyB1OCBlaGxfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKK3sKKwlpZiAoY2RjbGsg
PiAzMjY0MDApCisJCXJldHVybiAyOworCWVsc2UgaWYgKGNkY2xrID4gMTgwMDAwKQorCQlyZXR1
cm4gMTsKKwllbHNlCisJCXJldHVybiAwOworfQorCiBzdGF0aWMgaW50IGJ4dF9kZV9wbGxfdmNv
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGNkY2xrKQogewogCWludCBy
YXRpbzsKQEAgLTEyMzYsMjMgKzEyNjYsNjkgQEAgc3RhdGljIGludCBnbGtfZGVfcGxsX3Zjbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCBjZGNsaykKIAlyZXR1cm4gZGV2
X3ByaXYtPmNkY2xrLmh3LnJlZiAqIHJhdGlvOwogfQogCi1zdGF0aWMgdm9pZCBieHRfZGVfcGxs
X3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkgICAgICBzdHJ1
Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQorc3RhdGljIHZvaWQgY25sX3JlYWRv
dXRfcmVmY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCSAgICAgICBz
dHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQogewotCXUzMiB2YWw7CisJaWYg
KEk5MTVfUkVBRChTS0xfRFNTTSkgJiBDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6KQor
CQljZGNsa19zdGF0ZS0+cmVmID0gMjQwMDA7CisJZWxzZQorCQljZGNsa19zdGF0ZS0+cmVmID0g
MTkyMDA7Cit9CiAKLQljZGNsa19zdGF0ZS0+cmVmID0gMTkyMDA7Ci0JY2RjbGtfc3RhdGUtPnZj
byA9IDA7CitzdGF0aWMgdm9pZCBpY2xfcmVhZG91dF9yZWZjbGsoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAorCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2Rj
bGtfc3RhdGUpCit7CisJdTMyIGRzc20gPSBJOTE1X1JFQUQoU0tMX0RTU00pICYgSUNMX0RTU01f
Q0RDTEtfUExMX1JFRkNMS19NQVNLOworCisJc3dpdGNoIChkc3NtKSB7CisJZGVmYXVsdDoKKwkJ
TUlTU0lOR19DQVNFKGRzc20pOworCQkvKiBmYWxsIHRocm91Z2ggKi8KKwljYXNlIElDTF9EU1NN
X0NEQ0xLX1BMTF9SRUZDTEtfMjRNSHo6CisJCWNkY2xrX3N0YXRlLT5yZWYgPSAyNDAwMDsKKwkJ
YnJlYWs7CisJY2FzZSBJQ0xfRFNTTV9DRENMS19QTExfUkVGQ0xLXzE5XzJNSHo6CisJCWNkY2xr
X3N0YXRlLT5yZWYgPSAxOTIwMDsKKwkJYnJlYWs7CisJY2FzZSBJQ0xfRFNTTV9DRENMS19QTExf
UkVGQ0xLXzM4XzRNSHo6CisJCWNkY2xrX3N0YXRlLT5yZWYgPSAzODQwMDsKKwkJYnJlYWs7CisJ
fQorfQorCitzdGF0aWMgdm9pZCBieHRfZGVfcGxsX3JlYWRvdXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAorCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2Rj
bGtfc3RhdGUpCit7CisJdTMyIHZhbCwgcmF0aW87CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSkKKwkJaWNsX3JlYWRvdXRfcmVmY2xrKGRldl9wcml2LCBjZGNsa19zdGF0ZSk7CisJ
ZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCisJCWNubF9yZWFkb3V0X3JlZmNsayhk
ZXZfcHJpdiwgY2RjbGtfc3RhdGUpOworCWVsc2UKKwkJY2RjbGtfc3RhdGUtPnJlZiA9IDE5MjAw
OwogCiAJdmFsID0gSTkxNV9SRUFEKEJYVF9ERV9QTExfRU5BQkxFKTsKLQlpZiAoKHZhbCAmIEJY
VF9ERV9QTExfUExMX0VOQUJMRSkgPT0gMCkKKwlpZiAoKHZhbCAmIEJYVF9ERV9QTExfUExMX0VO
QUJMRSkgPT0gMCB8fAorCSAgICAodmFsICYgQlhUX0RFX1BMTF9MT0NLKSA9PSAwKSB7CisJCS8q
CisJCSAqIENEQ0xLIFBMTCBpcyBkaXNhYmxlZCwgdGhlIFZDTy9yYXRpbyBkb2Vzbid0IG1hdHRl
ciwgYnV0CisJCSAqIHNldHRpbmcgaXQgdG8gemVybyBpcyBhIHdheSB0byBzaWduYWwgdGhhdC4K
KwkJICovCisJCWNkY2xrX3N0YXRlLT52Y28gPSAwOwogCQlyZXR1cm47CisJfQogCi0JaWYgKFdB
Uk5fT04oKHZhbCAmIEJYVF9ERV9QTExfTE9DSykgPT0gMCkpCi0JCXJldHVybjsKKwkvKgorCSAq
IENOTCsgaGF2ZSB0aGUgcmF0aW8gZGlyZWN0bHkgaW4gdGhlIFBMTCBlbmFibGUgcmVnaXN0ZXIs
IGdlbjlscCBoYWQKKwkgKiBpdCBpbiBhIHNlcGFyYXRlIFBMTCBjb250cm9sIHJlZ2lzdGVyLgor
CSAqLworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwKQorCQlyYXRpbyA9IHZhbCAmIEJY
VF9ERV9QTExfUkFUSU9fTUFTSzsKKwllbHNlCisJCXJhdGlvID0gSTkxNV9SRUFEKEJYVF9ERV9Q
TExfQ1RMKSAmIEJYVF9ERV9QTExfUkFUSU9fTUFTSzsKIAotCXZhbCA9IEk5MTVfUkVBRChCWFRf
REVfUExMX0NUTCk7Ci0JY2RjbGtfc3RhdGUtPnZjbyA9ICh2YWwgJiBCWFRfREVfUExMX1JBVElP
X01BU0spICogY2RjbGtfc3RhdGUtPnJlZjsKKwljZGNsa19zdGF0ZS0+dmNvID0gcmF0aW8gKiBj
ZGNsa19zdGF0ZS0+cmVmOwogfQogCiBzdGF0aWMgdm9pZCBieHRfZ2V0X2NkY2xrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKQEAgLTEyNjEsMTIgKzEzMzcsMTggQEAgc3RhdGlj
IHZvaWQgYnh0X2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJ
dTMyIGRpdmlkZXI7CiAJaW50IGRpdjsKIAotCWJ4dF9kZV9wbGxfdXBkYXRlKGRldl9wcml2LCBj
ZGNsa19zdGF0ZSk7Ci0KLQljZGNsa19zdGF0ZS0+Y2RjbGsgPSBjZGNsa19zdGF0ZS0+YnlwYXNz
ID0gY2RjbGtfc3RhdGUtPnJlZjsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJ
Y2RjbGtfc3RhdGUtPmJ5cGFzcyA9IGNkY2xrX3N0YXRlLT5yZWYgLyAyOworCWVsc2UgaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCisJCWNkY2xrX3N0YXRlLT5ieXBhc3MgPSA1MDAwMDsK
KwllbHNlCisJCWNkY2xrX3N0YXRlLT5ieXBhc3MgPSBjZGNsa19zdGF0ZS0+cmVmOwogCi0JaWYg
KGNkY2xrX3N0YXRlLT52Y28gPT0gMCkKKwlieHRfZGVfcGxsX3JlYWRvdXQoZGV2X3ByaXYsIGNk
Y2xrX3N0YXRlKTsKKwlpZiAoY2RjbGtfc3RhdGUtPnZjbyA9PSAwKSB7CisJCWNkY2xrX3N0YXRl
LT5jZGNsayA9IGNkY2xrX3N0YXRlLT5ieXBhc3M7CiAJCWdvdG8gb3V0OworCX0KIAogCWRpdmlk
ZXIgPSBJOTE1X1JFQUQoQ0RDTEtfQ1RMKSAmIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfTUFTSzsK
IApAQCAtMTI3NSwxMyArMTM1NywxNSBAQCBzdGF0aWMgdm9pZCBieHRfZ2V0X2NkY2xrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJZGl2ID0gMjsKIAkJYnJlYWs7CiAJY2Fz
ZSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzFfNToKLQkJV0FSTihJU19HRU1JTklMQUtFKGRldl9w
cml2KSwgIlVuc3VwcG9ydGVkIGRpdmlkZXJcbiIpOworCQlXQVJOKElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAsCisJCSAgICAgIlVuc3VwcG9ydGVk
IGRpdmlkZXJcbiIpOwogCQlkaXYgPSAzOwogCQlicmVhazsKIAljYXNlIEJYVF9DRENMS19DRDJY
X0RJVl9TRUxfMjoKIAkJZGl2ID0gNDsKIAkJYnJlYWs7CiAJY2FzZSBCWFRfQ0RDTEtfQ0QyWF9E
SVZfU0VMXzQ6CisJCVdBUk4oSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCwgIlVuc3VwcG9ydGVk
IGRpdmlkZXJcbiIpOwogCQlkaXYgPSA4OwogCQlicmVhazsKIAlkZWZhdWx0OgpAQCAtMTI5Niw4
ICsxMzgwLDE4IEBAIHN0YXRpYyB2b2lkIGJ4dF9nZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCSAqIENhbid0IHJlYWQgdGhpcyBvdXQgOiggTGV0J3MgYXNzdW1l
IGl0J3MKIAkgKiBhdCBsZWFzdCB3aGF0IHRoZSBDRENMSyBmcmVxdWVuY3kgcmVxdWlyZXMuCiAJ
ICovCi0JY2RjbGtfc3RhdGUtPnZvbHRhZ2VfbGV2ZWwgPQotCQlieHRfY2FsY192b2x0YWdlX2xl
dmVsKGNkY2xrX3N0YXRlLT5jZGNsayk7CisJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkK
KwkJY2RjbGtfc3RhdGUtPnZvbHRhZ2VfbGV2ZWwgPQorCQkJZWhsX2NhbGNfdm9sdGFnZV9sZXZl
bChjZGNsa19zdGF0ZS0+Y2RjbGspOworCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEpCisJCWNkY2xrX3N0YXRlLT52b2x0YWdlX2xldmVsID0KKwkJCWljbF9jYWxjX3ZvbHRhZ2Vf
bGV2ZWwoY2RjbGtfc3RhdGUtPmNkY2xrKTsKKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEwKQorCQljZGNsa19zdGF0ZS0+dm9sdGFnZV9sZXZlbCA9CisJCQljbmxfY2FsY192b2x0
YWdlX2xldmVsKGNkY2xrX3N0YXRlLT5jZGNsayk7CisJZWxzZQorCQljZGNsa19zdGF0ZS0+dm9s
dGFnZV9sZXZlbCA9CisJCQlieHRfY2FsY192b2x0YWdlX2xldmVsKGNkY2xrX3N0YXRlLT5jZGNs
ayk7CiB9CiAKIHN0YXRpYyB2b2lkIGJ4dF9kZV9wbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0xNTE1LDc2ICsxNjA5LDYgQEAgc3RhdGljIGludCBjbmxf
Y2FsY19jZGNsayhpbnQgbWluX2NkY2xrKQogCQlyZXR1cm4gMTY4MDAwOwogfQogCi1zdGF0aWMg
dTggY25sX2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCi17Ci0JaWYgKGNkY2xrID4gMzM2
MDAwKQotCQlyZXR1cm4gMjsKLQllbHNlIGlmIChjZGNsayA+IDE2ODAwMCkKLQkJcmV0dXJuIDE7
Ci0JZWxzZQotCQlyZXR1cm4gMDsKLX0KLQotc3RhdGljIHZvaWQgY25sX2NkY2xrX3BsbF91cGRh
dGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCSBzdHJ1Y3QgaW50ZWxf
Y2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQotewotCXUzMiB2YWw7Ci0KLQlpZiAoSTkxNV9SRUFE
KFNLTF9EU1NNKSAmIENOTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfMjRNSHopCi0JCWNkY2xrX3N0
YXRlLT5yZWYgPSAyNDAwMDsKLQllbHNlCi0JCWNkY2xrX3N0YXRlLT5yZWYgPSAxOTIwMDsKLQot
CWNkY2xrX3N0YXRlLT52Y28gPSAwOwotCi0JdmFsID0gSTkxNV9SRUFEKEJYVF9ERV9QTExfRU5B
QkxFKTsKLQlpZiAoKHZhbCAmIEJYVF9ERV9QTExfUExMX0VOQUJMRSkgPT0gMCkKLQkJcmV0dXJu
OwotCi0JaWYgKFdBUk5fT04oKHZhbCAmIEJYVF9ERV9QTExfTE9DSykgPT0gMCkpCi0JCXJldHVy
bjsKLQotCWNkY2xrX3N0YXRlLT52Y28gPSAodmFsICYgQ05MX0NEQ0xLX1BMTF9SQVRJT19NQVNL
KSAqIGNkY2xrX3N0YXRlLT5yZWY7Ci19Ci0KLXN0YXRpYyB2b2lkIGNubF9nZXRfY2RjbGsoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJIHN0cnVjdCBpbnRlbF9jZGNsa19z
dGF0ZSAqY2RjbGtfc3RhdGUpCi17Ci0JdTMyIGRpdmlkZXI7Ci0JaW50IGRpdjsKLQotCWNubF9j
ZGNsa19wbGxfdXBkYXRlKGRldl9wcml2LCBjZGNsa19zdGF0ZSk7Ci0KLQljZGNsa19zdGF0ZS0+
Y2RjbGsgPSBjZGNsa19zdGF0ZS0+YnlwYXNzID0gY2RjbGtfc3RhdGUtPnJlZjsKLQotCWlmIChj
ZGNsa19zdGF0ZS0+dmNvID09IDApCi0JCWdvdG8gb3V0OwotCi0JZGl2aWRlciA9IEk5MTVfUkVB
RChDRENMS19DVEwpICYgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF9NQVNLOwotCi0Jc3dpdGNoIChk
aXZpZGVyKSB7Ci0JY2FzZSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzE6Ci0JCWRpdiA9IDI7Ci0J
CWJyZWFrOwotCWNhc2UgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8yOgotCQlkaXYgPSA0OwotCQli
cmVhazsKLQlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UoZGl2aWRlcik7Ci0JCXJldHVybjsKLQl9
Ci0KLQljZGNsa19zdGF0ZS0+Y2RjbGsgPSBESVZfUk9VTkRfQ0xPU0VTVChjZGNsa19zdGF0ZS0+
dmNvLCBkaXYpOwotCi0gb3V0OgotCS8qCi0JICogQ2FuJ3QgcmVhZCB0aGlzIG91dCA6KCBMZXQn
cyBhc3N1bWUgaXQncwotCSAqIGF0IGxlYXN0IHdoYXQgdGhlIENEQ0xLIGZyZXF1ZW5jeSByZXF1
aXJlcy4KLQkgKi8KLQljZGNsa19zdGF0ZS0+dm9sdGFnZV9sZXZlbCA9Ci0JCWNubF9jYWxjX3Zv
bHRhZ2VfbGV2ZWwoY2RjbGtfc3RhdGUtPmNkY2xrKTsKLX0KLQogc3RhdGljIHZvaWQgY25sX2Nk
Y2xrX3BsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAl1
MzIgdmFsOwpAQCAtMTgzMCw5MSArMTg1NCw2IEBAIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGtf
cGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCBjZGNsaykKIAly
ZXR1cm4gZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAqIHJhdGlvOwogfQogCi1zdGF0aWMgdTggaWNs
X2NhbGNfdm9sdGFnZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGlu
dCBjZGNsaykKLXsKLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7Ci0JCWlmIChjZGNs
ayA+IDMxMjAwMCkKLQkJCXJldHVybiAyOwotCQllbHNlIGlmIChjZGNsayA+IDE4MDAwMCkKLQkJ
CXJldHVybiAxOwotCQllbHNlCi0JCQlyZXR1cm4gMDsKLQl9IGVsc2UgewotCQlpZiAoY2RjbGsg
PiA1NTY4MDApCi0JCQlyZXR1cm4gMjsKLQkJZWxzZSBpZiAoY2RjbGsgPiAzMTIwMDApCi0JCQly
ZXR1cm4gMTsKLQkJZWxzZQotCQkJcmV0dXJuIDA7Ci0JfQotfQotCi1zdGF0aWMgdm9pZCBpY2xf
Z2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCSAgc3RydWN0
IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZSkKLXsKLQl1MzIgdmFsOwotCWludCBkaXY7
Ci0KLQl2YWwgPSBJOTE1X1JFQUQoU0tMX0RTU00pOwotCXN3aXRjaCAodmFsICYgSUNMX0RTU01f
Q0RDTEtfUExMX1JFRkNMS19NQVNLKSB7Ci0JZGVmYXVsdDoKLQkJTUlTU0lOR19DQVNFKHZhbCk7
Ci0JCS8qIGZhbGwgdGhyb3VnaCAqLwotCWNhc2UgSUNMX0RTU01fQ0RDTEtfUExMX1JFRkNMS18y
NE1IejoKLQkJY2RjbGtfc3RhdGUtPnJlZiA9IDI0MDAwOwotCQlicmVhazsKLQljYXNlIElDTF9E
U1NNX0NEQ0xLX1BMTF9SRUZDTEtfMTlfMk1IejoKLQkJY2RjbGtfc3RhdGUtPnJlZiA9IDE5MjAw
OwotCQlicmVhazsKLQljYXNlIElDTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfMzhfNE1IejoKLQkJ
Y2RjbGtfc3RhdGUtPnJlZiA9IDM4NDAwOwotCQlicmVhazsKLQl9Ci0KLQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMikKLQkJY2RjbGtfc3RhdGUtPmJ5cGFzcyA9IGNkY2xrX3N0YXRlLT5y
ZWYgLyAyOwotCWVsc2UKLQkJY2RjbGtfc3RhdGUtPmJ5cGFzcyA9IDUwMDAwOwotCi0JdmFsID0g
STkxNV9SRUFEKEJYVF9ERV9QTExfRU5BQkxFKTsKLQlpZiAoKHZhbCAmIEJYVF9ERV9QTExfUExM
X0VOQUJMRSkgPT0gMCB8fAotCSAgICAodmFsICYgQlhUX0RFX1BMTF9MT0NLKSA9PSAwKSB7Ci0J
CS8qCi0JCSAqIENEQ0xLIFBMTCBpcyBkaXNhYmxlZCwgdGhlIFZDTy9yYXRpbyBkb2Vzbid0IG1h
dHRlciwgYnV0Ci0JCSAqIHNldHRpbmcgaXQgdG8gemVybyBpcyBhIHdheSB0byBzaWduYWwgdGhh
dC4KLQkJICovCi0JCWNkY2xrX3N0YXRlLT52Y28gPSAwOwotCQljZGNsa19zdGF0ZS0+Y2RjbGsg
PSBjZGNsa19zdGF0ZS0+YnlwYXNzOwotCQlnb3RvIG91dDsKLQl9Ci0KLQljZGNsa19zdGF0ZS0+
dmNvID0gKHZhbCAmIEJYVF9ERV9QTExfUkFUSU9fTUFTSykgKiBjZGNsa19zdGF0ZS0+cmVmOwot
Ci0JdmFsID0gSTkxNV9SRUFEKENEQ0xLX0NUTCkgJiBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMX01B
U0s7Ci0Jc3dpdGNoICh2YWwpIHsKLQljYXNlIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMToKLQkJ
ZGl2ID0gMjsKLQkJYnJlYWs7Ci0JY2FzZSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzI6Ci0JCWRp
diA9IDQ7Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCU1JU1NJTkdfQ0FTRSh2YWwpOwotCQlkaXYg
PSAyOwotCQlicmVhazsKLQl9Ci0KLQljZGNsa19zdGF0ZS0+Y2RjbGsgPSBESVZfUk9VTkRfQ0xP
U0VTVChjZGNsa19zdGF0ZS0+dmNvLCBkaXYpOwotCi1vdXQ6Ci0JLyoKLQkgKiBDYW4ndCByZWFk
IHRoaXMgb3V0IDooIExldCdzIGFzc3VtZSBpdCdzCi0JICogYXQgbGVhc3Qgd2hhdCB0aGUgQ0RD
TEsgZnJlcXVlbmN5IHJlcXVpcmVzLgotCSAqLwotCWNkY2xrX3N0YXRlLT52b2x0YWdlX2xldmVs
ID0KLQkJaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChkZXZfcHJpdiwgY2RjbGtfc3RhdGUtPmNkY2xr
KTsKLX0KLQogc3RhdGljIHZvaWQgaWNsX2luaXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogewogCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSBzYW5pdGl6ZWRfc3Rh
dGU7CkBAIC0xOTQ2LDkgKzE4ODUsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2luaXRfY2RjbGsoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXNhbml0aXplZF9zdGF0ZS5jZGNsayA9
IGljbF9jYWxjX2NkY2xrKDAsIHNhbml0aXplZF9zdGF0ZS5yZWYpOwogCXNhbml0aXplZF9zdGF0
ZS52Y28gPSBpY2xfY2FsY19jZGNsa19wbGxfdmNvKGRldl9wcml2LAogCQkJCQkJICAgICBzYW5p
dGl6ZWRfc3RhdGUuY2RjbGspOwotCXNhbml0aXplZF9zdGF0ZS52b2x0YWdlX2xldmVsID0KLQkJ
CQlpY2xfY2FsY192b2x0YWdlX2xldmVsKGRldl9wcml2LAotCQkJCQkJICAgICAgIHNhbml0aXpl
ZF9zdGF0ZS5jZGNsayk7CisJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkKKwkJc2FuaXRp
emVkX3N0YXRlLnZvbHRhZ2VfbGV2ZWwgPQorCQkJZWhsX2NhbGNfdm9sdGFnZV9sZXZlbChzYW5p
dGl6ZWRfc3RhdGUuY2RjbGspOworCWVsc2UKKwkJc2FuaXRpemVkX3N0YXRlLnZvbHRhZ2VfbGV2
ZWwgPQorCQkJaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChzYW5pdGl6ZWRfc3RhdGUuY2RjbGspOwog
CiAJY25sX3NldF9jZGNsayhkZXZfcHJpdiwgJnNhbml0aXplZF9zdGF0ZSwgSU5WQUxJRF9QSVBF
KTsKIH0KQEAgLTE5NTksOCArMTkwMSwxMiBAQCBzdGF0aWMgdm9pZCBpY2xfdW5pbml0X2NkY2xr
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWNkY2xrX3N0YXRlLmNkY2xr
ID0gY2RjbGtfc3RhdGUuYnlwYXNzOwogCWNkY2xrX3N0YXRlLnZjbyA9IDA7Ci0JY2RjbGtfc3Rh
dGUudm9sdGFnZV9sZXZlbCA9IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoZGV2X3ByaXYsCi0JCQkJ
CQkJICAgY2RjbGtfc3RhdGUuY2RjbGspOworCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikp
CisJCWNkY2xrX3N0YXRlLnZvbHRhZ2VfbGV2ZWwgPQorCQkJZWhsX2NhbGNfdm9sdGFnZV9sZXZl
bChjZGNsa19zdGF0ZS5jZGNsayk7CisJZWxzZQorCQljZGNsa19zdGF0ZS52b2x0YWdlX2xldmVs
ID0KKwkJCWljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGtfc3RhdGUuY2RjbGspOwogCiAJY25s
X3NldF9jZGNsayhkZXZfcHJpdiwgJmNkY2xrX3N0YXRlLCBJTlZBTElEX1BJUEUpOwogfQpAQCAt
MjU2MSw5ICsyNTA3LDE0IEBAIHN0YXRpYyBpbnQgaWNsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAogCXN0YXRlLT5jZGNsay5sb2dpY2FsLnZj
byA9IHZjbzsKIAlzdGF0ZS0+Y2RjbGsubG9naWNhbC5jZGNsayA9IGNkY2xrOwotCXN0YXRlLT5j
ZGNsay5sb2dpY2FsLnZvbHRhZ2VfbGV2ZWwgPQotCQltYXgoaWNsX2NhbGNfdm9sdGFnZV9sZXZl
bChkZXZfcHJpdiwgY2RjbGspLAotCQkgICAgY25sX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwo
c3RhdGUpKTsKKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQorCQlzdGF0ZS0+Y2RjbGsu
bG9naWNhbC52b2x0YWdlX2xldmVsID0KKwkJCW1heChlaGxfY2FsY192b2x0YWdlX2xldmVsKGNk
Y2xrKSwKKwkJCSAgICBjbmxfY29tcHV0ZV9taW5fdm9sdGFnZV9sZXZlbChzdGF0ZSkpOworCWVs
c2UKKwkJc3RhdGUtPmNkY2xrLmxvZ2ljYWwudm9sdGFnZV9sZXZlbCA9CisJCQltYXgoaWNsX2Nh
bGNfdm9sdGFnZV9sZXZlbChjZGNsayksCisJCQkgICAgY25sX2NvbXB1dGVfbWluX3ZvbHRhZ2Vf
bGV2ZWwoc3RhdGUpKTsKIAogCWlmICghc3RhdGUtPmFjdGl2ZV9waXBlcykgewogCQljZGNsayA9
IGljbF9jYWxjX2NkY2xrKHN0YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGssIHJlZik7CkBAIC0y
NTcxLDggKzI1MjIsMTIgQEAgc3RhdGljIGludCBpY2xfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCiAJCXN0YXRlLT5jZGNsay5hY3R1YWwudmNv
ID0gdmNvOwogCQlzdGF0ZS0+Y2RjbGsuYWN0dWFsLmNkY2xrID0gY2RjbGs7Ci0JCXN0YXRlLT5j
ZGNsay5hY3R1YWwudm9sdGFnZV9sZXZlbCA9Ci0JCQlpY2xfY2FsY192b2x0YWdlX2xldmVsKGRl
dl9wcml2LCBjZGNsayk7CisJCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCisJCQlzdGF0
ZS0+Y2RjbGsuYWN0dWFsLnZvbHRhZ2VfbGV2ZWwgPQorCQkJCWVobF9jYWxjX3ZvbHRhZ2VfbGV2
ZWwoY2RjbGspOworCQllbHNlCisJCQlzdGF0ZS0+Y2RjbGsuYWN0dWFsLnZvbHRhZ2VfbGV2ZWwg
PQorCQkJCWljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGspOwogCX0gZWxzZSB7CiAJCXN0YXRl
LT5jZGNsay5hY3R1YWwgPSBzdGF0ZS0+Y2RjbGsubG9naWNhbDsKIAl9CkBAIC0yODE5LDExICsy
Nzc0LDcgQEAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0g
dmx2X21vZGVzZXRfY2FsY19jZGNsazsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSkKLQkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X2NkY2xrID0gaWNsX2dldF9jZGNsazsKLQll
bHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkKLQkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0
X2NkY2xrID0gY25sX2dldF9jZGNsazsKLQllbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSkK
KwllbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEwKQogCQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfY2RjbGsgPSBieHRfZ2V0X2NkY2xrOwogCWVs
c2UgaWYgKElTX0dFTjlfQkMoZGV2X3ByaXYpKQogCQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfY2Rj
bGsgPSBza2xfZ2V0X2NkY2xrOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
