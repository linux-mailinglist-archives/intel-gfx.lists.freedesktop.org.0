Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8B4294D9C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4611D6EB25;
	Wed, 21 Oct 2020 13:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E97D6EB14
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:36 +0000 (UTC)
IronPort-SDR: pNyUnphKHW5N+G9wSUMHh9j4KuaOwwT5WmZxnkUupC64UxnVUQELN8m+ZyPR2QRaneMZNmu2+v
 ex+33NECJIzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317780"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317780"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:35 -0700
IronPort-SDR: 9VP72qhcq3+sCOVxPL9QVEHJxZb9N34swjlmERKv44XsbF789KcEGeKP3hxFMwm9PQB8lk5L54
 p6GEVOcmTY2g==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372528"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:35 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:32:05 -0700
Message-Id: <20201021133213.328994-11-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/18] drm/i915/adl_s: Add vbt port and aux
 channel settings for adls
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

LSBBREwtUyBkcml2ZXIgaW50ZXJuYWwgbWFwcGluZyB1c2VzIFBPUlQgRCwgRSwgRiwgRyBmb3Ig
Q29tYm8gcGh5IEIsIEMsIEQgYW5kIEUuCi0gQWRkIEFETFMgc3BlY2lmaWMgcG9ydCBtYXBwaW5n
cyBmb3IgdmJ0IHBvcnQgZHZvIHNldHRpbmdzLgotIFNlbGVjdCBhcHByb3ByaWF0ZSBBVVggQ0gg
c3BlY2lmaWMgdG8gQURMUyBiYXNlZCBvbiBwb3J0IG1hcHBpbmcuCgpDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNj
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2Fy
dXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jIHwgNDIgKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5kZXggZjYwMjAxM2E3NjRhLi4zNmUwYTdhNWM1
MmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xNzEx
LDggKzE3MTEsMjYgQEAgc3RhdGljIGVudW0gcG9ydCBkdm9fcG9ydF90b19wb3J0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJW1BPUlRfRF0gPSB7IERWT19QT1JUX0hETUlD
LCBEVk9fUE9SVF9EUEMsIC0xIH0sCiAJCVtQT1JUX0VdID0geyBEVk9fUE9SVF9IRE1JRCwgRFZP
X1BPUlRfRFBELCAtMSB9LAogCX07CisJLyoKKwkgKiBBbGRlcmxha2UgUyBwb3J0cyB1c2VkIGlu
IHRoZSBkcml2ZXIgYXJlIFBPUlRfQSwgUE9SVF9ELCBQT1JUX0UsCisJICogUE9SVF9GIGFuZCBQ
T1JUX0csIHdlIG5lZWQgdG8gbWFwIHRoYXQgdG8gY29ycmVjdCBWQlQgc2VjdGlvbnMuCisJICov
CisJc3RhdGljIGNvbnN0IGludCBhZGxzX3BvcnRfbWFwcGluZ1tdWzNdID0geworCQlbUE9SVF9B
XSA9IHsgRFZPX1BPUlRfSERNSUEsIERWT19QT1JUX0RQQSwgLTEgfSwKKwkJW1BPUlRfQl0gPSB7
IC0xIH0sCisJCVtQT1JUX0NdID0geyAtMSB9LAorCQlbUE9SVF9EXSA9IHsgRFZPX1BPUlRfSERN
SUIsIERWT19QT1JUX0RQQiwgLTEgfSwKKwkJW1BPUlRfRV0gPSB7IERWT19QT1JUX0hETUlDLCBE
Vk9fUE9SVF9EUEMsIC0xIH0sCisJCVtQT1JUX0ZdID0geyBEVk9fUE9SVF9IRE1JRCwgRFZPX1BP
UlRfRFBELCAtMSB9LAorCQlbUE9SVF9HXSA9IHsgRFZPX1BPUlRfSERNSUUsIERWT19QT1JUX0RQ
RSwgLTEgfSwKKwl9OwogCi0JaWYgKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShk
ZXZfcHJpdikpCisJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkKKwkJcmV0dXJuIF9fZHZv
X3BvcnRfdG9fcG9ydChBUlJBWV9TSVpFKGFkbHNfcG9ydF9tYXBwaW5nKSwKKwkJCQkJICBBUlJB
WV9TSVpFKGFkbHNfcG9ydF9tYXBwaW5nWzBdKSwKKwkJCQkJICBhZGxzX3BvcnRfbWFwcGluZywK
KwkJCQkJICBkdm9fcG9ydCk7CisJZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSB8fCBJU19ST0NL
RVRMQUtFKGRldl9wcml2KSkKIAkJcmV0dXJuIF9fZHZvX3BvcnRfdG9fcG9ydChBUlJBWV9TSVpF
KHJrbF9wb3J0X21hcHBpbmcpLAogCQkJCQkgIEFSUkFZX1NJWkUocmtsX3BvcnRfbWFwcGluZ1sw
XSksCiAJCQkJCSAgcmtsX3BvcnRfbWFwcGluZywKQEAgLTI2NzQsMTggKzI2OTIsMjggQEAgZW51
bSBhdXhfY2ggaW50ZWxfYmlvc19wb3J0X2F1eF9jaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAJCWF1eF9jaCA9IEFVWF9DSF9BOwogCQlicmVhazsKIAljYXNlIERQX0FVWF9C
OgotCQlhdXhfY2ggPSBBVVhfQ0hfQjsKKwkJYXV4X2NoID0gKElTX0FMREVSTEFLRV9TKGRldl9w
cml2KSkgPworCQkJQVVYX0NIX0QgOiBBVVhfQ0hfQjsKIAkJYnJlYWs7CiAJY2FzZSBEUF9BVVhf
QzoKLQkJYXV4X2NoID0gKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJp
dikpID8KLQkJCUFVWF9DSF9EIDogQVVYX0NIX0M7CisJCWlmIChJU19BTERFUkxBS0VfUyhkZXZf
cHJpdikpCisJCQlhdXhfY2ggPSBBVVhfQ0hfRTsKKwkJZWxzZSBpZiAoSVNfREcxKGRldl9wcml2
KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKKwkJCWF1eF9jaCA9IEFVWF9DSF9EOworCQll
bHNlCisJCQlhdXhfY2ggPSBBVVhfQ0hfQzsKIAkJYnJlYWs7CiAJY2FzZSBEUF9BVVhfRDoKLQkJ
YXV4X2NoID0gKElTX0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpID8K
LQkJCUFVWF9DSF9FIDogQVVYX0NIX0Q7CisJCWlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikp
CisJCQlhdXhfY2ggPSBBVVhfQ0hfRjsKKwkJZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSB8fCBJ
U19ST0NLRVRMQUtFKGRldl9wcml2KSkKKwkJCWF1eF9jaCA9IEFVWF9DSF9FOworCQllbHNlCisJ
CQlhdXhfY2ggPSBBVVhfQ0hfRDsKIAkJYnJlYWs7CiAJY2FzZSBEUF9BVVhfRToKLQkJYXV4X2No
ID0gQVVYX0NIX0U7CisJCWF1eF9jaCA9IChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpID8KKwkJ
CUFVWF9DSF9HIDogQVVYX0NIX0U7CiAJCWJyZWFrOwogCWNhc2UgRFBfQVVYX0Y6CiAJCWF1eF9j
aCA9IEFVWF9DSF9GOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
