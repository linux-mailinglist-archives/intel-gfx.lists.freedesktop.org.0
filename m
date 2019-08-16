Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6F8FCF8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07156EB0C;
	Fri, 16 Aug 2019 08:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787AF6EAF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851314"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:26 -0700
Message-Id: <20190816080503.28594-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/39] drm/i915/psr: Make PSR registers relative
 to transcoders
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpQU1Ig
cmVnaXN0ZXJzIGFyZSBhIG1lc3MsIHNvbWUgaGF2ZSB0aGUgZnVsbCBhZGRyZXNzIHdoaWxlIG90
aGVycyBqdXN0CmhhdmUgdGhlIGFkZGl0aW9uYWwgb2Zmc2V0IGZyb20gcHNyX21taW9fYmFzZS4K
CkZvciBCRFcrIHBzcl9tbWlvX2Jhc2UgaXMgbm90aGluZyBtb3JlIHRoYW4gVFJBTlNDT0RFUl9F
RFBfT0ZGU0VUICsKMHg4MDAgYW5kIHVzaW5nIGl0IG1ha2VzIG1vcmUgZGlmZmljdWx0IGZvciBw
ZW9wbGUgd2l0aCBhbiBQU1IKcmVnaXN0ZXIgYWRkcmVzcyBvciBQU1IgcmVnaXN0ZXIgbmFtZSBm
cm9tIGZyb20gQlNwZWMgYXMgaTkxNSBhbHNvCmRvbid0IG1hdGNoIHRoZSBCU3BlYyBuYW1lcy4K
Rm9yIEhTVyBwc3JfbW1pb19iYXNlIGlzIF9ERElfQlVGX0NUTF9BICsgMHg4MDAgYW5kIFBTUiBy
ZWdpc3RlcnMgYXJlCm9ubHkgYXZhaWxhYmxlIGluIERESUEuCgpPdGhlciByZWFzb24gdG8gbWFr
ZSByZWxhdGl2ZSB0byB0cmFuc2NvZGVyIGlzIHRoYXQgc2luY2UgQkRXIGV2ZXJ5CnRyYW5zY29k
ZXIgaGF2ZSBQU1IgcmVnaXN0ZXJzLCBzbyBpbiB0aGVvcnkgaXQgc2hvdWxkIGJlIHBvc3NpYmxl
IHRvCmhhdmUgUFNSIGVuYWJsZWQgaW4gYSBub24tZURQIHRyYW5zY29kZXIuCgpTbyBmb3IgQkRX
KyB3ZSBjYW4gdXNlIF9UUkFOUzIoKSB0byBnZXQgdGhlIHJlZ2lzdGVyIG9mZnNldCBvZiBhbnkK
UFNSIHJlZ2lzdGVyIGluIGFueSB0cmFuc2NvZGVyIHdoaWxlIGZvciBIU1cgd2UgaGF2ZSBfSFNX
X1BTUl9BREoKdGhhdCB3aWxsIGNhbGN1bGF0ZSB0aGUgcmVnaXN0ZXIgb2Zmc2V0IGZvciB0aGUg
c2luZ2xlIFBTUiBpbnN0YW5jZSwKbm90aW5nIHRoYXQgd2UgYXJlIGFscmVhZHkgZ3VhcmRlZCBh
Ym91dCB0cnlpbmcgdG8gZW5hYmxlIFBTUiBpbiBvdGhlcgpwb3J0IHRoYW4gRERJQSBvbiBIU1cg
YnkgdGhlICdpZiAoZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpJyBpbgppbnRlbF9wc3Jf
Y29tcHV0ZV9jb25maWcoKSwgdGhpcyBjaGVjayBzaG91bGQgb25seSBiZSB2YWxpZCBmb3IgSFNX
CmFuZCB3aWxsIGJlIGNoYW5nZWQgaW4gZnV0dXJlLgpQU1IyIHJlZ2lzdGVycyBhbmQgUFNSX0VW
RU5UIHdhcyBhZGRlZCBhZnRlciBIYXN3ZWxsIHNvIHRoYXQgaXMgd2h5Cl9QU1JfQURKKCkgaXMg
bm90IHVzZWQgaW4gc29tZSBtYWNyb3MuCgpUaGUgb25seSByZWdpc3RlcnMgdGhhdCBjYW4gbm90
IGJlIHJlbGF0aXZlIHRvIHRyYW5zY29kZXIgYXJlClBTUl9JTVIgYW5kIFBTUl9JSVIgdGhhdCBh
cmUgbm90IHJlbGF0aXZlIHRvIGFueXRoaW5nLCBzbyBrZWVwaW5nIGl0CmhhcmRjb2RlZC4KCkFs
c28gcmVtb3ZpbmcgQkRXX0VEUF9QU1JfQkFTRSBmcm9tIEdWVCBiZWNhdXNlIGl0IGlzIG5vdCB1
c2VkIGFzIGl0CmlzIHRoZSBvbmx5IFBTUiByZWdpc3RlciB0aGF0IEdWVCBoYXZlLgoKdjU6Ci0g
TWFjcm9zIGNoYW5nZWQgdG8gYmUgbW9yZSBleHBsaWNpdCBhYm91dCBIU1cgKERoaW5ha2FyYW4p
Ci0gU3F1YXNoZWQgd2l0aCB0aGUgcGF0Y2ggdGhhdCBhZGRlZCB0aGUgdHJhbiBwYXJhbWV0ZXIg
dG8gdGhlCm1hY3JvcyAoRGhpbmFrYXJhbikKCnY2OgotIENoZWNraW5nIGZvciBpbnRlcnJ1cHRp
b24gZXJyb3JzIGFmdGVyIG1vZHVsZSByZWxvYWQgaW4gdGhlCnRyYW5zY29kZXIgdGhhdCB3aWxs
IGJlIHVzZWQgKERoaW5ha2FyYW4pCi0gVXNpbmcgbG93ZXJjYXNlIHRvIHRoZSByZWdpc3RlcnMg
b2Zmc2V0cwoKdjc6Ci0gUmVtb3ZpbmcgSVNfSEFTV0VMTCgpIGZyb20gcmVnaXN0ZXJzIG1hY3Jv
cyhKYW5pKQoKQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50
ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBaaGkgV2FuZyA8emhpLmEud2Fu
Z0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCAxMDQgKysrKysrKysrKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d2dC9oYW5kbGVycy5jICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jICAgICAgfCAgMTggKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICB8ICA1NyArKysrKysrKystLS0tCiA1IGZpbGVzIGNoYW5nZWQsIDExMyBpbnNlcnRpb25z
KCspLCA3MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwppbmRleCBhZDcwNDRlYTFlZmUuLjc5NWUyNWQ0NTM1NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0zOTAsNyArMzkwLDcgQEAgc3RhdGljIHZvaWQg
aHN3X3Bzcl9zZXR1cF9hdXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAogCUJVSUxEX0JV
R19PTihzaXplb2YoYXV4X21zZykgPiAyMCk7CiAJZm9yIChpID0gMDsgaSA8IHNpemVvZihhdXhf
bXNnKTsgaSArPSA0KQotCQlJOTE1X1dSSVRFKEVEUF9QU1JfQVVYX0RBVEEoaSA+PiAyKSwKKwkJ
STkxNV9XUklURShFRFBfUFNSX0FVWF9EQVRBKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciwgaSA+
PiAyKSwKIAkJCSAgIGludGVsX2RwX3BhY2tfYXV4KCZhdXhfbXNnW2ldLCBzaXplb2YoYXV4X21z
ZykgLSBpKSk7CiAKIAlhdXhfY2xvY2tfZGl2aWRlciA9IGludGVsX2RwLT5nZXRfYXV4X2Nsb2Nr
X2RpdmlkZXIoaW50ZWxfZHAsIDApOwpAQCAtNDAxLDcgKzQwMSw3IEBAIHN0YXRpYyB2b2lkIGhz
d19wc3Jfc2V0dXBfYXV4KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAKIAkvKiBTZWxlY3Qg
b25seSB2YWxpZCBiaXRzIGZvciBTUkRfQVVYX0NUTCAqLwogCWF1eF9jdGwgJj0gcHNyX2F1eF9t
YXNrOwotCUk5MTVfV1JJVEUoRURQX1BTUl9BVVhfQ1RMLCBhdXhfY3RsKTsKKwlJOTE1X1dSSVRF
KEVEUF9QU1JfQVVYX0NUTChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpLCBhdXhfY3RsKTsKIH0K
IAogc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApCkBAIC00OTEsOCArNDkxLDkgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjEo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4
KQogCQl2YWwgfD0gRURQX1BTUl9DUkNfRU5BQkxFOwogCi0JdmFsIHw9IEk5MTVfUkVBRChFRFBf
UFNSX0NUTCkgJiBFRFBfUFNSX1JFU1RPUkVfUFNSX0FDVElWRV9DVFhfTUFTSzsKLQlJOTE1X1dS
SVRFKEVEUF9QU1JfQ1RMLCB2YWwpOworCXZhbCB8PSAoSTkxNV9SRUFEKEVEUF9QU1JfQ1RMKGRl
dl9wcml2LT5wc3IudHJhbnNjb2RlcikpICYKKwkJRURQX1BTUl9SRVNUT1JFX1BTUl9BQ1RJVkVf
Q1RYX01BU0spOworCUk5MTVfV1JJVEUoRURQX1BTUl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2Nv
ZGVyKSwgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkKQEAgLTUyOCw5ICs1MjksOSBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0
aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCSAqIFBTUjIgSFcgaXMgaW5j
b3JyZWN0bHkgdXNpbmcgRURQX1BTUl9UUDFfVFAzX1NFTCBhbmQgQlNwZWMgaXMKIAkgKiByZWNv
bW1lbmRpbmcga2VlcCB0aGlzIGJpdCB1bnNldCB3aGlsZSBQU1IyIGlzIGVuYWJsZWQuCiAJICov
Ci0JSTkxNV9XUklURShFRFBfUFNSX0NUTCwgMCk7CisJSTkxNV9XUklURShFRFBfUFNSX0NUTChk
ZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpLCAwKTsKIAotCUk5MTVfV1JJVEUoRURQX1BTUjJfQ1RM
LCB2YWwpOworCUk5MTVfV1JJVEUoRURQX1BTUjJfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2Rl
ciksIHZhbCk7CiB9CiAKIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCkBAIC02MDYsMTAgKzYwNyw5IEBAIHZvaWQgaW50ZWxfcHNy
X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAKIAkvKgogCSAqIEhT
VyBzcGVjIGV4cGxpY2l0bHkgc2F5cyBQU1IgaXMgdGllZCB0byBwb3J0IEEuCi0JICogQkRXKyBw
bGF0Zm9ybXMgd2l0aCBEREkgaW1wbGVtZW50YXRpb24gb2YgUFNSIGhhdmUgZGlmZmVyZW50Ci0J
ICogUFNSIHJlZ2lzdGVycyBwZXIgdHJhbnNjb2RlciBhbmQgd2Ugb25seSBpbXBsZW1lbnQgdHJh
bnNjb2RlciBFRFAKLQkgKiBvbmVzLiBTaW5jZSBieSBEaXNwbGF5IGRlc2lnbiB0cmFuc2NvZGVy
IEVEUCBpcyB0aWVkIHRvIHBvcnQgQQotCSAqIHdlIGNhbiBzYWZlbHkgZXNjYXBlIGJhc2VkIG9u
IHRoZSBwb3J0IEEuCisJICogQkRXKyBwbGF0Zm9ybXMgaGF2ZSBhIGluc3RhbmNlIG9mIFBTUiBy
ZWdpc3RlcnMgcGVyIHRyYW5zY29kZXIgYnV0CisJICogZm9yIG5vdyBpdCBvbmx5IHN1cHBvcnRz
IG9uZSBpbnN0YW5jZSBvZiBQU1IsIHNvIGxldHMga2VlcCBpdAorCSAqIGhhcmRjb2RlZCB0byBQ
T1JUX0EKIAkgKi8KIAlpZiAoZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpIHsKIAkJRFJN
X0RFQlVHX0tNUygiUFNSIGNvbmRpdGlvbiBmYWlsZWQ6IFBvcnQgbm90IHN1cHBvcnRlZFxuIik7
CkBAIC02NDksOCArNjQ5LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2FjdGl2YXRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5
KQotCQlXQVJOX09OKEk5MTVfUkVBRChFRFBfUFNSMl9DVEwpICYgRURQX1BTUjJfRU5BQkxFKTsK
LQlXQVJOX09OKEk5MTVfUkVBRChFRFBfUFNSX0NUTCkgJiBFRFBfUFNSX0VOQUJMRSk7CisJCVdB
Uk5fT04oSTkxNV9SRUFEKEVEUF9QU1IyX0NUTChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKSAm
IEVEUF9QU1IyX0VOQUJMRSk7CisJV0FSTl9PTihJOTE1X1JFQUQoRURQX1BTUl9DVEwoZGV2X3By
aXYtPnBzci50cmFuc2NvZGVyKSkgJiBFRFBfUFNSX0VOQUJMRSk7CiAJV0FSTl9PTihkZXZfcHJp
di0+cHNyLmFjdGl2ZSk7CiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2X3ByaXYtPnBzci5sb2Nr
KTsKIApAQCAtNzIwLDE5ICs3MjAsMzcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9z
b3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA8IDExKQogCQltYXNrIHw9IEVEUF9QU1JfREVCVUdfTUFTS19ESVNQX1JFR19XUklURTsKIAot
CUk5MTVfV1JJVEUoRURQX1BTUl9ERUJVRywgbWFzayk7CisJSTkxNV9XUklURShFRFBfUFNSX0RF
QlVHKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciksIG1hc2spOwogfQogCiBzdGF0aWMgdm9pZCBp
bnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewog
CXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBkZXZfcHJpdi0+cHNyLmRwOworCXUzMiB2YWw7
CiAKIAlXQVJOX09OKGRldl9wcml2LT5wc3IuZW5hYmxlZCk7CiAKIAlkZXZfcHJpdi0+cHNyLnBz
cjJfZW5hYmxlZCA9IGludGVsX3BzcjJfZW5hYmxlZChkZXZfcHJpdiwgY3J0Y19zdGF0ZSk7CiAJ
ZGV2X3ByaXYtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOwogCWRldl9wcml2LT5wc3Iu
cGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKS0+cGlwZTsKKwlkZXZf
cHJpdi0+cHNyLnRyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsKKworCS8q
CisJICogSWYgYSBQU1IgZXJyb3IgaGFwcGVuZWQgYW5kIHRoZSBkcml2ZXIgaXMgcmVsb2FkZWQs
IHRoZSBFRFBfUFNSX0lJUgorCSAqIHdpbGwgc3RpbGwga2VlcCB0aGUgZXJyb3Igc2V0IGV2ZW4g
YWZ0ZXIgdGhlIHJlc2V0IGRvbmUgaW4gdGhlCisJICogaXJxX3ByZWluc3RhbGwgYW5kIGlycV91
bmluc3RhbGwgaG9va3MuCisJICogQW5kIGVuYWJsaW5nIGluIHRoaXMgc2l0dWF0aW9uIGNhdXNl
IHRoZSBzY3JlZW4gdG8gZnJlZXplIGluIHRoZQorCSAqIGZpcnN0IHRpbWUgdGhhdCBQU1IgSFcg
dHJpZXMgdG8gYWN0aXZhdGUgc28gbGV0cyBrZWVwIFBTUiBkaXNhYmxlZAorCSAqIHRvIGF2b2lk
IGFueSByZW5kZXJpbmcgcHJvYmxlbXMuCisJICovCisJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1Jf
SUlSKTsKKwl2YWwgJj0gRURQX1BTUl9FUlJPUihlZHBfcHNyX3NoaWZ0KGRldl9wcml2LT5wc3Iu
dHJhbnNjb2RlcikpOworCWlmICh2YWwpIHsKKwkJZGV2X3ByaXYtPnBzci5zaW5rX25vdF9yZWxp
YWJsZSA9IHRydWU7CisJCURSTV9ERUJVR19LTVMoIlBTUiBpbnRlcnJ1cHRpb24gZXJyb3Igc2V0
LCBub3QgZW5hYmxpbmcgUFNSXG4iKTsKKwkJcmV0dXJuOworCX0KIAogCURSTV9ERUJVR19LTVMo
IkVuYWJsaW5nIFBTUiVzXG4iLAogCQkgICAgICBkZXZfcHJpdi0+cHNyLnBzcjJfZW5hYmxlZCA/
ICIyIiA6ICIxIik7CkBAIC03ODIsMjAgKzgwMCwyNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3Jf
ZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJdTMyIHZhbDsKIAogCWlm
ICghZGV2X3ByaXYtPnBzci5hY3RpdmUpIHsKLQkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
OSkKLQkJCVdBUk5fT04oSTkxNV9SRUFEKEVEUF9QU1IyX0NUTCkgJiBFRFBfUFNSMl9FTkFCTEUp
OwotCQlXQVJOX09OKEk5MTVfUkVBRChFRFBfUFNSX0NUTCkgJiBFRFBfUFNSX0VOQUJMRSk7CisJ
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpIHsKKwkJCXZhbCA9IEk5MTVfUkVBRChFRFBf
UFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7CisJCQlXQVJOX09OKHZhbCAmIEVE
UF9QU1IyX0VOQUJMRSk7CisJCX0KKworCQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUl9DVEwoZGV2
X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7CisJCVdBUk5fT04odmFsICYgRURQX1BTUl9FTkFCTEUp
OworCiAJCXJldHVybjsKIAl9CiAKIAlpZiAoZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQpIHsK
LQkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1IyX0NUTCk7CisJCXZhbCA9IEk5MTVfUkVBRChFRFBf
UFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7CiAJCVdBUk5fT04oISh2YWwgJiBF
RFBfUFNSMl9FTkFCTEUpKTsKLQkJSTkxNV9XUklURShFRFBfUFNSMl9DVEwsIHZhbCAmIH5FRFBf
UFNSMl9FTkFCTEUpOworCQl2YWwgJj0gfkVEUF9QU1IyX0VOQUJMRTsKKwkJSTkxNV9XUklURShF
RFBfUFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgdmFsKTsKIAl9IGVsc2Ugewot
CQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUl9DVEwpOworCQl2YWwgPSBJOTE1X1JFQUQoRURQX1BT
Ul9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7CiAJCVdBUk5fT04oISh2YWwgJiBFRFBf
UFNSX0VOQUJMRSkpOwotCQlJOTE1X1dSSVRFKEVEUF9QU1JfQ1RMLCB2YWwgJiB+RURQX1BTUl9F
TkFCTEUpOworCQl2YWwgJj0gfkVEUF9QU1JfRU5BQkxFOworCQlJOTE1X1dSSVRFKEVEUF9QU1Jf
Q1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciksIHZhbCk7CiAJfQogCWRldl9wcml2LT5wc3Iu
YWN0aXZlID0gZmFsc2U7CiB9CkBAIC04MTcsMTAgKzg0MiwxMCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wc3JfZGlzYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpbnRlbF9w
c3JfZXhpdChkZXZfcHJpdik7CiAKIAlpZiAoZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQpIHsK
LQkJcHNyX3N0YXR1cyA9IEVEUF9QU1IyX1NUQVRVUzsKKwkJcHNyX3N0YXR1cyA9IEVEUF9QU1Iy
X1NUQVRVUyhkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpOwogCQlwc3Jfc3RhdHVzX21hc2sgPSBF
RFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFTSzsKIAl9IGVsc2UgewotCQlwc3Jfc3RhdHVzID0gRURQ
X1BTUl9TVEFUVVM7CisJCXBzcl9zdGF0dXMgPSBFRFBfUFNSX1NUQVRVUyhkZXZfcHJpdi0+cHNy
LnRyYW5zY29kZXIpOwogCQlwc3Jfc3RhdHVzX21hc2sgPSBFRFBfUFNSX1NUQVRVU19TVEFURV9N
QVNLOwogCX0KIApAQCAtOTYzLDcgKzk4OCw4IEBAIGludCBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRs
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUsCiAJICogZGVm
ZW5zaXZlIGVub3VnaCB0byBjb3ZlciBldmVyeXRoaW5nLgogCSAqLwogCi0JcmV0dXJuIF9faW50
ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIEVEUF9QU1JfU1RBVFVTLAor
CXJldHVybiBfX2ludGVsX3dhaXRfZm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5jb3JlLAorCQkJ
CQkgRURQX1BTUl9TVEFUVVMoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwKIAkJCQkJIEVEUF9Q
U1JfU1RBVFVTX1NUQVRFX01BU0ssCiAJCQkJCSBFRFBfUFNSX1NUQVRVU19TVEFURV9JRExFLCAy
LCA1MCwKIAkJCQkJIG91dF92YWx1ZSk7CkBAIC05NzksMTAgKzEwMDUsMTAgQEAgc3RhdGljIGJv
b2wgX19wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCQlyZXR1cm4gZmFsc2U7CiAKIAlpZiAoZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJs
ZWQpIHsKLQkJcmVnID0gRURQX1BTUjJfU1RBVFVTOworCQlyZWcgPSBFRFBfUFNSMl9TVEFUVVMo
ZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKTsKIAkJbWFzayA9IEVEUF9QU1IyX1NUQVRVU19TVEFU
RV9NQVNLOwogCX0gZWxzZSB7Ci0JCXJlZyA9IEVEUF9QU1JfU1RBVFVTOworCQlyZWcgPSBFRFBf
UFNSX1NUQVRVUyhkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpOwogCQltYXNrID0gRURQX1BTUl9T
VEFUVVNfU1RBVEVfTUFTSzsKIAl9CiAKQEAgLTEyMDgsMzYgKzEyMzQsMjQgQEAgdm9pZCBpbnRl
bF9wc3JfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogICovCiB2b2lk
IGludGVsX3Bzcl9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQl1
MzIgdmFsOwotCiAJaWYgKCFIQVNfUFNSKGRldl9wcml2KSkKIAkJcmV0dXJuOwogCi0JZGV2X3By
aXYtPnBzcl9tbWlvX2Jhc2UgPSBJU19IQVNXRUxMKGRldl9wcml2KSA/Ci0JCUhTV19FRFBfUFNS
X0JBU0UgOiBCRFdfRURQX1BTUl9CQVNFOwotCiAJaWYgKCFkZXZfcHJpdi0+cHNyLnNpbmtfc3Vw
cG9ydCkKIAkJcmV0dXJuOwogCisJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQorCQkvKgorCQkg
KiBIU1cgZG9uJ3QgaGF2ZSBQU1IgcmVnaXN0ZXJzIG9uIHRoZSBzYW1lIHNwYWNlIGFzIHRyYW5z
Y29kZXIKKwkJICogc28gc2V0IHRoaXMgdG8gYSB2YWx1ZSB0aGF0IHdoZW4gc3VidHJhY3QgdG8g
dGhlIHJlZ2lzdGVyCisJCSAqIGluIHRyYW5zY29kZXIgc3BhY2UgcmVzdWx0cyBpbiB0aGUgcmln
aHQgb2Zmc2V0IGZvciBIU1cKKwkJICovCisJCWRldl9wcml2LT5oc3dfcHNyX21taW9fYWRqdXN0
ID0gX1NSRF9DVExfRURQIC0gX0hTV19FRFBfUFNSX0JBU0U7CisKIAlpZiAoaTkxNV9tb2RwYXJh
bXMuZW5hYmxlX3BzciA9PSAtMSkKIAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA5IHx8ICFk
ZXZfcHJpdi0+dmJ0LnBzci5lbmFibGUpCiAJCQlpOTE1X21vZHBhcmFtcy5lbmFibGVfcHNyID0g
MDsKIAotCS8qCi0JICogSWYgYSBQU1IgZXJyb3IgaGFwcGVuZWQgYW5kIHRoZSBkcml2ZXIgaXMg
cmVsb2FkZWQsIHRoZSBFRFBfUFNSX0lJUgotCSAqIHdpbGwgc3RpbGwga2VlcCB0aGUgZXJyb3Ig
c2V0IGV2ZW4gYWZ0ZXIgdGhlIHJlc2V0IGRvbmUgaW4gdGhlCi0JICogaXJxX3ByZWluc3RhbGwg
YW5kIGlycV91bmluc3RhbGwgaG9va3MuCi0JICogQW5kIGVuYWJsaW5nIGluIHRoaXMgc2l0dWF0
aW9uIGNhdXNlIHRoZSBzY3JlZW4gdG8gZnJlZXplIGluIHRoZQotCSAqIGZpcnN0IHRpbWUgdGhh
dCBQU1IgSFcgdHJpZXMgdG8gYWN0aXZhdGUgc28gbGV0cyBrZWVwIFBTUiBkaXNhYmxlZAotCSAq
IHRvIGF2b2lkIGFueSByZW5kZXJpbmcgcHJvYmxlbXMuCi0JICovCi0JdmFsID0gSTkxNV9SRUFE
KEVEUF9QU1JfSUlSKTsKLQl2YWwgJj0gRURQX1BTUl9FUlJPUihlZHBfcHNyX3NoaWZ0KFRSQU5T
Q09ERVJfRURQKSk7Ci0JaWYgKHZhbCkgewotCQlEUk1fREVCVUdfS01TKCJQU1IgaW50ZXJydXB0
aW9uIGVycm9yIHNldFxuIik7Ci0JCWRldl9wcml2LT5wc3Iuc2lua19ub3RfcmVsaWFibGUgPSB0
cnVlOwotCX0KLQogCS8qIFNldCBsaW5rX3N0YW5kYnkgeCBsaW5rX29mZiBkZWZhdWx0cyAqLwog
CWlmIChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQogCQkv
KiBIU1cgYW5kIEJEVyByZXF1aXJlIHdvcmthcm91bmRzIHRoYXQgd2UgZG9uJ3QgaW1wbGVtZW50
LiAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRsZXJzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvaGFuZGxlcnMuYwppbmRleCAyNWY3ODE5NmI5NjQuLjQ1
YTkxMjRlNTNiNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRsZXJz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2hhbmRsZXJzLmMKQEAgLTI3OTYsNyAr
Mjc5Niw3IEBAIHN0YXRpYyBpbnQgaW5pdF9icm9hZHdlbGxfbW1pb19pbmZvKHN0cnVjdCBpbnRl
bF9ndnQgKmd2dCkKIAlNTUlPX0QoQ0hJQ0tFTl9QSVBFU0xfMShQSVBFX0MpLCBEX0JEV19QTFVT
KTsKIAogCU1NSU9fRChXTV9NSVNDLCBEX0JEVyk7Ci0JTU1JT19EKF9NTUlPKEJEV19FRFBfUFNS
X0JBU0UpLCBEX0JEVyk7CisJTU1JT19EKF9NTUlPKF9TUkRfQ1RMX0VEUCksIERfQkRXKTsKIAog
CU1NSU9fRChfTU1JTygweDY2NzFjKSwgRF9CRFdfUExVUyk7CiAJTU1JT19EKF9NTUlPKDB4NjZj
MDApLCBEX0JEV19QTFVTKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggZWY0
Zjg0ZTA2MGVlLi5jZTNlMGYwZGUxNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
CkBAIC0yMTM2LDcgKzIxMzYsNyBAQCBwc3Jfc291cmNlX3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHN0cnVjdCBzZXFfZmlsZSAqbSkKIAkJCSJCVUZfT04iLAogCQkJ
IlRHX09OIgogCQl9OwotCQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUjJfU1RBVFVTKTsKKwkJdmFs
ID0gSTkxNV9SRUFEKEVEUF9QU1IyX1NUQVRVUyhkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKTsK
IAkJc3RhdHVzX3ZhbCA9ICh2YWwgJiBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFTSykgPj4KIAkJ
CSAgICAgIEVEUF9QU1IyX1NUQVRVU19TVEFURV9TSElGVDsKIAkJaWYgKHN0YXR1c192YWwgPCBB
UlJBWV9TSVpFKGxpdmVfc3RhdHVzKSkKQEAgLTIxNTIsNyArMjE1Miw3IEBAIHBzcl9zb3VyY2Vf
c3RhdHVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgc3RydWN0IHNlcV9maWxl
ICptKQogCQkJIlNSRE9GRkFDSyIsCiAJCQkiU1JERU5UX09OIiwKIAkJfTsKLQkJdmFsID0gSTkx
NV9SRUFEKEVEUF9QU1JfU1RBVFVTKTsKKwkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1JfU1RBVFVT
KGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOwogCQlzdGF0dXNfdmFsID0gKHZhbCAmIEVEUF9Q
U1JfU1RBVFVTX1NUQVRFX01BU0spID4+CiAJCQkgICAgICBFRFBfUFNSX1NUQVRVU19TVEFURV9T
SElGVDsKIAkJaWYgKHN0YXR1c192YWwgPCBBUlJBWV9TSVpFKGxpdmVfc3RhdHVzKSkKQEAgLTIx
OTUsMTAgKzIxOTUsMTAgQEAgc3RhdGljIGludCBpOTE1X2VkcF9wc3Jfc3RhdHVzKHN0cnVjdCBz
ZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAkJZ290byB1bmxvY2s7CiAKIAlpZiAocHNyLT5wc3Iy
X2VuYWJsZWQpIHsKLQkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1IyX0NUTCk7CisJCXZhbCA9IEk5
MTVfUkVBRChFRFBfUFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7CiAJCWVuYWJs
ZWQgPSB2YWwgJiBFRFBfUFNSMl9FTkFCTEU7CiAJfSBlbHNlIHsKLQkJdmFsID0gSTkxNV9SRUFE
KEVEUF9QU1JfQ1RMKTsKKwkJdmFsID0gSTkxNV9SRUFEKEVEUF9QU1JfQ1RMKGRldl9wcml2LT5w
c3IudHJhbnNjb2RlcikpOwogCQllbmFibGVkID0gdmFsICYgRURQX1BTUl9FTkFCTEU7CiAJfQog
CXNlcV9wcmludGYobSwgIlNvdXJjZSBQU1IgY3RsOiAlcyBbMHglMDh4XVxuIiwKQEAgLTIyMTEs
NyArMjIxMSw4IEBAIHN0YXRpYyBpbnQgaTkxNV9lZHBfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHZvaWQgKmRhdGEpCiAJICogU0tMKyBQZXJmIGNvdW50ZXIgaXMgcmVzZXQgdG8gMCBl
dmVyeXRpbWUgREMgc3RhdGUgaXMgZW50ZXJlZAogCSAqLwogCWlmIChJU19IQVNXRUxMKGRldl9w
cml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKSB7Ci0JCXZhbCA9IEk5MTVfUkVBRChFRFBf
UFNSX1BFUkZfQ05UKSAmIEVEUF9QU1JfUEVSRl9DTlRfTUFTSzsKKwkJdmFsID0gSTkxNV9SRUFE
KEVEUF9QU1JfUEVSRl9DTlQoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7CisJCXZhbCAmPSBF
RFBfUFNSX1BFUkZfQ05UX01BU0s7CiAJCXNlcV9wcmludGYobSwgIlBlcmZvcm1hbmNlIGNvdW50
ZXI6ICV1XG4iLCB2YWwpOwogCX0KIApAQCAtMjIyOSw4ICsyMjMwLDExIEBAIHN0YXRpYyBpbnQg
aTkxNV9lZHBfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJCSAq
IFJlYWRpbmcgYWxsIDMgcmVnaXN0ZXJzIGJlZm9yZSBoYW5kIHRvIG1pbmltaXplIGNyb3NzaW5n
IGEKIAkJICogZnJhbWUgYm91bmRhcnkgYmV0d2VlbiByZWdpc3RlciByZWFkcwogCQkgKi8KLQkJ
Zm9yIChmcmFtZSA9IDA7IGZyYW1lIDwgUFNSMl9TVV9TVEFUVVNfRlJBTUVTOyBmcmFtZSArPSAz
KQotCQkJc3VfZnJhbWVzX3ZhbFtmcmFtZSAvIDNdID0gSTkxNV9SRUFEKFBTUjJfU1VfU1RBVFVT
KGZyYW1lKSk7CisJCWZvciAoZnJhbWUgPSAwOyBmcmFtZSA8IFBTUjJfU1VfU1RBVFVTX0ZSQU1F
UzsgZnJhbWUgKz0gMykgeworCQkJdmFsID0gSTkxNV9SRUFEKFBTUjJfU1VfU1RBVFVTKGRldl9w
cml2LT5wc3IudHJhbnNjb2RlciwKKwkJCQkJCSAgICAgICBmcmFtZSkpOworCQkJc3VfZnJhbWVz
X3ZhbFtmcmFtZSAvIDNdID0gdmFsOworCQl9CiAKIAkJc2VxX3B1dHMobSwgIkZyYW1lOlx0UFNS
MiBTVSBibG9ja3M6XG4iKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggYzQ0MDZhNjBm
M2U0Li44ZDU3ZTk2ODBjOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNDc4LDYgKzQ3
OCw3IEBAIHN0cnVjdCBpOTE1X3BzciB7CiAJYm9vbCBlbmFibGVkOwogCXN0cnVjdCBpbnRlbF9k
cCAqZHA7CiAJZW51bSBwaXBlIHBpcGU7CisJZW51bSB0cmFuc2NvZGVyIHRyYW5zY29kZXI7CiAJ
Ym9vbCBhY3RpdmU7CiAJc3RydWN0IHdvcmtfc3RydWN0IHdvcms7CiAJdW5zaWduZWQgYnVzeV9m
cm9udGJ1ZmZlcl9iaXRzOwpAQCAtMTM5MSwxMSArMTM5MiwxMSBAQCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSB7CiAJICovCiAJdTMyIGdwaW9fbW1pb19iYXNlOwogCisJdTMyIGhzd19wc3JfbW1p
b19hZGp1c3Q7CisKIAkvKiBNTUlPIGJhc2UgYWRkcmVzcyBmb3IgTUlQSSByZWdzICovCiAJdTMy
IG1pcGlfbW1pb19iYXNlOwogCi0JdTMyIHBzcl9tbWlvX2Jhc2U7Ci0KIAl1MzIgcHBzX21taW9f
YmFzZTsKIAogCXdhaXRfcXVldWVfaGVhZF90IGdtYnVzX3dhaXRfcXVldWU7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAppbmRleCAyYjdjY2ViZjY1NTAuLjdkYTQ0YWU4NjMyMCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCkBAIC00MjUwLDEwICs0MjUwLDE3IEBAIGVudW0gewogI2RlZmluZSBQSVBF
U1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQRUFTUkMpCiAjZGVmaW5lIFBJUEVf
TVVMVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQRV9NVUxUX0EpCiAKLS8qIEhTVysg
ZURQIFBTUiByZWdpc3RlcnMgKi8KLSNkZWZpbmUgSFNXX0VEUF9QU1JfQkFTRQkweDY0ODAwCi0j
ZGVmaW5lIEJEV19FRFBfUFNSX0JBU0UJMHg2ZjgwMAotI2RlZmluZSBFRFBfUFNSX0NUTAkJCQlf
TU1JTyhkZXZfcHJpdi0+cHNyX21taW9fYmFzZSArIDApCisvKgorICogSFNXKyBlRFAgUFNSIHJl
Z2lzdGVycworICoKKyAqIEhTVyBQU1IgcmVnaXN0ZXJzIGFyZSByZWxhdGl2ZSB0byBERElBKF9E
RElfQlVGX0NUTF9BICsgMHg4MDApIHdpdGgganVzdCBvbmUKKyAqIGluc3RhbmNlIG9mIGl0Cisg
Ki8KKyNkZWZpbmUgX0hTV19FRFBfUFNSX0JBU0UJCQkweDY0ODAwCisjZGVmaW5lIF9TUkRfQ1RM
X0EJCQkJMHg2MDgwMAorI2RlZmluZSBfU1JEX0NUTF9FRFAJCQkJMHg2ZjgwMAorI2RlZmluZSBf
UFNSX0FESih0cmFuLCByZWcpCQkJKF9UUkFOUzIodHJhbiwgcmVnKSAtIGRldl9wcml2LT5oc3df
cHNyX21taW9fYWRqdXN0KQorI2RlZmluZSBFRFBfUFNSX0NUTCh0cmFuKQkJCV9NTUlPKF9QU1Jf
QURKKHRyYW4sIF9TUkRfQ1RMX0EpKQogI2RlZmluZSAgIEVEUF9QU1JfRU5BQkxFCQkJKDEgPDwg
MzEpCiAjZGVmaW5lICAgQkRXX1BTUl9TSU5HTEVfRlJBTUUJCQkoMSA8PCAzMCkKICNkZWZpbmUg
ICBFRFBfUFNSX1JFU1RPUkVfUFNSX0FDVElWRV9DVFhfTUFTSwkoMSA8PCAyOSkgLyogU1cgY2Fu
J3QgbW9kaWZ5ICovCkBAIC00MjkwLDE2ICs0Mjk3LDIyIEBAIGVudW0gewogI2RlZmluZSAgIEVE
UF9QU1JfVFJBTlNDT0RFUl9BX1NISUZUCQk4CiAjZGVmaW5lICAgRURQX1BTUl9UUkFOU0NPREVS
X0VEUF9TSElGVAkJMAogCi0jZGVmaW5lIEVEUF9QU1JfQVVYX0NUTAkJCQlfTU1JTyhkZXZfcHJp
di0+cHNyX21taW9fYmFzZSArIDB4MTApCisjZGVmaW5lIF9TUkRfQVVYX0NUTF9BCQkJCTB4NjA4
MTAKKyNkZWZpbmUgX1NSRF9BVVhfQ1RMX0VEUAkJCTB4NmY4MTAKKyNkZWZpbmUgRURQX1BTUl9B
VVhfQ1RMKHRyYW4pCQkJX01NSU8oX1BTUl9BREoodHJhbiwgX1NSRF9BVVhfQ1RMX0EpKQogI2Rl
ZmluZSAgIEVEUF9QU1JfQVVYX0NUTF9USU1FX09VVF9NQVNLCQkoMyA8PCAyNikKICNkZWZpbmUg
ICBFRFBfUFNSX0FVWF9DVExfTUVTU0FHRV9TSVpFX01BU0sJKDB4MWYgPDwgMjApCiAjZGVmaW5l
ICAgRURQX1BTUl9BVVhfQ1RMX1BSRUNIQVJHRV8yVVNfTUFTSwkoMHhmIDw8IDE2KQogI2RlZmlu
ZSAgIEVEUF9QU1JfQVVYX0NUTF9FUlJPUl9JTlRFUlJVUFQJKDEgPDwgMTEpCiAjZGVmaW5lICAg
RURQX1BTUl9BVVhfQ1RMX0JJVF9DTE9DS18yWF9NQVNLCSgweDdmZikKIAotI2RlZmluZSBFRFBf
UFNSX0FVWF9EQVRBKGkpCQkJX01NSU8oZGV2X3ByaXYtPnBzcl9tbWlvX2Jhc2UgKyAweDE0ICsg
KGkpICogNCkgLyogNSByZWdpc3RlcnMgKi8KKyNkZWZpbmUgX1NSRF9BVVhfREFUQV9BCQkJCTB4
NjA4MTQKKyNkZWZpbmUgX1NSRF9BVVhfREFUQV9FRFAJCQkweDZmODE0CisjZGVmaW5lIEVEUF9Q
U1JfQVVYX0RBVEEodHJhbiwgaSkJCV9NTUlPKF9QU1JfQURKKHRyYW4sIF9TUkRfQVVYX0RBVEFf
QSkgKyAoaSkgKyA0KSAvKiA1IHJlZ2lzdGVycyAqLwogCi0jZGVmaW5lIEVEUF9QU1JfU1RBVFVT
CQkJCV9NTUlPKGRldl9wcml2LT5wc3JfbW1pb19iYXNlICsgMHg0MCkKKyNkZWZpbmUgX1NSRF9T
VEFUVVNfQQkJCQkweDYwODQwCisjZGVmaW5lIF9TUkRfU1RBVFVTX0VEUAkJCQkweDZmODQwCisj
ZGVmaW5lIEVEUF9QU1JfU1RBVFVTKHRyYW4pCQkJX01NSU8oX1BTUl9BREoodHJhbiwgX1NSRF9T
VEFUVVNfQSkpCiAjZGVmaW5lICAgRURQX1BTUl9TVEFUVVNfU1RBVEVfTUFTSwkJKDcgPDwgMjkp
CiAjZGVmaW5lICAgRURQX1BTUl9TVEFUVVNfU1RBVEVfU0hJRlQJCTI5CiAjZGVmaW5lICAgRURQ
X1BTUl9TVEFUVVNfU1RBVEVfSURMRQkJKDAgPDwgMjkpCkBAIC00MzI0LDEwICs0MzM3LDE1IEBA
IGVudW0gewogI2RlZmluZSAgIEVEUF9QU1JfU1RBVFVTX1NFTkRJTkdfVFAxCQkoMSA8PCA0KQog
I2RlZmluZSAgIEVEUF9QU1JfU1RBVFVTX0lETEVfTUFTSwkJMHhmCiAKLSNkZWZpbmUgRURQX1BT
Ul9QRVJGX0NOVAkJX01NSU8oZGV2X3ByaXYtPnBzcl9tbWlvX2Jhc2UgKyAweDQ0KQorI2RlZmlu
ZSBfU1JEX1BFUkZfQ05UX0EJCQkweDYwODQ0CisjZGVmaW5lIF9TUkRfUEVSRl9DTlRfRURQCQkw
eDZmODQ0CisjZGVmaW5lIEVEUF9QU1JfUEVSRl9DTlQodHJhbikJCV9NTUlPKF9QU1JfQURKKHRy
YW4sIF9TUkRfUEVSRl9DTlRfQSkpCiAjZGVmaW5lICAgRURQX1BTUl9QRVJGX0NOVF9NQVNLCQkw
eGZmZmZmZgogCi0jZGVmaW5lIEVEUF9QU1JfREVCVUcJCQkJX01NSU8oZGV2X3ByaXYtPnBzcl9t
bWlvX2Jhc2UgKyAweDYwKSAvKiBQU1JfTUFTSyBvbiBTS0wrICovCisvKiBQU1JfTUFTSyBvbiBT
S0wrICovCisjZGVmaW5lIF9TUkRfREVCVUdfQQkJCQkweDYwODYwCisjZGVmaW5lIF9TUkRfREVC
VUdfRURQCQkJCTB4NmY4NjAKKyNkZWZpbmUgRURQX1BTUl9ERUJVRyh0cmFuKQkJCV9NTUlPKF9Q
U1JfQURKKHRyYW4sIF9TUkRfREVCVUdfQSkpCiAjZGVmaW5lICAgRURQX1BTUl9ERUJVR19NQVNL
X01BWF9TTEVFUCAgICAgICAgICgxIDw8IDI4KQogI2RlZmluZSAgIEVEUF9QU1JfREVCVUdfTUFT
S19MUFNQICAgICAgICAgICAgICAoMSA8PCAyNykKICNkZWZpbmUgICBFRFBfUFNSX0RFQlVHX01B
U0tfTUVNVVAgICAgICAgICAgICAgKDEgPDwgMjYpCkBAIC00MzM1LDcgKzQzNTMsOSBAQCBlbnVt
IHsKICNkZWZpbmUgICBFRFBfUFNSX0RFQlVHX01BU0tfRElTUF9SRUdfV1JJVEUgICAgKDEgPDwg
MTYpIC8qIFJlc2VydmVkIGluIElDTCsgKi8KICNkZWZpbmUgICBFRFBfUFNSX0RFQlVHX0VYSVRf
T05fUElYRUxfVU5ERVJSVU4gKDEgPDwgMTUpIC8qIFNLTCsgKi8KIAotI2RlZmluZSBFRFBfUFNS
Ml9DVEwJCQlfTU1JTygweDZmOTAwKQorI2RlZmluZSBfUFNSMl9DVExfQQkJCTB4NjA5MDAKKyNk
ZWZpbmUgX1BTUjJfQ1RMX0VEUAkJCTB4NmY5MDAKKyNkZWZpbmUgRURQX1BTUjJfQ1RMKHRyYW4p
CQlfTU1JT19UUkFOUzIodHJhbiwgX1BTUjJfQ1RMX0EpCiAjZGVmaW5lICAgRURQX1BTUjJfRU5B
QkxFCQkoMSA8PCAzMSkKICNkZWZpbmUgICBFRFBfU1VfVFJBQ0tfRU5BQkxFCQkoMSA8PCAzMCkK
ICNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX1ZBTElECSgxIDw8IDI2KSAvKiBHTEsgYW5kIENO
TCsgKi8KQEAgLTQzNTcsOCArNDM3Nyw4IEBAIGVudW0gewogI2RlZmluZSBfUFNSX0VWRU5UX1RS
QU5TX0IJCQkweDYxODQ4CiAjZGVmaW5lIF9QU1JfRVZFTlRfVFJBTlNfQwkJCTB4NjI4NDgKICNk
ZWZpbmUgX1BTUl9FVkVOVF9UUkFOU19ECQkJMHg2Mzg0OAotI2RlZmluZSBfUFNSX0VWRU5UX1RS
QU5TX0VEUAkJCTB4NkY4NDgKLSNkZWZpbmUgUFNSX0VWRU5UKHRyYW5zKQkJCV9NTUlPX1RSQU5T
Mih0cmFucywgX1BTUl9FVkVOVF9UUkFOU19BKQorI2RlZmluZSBfUFNSX0VWRU5UX1RSQU5TX0VE
UAkJCTB4NmY4NDgKKyNkZWZpbmUgUFNSX0VWRU5UKHRyYW4pCQkJCV9NTUlPX1RSQU5TMih0cmFu
LCBfUFNSX0VWRU5UX1RSQU5TX0EpCiAjZGVmaW5lICBQU1JfRVZFTlRfUFNSMl9XRF9USU1FUl9F
WFBJUkUJCSgxIDw8IDE3KQogI2RlZmluZSAgUFNSX0VWRU5UX1BTUjJfRElTQUJMRUQJCSgxIDw8
IDE2KQogI2RlZmluZSAgUFNSX0VWRU5UX1NVX0RJUlRZX0ZJRk9fVU5ERVJSVU4JKDEgPDwgMTUp
CkBAIC00Mzc2LDE1ICs0Mzk2LDE2IEBAIGVudW0gewogI2RlZmluZSAgUFNSX0VWRU5UX0xQU1Bf
TU9ERV9FWElUCQkoMSA8PCAxKQogI2RlZmluZSAgUFNSX0VWRU5UX1BTUl9ESVNBQkxFCQkJKDEg
PDwgMCkKIAotI2RlZmluZSBFRFBfUFNSMl9TVEFUVVMJCQlfTU1JTygweDZmOTQwKQorI2RlZmlu
ZSBfUFNSMl9TVEFUVVNfQQkJCTB4NjA5NDAKKyNkZWZpbmUgX1BTUjJfU1RBVFVTX0VEUAkJMHg2
Zjk0MAorI2RlZmluZSBFRFBfUFNSMl9TVEFUVVModHJhbikJCV9NTUlPX1RSQU5TMih0cmFuLCBf
UFNSMl9TVEFUVVNfQSkKICNkZWZpbmUgRURQX1BTUjJfU1RBVFVTX1NUQVRFX01BU0sgICAgICgw
eGYgPDwgMjgpCiAjZGVmaW5lIEVEUF9QU1IyX1NUQVRVU19TVEFURV9TSElGVCAgICAyOAogCi0j
ZGVmaW5lIF9QU1IyX1NVX1NUQVRVU18wCQkweDZGOTE0Ci0jZGVmaW5lIF9QU1IyX1NVX1NUQVRV
U18xCQkweDZGOTE4Ci0jZGVmaW5lIF9QU1IyX1NVX1NUQVRVU18yCQkweDZGOTFDCi0jZGVmaW5l
IF9QU1IyX1NVX1NUQVRVUyhpbmRleCkJCV9NTUlPKF9QSUNLX0VWRU4oKGluZGV4KSwgX1BTUjJf
U1VfU1RBVFVTXzAsIF9QU1IyX1NVX1NUQVRVU18xKSkKLSNkZWZpbmUgUFNSMl9TVV9TVEFUVVMo
ZnJhbWUpCQkoX1BTUjJfU1VfU1RBVFVTKChmcmFtZSkgLyAzKSkKKyNkZWZpbmUgX1BTUjJfU1Vf
U1RBVFVTX0EJCTB4NjA5MTQKKyNkZWZpbmUgX1BTUjJfU1VfU1RBVFVTX0VEUAkJMHg2ZjkxNAor
I2RlZmluZSBfUFNSMl9TVV9TVEFUVVModHJhbiwgaW5kZXgpCV9NTUlPKF9UUkFOUzIodHJhbiwg
X1BTUjJfU1VfU1RBVFVTX0EpICsgKGluZGV4KSAqIDQpCisjZGVmaW5lIFBTUjJfU1VfU1RBVFVT
KHRyYW4sIGZyYW1lKQkoX1BTUjJfU1VfU1RBVFVTKHRyYW4sIChmcmFtZSkgLyAzKSkKICNkZWZp
bmUgUFNSMl9TVV9TVEFUVVNfU0hJRlQoZnJhbWUpCSgoKGZyYW1lKSAlIDMpICogMTApCiAjZGVm
aW5lIFBTUjJfU1VfU1RBVFVTX01BU0soZnJhbWUpCSgweDNmZiA8PCBQU1IyX1NVX1NUQVRVU19T
SElGVChmcmFtZSkpCiAjZGVmaW5lIFBTUjJfU1VfU1RBVFVTX0ZSQU1FUwkJOAotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
