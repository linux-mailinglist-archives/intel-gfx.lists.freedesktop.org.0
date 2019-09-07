Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED34AC642
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 13:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A151389DFF;
	Sat,  7 Sep 2019 11:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A71789DFC
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 11:15:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 04:15:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,477,1559545200"; d="scan'208";a="177883248"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 04:15:43 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 16:37:32 +0530
Message-Id: <20190907110735.10302-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190907110735.10302-1-animesh.manna@intel.com>
References: <20190907110735.10302-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 08/11] drm/i915/dsb: added dsb refcount to
 synchronize between get/put.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGxpZmV0aW1lIG9mIGNvbW1hbmQgYnVmZmVyIGNhbiBiZSBjb250cm9sbGVkIGJ5IHRoZSBk
c2IgdXNlcgp0aHJvdWggcmVmY291bnQuIEFkZGVkIHJlZmNvdW50IG1lY2hhbmlzbSBpcyBkc2Ig
Z2V0L3B1dCBjYWxsCndoaWNoIGNyZWF0ZS9kZXN0cm95IGRzYiBjb250ZXh0LgoKQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNo
YW5rLnNoYXJtYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCAyMiArKysrKysrKysrKysrKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jCmluZGV4IDg1MzY4NTc1MTU0MC4uYjk1MWE2YjUyNjRhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAgLTc4LDcgKzc4LDEyIEBAIGludGVsX2RzYl9n
ZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJc3RydWN0IGludGVsX2RzYiAqZHNiID0gJmNy
dGMtPmRzYjsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAotCWlmICgoIUhBU19EU0IoaTkx
NSkpIHx8IGRzYi0+Y21kX2J1ZikKKwlpZiAoIUhBU19EU0IoaTkxNSkpCisJCXJldHVybiBkc2I7
CisKKwlhdG9taWNfaW5jKCZkc2ItPnJlZmNvdW50KTsKKworCWlmIChkc2ItPmNtZF9idWYpCiAJ
CXJldHVybiBkc2I7CiAKIAlkc2ItPmlkID0gRFNCMTsKQEAgLTk0LDYgKzk5LDcgQEAgaW50ZWxf
ZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJ
RFJNX0VSUk9SKCJWbWEgY3JlYXRpb24gZmFpbGVkLlxuIik7CiAJCWk5MTVfZ2VtX29iamVjdF9w
dXQob2JqKTsKKwkJYXRvbWljX2RlYygmZHNiLT5yZWZjb3VudCk7CiAJCWdvdG8gZXJyOwogCX0K
IApAQCAtMTAyLDYgKzEwOCw3IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCiAJCURSTV9FUlJPUigiQ29tbWFuZCBidWZmZXIgY3JlYXRpb24gZmFpbGVkLlxuIik7CiAJ
CWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZ2bWEsIDApOwogCQlkc2ItPmNtZF9idWYgPSBO
VUxMOworCQlhdG9taWNfZGVjKCZkc2ItPnJlZmNvdW50KTsKIAkJZ290byBlcnI7CiAJfQogCWRz
Yi0+dm1hID0gdm1hOwpAQCAtMTIxLDExICsxMjgsMTQgQEAgdm9pZCBpbnRlbF9kc2JfcHV0KHN0
cnVjdCBpbnRlbF9kc2IgKmRzYikKIAkJcmV0dXJuOwogCiAJaWYgKGRzYi0+Y21kX2J1Zikgewot
CQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKLQkJaTkxNV9nZW1fb2JqZWN0
X3VucGluX21hcChkc2ItPnZtYS0+b2JqKTsKLQkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2Uo
JmRzYi0+dm1hLCAwKTsKLQkJZHNiLT5jbWRfYnVmID0gTlVMTDsKLQkJbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJYXRvbWljX2RlYygmZHNiLT5yZWZjb3VudCk7CisJ
CWlmICghYXRvbWljX3JlYWQoJmRzYi0+cmVmY291bnQpKSB7CisJCQltdXRleF9sb2NrKCZpOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKKwkJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoZHNiLT52
bWEtPm9iaik7CisJCQlpOTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmZHNiLT52bWEsIDApOwor
CQkJZHNiLT5jbWRfYnVmID0gTlVMTDsKKwkJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7CisJCX0KIAl9CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5oCmluZGV4IDczODljOGM1YjY2NS4uZGNhNGU2MzJkZDNjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKQEAgLTIwLDYgKzIwLDcgQEAgZW51bSBkc2JfaWQg
ewogfTsKIAogc3RydWN0IGludGVsX2RzYiB7CisJYXRvbWljX3QgcmVmY291bnQ7CiAJZW51bSBk
c2JfaWQgaWQ7CiAJdTMyICpjbWRfYnVmOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwotLSAKMi4y
Mi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
