Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EEFF818D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 21:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410F46E7EF;
	Mon, 11 Nov 2019 20:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2A06E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 20:50:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 12:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="194060048"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga007.jf.intel.com with ESMTP; 11 Nov 2019 12:50:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 12:50:24 -0800
Message-Id: <20191111205024.22853-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111205024.22853-1-lucas.demarchi@intel.com>
References: <20191111205024.22853-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsb: remove atomic operations
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

VGhlIGN1cnJlbnQgZHNiIEFQSSBpcyBub3QgcmVhbGx5IHByZXBhcmVkIHRvIGhhbmRsZSBtdWx0
aXRocmVhZCBhY2Nlc3MuCkkgd2FzIGRlYnVnZ2luZyBhbiBpc3N1ZSB0aGF0IGVuZGVkIHVwIGZp
eGVkIGJ5IGNvbW1pdCBhMDk2ODgzZGRhMmMKKCJkcm0vaTkxNS9kc2I6IFJlbW92ZSBQSU5fTUFQ
UEFCTEUgZnJvbSB0aGUgRFNCIG9iamVjdCBWTUEiKSBhbmQgd2FzCnB1enpsZWQgaG93IHRoZXNl
IGF0b21pYyBvcGVyYXRpb25zIHdlcmUgZ3VhcmFudGVlaW5nIGF0b21pY2l0eS4KCglpZiAoYXRv
bWljX2FkZF9yZXR1cm4oMSwgJmRzYi0+cmVmY291bnQpICE9IDEpCgkJcmV0dXJuIGRzYjsKClRo
cmVhZCBBIGNvdWxkIHN0aWxsIGJlIGluaXRpYWxpemluZyBkc2Igc3RydWN0IChhbmQgZXZlbiBm
YWlsIGluIHRoZQptaWRkbGUpIHdoaWxlIHRocmVhZCBCIHdvdWxkIHRha2UgYSByZWZlcmVuY2Ug
YW5kIHVzZSBpdCAoZXZlbgpkZXJlZmVuY2luZyBhIE5VTEwgY21kX2J1ZikuCgpJIGRvbid0IHRo
aW5rIHRoZSBhdG9taWMgb3BlcmF0aW9ucyBoZXJlIHdpbGwgaGVscCBtdWNoIGlmIHRoaXMgd2Vy
ZQp0byBzdXBwb3J0IG11bHRpdGhyZWFkZWQgc2NlbmFyaW8gaW4gZnV0dXJlLCBzbyBqdXN0IHJl
bW92ZSB0aGVtIHRvCmF2b2lkIGNvbmZ1c2lvbi4KClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAxMCArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jCmluZGV4IGQ4YWQ1ZmUxZWZlZi4uNGZlZWJiZWIwYjBjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAgLTEwNyw3ICsxMDcsNyBAQCBpbnRlbF9kc2Jf
Z2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCWlmICghSEFTX0RTQihpOTE1KSkKIAkJcmV0
dXJuIGRzYjsKIAotCWlmIChhdG9taWNfYWRkX3JldHVybigxLCAmZHNiLT5yZWZjb3VudCkgIT0g
MSkKKwlpZiAoKytkc2ItPnJlZmNvdW50ICE9IDEpCiAJCXJldHVybiBkc2I7CiAKIAlkc2ItPmlk
ID0gRFNCMTsKQEAgLTEyMyw3ICsxMjMsNyBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQogCWlmIChJU19FUlIodm1hKSkgewogCQlEUk1fRVJST1IoIlZtYSBjcmVhdGlv
biBmYWlsZWRcbiIpOwogCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0JCWF0b21pY19kZWMo
JmRzYi0+cmVmY291bnQpOworCQlkc2ItPnJlZmNvdW50LS07CiAJCWdvdG8gZXJyOwogCX0KIApA
QCAtMTMyLDcgKzEzMiw3IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMp
CiAJCURSTV9FUlJPUigiQ29tbWFuZCBidWZmZXIgY3JlYXRpb24gZmFpbGVkXG4iKTsKIAkJaTkx
NV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJnZtYSwgMCk7CiAJCWRzYi0+Y21kX2J1ZiA9IE5VTEw7
Ci0JCWF0b21pY19kZWMoJmRzYi0+cmVmY291bnQpOworCQlkc2ItPnJlZmNvdW50LS07CiAJCWdv
dG8gZXJyOwogCX0KIAlkc2ItPnZtYSA9IHZtYTsKQEAgLTE1OCwxMCArMTU4LDEwIEBAIHZvaWQg
aW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCiAJaWYgKCFIQVNfRFNCKGk5MTUp
KQogCQlyZXR1cm47CiAKLQlpZiAoV0FSTl9PTihhdG9taWNfcmVhZCgmZHNiLT5yZWZjb3VudCkg
PT0gMCkpCisJaWYgKFdBUk5fT04oZHNiLT5yZWZjb3VudCA9PSAwKSkKIAkJcmV0dXJuOwogCi0J
aWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJmRzYi0+cmVmY291bnQpKSB7CisJaWYgKC0tZHNiLT5y
ZWZjb3VudCA9PSAwKSB7CiAJCWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZkc2ItPnZtYSwg
STkxNV9WTUFfUkVMRUFTRV9NQVApOwogCQlkc2ItPmNtZF9idWYgPSBOVUxMOwogCQlkc2ItPmZy
ZWVfcG9zID0gMDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCmluZGV4
IDZmOTVjOGU5MDllNi4uMzk1ZWY5Y2U1NThlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmgKQEAgLTIyLDcgKzIyLDcgQEAgZW51bSBkc2JfaWQgewogfTsKIAogc3Ry
dWN0IGludGVsX2RzYiB7Ci0JYXRvbWljX3QgcmVmY291bnQ7CisJbG9uZyByZWZjb3VudDsKIAll
bnVtIGRzYl9pZCBpZDsKIAl1MzIgKmNtZF9idWY7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7Ci0t
IAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
