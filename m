Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CBABC85C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 14:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C142F6EA24;
	Tue, 24 Sep 2019 12:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37526EA24;
 Tue, 24 Sep 2019 12:59:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:33 -0700
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="363986536"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 15:58:58 +0300
Message-Id: <4829bf92dd2a5630ebdf22682517de1f89b81ad0.1569329774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1569329774.git.jani.nikula@intel.com>
References: <cover.1569329774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 2/9] drm/print: add drm_debug_enabled()
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGhlbHBlciB0byBjaGVjayBpZiBhIGRybSBkZWJ1ZyBjYXRlZ29yeSBpcyBlbmFibGVkLiBD
b252ZXJ0IGRybSBjb3JlCnRvIHVzZSBpdC4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKdjI6IE1v
dmUgdW5saWtlbHkoKSB0byBkcm1fZGVidWdfZW5hYmxlZCgpIChFcmljKQoKU2lnbmVkLW9mZi1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX2F0b21pY191YXBpLmMgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2RybV9kcF9t
c3RfdG9wb2xvZ3kuYyB8IDYgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyAgICAg
ICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkX2xvYWQuYyAgICAgICB8IDIg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kYmkuYyAgICAgICAgfCA0ICsrLS0KIGRyaXZl
cnMvZ3B1L2RybS9kcm1fcHJpbnQuYyAgICAgICAgICAgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fdmJsYW5rLmMgICAgICAgICAgfCA2ICsrKy0tLQogaW5jbHVkZS9kcm0vZHJtX3ByaW50
LmggICAgICAgICAgICAgICB8IDUgKysrKysKIDggZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9u
cygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWNfdWFwaS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jCmluZGV4IDdh
MjZiZmI1MzI5Yy4uMGQ0NjZkM2IwODA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2F0b21pY191YXBpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jCkBA
IC0xNDA1LDcgKzE0MDUsNyBAQCBpbnQgZHJtX21vZGVfYXRvbWljX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCiAJfSBlbHNlIGlmIChhcmctPmZsYWdzICYgRFJNX01PREVfQVRPTUlDX05P
TkJMT0NLKSB7CiAJCXJldCA9IGRybV9hdG9taWNfbm9uYmxvY2tpbmdfY29tbWl0KHN0YXRlKTsK
IAl9IGVsc2UgewotCQlpZiAodW5saWtlbHkoZHJtX2RlYnVnICYgRFJNX1VUX1NUQVRFKSkKKwkJ
aWYgKGRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9TVEFURSkpCiAJCQlkcm1fYXRvbWljX3ByaW50
X3N0YXRlKHN0YXRlKTsKIAogCQlyZXQgPSBkcm1fYXRvbWljX2NvbW1pdChzdGF0ZSk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwppbmRleCA5NzIxNjA5OWE3MTguLjViNDFkYzE2
NzgxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCkBAIC0xMTgwLDcgKzEx
ODAsNyBAQCBzdGF0aWMgaW50IGRybV9kcF9tc3Rfd2FpdF90eF9yZXBseShzdHJ1Y3QgZHJtX2Rw
X21zdF9icmFuY2ggKm1zdGIsCiAJCX0KIAl9CiBvdXQ6Ci0JaWYgKHVubGlrZWx5KHJldCA9PSAt
RUlPICYmIGRybV9kZWJ1ZyAmIERSTV9VVF9EUCkpIHsKKwlpZiAocmV0ID09IC1FSU8gJiYgZHJt
X2RlYnVnX2VuYWJsZWQoRFJNX1VUX0RQKSkgewogCQlzdHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRy
bV9kZWJ1Z19wcmludGVyKERCR19QUkVGSVgpOwogCiAJCWRybV9kcF9tc3RfZHVtcF9zaWRlYmFu
ZF9tc2dfdHgoJnAsIHR4bXNnKTsKQEAgLTIzMjEsNyArMjMyMSw3IEBAIHN0YXRpYyBpbnQgcHJv
Y2Vzc19zaW5nbGVfdHhfcWxvY2soc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3Is
CiAJaWR4ICs9IHRvc2VuZCArIDE7CiAKIAlyZXQgPSBkcm1fZHBfc2VuZF9zaWRlYmFuZF9tc2co
bWdyLCB1cCwgY2h1bmssIGlkeCk7Ci0JaWYgKHVubGlrZWx5KHJldCAmJiBkcm1fZGVidWcgJiBE
Uk1fVVRfRFApKSB7CisJaWYgKHJldCAmJiBkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFApKSB7
CiAJCXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJtX2RlYnVnX3ByaW50ZXIoREJHX1BSRUZJWCk7
CiAKIAkJZHJtX3ByaW50ZigmcCwgInNpZGViYW5kIG1zZyBmYWlsZWQgdG8gc2VuZFxuIik7CkBA
IC0yMzg4LDcgKzIzODgsNyBAQCBzdGF0aWMgdm9pZCBkcm1fZHBfcXVldWVfZG93bl90eChzdHJ1
Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKIAltdXRleF9sb2NrKCZtZ3ItPnFsb2Nr
KTsKIAlsaXN0X2FkZF90YWlsKCZ0eG1zZy0+bmV4dCwgJm1nci0+dHhfbXNnX2Rvd25xKTsKIAot
CWlmICh1bmxpa2VseShkcm1fZGVidWcgJiBEUk1fVVRfRFApKSB7CisJaWYgKGRybV9kZWJ1Z19l
bmFibGVkKERSTV9VVF9EUCkpIHsKIAkJc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1fZGVidWdf
cHJpbnRlcihEQkdfUFJFRklYKTsKIAogCQlkcm1fZHBfbXN0X2R1bXBfc2lkZWJhbmRfbXNnX3R4
KCZwLCB0eG1zZyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDNjOTcwM2IwODQ5MS4uMDU1MjE3NTMxM2Ni
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX2VkaWQuYwpAQCAtMTY1MSw3ICsxNjUxLDcgQEAgc3RhdGljIHZvaWQgY29ubmVj
dG9yX2JhZF9lZGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiB7CiAJaW50IGk7
CiAKLQlpZiAoY29ubmVjdG9yLT5iYWRfZWRpZF9jb3VudGVyKysgJiYgIShkcm1fZGVidWcgJiBE
Uk1fVVRfS01TKSkKKwlpZiAoY29ubmVjdG9yLT5iYWRfZWRpZF9jb3VudGVyKysgJiYgIWRybV9k
ZWJ1Z19lbmFibGVkKERSTV9VVF9LTVMpKQogCQlyZXR1cm47CiAKIAlkZXZfd2Fybihjb25uZWN0
b3ItPmRldi0+ZGV2LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkX2xvYWQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZF9sb2FkLmMKaW5kZXggZDM4YjNiMjU1OTI2Li4z
N2Q4YmEzZGRiNDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZF9sb2FkLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkX2xvYWQuYwpAQCAtMTc1LDcgKzE3NSw3IEBA
IHN0YXRpYyB2b2lkICplZGlkX2xvYWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvciwg
Y29uc3QgY2hhciAqbmFtZSwKIAl1OCAqZWRpZDsKIAlpbnQgZndzaXplLCBidWlsdGluOwogCWlu
dCBpLCB2YWxpZF9leHRlbnNpb25zID0gMDsKLQlib29sIHByaW50X2JhZF9lZGlkID0gIWNvbm5l
Y3Rvci0+YmFkX2VkaWRfY291bnRlciB8fCAoZHJtX2RlYnVnICYgRFJNX1VUX0tNUyk7CisJYm9v
bCBwcmludF9iYWRfZWRpZCA9ICFjb25uZWN0b3ItPmJhZF9lZGlkX2NvdW50ZXIgfHwgZHJtX2Rl
YnVnX2VuYWJsZWQoRFJNX1VUX0tNUyk7CiAKIAlidWlsdGluID0gbWF0Y2hfc3RyaW5nKGdlbmVy
aWNfZWRpZF9uYW1lLCBHRU5FUklDX0VESURTLCBuYW1lKTsKIAlpZiAoYnVpbHRpbiA+PSAwKSB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21pcGlfZGJpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX21pcGlfZGJpLmMKaW5kZXggZjgxNTQzMTZhM2IwLi5jY2ZiNWIzM2M1ZTMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kYmkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX21pcGlfZGJpLmMKQEAgLTc4Myw3ICs3ODMsNyBAQCBzdGF0aWMgaW50IG1pcGlf
ZGJpX3NwaTFlX3RyYW5zZmVyKHN0cnVjdCBtaXBpX2RiaSAqZGJpLCBpbnQgZGMsCiAJaW50IGks
IHJldDsKIAl1OCAqZHN0OwogCi0JaWYgKGRybV9kZWJ1ZyAmIERSTV9VVF9EUklWRVIpCisJaWYg
KGRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9EUklWRVIpKQogCQlwcl9kZWJ1ZygiW2RybTolc10g
ZGM9JWQsIG1heF9jaHVuaz0lenUsIHRyYW5zZmVyczpcbiIsCiAJCQkgX19mdW5jX18sIGRjLCBt
YXhfY2h1bmspOwogCkBAIC05MDcsNyArOTA3LDcgQEAgc3RhdGljIGludCBtaXBpX2RiaV9zcGkx
X3RyYW5zZmVyKHN0cnVjdCBtaXBpX2RiaSAqZGJpLCBpbnQgZGMsCiAJbWF4X2NodW5rID0gZGJp
LT50eF9idWY5X2xlbjsKIAlkc3QxNiA9IGRiaS0+dHhfYnVmOTsKIAotCWlmIChkcm1fZGVidWcg
JiBEUk1fVVRfRFJJVkVSKQorCWlmIChkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFJJVkVSKSkK
IAkJcHJfZGVidWcoIltkcm06JXNdIGRjPSVkLCBtYXhfY2h1bms9JXp1LCB0cmFuc2ZlcnM6XG4i
LAogCQkJIF9fZnVuY19fLCBkYywgbWF4X2NodW5rKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2RybV9wcmludC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmludC5jCmluZGV4IGM5
YjU3MDEyZDQxMi4uYTdjODllYzVmZjI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW50LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmludC5jCkBAIC0yNjQsNyArMjY0
LDcgQEAgdm9pZCBkcm1fZGV2X2RiZyhjb25zdCBzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVk
IGludCBjYXRlZ29yeSwKIAlzdHJ1Y3QgdmFfZm9ybWF0IHZhZjsKIAl2YV9saXN0IGFyZ3M7CiAK
LQlpZiAoIShkcm1fZGVidWcgJiBjYXRlZ29yeSkpCisJaWYgKCFkcm1fZGVidWdfZW5hYmxlZChj
YXRlZ29yeSkpCiAJCXJldHVybjsKIAogCXZhX3N0YXJ0KGFyZ3MsIGZvcm1hdCk7CkBAIC0yODcs
NyArMjg3LDcgQEAgdm9pZCBkcm1fZGJnKHVuc2lnbmVkIGludCBjYXRlZ29yeSwgY29uc3QgY2hh
ciAqZm9ybWF0LCAuLi4pCiAJc3RydWN0IHZhX2Zvcm1hdCB2YWY7CiAJdmFfbGlzdCBhcmdzOwog
Ci0JaWYgKCEoZHJtX2RlYnVnICYgY2F0ZWdvcnkpKQorCWlmICghZHJtX2RlYnVnX2VuYWJsZWQo
Y2F0ZWdvcnkpKQogCQlyZXR1cm47CiAKIAl2YV9zdGFydChhcmdzLCBmb3JtYXQpOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
dmJsYW5rLmMKaW5kZXggOWM2ODk5NzU4YmM5Li40Zjc5NjJiNjQyN2IgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV92Ymxh
bmsuYwpAQCAtMzMyLDcgKzMzMiw3IEBAIHU2NCBkcm1fY3J0Y19hY2N1cmF0ZV92YmxhbmtfY291
bnQoc3RydWN0IGRybV9jcnRjICpjcnRjKQogCXU2NCB2Ymxhbms7CiAJdW5zaWduZWQgbG9uZyBm
bGFnczsKIAotCVdBUk5fT05DRShkcm1fZGVidWcgJiBEUk1fVVRfVkJMICYmICFkZXYtPmRyaXZl
ci0+Z2V0X3ZibGFua190aW1lc3RhbXAsCisJV0FSTl9PTkNFKGRybV9kZWJ1Z19lbmFibGVkKERS
TV9VVF9WQkwpICYmICFkZXYtPmRyaXZlci0+Z2V0X3ZibGFua190aW1lc3RhbXAsCiAJCSAgIlRo
aXMgZnVuY3Rpb24gcmVxdWlyZXMgc3VwcG9ydCBmb3IgYWNjdXJhdGUgdmJsYW5rIHRpbWVzdGFt
cHMuIik7CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2LT52YmxhbmtfdGltZV9sb2NrLCBmbGFn
cyk7CkBAIC03MDYsNyArNzA2LDcgQEAgYm9vbCBkcm1fY2FsY192Ymx0aW1lc3RhbXBfZnJvbV9z
Y2Fub3V0cG9zKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJICovCiAJKnZibGFua190aW1lID0g
a3RpbWVfc3ViX25zKGV0aW1lLCBkZWx0YV9ucyk7CiAKLQlpZiAoKGRybV9kZWJ1ZyAmIERSTV9V
VF9WQkwpID09IDApCisJaWYgKCFkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfVkJMKSkKIAkJcmV0
dXJuIHRydWU7CiAKIAl0c19ldGltZSA9IGt0aW1lX3RvX3RpbWVzcGVjNjQoZXRpbWUpOwpAQCAt
MTM1Miw3ICsxMzUyLDcgQEAgdm9pZCBkcm1fdmJsYW5rX3Jlc3RvcmUoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUpCiAJYXNzZXJ0X3NwaW5fbG9ja2VkKCZkZXYtPnZi
bGFua190aW1lX2xvY2spOwogCiAJdmJsYW5rID0gJmRldi0+dmJsYW5rW3BpcGVdOwotCVdBUk5f
T05DRSgoZHJtX2RlYnVnICYgRFJNX1VUX1ZCTCkgJiYgIXZibGFuay0+ZnJhbWVkdXJfbnMsCisJ
V0FSTl9PTkNFKGRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9WQkwpICYmICF2YmxhbmstPmZyYW1l
ZHVyX25zLAogCQkgICJDYW5ub3QgY29tcHV0ZSBtaXNzZWQgdmJsYW5rcyB3aXRob3V0IGZyYW1l
IGR1cmF0aW9uXG4iKTsKIAlmcmFtZWR1cl9ucyA9IHZibGFuay0+ZnJhbWVkdXJfbnM7CiAKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9wcmludC5oIGIvaW5jbHVkZS9kcm0vZHJtX3ByaW50
LmgKaW5kZXggZTVjNDIxYWJjZTQ4Li40NjE4ZTkwY2QxMjQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2RybV9wcmludC5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9wcmludC5oCkBAIC0yOTQsNiAr
Mjk0LDExIEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9wcmludGVyIGRybV9lcnJfcHJpbnRl
cihjb25zdCBjaGFyICpwcmVmaXgpCiAjZGVmaW5lIERSTV9VVF9MRUFTRQkJMHg4MAogI2RlZmlu
ZSBEUk1fVVRfRFAJCTB4MTAwCiAKK3N0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZGVidWdfZW5hYmxl
ZCh1bnNpZ25lZCBpbnQgY2F0ZWdvcnkpCit7CisJcmV0dXJuIHVubGlrZWx5KGRybV9kZWJ1ZyAm
IGNhdGVnb3J5KTsKK30KKwogX19wcmludGYoMywgNCkKIHZvaWQgZHJtX2Rldl9wcmludGsoY29u
c3Qgc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyICpsZXZlbCwKIAkJICAgIGNvbnN0IGNo
YXIgKmZvcm1hdCwgLi4uKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
