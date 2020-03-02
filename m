Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C74B175D6A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C723E6E459;
	Mon,  2 Mar 2020 14:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19F66E459
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:39:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:39:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="257969235"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 02 Mar 2020 06:39:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 16:39:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 16:39:39 +0200
Message-Id: <20200302143943.32676-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Store CS timestamp frequency in Hz
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmtI
eiBpc24ndCBhY2N1cmF0ZSBlbm91Z2ggZm9yIHN0b3JpbmcgdGhlIENTIHRpbWVzdGFtcApmcmVx
dWVuY3kgb24gc29tZSBvZiB0aGUgcGxhdGZvcm1zLiBTdG9yZSB0aGUgdmFsdWUKaW4gSHogaW5z
dGVhZC4KCkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAg
IHwgIDYgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jICAgICAgIHwg
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICB8IDEyICsr
KystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgfCAzNCAr
KysrKysrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5oICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVy
Zi5jIHwgIDQgKy0tCiA2IGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDMwIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggOGYyNTI1ZTRjZTBm
Li5jMGU1NGM1MDAwMTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0xNzkw
LDggKzE3OTAsOCBAQCBzdGF0aWMgaW50IGk5MTVfZW5naW5lX2luZm8oc3RydWN0IHNlcV9maWxl
ICptLCB2b2lkICp1bnVzZWQpCiAJc2VxX3ByaW50ZihtLCAiR1QgYXdha2U/ICVzIFslZF1cbiIs
CiAJCSAgIHllc25vKGRldl9wcml2LT5ndC5hd2FrZSksCiAJCSAgIGF0b21pY19yZWFkKCZkZXZf
cHJpdi0+Z3Qud2FrZXJlZi5jb3VudCkpOwotCXNlcV9wcmludGYobSwgIkNTIHRpbWVzdGFtcCBm
cmVxdWVuY3k6ICV1IGtIelxuIiwKLQkJICAgUlVOVElNRV9JTkZPKGRldl9wcml2KS0+Y3NfdGlt
ZXN0YW1wX2ZyZXF1ZW5jeV9raHopOworCXNlcV9wcmludGYobSwgIkNTIHRpbWVzdGFtcCBmcmVx
dWVuY3k6ICV1IEh6XG4iLAorCQkgICBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5jc190aW1lc3Rh
bXBfZnJlcXVlbmN5X2h6KTsKIAogCXAgPSBkcm1fc2VxX2ZpbGVfcHJpbnRlcihtKTsKIAlmb3Jf
ZWFjaF91YWJpX2VuZ2luZShlbmdpbmUsIGRldl9wcml2KQpAQCAtMTg5MCw3ICsxODkwLDcgQEAg
c3RhdGljIGludAogaTkxNV9wZXJmX25vYV9kZWxheV9zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRhdGE7Ci0JY29uc3QgdTMyIGNs
ayA9IFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHo7CisJY29u
c3QgdTMyIGNsayA9IFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9o
eiAvIDEwMDA7CiAKIAkvKgogCSAqIFRoaXMgd291bGQgbGVhZCB0byBpbmZpbml0ZSB3YWl0cyBh
cyB3ZSdyZSBkb2luZyB0aW1lc3RhbXAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2V0cGFyYW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYwpp
bmRleCA1NGZjZTgxZDU3MjQuLmQwNDI2NDRiOWNkMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2V0cGFyYW0uYwpAQCAtMTUzLDcgKzE1Myw3IEBAIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQlyZXR1cm4gLUVOT0RFVjsKIAkJ
YnJlYWs7CiAJY2FzZSBJOTE1X1BBUkFNX0NTX1RJTUVTVEFNUF9GUkVRVUVOQ1k6Ci0JCXZhbHVl
ID0gMTAwMCAqIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHo7
CisJCXZhbHVlID0gUlVOVElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2h6
OwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFSQU1fTU1BUF9HVFRfQ09IRVJFTlQ6CiAJCXZhbHVl
ID0gSU5URUxfSU5GTyhpOTE1KS0+aGFzX2NvaGVyZW50X2dndHQ7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZi5jCmluZGV4IDcxNmZlNmU0ZTU2Yy4uYTJmOThmYjA4YmYxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYwpAQCAtMTY2OCw4ICsxNjY4LDggQEAgc3RhdGljIGludCBhbGxvY19ub2Ffd2Fp
dChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCXN0cnVjdCBpOTE1X3ZtYSAqdm1h
OwogCWNvbnN0IHU2NCBkZWxheV90aWNrcyA9IDB4ZmZmZmZmZmZmZmZmZmZmZiAtCiAJCURJVl9S
T1VORF9VUF9VTEwoYXRvbWljNjRfcmVhZCgmc3RyZWFtLT5wZXJmLT5ub2FfcHJvZ3JhbW1pbmdf
ZGVsYXkpICoKLQkJCQkgUlVOVElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5
X2toeiwKLQkJCQkgMTAwMDAwMCk7CisJCQkJIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0
YW1wX2ZyZXF1ZW5jeV9oeiwKKwkJCQkgMTAwMDAwMDAwMCk7CiAJY29uc3QgdTMyIGJhc2UgPSBz
dHJlYW0tPmVuZ2luZS0+bW1pb19iYXNlOwogI2RlZmluZSBDU19HUFIoeCkgR0VOOF9SSU5HX0NT
X0dQUihiYXNlLCB4KQogCXUzMiAqYmF0Y2gsICp0czAsICpjcywgKmp1bXA7CkBAIC0zNDY2LDgg
KzM0NjYsOCBAQCBpOTE1X3BlcmZfb3Blbl9pb2N0bF9sb2NrZWQoc3RydWN0IGk5MTVfcGVyZiAq
cGVyZiwKIAogc3RhdGljIHU2NCBvYV9leHBvbmVudF90b19ucyhzdHJ1Y3QgaTkxNV9wZXJmICpw
ZXJmLCBpbnQgZXhwb25lbnQpCiB7Ci0JcmV0dXJuIGRpdl91NjQoMTAwMDAwMCAqICgyVUxMIDw8
IGV4cG9uZW50KSwKLQkJICAgICAgIFJVTlRJTUVfSU5GTyhwZXJmLT5pOTE1KS0+Y3NfdGltZXN0
YW1wX2ZyZXF1ZW5jeV9raHopOworCXJldHVybiBkaXZfdTY0KDEwMDAwMDAwMDAgKiAoMlVMTCA8
PCBleHBvbmVudCksCisJCSAgICAgICBSVU5USU1FX0lORk8ocGVyZi0+aTkxNSktPmNzX3RpbWVz
dGFtcF9mcmVxdWVuY3lfaHopOwogfQogCiAvKioKQEAgLTQzNTksOCArNDM1OSw4IEBAIHZvaWQg
aTkxNV9wZXJmX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKHBlcmYt
Pm9wcy5lbmFibGVfbWV0cmljX3NldCkgewogCQltdXRleF9pbml0KCZwZXJmLT5sb2NrKTsKIAot
CQlvYV9zYW1wbGVfcmF0ZV9oYXJkX2xpbWl0ID0gMTAwMCAqCi0JCQkoUlVOVElNRV9JTkZPKGk5
MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2toeiAvIDIpOworCQlvYV9zYW1wbGVfcmF0ZV9o
YXJkX2xpbWl0ID0KKwkJCVJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5j
eV9oeiAvIDI7CiAKIAkJbXV0ZXhfaW5pdCgmcGVyZi0+bWV0cmljc19sb2NrKTsKIAkJaWRyX2lu
aXQoJnBlcmYtPm1ldHJpY3NfaWRyKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5jCmluZGV4IGQ3ZmUxMjczNGRiOC4uMzI3MzM1MzU5NjRkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTEzNSw4ICsxMzUsOCBAQCB2b2lkIGludGVs
X2RldmljZV9pbmZvX3ByaW50X3J1bnRpbWUoY29uc3Qgc3RydWN0IGludGVsX3J1bnRpbWVfaW5m
byAqaW5mbywKIAlzc2V1X2R1bXAoJmluZm8tPnNzZXUsIHApOwogCiAJZHJtX3ByaW50ZihwLCAi
cmF3Y2xrIHJhdGU6ICV1IGtIelxuIiwgaW5mby0+cmF3Y2xrX2ZyZXEpOwotCWRybV9wcmludGYo
cCwgIkNTIHRpbWVzdGFtcCBmcmVxdWVuY3k6ICV1IGtIelxuIiwKLQkJICAgaW5mby0+Y3NfdGlt
ZXN0YW1wX2ZyZXF1ZW5jeV9raHopOworCWRybV9wcmludGYocCwgIkNTIHRpbWVzdGFtcCBmcmVx
dWVuY3k6ICV1IEh6XG4iLAorCQkgICBpbmZvLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2h6KTsK
IH0KIAogc3RhdGljIGludCBzc2V1X2V1X2lkeChjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAq
c3NldSwgaW50IHNsaWNlLApAQCAtNjc3LDEyICs2NzcsMTIgQEAgc3RhdGljIHUzMiByZWFkX3Jl
ZmVyZW5jZV90c19mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWJh
c2VfZnJlcSA9ICgodHNfb3ZlcnJpZGUgJiBHRU45X1RJTUVTVEFNUF9PVkVSUklERV9VU19DT1VO
VEVSX0RJVklERVJfTUFTSykgPj4KIAkJICAgICBHRU45X1RJTUVTVEFNUF9PVkVSUklERV9VU19D
T1VOVEVSX0RJVklERVJfU0hJRlQpICsgMTsKLQliYXNlX2ZyZXEgKj0gMTAwMDsKKwliYXNlX2Zy
ZXEgKj0gMTAwMDAwMDsKIAogCWZyYWNfZnJlcSA9ICgodHNfb3ZlcnJpZGUgJgogCQkgICAgICBH
RU45X1RJTUVTVEFNUF9PVkVSUklERV9VU19DT1VOVEVSX0RFTk9NSU5BVE9SX01BU0spID4+CiAJ
CSAgICAgR0VOOV9USU1FU1RBTVBfT1ZFUlJJREVfVVNfQ09VTlRFUl9ERU5PTUlOQVRPUl9TSElG
VCk7Ci0JZnJhY19mcmVxID0gMTAwMCAvIChmcmFjX2ZyZXEgKyAxKTsKKwlmcmFjX2ZyZXEgPSAx
MDAwMDAwIC8gKGZyYWNfZnJlcSArIDEpOwogCiAJcmV0dXJuIGJhc2VfZnJlcSArIGZyYWNfZnJl
cTsKIH0KQEAgLTY5MCw4ICs2OTAsOCBAQCBzdGF0aWMgdTMyIHJlYWRfcmVmZXJlbmNlX3RzX2Zy
ZXEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogc3RhdGljIHUzMiBnZW4xMF9n
ZXRfY3J5c3RhbF9jbG9ja19mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAkJCQkJdTMyIHJwbV9jb25maWdfcmVnKQogewotCXUzMiBmMTlfMl9taHogPSAxOTIwMDsKLQl1
MzIgZjI0X21oeiA9IDI0MDAwOworCXUzMiBmMTlfMl9taHogPSAxOTIwMDAwMDsKKwl1MzIgZjI0
X21oeiA9IDI0MDAwMDAwOwogCXUzMiBjcnlzdGFsX2Nsb2NrID0gKHJwbV9jb25maWdfcmVnICYK
IAkJCSAgICAgR0VOOV9SUE1fQ09ORklHMF9DUllTVEFMX0NMT0NLX0ZSRVFfTUFTSykgPj4KIAkJ
CSAgICBHRU45X1JQTV9DT05GSUcwX0NSWVNUQUxfQ0xPQ0tfRlJFUV9TSElGVDsKQEAgLTcxMCwx
MCArNzEwLDEwIEBAIHN0YXRpYyB1MzIgZ2VuMTBfZ2V0X2NyeXN0YWxfY2xvY2tfZnJlcShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiBzdGF0aWMgdTMyIGdlbjExX2dldF9jcnlz
dGFsX2Nsb2NrX2ZyZXEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCQl1
MzIgcnBtX2NvbmZpZ19yZWcpCiB7Ci0JdTMyIGYxOV8yX21oeiA9IDE5MjAwOwotCXUzMiBmMjRf
bWh6ID0gMjQwMDA7Ci0JdTMyIGYyNV9taHogPSAyNTAwMDsKLQl1MzIgZjM4XzRfbWh6ID0gMzg0
MDA7CisJdTMyIGYxOV8yX21oeiA9IDE5MjAwMDAwOworCXUzMiBmMjRfbWh6ID0gMjQwMDAwMDA7
CisJdTMyIGYyNV9taHogPSAyNTAwMDAwMDsKKwl1MzIgZjM4XzRfbWh6ID0gMzg0MDAwMDA7CiAJ
dTMyIGNyeXN0YWxfY2xvY2sgPSAocnBtX2NvbmZpZ19yZWcgJgogCQkJICAgICBHRU4xMV9SUE1f
Q09ORklHMF9DUllTVEFMX0NMT0NLX0ZSRVFfTUFTSykgPj4KIAkJCSAgICBHRU4xMV9SUE1fQ09O
RklHMF9DUllTVEFMX0NMT0NLX0ZSRVFfU0hJRlQ7CkBAIC03MzUsOSArNzM1LDkgQEAgc3RhdGlj
IHUzMiBnZW4xMV9nZXRfY3J5c3RhbF9jbG9ja19mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAogc3RhdGljIHUzMiByZWFkX3RpbWVzdGFtcF9mcmVxdWVuY3koc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCXUzMiBmMTJfNV9taHogPSAxMjUwMDsK
LQl1MzIgZjE5XzJfbWh6ID0gMTkyMDA7Ci0JdTMyIGYyNF9taHogPSAyNDAwMDsKKwl1MzIgZjEy
XzVfbWh6ID0gMTI1MDAwMDA7CisJdTMyIGYxOV8yX21oeiA9IDE5MjAwMDAwOworCXUzMiBmMjRf
bWh6ID0gMjQwMDAwMDA7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8PSA0KSB7CiAJCS8q
IFBSTXMgc2F5OgpAQCAtNzQ2LDcgKzc0Niw3IEBAIHN0YXRpYyB1MzIgcmVhZF90aW1lc3RhbXBf
ZnJlcXVlbmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJICogICAgICBo
Y2xrcy4iICh0aHJvdWdoIHRoZSDigJxDbG9ja2luZyBDb25maWd1cmF0aW9u4oCdCiAJCSAqICAg
ICAgKOKAnENMS0NGR+KAnSkgTUNIQkFSIHJlZ2lzdGVyKQogCQkgKi8KLQkJcmV0dXJuIFJVTlRJ
TUVfSU5GTyhkZXZfcHJpdiktPnJhd2Nsa19mcmVxIC8gMTY7CisJCXJldHVybiBSVU5USU1FX0lO
Rk8oZGV2X3ByaXYpLT5yYXdjbGtfZnJlcSAqIDEwMDAgLyAxNjsKIAl9IGVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPD0gOCkgewogCQkvKiBQUk1zIHNheToKIAkJICoKQEAgLTEwNTAsMTEg
KzEwNTAsMTEgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWRybV9kYmcoJmRldl9wcml2LT5kcm0sICJyYXdj
bGsgcmF0ZTogJWQga0h6XG4iLCBydW50aW1lLT5yYXdjbGtfZnJlcSk7CiAKIAkvKiBJbml0aWFs
aXplIGNvbW1hbmQgc3RyZWFtIHRpbWVzdGFtcCBmcmVxdWVuY3kgKi8KLQlydW50aW1lLT5jc190
aW1lc3RhbXBfZnJlcXVlbmN5X2toeiA9CisJcnVudGltZS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5j
eV9oeiA9CiAJCXJlYWRfdGltZXN0YW1wX2ZyZXF1ZW5jeShkZXZfcHJpdik7Ci0JaWYgKHJ1bnRp
bWUtPmNzX3RpbWVzdGFtcF9mcmVxdWVuY3lfa2h6KSB7CisJaWYgKHJ1bnRpbWUtPmNzX3RpbWVz
dGFtcF9mcmVxdWVuY3lfaHopIHsKIAkJcnVudGltZS0+Y3NfdGltZXN0YW1wX3BlcmlvZF9ucyA9
Ci0JCQlkaXZfdTY0KDFlNiwgcnVudGltZS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopOwor
CQkJZGl2X3U2NCgxZTksIHJ1bnRpbWUtPmNzX3RpbWVzdGFtcF9mcmVxdWVuY3lfaHopOwogCQlk
cm1fZGJnKCZkZXZfcHJpdi0+ZHJtLAogCQkJIkNTIHRpbWVzdGFtcCB3cmFwYXJvdW5kIGluICVs
bGRtc1xuIiwKIAkJCWRpdl91NjQobXVsX3UzMl91MzIocnVudGltZS0+Y3NfdGltZXN0YW1wX3Bl
cmlvZF9ucywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCmluZGV4IDFl
Y2I5ZGYyZGU5MS4uNDMyZTljN2MwZmU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmgKQEAgLTIxOCw3ICsyMTgsNyBAQCBzdHJ1Y3QgaW50ZWxfcnVudGltZV9pbmZv
IHsKIAogCXUzMiByYXdjbGtfZnJlcTsKIAotCXUzMiBjc190aW1lc3RhbXBfZnJlcXVlbmN5X2to
ejsKKwl1MzIgY3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9oejsKIAl1MzIgY3NfdGltZXN0YW1wX3Bl
cmlvZF9uczsKIAogCS8qIE1lZGlhIGVuZ2luZSBhY2Nlc3MgdG8gU0ZDIHBlciBpbnN0YW5jZSAq
LwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jCmluZGV4IGQxYTE1
NjhjNDdiYS4uZGVhMGM1ZGQyNzM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfcGVyZi5jCkBAIC0xODAsOCArMTgwLDggQEAgc3RhdGljIGludCBsaXZlX25vYV9kZWxh
eSh2b2lkICphcmcpCiAKIAlkZWxheSA9IGludGVsX3JlYWRfc3RhdHVzX3BhZ2Uoc3RyZWFtLT5l
bmdpbmUsIDB4MTAyKTsKIAlkZWxheSAtPSBpbnRlbF9yZWFkX3N0YXR1c19wYWdlKHN0cmVhbS0+
ZW5naW5lLCAweDEwMCk7Ci0JZGVsYXkgPSBkaXZfdTY0KG11bF91MzJfdTMyKGRlbGF5LCAxMDAw
ICogMTAwMCksCi0JCQlSVU5USU1FX0lORk8oaTkxNSktPmNzX3RpbWVzdGFtcF9mcmVxdWVuY3lf
a2h6KTsKKwlkZWxheSA9IGRpdl91NjQobXVsX3UzMl91MzIoZGVsYXksIDEwMDAwMDAwMDApLAor
CQkJUlVOVElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2h6KTsKIAlwcl9p
bmZvKCJHUFUgZGVsYXk6ICV1bnMsIGV4cGVjdGVkICVsbHVuc1xuIiwKIAkJZGVsYXksIGV4cGVj
dGVkKTsKIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
