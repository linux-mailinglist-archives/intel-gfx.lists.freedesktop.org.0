Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE544115788
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 20:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E7E6FA7F;
	Fri,  6 Dec 2019 19:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507606FA7F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 19:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 11:06:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,285,1571727600"; d="scan'208";a="209536453"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga007.fm.intel.com with ESMTP; 06 Dec 2019 11:06:10 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 11:05:52 -0800
Message-Id: <20191206190552.8818-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/bios: remove extra debug messages
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

SnVzdCBsaWtlIGluIDUyM2UwY2M4OWI4MyAoImRybS9pOTE1L3RnbDogYWxsb3cgRFZJL0hETUkg
b24gcG9ydCBBIiksCnRoZSBwb3J0IGNoZWNrcyB3aGVuIHJlYWRpbmcgdGhlIFZCVCBjYW4gZWFz
aWx5IG5vdCBtYXRjaCB3aGF0IHRoZQpwbGF0Zm9ybSByZWFsbHkgZXhwb3Nlcy4gSG93ZXZlciBo
ZXJlIHdlIG9ubHkgaGF2ZSBzb21lIGFkZGl0aW9uYWwgZGVidWcKbWVzc2FnZXMgdGhhdCBhcmUg
bm90IGFkZGluZyBtdWNoIHZhbHVlOiBpbiB0aGUgcHJldmlvdXMgZGVidWcgbWVzc2FnZQp3ZSBh
bHJlYWR5IHByaW50IGV2ZXJ5dGhpbmcgd2Uga25vdyBhYm91dCB0aGUgVkJULgoKSW5zdGVhZCBv
ZiBrZWVwIGZpeGluZyB0aGUgcG9zc2libGUgcG9ydCBhc3NpZ25tZW50cyBhY2NvcmRpbmcgdG8g
dGhlCnBsYXRmb3JtLCBqdXN0IG51a2UgdGhlIGFkZGl0aW9uYWwgbWVzc2FnZXMuCgpTaWduZWQt
b2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE2IC0tLS0tLS0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDFhZWVjZGQwMjI5My4uZTA1NGU4N2ViYThl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTYwMiwy
MiArMTYwMiw2IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAkJICAgICAgSEFTX0xTUENPTihkZXZfcHJpdikgJiYgY2hpbGQt
PmxzcGNvbiwKIAkJICAgICAgaW5mby0+c3VwcG9ydHNfdHlwZWNfdXNiLCBpbmZvLT5zdXBwb3J0
c190YnQpOwogCi0JaWYgKGlzX2VkcCAmJiBpc19kdmkpCi0JCURSTV9ERUJVR19LTVMoIkludGVy
bmFsIERQIHBvcnQgJWMgaXMgVE1EUyBjb21wYXRpYmxlXG4iLAotCQkJICAgICAgcG9ydF9uYW1l
KHBvcnQpKTsKLQlpZiAoaXNfY3J0ICYmIHBvcnQgIT0gUE9SVF9FKQotCQlEUk1fREVCVUdfS01T
KCJQb3J0ICVjIGlzIGFuYWxvZ1xuIiwgcG9ydF9uYW1lKHBvcnQpKTsKLQlpZiAoaXNfY3J0ICYm
IChpc19kdmkgfHwgaXNfZHApKQotCQlEUk1fREVCVUdfS01TKCJBbmFsb2cgcG9ydCAlYyBpcyBh
bHNvIERQIG9yIFRNRFMgY29tcGF0aWJsZVxuIiwKLQkJCSAgICAgIHBvcnRfbmFtZShwb3J0KSk7
Ci0JaWYgKGlzX2R2aSAmJiAocG9ydCA9PSBQT1JUX0EgfHwgcG9ydCA9PSBQT1JUX0UpKQotCQlE
Uk1fREVCVUdfS01TKCJQb3J0ICVjIGlzIFRNRFMgY29tcGF0aWJsZVxuIiwgcG9ydF9uYW1lKHBv
cnQpKTsKLQlpZiAoIWlzX2R2aSAmJiAhaXNfZHAgJiYgIWlzX2NydCkKLQkJRFJNX0RFQlVHX0tN
UygiUG9ydCAlYyBpcyBub3QgRFAvVE1EUy9DUlQgY29tcGF0aWJsZVxuIiwKLQkJCSAgICAgIHBv
cnRfbmFtZShwb3J0KSk7Ci0JaWYgKGlzX2VkcCAmJiAocG9ydCA9PSBQT1JUX0IgfHwgcG9ydCA9
PSBQT1JUX0MgfHwgcG9ydCA9PSBQT1JUX0UpKQotCQlEUk1fREVCVUdfS01TKCJQb3J0ICVjIGlz
IGludGVybmFsIERQXG4iLCBwb3J0X25hbWUocG9ydCkpOwotCiAJaWYgKGlzX2R2aSkgewogCQl1
OCBkZGNfcGluOwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
