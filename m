Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C288F2CF880
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E727C6E2B6;
	Sat,  5 Dec 2020 01:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144326E235
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:09:05 +0000 (UTC)
IronPort-SDR: k5u0NZRl3RerIBonUQn4TIVI6Qfaw/BjhyZumeDm1pgcku4IbVrzxeZpvw2fkVWQS9Ingiv265
 IJQ9uBbCERQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173571009"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173571009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:04 -0800
IronPort-SDR: zz06BUWpWNy+/HHIT5Wb5p2zOLpu1W1hUy69FOip1Wu607i+TBBPugazGqAlt5RQnZ02Rk4Ey5
 jSCeyT0Gj2AA==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369062930"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:04 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:32 -0800
Message-Id: <20201205010844.361880-11-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/22] drm/i915/adl_s: Initialize display for
 ADL-S
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

SW5pdGlhbGl6ZSBkaXNwbGF5IG91dHB1dHMgZm9yIEFETC1TLiBBREwtUyBoYXMgNSBkaXNwbGF5
Cm91dHB1dHMgLT4gMSBlRFAsIDIgSERNSSBhbmQgMiBEUCsrIG91dHB1dHMuCgpDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5
YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMGZmMGVlYWJhYjhjLi4xOWVkNTFlNmM2NDcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0x
NzYyNyw3ICsxNzYyNywxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2
KSkKIAkJcmV0dXJuOwogCi0JaWYgKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShk
ZXZfcHJpdikpIHsKKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKSB7CisJCWludGVsX2Rk
aV9pbml0KGRldl9wcml2LCBQT1JUX0EpOworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9S
VF9EKTsJLyogRERJIFRDMSAqLworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9FKTsJ
LyogRERJIFRDMiAqLworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9GKTsJLyogRERJ
IFRDMyAqLworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9HKTsJLyogRERJIFRDNCAq
LworCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2
KSkgewogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsKIAkJaW50ZWxfZGRpX2lu
aXQoZGV2X3ByaXYsIFBPUlRfQik7CiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX1RD
MSk7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
