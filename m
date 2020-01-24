Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9790F14917B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 23:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2090C72BE0;
	Fri, 24 Jan 2020 22:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71EE36E48E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 22:59:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 14:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="245841460"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 14:59:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 14:59:22 -0800
Message-Id: <20200124225922.644673-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200124195351.534551-1-matthew.d.roper@intel.com>
References: <20200124195351.534551-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v2] drm/i915/tgl: Suppress DC5/DC6 around DSB usage
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

VGhlcmUgYXJlIHJlcG9ydHMgb2YgdW5leHBlY3RlZCBEU0IgYnVzeS90aW1lb3V0IGhhcHBlbmlu
ZyBhZnRlciBJR1QKdGVzdHMgZmluaXNoIHJ1bm5pbmcgdGhhdCBhcHBhcmVudGx5IGdvIGF3YXkg
d2hlbiB0aGUgRE1DIGZpcm13YXJlIGlzbid0CmxvYWRlZC4gIFRoZSBic3BlYyBkb2Vzbid0IHNh
eSBhbnl0aGluZyBzcGVjaWZpYyBhYm91dCBEU0IgbmVlZGluZyB1cyB0bwpleGl0IERDNS9EQzYs
IGJ1dCBsZXQncyB0cnkgYWRkaW5nIERTQiB1c2FnZSB0byB0aGUgIkRDIG9mZiIgbGlzdCBhbmQK
c2VlIGlmIHRoYXQgY2hhbmdlcyB0aGUgYmVoYXZpb3IuCgp2MjogSW5jbHVkZSBpbnRlbF93YWtl
cmVmLmggZnJvbSBpbnRlbF9kc2IuaCB0byBlbnN1cmUgdGhlIGhlYWRlciBzdGF5cwogICAgc2Vs
Zi1jb250YWluZWQuICAoQ0kpCgpDYzogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIHwgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jICAg
ICAgICAgICB8IDcgKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuaCAgICAgICAgICAgfCAyICsrCiA0IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA3NjFiZTlmY2FmMTAuLjk5ZTZhZmRhMmRiOSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKQEAgLTE1MCw2ICsxNTAsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoZW51
bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4pCiAJCXJldHVybiAiR1RfSVJRIjsK
IAljYXNlIFBPV0VSX0RPTUFJTl9EUExMX0RDX09GRjoKIAkJcmV0dXJuICJEUExMX0RDX09GRiI7
CisJY2FzZSBQT1dFUl9ET01BSU5fRFNCOgorCQlyZXR1cm4gIkRTQiI7CiAJZGVmYXVsdDoKIAkJ
TUlTU0lOR19DQVNFKGRvbWFpbik7CiAJCXJldHVybiAiPyI7CkBAIC0yNjc5LDYgKzI2ODEsNyBA
QCB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQSkgfAkJCVwKIAlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9BVVhfQikgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQykgfAkJ
CVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9EU0IpIHwJCQlcCiAJQklUX1VMTChQT1dFUl9ET01B
SU5fSU5JVCkpCiAKICNkZWZpbmUgVEdMX0RESV9JT19EX1RDMV9QT1dFUl9ET01BSU5TICgJXApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
aAppbmRleCAyNjA4YTY1YWY3ZmEuLjVlODEzNmM2NWUwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKQEAgLTc3LDYgKzc3LDcg
QEAgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiB7CiAJUE9XRVJfRE9NQUlOX0dUX0lS
USwKIAlQT1dFUl9ET01BSU5fRFBMTF9EQ19PRkYsCiAJUE9XRVJfRE9NQUlOX0lOSVQsCisJUE9X
RVJfRE9NQUlOX0RTQiwKIAogCVBPV0VSX0RPTUFJTl9OVU0sCiB9OwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggYWRhMDA2YTY5MGRmLi4xNTZhOTRhMWJlMDUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAtMTAzLDcgKzEw
Myw2IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAl1MzIgKmJ1
ZjsKLQlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAogCWlmICghSEFTX0RTQihpOTE1KSkKIAkJ
cmV0dXJuIGRzYjsKQEAgLTExMSw3ICsxMTAsNyBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQogCWlmIChkc2ItPnJlZmNvdW50KysgIT0gMCkKIAkJcmV0dXJuIGRzYjsK
IAotCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7CisJ
ZHNiLT53YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoaTkxNSwgUE9XRVJfRE9NQUlO
X0RTQik7CiAKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIERT
Ql9CVUZfU0laRSk7CiAJaWYgKElTX0VSUihvYmopKSB7CkBAIC0xNDQsNyArMTQzLDcgQEAgaW50
ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkgKiBhbHJlYWR5IGJlIGxvZ2dl
ZCBhYm92ZS4KIAkgKi8KIAotCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3Bt
LCB3YWtlcmVmKTsKKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChpOTE1LCBQT1dFUl9ET01BSU5f
RFNCLCBkc2ItPndha2VyZWYpOwogCiAJcmV0dXJuIGRzYjsKIH0KQEAgLTE3NCw2ICsxNzMsOCBA
QCB2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQogCQlkc2ItPmZyZWVf
cG9zID0gMDsKIAkJZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gMDsKIAl9CisKKwlpbnRlbF9kaXNw
bGF5X3Bvd2VyX3B1dChpOTE1LCBQT1dFUl9ET01BSU5fRFNCLCBkc2ItPndha2VyZWYpOwogfQog
CiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCmluZGV4IDM5NWVm
OWNlNTU4ZS4uZmZiNWFmYTkzNWI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmgKQEAgLTksNiArOSw3IEBACiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KIAogI2lu
Y2x1ZGUgImk5MTVfcmVnLmgiCisjaW5jbHVkZSAiaW50ZWxfd2FrZXJlZi5oIgogCiBzdHJ1Y3Qg
aW50ZWxfY3J0YzsKIHN0cnVjdCBpOTE1X3ZtYTsKQEAgLTI2LDYgKzI3LDcgQEAgc3RydWN0IGlu
dGVsX2RzYiB7CiAJZW51bSBkc2JfaWQgaWQ7CiAJdTMyICpjbWRfYnVmOwogCXN0cnVjdCBpOTE1
X3ZtYSAqdm1hOworCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCiAJLyoKIAkgKiBmcmVlX3Bv
cyB3aWxsIHBvaW50IHRoZSBmaXJzdCBmcmVlIGVudHJ5IHBvc2l0aW9uCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
