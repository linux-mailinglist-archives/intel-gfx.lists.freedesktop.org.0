Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C619D7D1
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 22:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0452C6E318;
	Mon, 26 Aug 2019 20:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E49068924A
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 20:55:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 13:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="170977912"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.29])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2019 13:55:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 13:54:58 -0700
Message-Id: <20190826205459.29447-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826205459.29447-1-lucas.demarchi@intel.com>
References: <20190826205459.29447-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 7/8] drm/i915/tgl: Do not apply
 WaIncreaseDefaultTLBEntries from GEN12 onwards
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCldvcmthcm91
bmQgbm8gbG9uZ2VyIG5lZWRlZCAocGx1cyBMM19MUkFfMV9HUEdQVSBkb2Vzbid0IGV4aXN0KS4K
CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KTGlu
azogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwODIz
MDgyMDU1LjU5OTItMTctbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4
IDBkYjgyOTIxZmIzOC4uYzk0ZGZhNTYyMjQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYwpAQCAtMjAyOSw3ICsyMDI5LDcgQEAgc3RhdGljIHZvaWQgZ3R0X3dyaXRlX3dvcmthcm91
bmRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCiAJ
CQkJICAgR0VOOF9MM19MUkFfMV9HUEdQVSwKIAkJCQkgICBHRU45X0wzX0xSQV8xX0dQR1BVX0RF
RkFVTFRfVkFMVUVfQlhUKTsKLQllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOSkKKwllbHNl
IGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOSAmJiBJTlRFTF9HRU4oaTkxNSkgPD0gMTEpCiAJCWlu
dGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCiAJCQkJICAgR0VOOF9MM19MUkFfMV9HUEdQVSwKIAkJ
CQkgICBHRU45X0wzX0xSQV8xX0dQR1BVX0RFRkFVTFRfVkFMVUVfU0tMKTsKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
