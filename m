Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0464109F68
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF6D6E3C7;
	Tue, 26 Nov 2019 13:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983ED6E3C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:32 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="220627545"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:41 +0200
Message-Id: <1026c6bb4c002fc8caada18fbf4ee9b5948a1d18.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 06/13] drm/i915/dsc: add support for
 computing and writing PPS for DSI encoders
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIERTSSBzcGVjaWZpYyBjb21wdXRhdGlvbiBhbmQgdHJhbnNtaXNzaW9uIHRvIGRpc3BsYXkg
b2YgUFBTLgoKV2l0aCBob3BlcyB0aGF0IHRoaXMgYXBwcm9hY2ggd2lsbCB3b3JrIGZvciBib3Ro
IERQIGFuZCBEU0kgZW5jb2RlcnMuCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDI1ICsrKysrKysrKysr
KysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKaW5kZXggYzUz
MDI0ZGZiMWVjLi43YmQ3MjcxMjlhOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmRzYy5jCkBAIC0xMCw2ICsxMCw3IEBACiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgog
I2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKKyNpbmNsdWRlICJpbnRlbF9kc2kuaCIK
ICNpbmNsdWRlICJpbnRlbF92ZHNjLmgiCiAKIGVudW0gUk9XX0lOREVYX0JQUCB7CkBAIC04NDQs
NiArODQ1LDI1IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzY19wcHNfY29uZmlndXJlKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCX0KIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfZHNjX2Rz
aV9wcHNfd3JpdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQkJICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWNvbnN0IHN0cnVjdCBk
cm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAmY3J0Y19zdGF0ZS0+ZHNjLmNvbmZpZzsKKwlzdHJ1
Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5iYXNl
KTsKKwlzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2k7CisJc3RydWN0IGRybV9kc2NfcGljdHVy
ZV9wYXJhbWV0ZXJfc2V0IHBwczsKKwllbnVtIHBvcnQgcG9ydDsKKworCWRybV9kc2NfcHBzX3Bh
eWxvYWRfcGFjaygmcHBzLCB2ZHNjX2NmZyk7CisKKwlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBp
bnRlbF9kc2ktPnBvcnRzKSB7CisJCWRzaSA9IGludGVsX2RzaS0+ZHNpX2hvc3RzW3BvcnRdLT5k
ZXZpY2U7CisKKwkJbWlwaV9kc2lfcGljdHVyZV9wYXJhbWV0ZXJfc2V0KGRzaSwgJnBwcyk7CisJ
CW1pcGlfZHNpX2NvbXByZXNzaW9uX21vZGUoZHNpLCB0cnVlKTsKKwl9Cit9CisKIHN0YXRpYyB2
b2lkIGludGVsX2RzY19kcF9wcHNfd3JpdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiAJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CkBA
IC04ODIsNyArOTAyLDEwIEBAIHZvaWQgaW50ZWxfZHNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAogCWludGVsX2RzY19wcHNfY29uZmlndXJlKGVuY29kZXIsIGNydGNf
c3RhdGUpOwogCi0JaW50ZWxfZHNjX2RwX3Bwc193cml0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsK
KwlpZiAoZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRfRFNJKQorCQlpbnRlbF9kc2NfZHNp
X3Bwc193cml0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwllbHNlCisJCWludGVsX2RzY19kcF9w
cHNfd3JpdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAKIAlpZiAoY3J0Y19zdGF0ZS0+Y3B1X3Ry
YW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApIHsKIAkJZHNzX2N0bDFfcmVnID0gRFNTX0NUTDE7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
