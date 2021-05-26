Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC20B391842
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:00:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED106ED02;
	Wed, 26 May 2021 13:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6442B6ED04;
 Wed, 26 May 2021 13:00:41 +0000 (UTC)
IronPort-SDR: eUvyax0xAOWs4pwq8mOkvSrhh1P3r1eY2bP/4R5tWsZRnU5THLshRVNZzYNM169d74gzikP+Wq
 9isqKyOnHU8w==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="182101713"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="182101713"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:00:41 -0700
IronPort-SDR: vuBQ3uaBlFWFM2mQfi62V9H42pAN6giB+2brL55W9fYnpJmb4FIAs1EKQ+iXVskuT3P9yWCvcR
 s5B3Q6veHJgA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="614942077"
Received: from mschan-mobl1.amr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.212.100.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:00:39 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 26 May 2021 14:00:20 +0100
Message-Id: <20210526130025.249629-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210526130025.249629-1-matthew.auld@intel.com>
References: <20210526130025.249629-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 4/9] tests/gem_gpgpu_fill: Convert from
 simple to standard igt_main
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
Cc: intel-gfx@lists.freedesktop.org,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRG9taW5payBHcnplZ29yemVrIDxkb21pbmlrLmdyemVnb3J6ZWtAaW50ZWwuY29tPgoK
QXMgd2UgbmVlZCB0byBhZGQgbmV3IHRlc3QgdmFyaWFudHMsIGNvbnZlcnQgdGhlIGNvZGUgdG8g
c3RhbmRhcmQKaWd0X21haW4gZm9ybWF0IHNvIHRob3NlIHZhcmlhbnRzIGNhbiBiZSBlYXNpbHkg
YWNjb21tb2RhdGVkLgoKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3ou
a3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRz
a2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KQWNrZWQtYnk6IFBldHJpIExhdHZh
bGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2dwZ3B1X2Zp
bGwuYyB8IDI1ICsrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2Vt
X2dwZ3B1X2ZpbGwuYyBiL3Rlc3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGwuYwppbmRleCBjNjA1NjI5
Zi4uNWIxMWZiMzUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGwuYworKysg
Yi90ZXN0cy9pOTE1L2dlbV9ncGdwdV9maWxsLmMKQEAgLTEyMywyMCArMTIzLDI3IEBAIHN0YXRp
YyB2b2lkIGdwZ3B1X2ZpbGwoZGF0YV90ICpkYXRhLCBpZ3RfZmlsbGZ1bmNfdCBmaWxsKQogCiAJ
bXVubWFwKHB0ciwgYnVmLT5zdXJmYWNlWzBdLnNpemUpOwogfQotCi1pZ3Rfc2ltcGxlX21haW4K
K2lndF9tYWluCiB7CiAJZGF0YV90IGRhdGEgPSB7MCwgfTsKIAlpZ3RfZmlsbGZ1bmNfdCBmaWxs
X2ZuID0gTlVMTDsKIAotCWRhdGEuZHJtX2ZkID0gZHJtX29wZW5fZHJpdmVyX3JlbmRlcihEUklW
RVJfSU5URUwpOwotCWRhdGEuZGV2aWQgPSBpbnRlbF9nZXRfZHJtX2RldmlkKGRhdGEuZHJtX2Zk
KTsKLQlpZ3RfcmVxdWlyZV9nZW0oZGF0YS5kcm1fZmQpOwotCWRhdGEuYm9wcyA9IGJ1Zl9vcHNf
Y3JlYXRlKGRhdGEuZHJtX2ZkKTsKKwlpZ3RfZml4dHVyZSB7CisJCWRhdGEuZHJtX2ZkID0gZHJt
X29wZW5fZHJpdmVyX3JlbmRlcihEUklWRVJfSU5URUwpOworCQlkYXRhLmRldmlkID0gaW50ZWxf
Z2V0X2RybV9kZXZpZChkYXRhLmRybV9mZCk7CisJCWlndF9yZXF1aXJlX2dlbShkYXRhLmRybV9m
ZCk7CisJCWRhdGEuYm9wcyA9IGJ1Zl9vcHNfY3JlYXRlKGRhdGEuZHJtX2ZkKTsKKworCQlmaWxs
X2ZuID0gaWd0X2dldF9ncGdwdV9maWxsZnVuYyhkYXRhLmRldmlkKTsKKworCQlpZ3RfcmVxdWly
ZV9mKGZpbGxfZm4sICJubyBncGdwdS1maWxsIGZ1bmN0aW9uXG4iKTsKIAotCWZpbGxfZm4gPSBp
Z3RfZ2V0X2dwZ3B1X2ZpbGxmdW5jKGRhdGEuZGV2aWQpOworCX0KIAotCWlndF9yZXF1aXJlX2Yo
ZmlsbF9mbiwgIm5vIGdwZ3B1LWZpbGwgZnVuY3Rpb25cbiIpOworCWlndF9zdWJ0ZXN0KCJiYXNp
YyIpCisJCWdwZ3B1X2ZpbGwoJmRhdGEsIGZpbGxfZm4pOwogCi0JZ3BncHVfZmlsbCgmZGF0YSwg
ZmlsbF9mbik7CisJaWd0X2ZpeHR1cmUgeworCQlidWZfb3BzX2Rlc3Ryb3koZGF0YS5ib3BzKTsK
Kwl9CiB9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
