Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8791F0B99
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 16:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3366E117;
	Sun,  7 Jun 2020 14:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CB26E117
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 14:01:34 +0000 (UTC)
IronPort-SDR: GZx6ESOZzZjJFM9ArhjCdraLZZOBcOwfTr+AjMwUiNoe/Kfz8cdjpO1GfD3WUMP6LP595OVjm9
 wDGfPClnmq6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 07:01:17 -0700
IronPort-SDR: s7LDUiy5g6IfbxTlvm6VvvLay/pHQQp70HNwuAsHQuFzVJTc0LtuPGraT34W0QoGu2Xkvc7FM8
 96MeIJoGGWKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,484,1583222400"; d="scan'208";a="258466542"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2020 07:01:15 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 17:01:02 +0300
Message-Id: <20200607140102.172240-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/psr: Program default IO buffer Wake
 and Fast Wake
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIElPIGJ1ZmZlciBXYWtlIGFuZCBGYXN0IFdha2UgYml0IHNpemUgYW5kIHZhbHVlIGhhdmUg
YmVlbiBjaGFuZ2VkIGZyb20KR2VuMTIrLiBJdCBwcm9ncmFtcyB0aGUgZGVmYXVsdCB2YWx1ZSBv
ZiBJTyBidWZmZXIgV2FrZSBhbmQgRmFzdCBXYWtlIG9uCkdlbjEyKy4gSXQgYWRkcyBkZWZpbml0
aW9ucyBvZiBJTyBidWZmZXIgV2FrZSBhbmQgRmFzdCBXYWtlIGZvciBwcmUgR2VuMTIKYW5kIEdl
bjEyKy4gQW5kIGl0IGFsaWducyBQU1IyIGRlZmluaXRpb24gbWFjcm9zLgoKdjI6IEZpeCBtYWNy
byBkZWZpbml0aW9ucy4gKEpvc8OpKQp2MzogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9t
IEpvc8OpCiAgLSBBZGQgbWlzc2luZyBkZWZhdWx0IHZhbHVlcyBvZiBJT19CVUZGRVJfV0FLRSBh
bmQgRkFTVF9XQUtFIGZvciBHRU45KwogIC0gQ2hhbmdlIGEgc3R5bGUgb2YgbWFjcm8gbmFtaW5n
IGluIG9yZGVyIHRvIHVzZSBsaW5lcyBhcyBpbnB1dC4KICAtIFVwZGF0ZSBUb2RvIGNvbW1lbnRz
LgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE2ICsrKysrKysr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgNTIgKysrKysrKysr
KysrKysrLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDE5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4
IDdhMDAxMWU0MmUwMC4uYWIzODBlNmRjNjc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKQEAgLTUzNyw2ICs1MzcsMjIgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2
YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAl2YWwgfD0gRURQX1BTUjJfRlJB
TUVfQkVGT1JFX1NVKGRldl9wcml2LT5wc3Iuc2lua19zeW5jX2xhdGVuY3kgKyAxKTsKIAl2YWwg
fD0gaW50ZWxfcHNyMl9nZXRfdHBfdGltZShpbnRlbF9kcCk7CiAKKwlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikgeworCQkvKgorCQkgKiBUT0RPOiA3IGxpbmVzIG9mIElPX0JVRkZFUl9X
QUtFIGFuZCBGQVNUX1dBS0UgYXJlIGRlZmF1bHQKKwkJICogdmFsdWVzIGZyb20gQlNwZWMuIElu
IG9yZGVyIHRvIHNldHRpbmcgYW4gb3B0aW1hbCBwb3dlcgorCQkgKiBjb25zdW1wdGlvbiwgbG93
ZXIgdGhhbiA0ayByZXNvbHVpdGlvbiBtb2RlIG5lZWRzIHRvIGRlY3Jlc2UKKwkJICogSU9fQlVG
RkVSX1dBS0UgYW5kIEZBU1RfV0FLRS4gQW5kIGhpZ2hlciB0aGFuIDRLIHJlc29sdXRpb24KKwkJ
ICogbW9kZSBuZWVkcyB0byBpbmNyZWFzZSBJT19CVUZGRVJfV0FLRSBhbmQgRkFTVF9XQUtFLgor
CQkgKi8KKwkJdmFsIHw9IFRHTF9FRFBfUFNSMl9CTE9DS19DT1VOVF9OVU1fMjsKKwkJdmFsIHw9
IFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRSg3KTsKKwkJdmFsIHw9IFRHTF9FRFBfUFNSMl9G
QVNUX1dBS0UoNyk7CisJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpIHsKKwkJ
dmFsIHw9IEVEUF9QU1IyX0lPX0JVRkZFUl9XQUtFKDcpOworCQl2YWwgfD0gRURQX1BTUjJfRkFT
VF9XQUtFKDcpOworCX0KKwogCS8qCiAJICogUFNSMiBIVyBpcyBpbmNvcnJlY3RseSB1c2luZyBF
RFBfUFNSX1RQMV9UUDNfU0VMIGFuZCBCU3BlYyBpcwogCSAqIHJlY29tbWVuZGluZyBrZWVwIHRo
aXMgYml0IHVuc2V0IHdoaWxlIFBTUjIgaXMgZW5hYmxlZC4KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CmluZGV4IDgxNGE3MDk0NTQ2OC4uMDgwZmY3MjhkMDQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKQEAgLTQ1MTEsMjUgKzQ1MTEsMzkgQEAgZW51bSB7CiAjZGVmaW5lICAgRURQX1BTUl9ERUJV
R19NQVNLX0RJU1BfUkVHX1dSSVRFICAgICgxIDw8IDE2KSAvKiBSZXNlcnZlZCBpbiBJQ0wrICov
CiAjZGVmaW5lICAgRURQX1BTUl9ERUJVR19FWElUX09OX1BJWEVMX1VOREVSUlVOICgxIDw8IDE1
KSAvKiBTS0wrICovCiAKLSNkZWZpbmUgX1BTUjJfQ1RMX0EJCQkweDYwOTAwCi0jZGVmaW5lIF9Q
U1IyX0NUTF9FRFAJCQkweDZmOTAwCi0jZGVmaW5lIEVEUF9QU1IyX0NUTCh0cmFuKQkJX01NSU9f
VFJBTlMyKHRyYW4sIF9QU1IyX0NUTF9BKQotI2RlZmluZSAgIEVEUF9QU1IyX0VOQUJMRQkJKDEg
PDwgMzEpCi0jZGVmaW5lICAgRURQX1NVX1RSQUNLX0VOQUJMRQkJKDEgPDwgMzApCi0jZGVmaW5l
ICAgRURQX1lfQ09PUkRJTkFURV9WQUxJRAkoMSA8PCAyNikgLyogR0xLIGFuZCBDTkwrICovCi0j
ZGVmaW5lICAgRURQX1lfQ09PUkRJTkFURV9FTkFCTEUJKDEgPDwgMjUpIC8qIEdMSyBhbmQgQ05M
KyAqLwotI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJMRV9USU1FKHQpCSgodCkgPDwgMjApCi0j
ZGVmaW5lICAgRURQX01BWF9TVV9ESVNBQkxFX1RJTUVfTUFTSwkoMHgxZiA8PCAyMCkKLSNkZWZp
bmUgICBFRFBfUFNSMl9UUDJfVElNRV81MDB1cwkoMCA8PCA4KQotI2RlZmluZSAgIEVEUF9QU1Iy
X1RQMl9USU1FXzEwMHVzCSgxIDw8IDgpCi0jZGVmaW5lICAgRURQX1BTUjJfVFAyX1RJTUVfMjUw
MHVzCSgyIDw8IDgpCi0jZGVmaW5lICAgRURQX1BTUjJfVFAyX1RJTUVfNTB1cwkoMyA8PCA4KQot
I2RlZmluZSAgIEVEUF9QU1IyX1RQMl9USU1FX01BU0sJKDMgPDwgOCkKLSNkZWZpbmUgICBFRFBf
UFNSMl9GUkFNRV9CRUZPUkVfU1VfU0hJRlQgNAotI2RlZmluZSAgIEVEUF9QU1IyX0ZSQU1FX0JF
Rk9SRV9TVV9NQVNLCSgweGYgPDwgNCkKLSNkZWZpbmUgICBFRFBfUFNSMl9GUkFNRV9CRUZPUkVf
U1UoYSkJKChhKSA8PCA0KQotI2RlZmluZSAgIEVEUF9QU1IyX0lETEVfRlJBTUVfTUFTSwkweGYK
LSNkZWZpbmUgICBFRFBfUFNSMl9JRExFX0ZSQU1FX1NISUZUCTAKKyNkZWZpbmUgX1BTUjJfQ1RM
X0EJCQkJMHg2MDkwMAorI2RlZmluZSBfUFNSMl9DVExfRURQCQkJCTB4NmY5MDAKKyNkZWZpbmUg
RURQX1BTUjJfQ1RMKHRyYW4pCQkJX01NSU9fVFJBTlMyKHRyYW4sIF9QU1IyX0NUTF9BKQorI2Rl
ZmluZSAgIEVEUF9QU1IyX0VOQUJMRQkJCSgxIDw8IDMxKQorI2RlZmluZSAgIEVEUF9TVV9UUkFD
S19FTkFCTEUJCQkoMSA8PCAzMCkKKyNkZWZpbmUgICBUR0xfRURQX1BTUjJfQkxPQ0tfQ09VTlRf
TlVNXzIJKDAgPDwgMjgpCisjZGVmaW5lICAgVEdMX0VEUF9QU1IyX0JMT0NLX0NPVU5UX05VTV8z
CSgxIDw8IDI4KQorI2RlZmluZSAgIEVEUF9ZX0NPT1JESU5BVEVfVkFMSUQJCSgxIDw8IDI2KSAv
KiBHTEsgYW5kIENOTCsgKi8KKyNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX0VOQUJMRQkJKDEg
PDwgMjUpIC8qIEdMSyBhbmQgQ05MKyAqLworI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJMRV9U
SU1FKHQpCQkoKHQpIDw8IDIwKQorI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJMRV9USU1FX01B
U0sJCSgweDFmIDw8IDIwKQorI2RlZmluZSAgIEVEUF9QU1IyX0lPX0JVRkZFUl9XQUtFX01BWF9M
SU5FUwk4CisjZGVmaW5lICAgRURQX1BTUjJfSU9fQlVGRkVSX1dBS0UobGluZXMpCSgoRURQX1BT
UjJfSU9fQlVGRkVSX1dBS0VfTUFYX0xJTkVTIC0gbGluZXMpIDw8IDEzKQorI2RlZmluZSAgIEVE
UF9QU1IyX0lPX0JVRkZFUl9XQUtFX01BU0sJCSgzIDw8IDEzKQorI2RlZmluZSAgIFRHTF9FRFBf
UFNSMl9JT19CVUZGRVJfV0FLRV9NSU5fTElORVMJNQorI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9J
T19CVUZGRVJfV0FLRShsaW5lcykJKChsaW5lcyAtIFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FL
RV9NSU5fTElORVMpIDw8IDEzKQorI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FL
RV9NQVNLCSg3IDw8IDEzKQorI2RlZmluZSAgIEVEUF9QU1IyX0ZBU1RfV0FLRV9NQVhfTElORVMJ
CTgKKyNkZWZpbmUgICBFRFBfUFNSMl9GQVNUX1dBS0UobGluZXMpCQkoKEVEUF9QU1IyX0ZBU1Rf
V0FLRV9NQVhfTElORVMgLSBsaW5lcykgPDwgMTEpCisjZGVmaW5lICAgRURQX1BTUjJfRkFTVF9X
QUtFX01BU0sJCSgzIDw8IDExKQorI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9GQVNUX1dBS0VfTUlO
X0xJTkVTCTUKKyNkZWZpbmUgICBUR0xfRURQX1BTUjJfRkFTVF9XQUtFKGxpbmVzKQkJKChsaW5l
cyAtIFRHTF9FRFBfUFNSMl9GQVNUX1dBS0VfTUlOX0xJTkVTKSA8PCAxMCkKKyNkZWZpbmUgICBU
R0xfRURQX1BTUjJfRkFTVF9XQUtFX01BU0sJCSg3IDw8IDEwKQorI2RlZmluZSAgIEVEUF9QU1Iy
X1RQMl9USU1FXzUwMHVzCQkoMCA8PCA4KQorI2RlZmluZSAgIEVEUF9QU1IyX1RQMl9USU1FXzEw
MHVzCQkoMSA8PCA4KQorI2RlZmluZSAgIEVEUF9QU1IyX1RQMl9USU1FXzI1MDB1cwkJKDIgPDwg
OCkKKyNkZWZpbmUgICBFRFBfUFNSMl9UUDJfVElNRV81MHVzCQkoMyA8PCA4KQorI2RlZmluZSAg
IEVEUF9QU1IyX1RQMl9USU1FX01BU0sJCSgzIDw8IDgpCisjZGVmaW5lICAgRURQX1BTUjJfRlJB
TUVfQkVGT1JFX1NVX1NISUZUCTQKKyNkZWZpbmUgICBFRFBfUFNSMl9GUkFNRV9CRUZPUkVfU1Vf
TUFTSwkJKDB4ZiA8PCA0KQorI2RlZmluZSAgIEVEUF9QU1IyX0ZSQU1FX0JFRk9SRV9TVShhKQkJ
KChhKSA8PCA0KQorI2RlZmluZSAgIEVEUF9QU1IyX0lETEVfRlJBTUVfTUFTSwkJMHhmCisjZGVm
aW5lICAgRURQX1BTUjJfSURMRV9GUkFNRV9TSElGVAkJMAogCiAjZGVmaW5lIF9QU1JfRVZFTlRf
VFJBTlNfQQkJCTB4NjA4NDgKICNkZWZpbmUgX1BTUl9FVkVOVF9UUkFOU19CCQkJMHg2MTg0OAot
LSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
