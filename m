Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF3F1EF9E9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D48806E900;
	Fri,  5 Jun 2020 14:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F3F6E900
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 14:04:59 +0000 (UTC)
IronPort-SDR: WFVfP/+nk/wFm3ujpfe1CZF/XBfYMXZMusM2Gj18t+oHSjft8uY5GrpdgT8wykidxd/WLydK3r
 cy61l+mvEEeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 07:04:58 -0700
IronPort-SDR: ZH06UZ0+afltTvp89hEqm0qU6tt2VwK7HoTqKpIelm0Hjyt9vTh3O8JGTvrb//jpXn5hj09FMl
 WtHq/oE5GL/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="471801736"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jun 2020 07:04:57 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 17:04:22 +0300
Message-Id: <20200605140422.280195-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/psr: Program default IO buffer Wake
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
byBkZWZpbml0aW9ucy4gKEpvc8OpKQoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDEyICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgIHwgNjggKysrKysrKysrKysrKysrKystLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYxIGlu
c2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCmluZGV4IDdhMDAxMWU0MmUwMC4uNzY1NzQwZDJmMzJmIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTUzNyw2ICs1MzcsMTggQEAgc3Rh
dGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAl2
YWwgfD0gRURQX1BTUjJfRlJBTUVfQkVGT1JFX1NVKGRldl9wcml2LT5wc3Iuc2lua19zeW5jX2xh
dGVuY3kgKyAxKTsKIAl2YWwgfD0gaW50ZWxfcHNyMl9nZXRfdHBfdGltZShpbnRlbF9kcCk7CiAK
KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgeworCQkvKgorCQkgKiBUT0RPOiBJbiBv
cmRlciB0byBzZXR0aW5nIGFuIG9wdGltYWwgcG93ZXIgY29uc3VtcHRpb24sCisJCSAqIGxvd2Vy
IHRoYW4gNGsgcmVzb2x1aXRpb24gbW9kZSBuZWVkcyB0byBkZWNyZXNlIElPX0JVRkZFUl9XQUtF
CisJCSAqIGFuZCBGQVNUX1dBS0UuIEFuZCBoaWdoZXIgdGhhbiA0SyByZXNvbHV0aW9uIG1vZGUg
bmVlZHMKKwkJICogdG8gaW5jcmVhc2UgSU9fQlVGRkVSX1dBS0UgYW5kIEZBU1RfV0FLRS4KKwkJ
ICovCisJCXZhbCB8PSBUR0xfRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzI7CisJCXZhbCB8PSBU
R0xfRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfN2xpbmVzOyAvKiBkZWZhdWx0IEJTcGVjIHZhbHVl
ICovCisJCXZhbCB8PSBUR0xfRURQX1BTUjJfRkFTVF9XQUtFXzdsaW5lczsgLyogZGVmYXVsdCBC
U3BlYyB2YWx1ZSAqLworCX0KKwogCS8qCiAJICogUFNSMiBIVyBpcyBpbmNvcnJlY3RseSB1c2lu
ZyBFRFBfUFNSX1RQMV9UUDNfU0VMIGFuZCBCU3BlYyBpcwogCSAqIHJlY29tbWVuZGluZyBrZWVw
IHRoaXMgYml0IHVuc2V0IHdoaWxlIFBTUjIgaXMgZW5hYmxlZC4KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCmluZGV4IDgxNGE3MDk0NTQ2OC4uYmY4OTg4ZTlmZjcwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKQEAgLTQ1MTEsMjUgKzQ1MTEsNTUgQEAgZW51bSB7CiAjZGVmaW5lICAgRURQX1BTUl9E
RUJVR19NQVNLX0RJU1BfUkVHX1dSSVRFICAgICgxIDw8IDE2KSAvKiBSZXNlcnZlZCBpbiBJQ0wr
ICovCiAjZGVmaW5lICAgRURQX1BTUl9ERUJVR19FWElUX09OX1BJWEVMX1VOREVSUlVOICgxIDw8
IDE1KSAvKiBTS0wrICovCiAKLSNkZWZpbmUgX1BTUjJfQ1RMX0EJCQkweDYwOTAwCi0jZGVmaW5l
IF9QU1IyX0NUTF9FRFAJCQkweDZmOTAwCi0jZGVmaW5lIEVEUF9QU1IyX0NUTCh0cmFuKQkJX01N
SU9fVFJBTlMyKHRyYW4sIF9QU1IyX0NUTF9BKQotI2RlZmluZSAgIEVEUF9QU1IyX0VOQUJMRQkJ
KDEgPDwgMzEpCi0jZGVmaW5lICAgRURQX1NVX1RSQUNLX0VOQUJMRQkJKDEgPDwgMzApCi0jZGVm
aW5lICAgRURQX1lfQ09PUkRJTkFURV9WQUxJRAkoMSA8PCAyNikgLyogR0xLIGFuZCBDTkwrICov
Ci0jZGVmaW5lICAgRURQX1lfQ09PUkRJTkFURV9FTkFCTEUJKDEgPDwgMjUpIC8qIEdMSyBhbmQg
Q05MKyAqLwotI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJMRV9USU1FKHQpCSgodCkgPDwgMjAp
Ci0jZGVmaW5lICAgRURQX01BWF9TVV9ESVNBQkxFX1RJTUVfTUFTSwkoMHgxZiA8PCAyMCkKLSNk
ZWZpbmUgICBFRFBfUFNSMl9UUDJfVElNRV81MDB1cwkoMCA8PCA4KQotI2RlZmluZSAgIEVEUF9Q
U1IyX1RQMl9USU1FXzEwMHVzCSgxIDw8IDgpCi0jZGVmaW5lICAgRURQX1BTUjJfVFAyX1RJTUVf
MjUwMHVzCSgyIDw8IDgpCi0jZGVmaW5lICAgRURQX1BTUjJfVFAyX1RJTUVfNTB1cwkoMyA8PCA4
KQotI2RlZmluZSAgIEVEUF9QU1IyX1RQMl9USU1FX01BU0sJKDMgPDwgOCkKLSNkZWZpbmUgICBF
RFBfUFNSMl9GUkFNRV9CRUZPUkVfU1VfU0hJRlQgNAotI2RlZmluZSAgIEVEUF9QU1IyX0ZSQU1F
X0JFRk9SRV9TVV9NQVNLCSgweGYgPDwgNCkKLSNkZWZpbmUgICBFRFBfUFNSMl9GUkFNRV9CRUZP
UkVfU1UoYSkJKChhKSA8PCA0KQotI2RlZmluZSAgIEVEUF9QU1IyX0lETEVfRlJBTUVfTUFTSwkw
eGYKLSNkZWZpbmUgICBFRFBfUFNSMl9JRExFX0ZSQU1FX1NISUZUCTAKKyNkZWZpbmUgX1BTUjJf
Q1RMX0EJCQkJMHg2MDkwMAorI2RlZmluZSBfUFNSMl9DVExfRURQCQkJCTB4NmY5MDAKKyNkZWZp
bmUgRURQX1BTUjJfQ1RMKHRyYW4pCQkJX01NSU9fVFJBTlMyKHRyYW4sIF9QU1IyX0NUTF9BKQor
I2RlZmluZSAgIEVEUF9QU1IyX0VOQUJMRQkJCSgxIDw8IDMxKQorI2RlZmluZSAgIEVEUF9TVV9U
UkFDS19FTkFCTEUJCQkoMSA8PCAzMCkKKyNkZWZpbmUgICBUR0xfRURQX1BTUjJfQkxPQ0tfQ09V
TlRfTlVNXzIJKDAgPDwgMjgpCisjZGVmaW5lICAgVEdMX0VEUF9QU1IyX0JMT0NLX0NPVU5UX05V
TV8zCSgxIDw8IDI4KQorI2RlZmluZSAgIEVEUF9ZX0NPT1JESU5BVEVfVkFMSUQJCSgxIDw8IDI2
KSAvKiBHTEsgYW5kIENOTCsgKi8KKyNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX0VOQUJMRQkJ
KDEgPDwgMjUpIC8qIEdMSyBhbmQgQ05MKyAqLworI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJM
RV9USU1FKHQpCQkoKHQpIDw8IDIwKQorI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJMRV9USU1F
X01BU0sJCSgweDFmIDw8IDIwKQorI2RlZmluZSAgIEVEUF9QU1IyX0lPX0JVRkZFUl9XQUtFXzVs
aW5lcwkoMyA8PCAxMykKKyNkZWZpbmUgICBFRFBfUFNSMl9JT19CVUZGRVJfV0FLRV82bGluZXMJ
KDIgPDwgMTMpCisjZGVmaW5lICAgRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfN2xpbmVzCSgxIDw8
IDEzKQorI2RlZmluZSAgIEVEUF9QU1IyX0lPX0JVRkZFUl9XQUtFXzhsaW5lcwkoMCA8PCAxMykK
KyNkZWZpbmUgICBFRFBfUFNSMl9JT19CVUZGRVJfV0FLRV9NQVNLCQkoMyA8PCAxMykKKyNkZWZp
bmUgICBUR0xfRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfNWxpbmVzCSgwIDw8IDEzKQorI2RlZmlu
ZSAgIFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRV82bGluZXMJKDEgPDwgMTMpCisjZGVmaW5l
ICAgVEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFXzdsaW5lcwkoMiA8PCAxMykKKyNkZWZpbmUg
ICBUR0xfRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfOGxpbmVzCSgzIDw8IDEzKQorI2RlZmluZSAg
IFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRV85bGluZXMJKDQgPDwgMTMpCisjZGVmaW5lICAg
VEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFXzEwbGluZXMJKDUgPDwgMTMpCisjZGVmaW5lICAg
VEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFXzExbGluZXMJKDYgPDwgMTMpCisjZGVmaW5lICAg
VEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFXzEybGluZXMJKDcgPDwgMTMpCisjZGVmaW5lICAg
VEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFX01BU0sJKDcgPDwgMTMpCisjZGVmaW5lICAgRURQ
X1BTUjJfRkFTVF9XQUtFXzVsaW5lcwkJKDMgPDwgMTEpCisjZGVmaW5lICAgRURQX1BTUjJfRkFT
VF9XQUtFXzZsaW5lcwkJKDIgPDwgMTEpCisjZGVmaW5lICAgRURQX1BTUjJfRkFTVF9XQUtFXzds
aW5lcwkJKDEgPDwgMTEpCisjZGVmaW5lICAgRURQX1BTUjJfRkFTVF9XQUtFXzhsaW5lcwkJKDAg
PDwgMTEpCisjZGVmaW5lICAgRURQX1BTUjJfRkFTVF9XQUtFX01BU0sJCSgzIDw8IDExKQorI2Rl
ZmluZSAgIFRHTF9FRFBfUFNSMl9GQVNUX1dBS0VfNWxpbmVzCQkoMCA8PCAxMCkKKyNkZWZpbmUg
ICBUR0xfRURQX1BTUjJfRkFTVF9XQUtFXzZsaW5lcwkJKDEgPDwgMTApCisjZGVmaW5lICAgVEdM
X0VEUF9QU1IyX0ZBU1RfV0FLRV83bGluZXMJCSgyIDw8IDEwKQorI2RlZmluZSAgIFRHTF9FRFBf
UFNSMl9GQVNUX1dBS0VfOGxpbmVzCQkoMyA8PCAxMCkKKyNkZWZpbmUgICBUR0xfRURQX1BTUjJf
RkFTVF9XQUtFXzlsaW5lcwkJKDQgPDwgMTApCisjZGVmaW5lICAgVEdMX0VEUF9QU1IyX0ZBU1Rf
V0FLRV8xMGxpbmVzCSg1IDw8IDEwKQorI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9GQVNUX1dBS0Vf
MTFsaW5lcwkoNiA8PCAxMCkKKyNkZWZpbmUgICBUR0xfRURQX1BTUjJfRkFTVF9XQUtFXzEybGlu
ZXMJKDcgPDwgMTApCisjZGVmaW5lICAgVEdMX0VEUF9QU1IyX0ZBU1RfV0FLRV9NQVNLCQkoNyA8
PCAxMCkKKyNkZWZpbmUgICBFRFBfUFNSMl9UUDJfVElNRV81MDB1cwkJKDAgPDwgOCkKKyNkZWZp
bmUgICBFRFBfUFNSMl9UUDJfVElNRV8xMDB1cwkJKDEgPDwgOCkKKyNkZWZpbmUgICBFRFBfUFNS
Ml9UUDJfVElNRV8yNTAwdXMJCSgyIDw8IDgpCisjZGVmaW5lICAgRURQX1BTUjJfVFAyX1RJTUVf
NTB1cwkJKDMgPDwgOCkKKyNkZWZpbmUgICBFRFBfUFNSMl9UUDJfVElNRV9NQVNLCQkoMyA8PCA4
KQorI2RlZmluZSAgIEVEUF9QU1IyX0ZSQU1FX0JFRk9SRV9TVV9TSElGVAk0CisjZGVmaW5lICAg
RURQX1BTUjJfRlJBTUVfQkVGT1JFX1NVX01BU0sJCSgweGYgPDwgNCkKKyNkZWZpbmUgICBFRFBf
UFNSMl9GUkFNRV9CRUZPUkVfU1UoYSkJCSgoYSkgPDwgNCkKKyNkZWZpbmUgICBFRFBfUFNSMl9J
RExFX0ZSQU1FX01BU0sJCTB4ZgorI2RlZmluZSAgIEVEUF9QU1IyX0lETEVfRlJBTUVfU0hJRlQJ
CTAKIAogI2RlZmluZSBfUFNSX0VWRU5UX1RSQU5TX0EJCQkweDYwODQ4CiAjZGVmaW5lIF9QU1Jf
RVZFTlRfVFJBTlNfQgkJCTB4NjE4NDgKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
