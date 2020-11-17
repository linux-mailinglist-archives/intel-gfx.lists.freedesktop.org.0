Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094EF2B6DC2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B0C89F89;
	Tue, 17 Nov 2020 18:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8489389F43
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:50 +0000 (UTC)
IronPort-SDR: pjL4Ab3cxLxiiYDKJRzUpwRZNS/IoSN5qs7bey+6BFm4A70pnpED14zAnElnpHfrhRur7Xol/U
 Y+LnV9M7jctg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150259219"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="150259219"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:48 -0800
IronPort-SDR: 4MoJnxWkDAKitAMaqBepfuog+CQgrNWEicL6AqFye9JVSvZDrMwf0XfwjBAtOBH1TPKD2fk6yO
 mabGfgi9DBDA==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996855"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:47 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:15 -0800
Message-Id: <20201117185029.22078-8-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/21] drm/i915/adl_s: Add PHYs for Alderlake S
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWxkZXJs
YWtlLVMgaGFzIDUgY29tYm8gcGh5cywgYWRkIHJlZyBkZWZpbml0aW9ucyBmb3IKY29tYm8gcGh5
cyBhbmQgdXBkYXRlIHRoZSBwb3J0IHRvIHBoeSBoZWxwZXIgZm9yIEFETC1TLgoKQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFk
aXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8IDUgKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGU4ODc0Y2QyMmFiZi4uODQ4YmNkODNiMTVm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
NzM0Myw2ICs3MzQzLDggQEAgYm9vbCBpbnRlbF9waHlfaXNfY29tYm8oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkpCiB7CiAJaWYgKHBoeSA9PSBQSFlfTk9O
RSkKIAkJcmV0dXJuIGZhbHNlOworCWVsc2UgaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkK
KwkJcmV0dXJuIHBoeSA8PSBQSFlfRTsKIAllbHNlIGlmIChJU19ERzEoZGV2X3ByaXYpIHx8IElT
X1JPQ0tFVExBS0UoZGV2X3ByaXYpKQogCQlyZXR1cm4gcGh5IDw9IFBIWV9EOwogCWVsc2UgaWYg
KElTX0pTTF9FSEwoZGV2X3ByaXYpKQpAQCAtNzM1NSw3ICs3MzU3LDggQEAgYm9vbCBpbnRlbF9w
aHlfaXNfY29tYm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBw
aHkpCiAKIGJvb2wgaW50ZWxfcGh5X2lzX3RjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgZW51bSBwaHkgcGh5KQogewotCWlmIChJU19ERzEoZGV2X3ByaXYpIHx8IElTX1JPQ0tF
VExBS0UoZGV2X3ByaXYpKQorCWlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwgSVNfREcx
KGRldl9wcml2KSB8fAorCSAgICBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKIAkJcmV0dXJuIGZh
bHNlOwogCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCiAJCXJldHVybiBwaHkg
Pj0gUEhZX0QgJiYgcGh5IDw9IFBIWV9JOwpAQCAtNzM2Nyw3ICs3MzcwLDkgQEAgYm9vbCBpbnRl
bF9waHlfaXNfdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBw
aHkpCiAKIGVudW0gcGh5IGludGVsX3BvcnRfdG9fcGh5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LCBlbnVtIHBvcnQgcG9ydCkKIHsKLQlpZiAoKElTX0RHMShpOTE1KSB8fCBJU19ST0NL
RVRMQUtFKGk5MTUpKSAmJiBwb3J0ID49IFBPUlRfVEMxKQorCWlmIChJU19BTERFUkxBS0VfUyhp
OTE1KSAmJiBwb3J0ID49IFBPUlRfVEMxKQorCQlyZXR1cm4gUEhZX0IgKyBwb3J0IC0gUE9SVF9U
QzE7CisJZWxzZSBpZiAoKElTX0RHMShpOTE1KSB8fCBJU19ST0NLRVRMQUtFKGk5MTUpKSAmJiBw
b3J0ID49IFBPUlRfVEMxKQogCQlyZXR1cm4gUEhZX0MgKyBwb3J0IC0gUE9SVF9UQzE7CiAJZWxz
ZSBpZiAoSVNfSlNMX0VITChpOTE1KSAmJiBwb3J0ID09IFBPUlRfRCkKIAkJcmV0dXJuIFBIWV9B
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggN2VhNzBiN2ZmY2M2Li40MDJlYThjZDYwMmIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTg3MiwxMCArMTg3MiwxMyBAQCBzdGF0aWMg
aW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKICNkZWZpbmUg
X0lDTF9DT01CT1BIWV9CCQkJMHg2QzAwMAogI2RlZmluZSBfRUhMX0NPTUJPUEhZX0MJCQkweDE2
MDAwMAogI2RlZmluZSBfUktMX0NPTUJPUEhZX0QJCQkweDE2MTAwMAorI2RlZmluZSBfQURMX0NP
TUJPUEhZX0UJCQkweDE2QjAwMAorCiAjZGVmaW5lIF9JQ0xfQ09NQk9QSFkocGh5KQkJX1BJQ0so
cGh5LCBfSUNMX0NPTUJPUEhZX0EsIFwKIAkJCQkJICAgICAgX0lDTF9DT01CT1BIWV9CLCBcCiAJ
CQkJCSAgICAgIF9FSExfQ09NQk9QSFlfQywgXAotCQkJCQkgICAgICBfUktMX0NPTUJPUEhZX0Qp
CisJCQkJCSAgICAgIF9SS0xfQ09NQk9QSFlfRCwgXAorCQkJCQkgICAgICBfQURMX0NPTUJPUEhZ
X0UpCiAKIC8qIENOTC9JQ0wgUG9ydCBDTF9EVyByZWdpc3RlcnMgKi8KICNkZWZpbmUgX0lDTF9Q
T1JUX0NMX0RXKGR3LCBwaHkpCShfSUNMX0NPTUJPUEhZKHBoeSkgKyBcCi0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
