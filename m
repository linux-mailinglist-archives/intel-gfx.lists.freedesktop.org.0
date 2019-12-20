Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A34128408
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145546ECAF;
	Fri, 20 Dec 2019 21:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277AD6ECB4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 21:42:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 13:42:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213684247"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2019 13:42:46 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 13:42:25 -0800
Message-Id: <20191220214228.262345-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220214228.262345-1-jose.souza@intel.com>
References: <20191220214228.262345-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 5/8] drm/i915/dp: Fix MST disable sequence
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRpc2FibGUgc2VxdWVuY2UgYWZ0ZXIgd2FpdCBmb3IgdHJhbnNjb2RlciBvZmYgd2FzIG5v
dCBjb3JyZWN0bHkKaW1wbGVtZW50ZWQuClRoZSBNU1QgZGlzYWJsZSBzZXF1ZW5jZSBpcyBiYXNp
Y2FsbHkgdGhlIHNhbWUgZm9yIEhTVywgU0tMLCBJQ0wgYW5kClRHTCwgd2l0aCBqdXN0IG1pbm9y
IGNoYW5nZXMgZm9yIFRHTC4KCldpdGggdGhpcyBsYXN0IHBhdGNoIHdlIGZpbmFsbHkgZml4ZWQg
dGhlIGhvdHBsdWdzIHRyaWdnZXJlZCBieSBNU1QKc2lua3MgZHVyaW5nIHRoZSBkaXNhYmxlL2Vu
YWJsZSBzZXF1ZW5jZSwgdGhvc2Ugd2VyZSBjYXVzaW5nIHNvdXJjZQp0byB0cnkgdG8gZG8gYSBs
aW5rIHRyYWluaW5nIHdoaWxlIGl0IHdhcyBub3QgcmVhZHkgY2F1c2luZyBDUFUgcGlwZQpGSUZP
IHVuZGVycnJ1cyBvbiBUR0wuCgp2MjogT25seSB1bnNldHRpbmcgVEdMX1RSQU5TX0RESV9QT1JU
X01BU0sgZm9yIFRHTCBvbiB0aGUgcG9zdApkaXNhYmxlIHNlcXVlbmNlCgp2NDogUmViYXNlZCwg
bW92ZWQgTVNUIHNlcXVlbmNlcyB0byBpbnRlbF9tc3RfcG9zdF9kaXNhYmxlX2RwKCkKCkJTcGVj
OiA0MjMxCkJTcGVjOiA0MTYzCkJTcGVjOiAyMjI0MwpCU3BlYzogNDkxOTAKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgfCAzMSArKysrKysrKysrKysrLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMzMgKysrKysrKysr
KysrKy0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDIyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGMz
YWM5NTBlNzlhOC4uM2E1Mzg3ODljNTg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKQEAgLTM0LDYgKzM0LDcgQEAKICNpbmNsdWRlICJpbnRlbF9kZGkuaCIKICNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZHAuaCIKKyNp
bmNsdWRlICJpbnRlbF9kcF9tc3QuaCIKICNpbmNsdWRlICJpbnRlbF9kcF9saW5rX3RyYWluaW5n
LmgiCiAjaW5jbHVkZSAiaW50ZWxfZHBpb19waHkuaCIKICNpbmNsdWRlICJpbnRlbF9kc2kuaCIK
QEAgLTE5NDksMTcgKzE5NTAsMTggQEAgdm9pZCBpbnRlbF9kZGlfZGlzYWJsZV90cmFuc2NvZGVy
X2Z1bmMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUKIAlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsKIAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVf
dHJhbnNjb2RlcjsKLQlpOTE1X3JlZ190IHJlZyA9IFRSQU5TX0RESV9GVU5DX0NUTChjcHVfdHJh
bnNjb2Rlcik7Ci0JdTMyIHZhbCA9IEk5MTVfUkVBRChyZWcpOworCXUzMiB2YWw7CisKKwl2YWwg
PSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CisJdmFsICY9
IH5UUkFOU19ERElfRlVOQ19FTkFCTEU7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikgewotCQl2YWwgJj0gfihUUkFOU19ERElfRlVOQ19FTkFCTEUgfCBUR0xfVFJBTlNfRERJX1BP
UlRfTUFTSyB8Ci0JCQkgVFJBTlNfRERJX0RQX1ZDX1BBWUxPQURfQUxMT0MpOworCQlpZiAoIWlu
dGVsX2RwX21zdF9pc19tYXN0ZXJfdHJhbnMoY3J0Y19zdGF0ZSkpCisJCQl2YWwgJj0gflRHTF9U
UkFOU19ERElfUE9SVF9NQVNLOwogCX0gZWxzZSB7Ci0JCXZhbCAmPSB+KFRSQU5TX0RESV9GVU5D
X0VOQUJMRSB8IFRSQU5TX0RESV9QT1JUX01BU0sgfAotCQkJIFRSQU5TX0RESV9EUF9WQ19QQVlM
T0FEX0FMTE9DKTsKKwkJdmFsICY9IH5UUkFOU19ERElfUE9SVF9NQVNLOwogCX0KLQlJOTE1X1dS
SVRFKHJlZywgdmFsKTsKKwlJOTE1X1dSSVRFKFRSQU5TX0RESV9GVU5DX0NUTChjcHVfdHJhbnNj
b2RlciksIHZhbCk7CiAKIAlpZiAoZGV2X3ByaXYtPnF1aXJrcyAmIFFVSVJLX0lOQ1JFQVNFX0RE
SV9ESVNBQkxFRF9USU1FICYmCiAJICAgIGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwg
SU5URUxfT1VUUFVUX0hETUkpKSB7CkBAIC0zODEzLDggKzM4MTUsMTkgQEAgc3RhdGljIHZvaWQg
aW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
IAkgKi8KIAlpbnRlbF9kcF9zaW5rX2RwbXMoaW50ZWxfZHAsIERSTV9NT0RFX0RQTVNfT0ZGKTsK
IAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIgJiYgIWlzX21zdCkKLQkJaW50ZWxfZGRp
X2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7CisJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTIpIHsKKwkJaWYgKGlzX21zdCkgeworCQkJZW51bSB0cmFuc2NvZGVyIGNwdV90
cmFuc2NvZGVyID0gb2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOworCQkJdTMyIHZhbDsK
KworCQkJdmFsID0gSTkxNV9SRUFEKFRSQU5TX0RESV9GVU5DX0NUTChjcHVfdHJhbnNjb2Rlcikp
OworCQkJdmFsICY9IH5UR0xfVFJBTlNfRERJX1BPUlRfTUFTSzsKKwkJCUk5MTVfV1JJVEUoVFJB
TlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSwgdmFsKTsKKwkJfQorCX0gZWxzZSB7CisJ
CWlmICghaXNfbXN0KQorCQkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19z
dGF0ZSk7CisJfQogCiAJaW50ZWxfZGlzYWJsZV9kZGlfYnVmKGVuY29kZXIsIG9sZF9jcnRjX3N0
YXRlKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKaW5k
ZXggOGNmZmYwNzg0ODZkLi45MjUxZDQ3ZjhmZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtMzQ3LDYgKzM0Nyw3IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX21zdF9wb3N0X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
CXRvX2ludGVsX2Nvbm5lY3RvcihvbGRfY29ubl9zdGF0ZS0+Y29ubmVjdG9yKTsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYp
OwogCWJvb2wgbGFzdF9tc3Rfc3RyZWFtOworCXUzMiB2YWw7CiAKIAlpbnRlbF9kcC0+YWN0aXZl
X21zdF9saW5rcy0tOwogCWxhc3RfbXN0X3N0cmVhbSA9IGludGVsX2RwLT5hY3RpdmVfbXN0X2xp
bmtzID09IDA7CkBAIC0zNTcsNiArMzU4LDE5IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wb3N0
X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAlpbnRlbF9kaXNh
YmxlX3BpcGUob2xkX2NydGNfc3RhdGUpOwogCisJZHJtX2RwX3VwZGF0ZV9wYXlsb2FkX3BhcnQy
KCZpbnRlbF9kcC0+bXN0X21ncik7CisKKwl2YWwgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNf
Q1RMKG9sZF9jcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOworCXZhbCAmPSB+VFJBTlNfRERJ
X0RQX1ZDX1BBWUxPQURfQUxMT0M7CisJSTkxNV9XUklURShUUkFOU19ERElfRlVOQ19DVEwob2xk
X2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSwgdmFsKTsKKworCWlmIChpbnRlbF9kZV93YWl0
X2Zvcl9zZXQoZGV2X3ByaXYsIGludGVsX2RwLT5yZWdzLmRwX3RwX3N0YXR1cywKKwkJCQkgIERQ
X1RQX1NUQVRVU19BQ1RfU0VOVCwgMSkpCisJCURSTV9FUlJPUigiVGltZWQgb3V0IHdhaXRpbmcg
Zm9yIEFDVCBzZW50IHdoZW4gZGlzYWJsaW5nXG4iKTsKKwlkcm1fZHBfY2hlY2tfYWN0X3N0YXR1
cygmaW50ZWxfZHAtPm1zdF9tZ3IpOworCisJZHJtX2RwX21zdF9kZWFsbG9jYXRlX3ZjcGkoJmlu
dGVsX2RwLT5tc3RfbWdyLCBjb25uZWN0b3ItPnBvcnQpOworCiAJaW50ZWxfZGRpX2Rpc2FibGVf
dHJhbnNjb2Rlcl9mdW5jKG9sZF9jcnRjX3N0YXRlKTsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDkpCkBAIC0zNjQsNiArMzc4LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wb3N0
X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJZWxzZQogCQlpcm9u
bGFrZV9wZml0X2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOwogCisJLyoKKwkgKiBQb3dlciBkb3du
IG1zdCBwYXRoIGJlZm9yZSBkaXNhYmxpbmcgdGhlIHBvcnQsIG90aGVyd2lzZSB3ZSBlbmQKKwkg
KiB1cCBnZXR0aW5nIGludGVycnVwdHMgZnJvbSB0aGUgc2luayB1cG9uIGRldGVjdGluZyBsaW5r
IGxvc3MuCisJICovCisJZHJtX2RwX3NlbmRfcG93ZXJfdXBkb3duX3BoeSgmaW50ZWxfZHAtPm1z
dF9tZ3IsIGNvbm5lY3Rvci0+cG9ydCwKKwkJCQkgICAgIGZhbHNlKTsKIAkvKgogCSAqIEZyb20g
VEdMIHNwZWM6ICJJZiBtdWx0aS1zdHJlYW0gc2xhdmUgdHJhbnNjb2RlcjogQ29uZmlndXJlCiAJ
ICogVHJhbnNjb2RlciBDbG9jayBTZWxlY3QgdG8gZGlyZWN0IG5vIGNsb2NrIHRvIHRoZSB0cmFu
c2NvZGVyIgpAQCAtMzc0LDE5ICszOTQsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcG9zdF9k
aXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpIDwgMTIgfHwgIWxhc3RfbXN0X3N0cmVhbSkKIAkJaW50ZWxfZGRpX2Rpc2FibGVf
cGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7CiAKLQkvKiB0aGlzIGNhbiBmYWlsICovCi0JZHJt
X2RwX2NoZWNrX2FjdF9zdGF0dXMoJmludGVsX2RwLT5tc3RfbWdyKTsKLQkvKiBhbmQgdGhpcyBj
YW4gYWxzbyBmYWlsICovCi0JZHJtX2RwX3VwZGF0ZV9wYXlsb2FkX3BhcnQyKCZpbnRlbF9kcC0+
bXN0X21ncik7Ci0KLQlkcm1fZHBfbXN0X2RlYWxsb2NhdGVfdmNwaSgmaW50ZWxfZHAtPm1zdF9t
Z3IsIGNvbm5lY3Rvci0+cG9ydCk7Ci0KLQkvKgotCSAqIFBvd2VyIGRvd24gbXN0IHBhdGggYmVm
b3JlIGRpc2FibGluZyB0aGUgcG9ydCwgb3RoZXJ3aXNlIHdlIGVuZAotCSAqIHVwIGdldHRpbmcg
aW50ZXJydXB0cyBmcm9tIHRoZSBzaW5rIHVwb24gZGV0ZWN0aW5nIGxpbmsgbG9zcy4KLQkgKi8K
LQlkcm1fZHBfc2VuZF9wb3dlcl91cGRvd25fcGh5KCZpbnRlbF9kcC0+bXN0X21nciwgY29ubmVj
dG9yLT5wb3J0LAotCQkJCSAgICAgZmFsc2UpOwogCiAJaW50ZWxfbXN0LT5jb25uZWN0b3IgPSBO
VUxMOwogCWlmIChsYXN0X21zdF9zdHJlYW0pCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
