Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84E934B25
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB0F8982C;
	Tue,  4 Jun 2019 14:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81756897FF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:20 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:07 +0300
Message-Id: <20190604145826.16424-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/23] drm/i915: Sanitize the terminology used
 for TypeC port modes
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFR5cGVDIHBvcnQgbW9kZSBjYW4gc3dpdGNoIGR5bmFtaWNhbGx5LCB0byByZWZsZWN0IHRo
YXQgYmV0dGVyIGNhbGwKdGhlIHBvcnQncyBtb2RlIGFzICdtb2RlJyByYXRoZXIgdGhhbiAndHlw
ZScuCgpXaGlsZSBhdCBpdDoKLSBzL1RDX1BPUlRfVEJUL1RDX1BPUlRfVEJUX0FMVC8gYW5kIHMv
VENfUE9SVF9UWVBFQy9UQ19QT1JUX0RQX0FMVC8uCiAgJ1RZUEVDJyBpcyBhbWJpZ3VvdXMsIFRC
VF9BTFQgYW5kIERQX0FMVCBiZXR0ZXIgbWF0Y2ggdGhlIHJlYWxpdHkuCgotIFJlbW92ZSB0aGUg
J3Vua25vd24nIFR5cGVDIHBvcnQgbW9kZS4gVGhlIG1vZGUgaXMgYWx3YXlzIGtub3duLCBpdCdz
CiAgdGhlIFRCVC1hbHQvc2FmZSBtb2RlIGFmdGVyIEhXIHJlc2V0IGFuZCBhZnRlciBkaXNjb25u
ZWN0aW5nIHRoZSBQSFkuCiAgU2ltcGxpZnkgdGhlIHRjX3BvcnQvdGNfdHlwZSBjaGVja3MgYWNj
b3JkaW5nbHkuCgotIERvbid0IFdBUk4gaWYgdGhlIHBvcnQgbW9kZSBjaGFuZ2VzLCB0aGF0IGNh
biBoYXBwZW4gbm9ybWFsbHkuCgpObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogQW5pbWVzaCBN
YW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+CkNjOiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIu
emFub25pQGludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGRpLmMgICAgICB8IDExICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheS5oICB8ICA3ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMg
ICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBsbF9tZ3IuYyB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAgICAgIHwgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMgICAgICAgfCA0OCArKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0KIDYgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYwppbmRleCA1YTFjOTg0MzgzNzUuLmEzNTc0ZjE0
YTNkMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMKQEAgLTI5ODYsMTQgKzI5ODYsMTQgQEAg
c3RhdGljIHZvaWQgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICppbnRlbF9kaWdfcG9ydCkKIAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRf
dG9fdGMoZGV2X3ByaXYsIHBvcnQpOwogCXUzMiBsbjAsIGxuMSwgbGFuZV9pbmZvOwogCi0JaWYg
KHRjX3BvcnQgPT0gUE9SVF9UQ19OT05FIHx8IGludGVsX2RpZ19wb3J0LT50Y190eXBlID09IFRD
X1BPUlRfVEJUKQorCWlmIChpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9B
TFQpCiAJCXJldHVybjsKIAogCWxuMCA9IEk5MTVfUkVBRChNR19EUF9NT0RFKDAsIHBvcnQpKTsK
IAlsbjEgPSBJOTE1X1JFQUQoTUdfRFBfTU9ERSgxLCBwb3J0KSk7CiAKLQlzd2l0Y2ggKGludGVs
X2RpZ19wb3J0LT50Y190eXBlKSB7Ci0JY2FzZSBUQ19QT1JUX1RZUEVDOgorCXN3aXRjaCAoaW50
ZWxfZGlnX3BvcnQtPnRjX21vZGUpIHsKKwljYXNlIFRDX1BPUlRfRFBfQUxUOgogCQlsbjAgJj0g
fihNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFIHwgTUdfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERSk7
CiAJCWxuMSAmPSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19E
UF9YMl9NT0RFKTsKIApAQCAtMzAzNiw3ICszMDM2LDcgQEAgc3RhdGljIHZvaWQgaWNsX3Byb2dy
YW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkK
IAkJYnJlYWs7CiAKIAlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UoaW50ZWxfZGlnX3BvcnQtPnRj
X3R5cGUpOworCQlNSVNTSU5HX0NBU0UoaW50ZWxfZGlnX3BvcnQtPnRjX21vZGUpOwogCQlyZXR1
cm47CiAJfQogCkBAIC0zNjMwLDggKzM2MzAsNyBAQCBpbnRlbF9kZGlfcHJlX3BsbF9lbmFibGUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJICogUHJvZ3JhbSB0aGUgbGFuZSBjb3Vu
dCBmb3Igc3RhdGljL2R5bmFtaWMgY29ubmVjdGlvbnMgb24gVHlwZS1DIHBvcnRzLgogCSAqIFNr
aXAgdGhpcyBzdGVwIGZvciBUQlQuCiAJICovCi0JaWYgKGRpZ19wb3J0LT50Y190eXBlID09IFRD
X1BPUlRfVU5LTk9XTiB8fAotCSAgICBkaWdfcG9ydC0+dGNfdHlwZSA9PSBUQ19QT1JUX1RCVCkK
KwlpZiAoZGlnX3BvcnQtPnRjX21vZGUgPT0gVENfUE9SVF9UQlRfQUxUKQogCQlyZXR1cm47CiAK
IAlpbnRlbF9kZGlfc2V0X2ZpYV9sYW5lX2NvdW50KGVuY29kZXIsIGNydGNfc3RhdGUsIHBvcnQp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5oCmluZGV4IGVlNmI4MTk0YTQ1OS4uZDI5
NjU1NmVkODJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5oCkBAIC0xODksMTAg
KzE4OSw5IEBAIGVudW0gdGNfcG9ydCB7CiAJSTkxNV9NQVhfVENfUE9SVFMKIH07CiAKLWVudW0g
dGNfcG9ydF90eXBlIHsKLQlUQ19QT1JUX1VOS05PV04gPSAwLAotCVRDX1BPUlRfVFlQRUMsCi0J
VENfUE9SVF9UQlQsCitlbnVtIHRjX3BvcnRfbW9kZSB7CisJVENfUE9SVF9UQlRfQUxULAorCVRD
X1BPUlRfRFBfQUxULAogCVRDX1BPUlRfTEVHQUNZLAogfTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMKaW5kZXggYjY5MzEwYmQ5OTE0Li5lMWUyNzY2MmFhNmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHAuYwpAQCAtMTE3NSw3ICsxMTc1LDcgQEAgc3RhdGljIHUzMiBza2xfZ2V0X2F1eF9zZW5kX2N0
bChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCSAgICAgIERQX0FVWF9DSF9DVExfRldfU1lO
Q19QVUxTRV9TS0woMzIpIHwKIAkgICAgICBEUF9BVVhfQ0hfQ1RMX1NZTkNfUFVMU0VfU0tMKDMy
KTsKIAotCWlmIChpbnRlbF9kaWdfcG9ydC0+dGNfdHlwZSA9PSBUQ19QT1JUX1RCVCkKKwlpZiAo
aW50ZWxfZGlnX3BvcnQtPnRjX21vZGUgPT0gVENfUE9SVF9UQlRfQUxUKQogCQlyZXQgfD0gRFBf
QVVYX0NIX0NUTF9UQlRfSU87CiAKIAlyZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RwbGxfbWdyLmMKaW5kZXggNjk3ODdmMjU5Njc3Li5mNDc4NzY1MGEwZDMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtMjgxNyw3ICsyODE3LDcgQEAgaWNsX2dldF9k
cGxsKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJaW50ZWxfZGlnX3Bv
cnQgPSBlbmNfdG9fZGlnX3BvcnQoJmVuY29kZXItPmJhc2UpOwogCQl9CiAKLQkJaWYgKGludGVs
X2RpZ19wb3J0LT50Y190eXBlID09IFRDX1BPUlRfVEJUKSB7CisJCWlmIChpbnRlbF9kaWdfcG9y
dC0+dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpIHsKIAkJCW1pbiA9IERQTExfSURfSUNMX1RC
VFBMTDsKIAkJCW1heCA9IG1pbjsKIAkJCXJldCA9IGljbF9jYWxjX2RwbGxfc3RhdGUoY3J0Y19z
dGF0ZSwgZW5jb2Rlcik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCmluZGV4IDBkY2MwMzU5MmQ2
ZS4uMzBjZDQ5ZGJkMGQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtMTIyNSw3ICsx
MjI1LDcgQEAgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCB7CiAJZW51bSBhdXhfY2ggYXV4X2No
OwogCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZGRpX2lvX3Bvd2VyX2RvbWFpbjsK
IAlib29sIHRjX2xlZ2FjeV9wb3J0OjE7Ci0JZW51bSB0Y19wb3J0X3R5cGUgdGNfdHlwZTsKKwll
bnVtIHRjX3BvcnRfbW9kZSB0Y19tb2RlOwogCiAJdm9pZCAoKndyaXRlX2luZm9mcmFtZSkoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYwppbmRleCA3YTFiNTg3MDk0
NWYuLmEzMDU3YzQ0YmVjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
dGMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jCkBAIC02LDE5ICs2LDE4
IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF90Yy5oIgogCi1zdGF0
aWMgY29uc3QgY2hhciAqdGNfdHlwZV9uYW1lKGVudW0gdGNfcG9ydF90eXBlIHR5cGUpCitzdGF0
aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9kZSkK
IHsKIAlzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG5hbWVzW10gPSB7Ci0JCVtUQ19QT1JUX1VO
S05PV05dID0gInVua25vd24iLAorCQlbVENfUE9SVF9UQlRfQUxUXSA9ICJ0YnQtYWx0IiwKKwkJ
W1RDX1BPUlRfRFBfQUxUXSA9ICJkcC1hbHQiLAogCQlbVENfUE9SVF9MRUdBQ1ldID0gImxlZ2Fj
eSIsCi0JCVtUQ19QT1JUX1RZUEVDXSA9ICJ0eXBlYyIsCi0JCVtUQ19QT1JUX1RCVF0gPSAidGJ0
IiwKIAl9OwogCi0JaWYgKFdBUk5fT04odHlwZSA+PSBBUlJBWV9TSVpFKG5hbWVzKSkpCi0JCXR5
cGUgPSBUQ19QT1JUX1VOS05PV047CisJaWYgKFdBUk5fT04obW9kZSA+PSBBUlJBWV9TSVpFKG5h
bWVzKSkpCisJCW1vZGUgPSBUQ19QT1JUX1RCVF9BTFQ7CiAKLQlyZXR1cm4gbmFtZXNbdHlwZV07
CisJcmV0dXJuIG5hbWVzW21vZGVdOwogfQogCiBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xh
bmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCkBAIC0yOCw3ICsy
Nyw3IEBAIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAl1MzIg
bGFuZV9pbmZvOwogCi0JaWYgKHRjX3BvcnQgPT0gUE9SVF9UQ19OT05FIHx8IGRpZ19wb3J0LT50
Y190eXBlICE9IFRDX1BPUlRfVFlQRUMpCisJaWYgKGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BP
UlRfRFBfQUxUKQogCQlyZXR1cm4gNDsKIAogCWxhbmVfaW5mbyA9IDA7CkBAIC04MCw4ICs3OSw4
IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfY29ubmVjdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCkKIAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMo
ZGV2X3ByaXYsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOwogCXUzMiB2YWw7CiAKLQlpZiAoZGlnX3Bv
cnQtPnRjX3R5cGUgIT0gVENfUE9SVF9MRUdBQ1kgJiYKLQkgICAgZGlnX3BvcnQtPnRjX3R5cGUg
IT0gVENfUE9SVF9UWVBFQykKKwlpZiAoZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9MRUdB
Q1kgJiYKKwkgICAgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9EUF9BTFQpCiAJCXJldHVy
biB0cnVlOwogCiAJdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFBNUyk7CkBAIC0xMDUs
NyArMTA0LDcgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCSAqIE5vdyB3ZSBoYXZlIHRvIHJlLWNoZWNrIHRoZSBs
aXZlIHN0YXRlLCBpbiBjYXNlIHRoZSBwb3J0IHJlY2VudGx5CiAJICogYmVjYW1lIGRpc2Nvbm5l
Y3RlZC4gTm90IG5lY2Vzc2FyeSBmb3IgbGVnYWN5IG1vZGUuCiAJICovCi0JaWYgKGRpZ19wb3J0
LT50Y190eXBlID09IFRDX1BPUlRfVFlQRUMgJiYKKwlpZiAoZGlnX3BvcnQtPnRjX21vZGUgPT0g
VENfUE9SVF9EUF9BTFQgJiYKIAkgICAgIShJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQU1ApICYg
VENfTElWRV9TVEFURV9UQyh0Y19wb3J0KSkpIHsKIAkJRFJNX0RFQlVHX0tNUygiVEMgUEhZICVk
IHN1ZGRlbiBkaXNjb25uZWN0LlxuIiwgdGNfcG9ydCk7CiAJCWljbF90Y19waHlfZGlzY29ubmVj
dChkaWdfcG9ydCk7CkBAIC0xMjQsMTUgKzEyMywxMiBAQCB2b2lkIGljbF90Y19waHlfZGlzY29u
bmVjdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsK
IAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIGRpZ19w
b3J0LT5iYXNlLnBvcnQpOwogCi0JaWYgKGRpZ19wb3J0LT50Y190eXBlID09IFRDX1BPUlRfVU5L
Tk9XTikKLQkJcmV0dXJuOwotCiAJLyoKIAkgKiBUQlQgZGlzY29ubmVjdGlvbiBmbG93IGlzIHJl
YWQgdGhlIGxpdmUgc3RhdHVzLCB3aGF0IHdhcyBkb25lIGluCiAJICogY2FsbGVyLgogCSAqLwot
CWlmIChkaWdfcG9ydC0+dGNfdHlwZSA9PSBUQ19QT1JUX1RZUEVDIHx8Ci0JICAgIGRpZ19wb3J0
LT50Y190eXBlID09IFRDX1BPUlRfTEVHQUNZKSB7CisJaWYgKGRpZ19wb3J0LT50Y19tb2RlID09
IFRDX1BPUlRfRFBfQUxUIHx8CisJICAgIGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfTEVH
QUNZKSB7CiAJCXUzMiB2YWw7CiAKIAkJdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUENT
U1MpOwpAQCAtMTQyLDkgKzEzOCw5IEBAIHZvaWQgaWNsX3RjX3BoeV9kaXNjb25uZWN0KHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCiAJRFJNX0RFQlVHX0tNUygiUG9ydCAl
YyBUQyB0eXBlICVzIGRpc2Nvbm5lY3RlZFxuIiwKIAkJICAgICAgcG9ydF9uYW1lKGRpZ19wb3J0
LT5iYXNlLnBvcnQpLAotCQkgICAgICB0Y190eXBlX25hbWUoZGlnX3BvcnQtPnRjX3R5cGUpKTsK
KwkJICAgICAgdGNfcG9ydF9tb2RlX25hbWUoZGlnX3BvcnQtPnRjX21vZGUpKTsKIAotCWRpZ19w
b3J0LT50Y190eXBlID0gVENfUE9SVF9VTktOT1dOOworCWRpZ19wb3J0LT50Y19tb2RlID0gVENf
UE9SVF9UQlRfQUxUOwogfQogCiBzdGF0aWMgdm9pZCBpY2xfdXBkYXRlX3RjX3BvcnRfdHlwZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCkBAIC0xNTIsMjYgKzE0OCwyMiBAQCBz
dGF0aWMgdm9pZCBpY2xfdXBkYXRlX3RjX3BvcnRfdHlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCiAJCQkJICAgIGJvb2wgaXNfbGVnYWN5LCBib29sIGlzX3R5cGVjLCBib29s
IGlzX3RidCkKIHsKIAllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7
Ci0JZW51bSB0Y19wb3J0X3R5cGUgb2xkX3R5cGUgPSBpbnRlbF9kaWdfcG9ydC0+dGNfdHlwZTsK
KwllbnVtIHRjX3BvcnRfbW9kZSBvbGRfbW9kZSA9IGludGVsX2RpZ19wb3J0LT50Y19tb2RlOwog
CiAJV0FSTl9PTihpc19sZWdhY3kgKyBpc190eXBlYyArIGlzX3RidCAhPSAxKTsKIAogCWlmIChp
c19sZWdhY3kpCi0JCWludGVsX2RpZ19wb3J0LT50Y190eXBlID0gVENfUE9SVF9MRUdBQ1k7CisJ
CWludGVsX2RpZ19wb3J0LT50Y19tb2RlID0gVENfUE9SVF9MRUdBQ1k7CiAJZWxzZSBpZiAoaXNf
dHlwZWMpCi0JCWludGVsX2RpZ19wb3J0LT50Y190eXBlID0gVENfUE9SVF9UWVBFQzsKKwkJaW50
ZWxfZGlnX3BvcnQtPnRjX21vZGUgPSBUQ19QT1JUX0RQX0FMVDsKIAllbHNlIGlmIChpc190YnQp
Ci0JCWludGVsX2RpZ19wb3J0LT50Y190eXBlID0gVENfUE9SVF9UQlQ7CisJCWludGVsX2RpZ19w
b3J0LT50Y19tb2RlID0gVENfUE9SVF9UQlRfQUxUOwogCWVsc2UKIAkJcmV0dXJuOwogCi0JLyog
VHlwZXMgYXJlIG5vdCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGF0IHJ1bnRpbWUuICovCi0JV0FS
Tl9PTihvbGRfdHlwZSAhPSBUQ19QT1JUX1VOS05PV04gJiYKLQkJb2xkX3R5cGUgIT0gaW50ZWxf
ZGlnX3BvcnQtPnRjX3R5cGUpOwotCi0JaWYgKG9sZF90eXBlICE9IGludGVsX2RpZ19wb3J0LT50
Y190eXBlKQorCWlmIChvbGRfbW9kZSAhPSBpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSkKIAkJRFJN
X0RFQlVHX0tNUygiUG9ydCAlYyBoYXMgVEMgdHlwZSAlc1xuIiwgcG9ydF9uYW1lKHBvcnQpLAot
CQkJICAgICAgdGNfdHlwZV9uYW1lKGludGVsX2RpZ19wb3J0LT50Y190eXBlKSk7CisJCQkgICAg
ICB0Y19wb3J0X21vZGVfbmFtZShpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSkpOwogfQogCiAKLS0g
CjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
