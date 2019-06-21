Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E560F4F11E
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 01:20:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB6A6E93A;
	Fri, 21 Jun 2019 23:20:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F9D6E93A
 for <Intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 23:20:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 16:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,402,1557212400"; d="scan'208";a="165810508"
Received: from cataylo2-ubuntu18-10.jf.intel.com ([10.7.199.54])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2019 16:20:03 -0700
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 15:20:09 -0700
Message-Id: <20190621222009.18188-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Add port_cl_dw10 to combo phy
 vswing sequence
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

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCkVsa2hhcnQg
TGFrZSBoYXMgYWRkaXRpb25hbCBiaXRzIGluIHBvcnRfY2xfZHcxMCB0aGF0IHNob3VsZCBiZSBz
ZXQKZHVyaW5nIHZzd2luZyBwcm9ncmFtbWluZy4gQWNjb3JkaW5nIHRvIEJTUEVDIHRoZXNlIGJp
dHMgc2hvdWxkIGJlIHNldApiYXNlZCBvbiBPRU0gc2VsZWN0aW9uLiBTaW5jZSBWQlQgZG9lcyBu
b3QgY29udGFpbiBhIGRlZmluaXRpb24gZm9yCnRoZXNlIGJpdHMgd2Ugd2lsbCBjdXJyZW50bHkg
Y2xlYXIgdGhlbSB1bnRpbCBWQlQgaXMgdXBkYXRlZCB0byBnaXZlCk9FTXMgdGhlIGFiaWxpdHkg
dG8gc2V0IHRoZW0uCgpic3BlYzogMjEyNTcKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+CkNjOiBKb3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA4ICsr
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgNCArKysr
CiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA3OTI1YTE3NmY5MDAuLjZiZGU5MmE0MDQxYSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0yNDMwLDYgKzI0MzAs
MTQgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWxldmVsID0gbl9lbnRyaWVzIC0gMTsKIAl9CiAK
KwkvKiBzZXQgUE9SVF9DTF9EVzEwICovCisJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkg
eworCQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ0xfRFcxMChwb3J0KSk7CisJCXZhbCAmPSB+
KE9fRURQNEsyS19NT0RFX09WUkRfRU4gfCBPX0VEUDRLMktfTU9ERV9PVlJEX1ZBTCB8CisJCQlP
X1JURVJNMTAwRU5fSF9PVlJEX0VOIHwgT19SVEVSTTEwMEVOX0hfT1ZSRF9WQUwpOworCQlJOTE1
X1dSSVRFKElDTF9QT1JUX0NMX0RXMTAocG9ydCksIHZhbCk7CisJfQorCiAJLyogU2V0IFBPUlRf
VFhfRFc1ICovCiAJdmFsID0gSTkxNV9SRUFEKElDTF9QT1JUX1RYX0RXNV9MTjAocG9ydCkpOwog
CXZhbCAmPSB+KFNDQUxJTkdfTU9ERV9TRUxfTUFTSyB8IFJURVJNX1NFTEVDVF9NQVNLIHwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDdlNjAwOWNlZmIxOC4uY2U4NjAyNDQyNDgwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTE4MTksNiArMTgxOSwxMCBAQCBlbnVtIGk5MTVfcG93
ZXJfd2VsbF9pZCB7CiAjZGVmaW5lICBQV1JfRE9XTl9MTl8zXzFfMAkJKDB4YiA8PCA0KQogI2Rl
ZmluZSAgUFdSX0RPV05fTE5fTUFTSwkJKDB4ZiA8PCA0KQogI2RlZmluZSAgUFdSX0RPV05fTE5f
U0hJRlQJCTQKKyNkZWZpbmUgIE9fRURQNEsyS19NT0RFX09WUkRfRU4JCSgxIDw8IDMpCisjZGVm
aW5lICBPX0VEUDRLMktfTU9ERV9PVlJEX1ZBTAkoMSA8PCAyKQorI2RlZmluZSAgT19SVEVSTTEw
MEVOX0hfT1ZSRF9FTgkJKDEgPDwgMSkKKyNkZWZpbmUgIE9fUlRFUk0xMDBFTl9IX09WUkRfVkFM
CSgxIDw8IDApCiAKICNkZWZpbmUgSUNMX1BPUlRfQ0xfRFcxMihwb3J0KQkJX01NSU8oX0lDTF9Q
T1JUX0NMX0RXKDEyLCBwb3J0KSkKICNkZWZpbmUgICBJQ0xfTEFORV9FTkFCTEVfQVVYCQkoMSA8
PCAwKQotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
