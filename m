Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C6038920C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 16:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8A76EDEB;
	Wed, 19 May 2021 14:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CFE6EDE6;
 Wed, 19 May 2021 14:53:57 +0000 (UTC)
IronPort-SDR: PcMUoR1W7Njq+KEWNPTQuwp/lo82mSJT0GRVxLmlfG7BeZ+qm6a00iPXdVnMnO2gwvOQ8eSzks
 VmQ3C0VDDkEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="188401196"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188401196"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:57 -0700
IronPort-SDR: FKdabz+9KQvI6NzhIzKcYFKbgrnimwtEVmQ6FI2GGSn5QhJSnqZSvklsKXHaK/88T2NR3mTSVY
 jM0MWF6nwC1g==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473527427"
Received: from ajwalton-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.22.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:55 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 19 May 2021 15:53:32 +0100
Message-Id: <20210519145337.255167-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210519145337.255167-1-matthew.auld@intel.com>
References: <20210519145337.255167-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/9] tests/gem_gpgpu_fill: Convert from
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
Cc: thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRG9taW5payBHcnplZ29yemVrIDxkb21pbmlrLmdyemVnb3J6ZWtAaW50ZWwuY29tPgoK
QXMgd2UgbmVlZCB0byBhZGQgbmV3IHRlc3QgdmFyaWFudHMsIGNvbnZlcnQgdGhlIGNvZGUgdG8g
c3RhbmRhcmQKaWd0X21haW4gZm9ybWF0IHNvIHRob3NlIHZhcmlhbnRzIGNhbiBiZSBlYXNpbHkg
YWNjb21tb2RhdGVkLgoKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3ou
a3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1w
Y3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5
MTUvZ2VtX2dwZ3B1X2ZpbGwuYyB8IDI1ICsrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3Rlc3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGwuYyBiL3Rlc3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGwu
YwppbmRleCBjNjA1NjI5Zi4uNWIxMWZiMzUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2dw
Z3B1X2ZpbGwuYworKysgYi90ZXN0cy9pOTE1L2dlbV9ncGdwdV9maWxsLmMKQEAgLTEyMywyMCAr
MTIzLDI3IEBAIHN0YXRpYyB2b2lkIGdwZ3B1X2ZpbGwoZGF0YV90ICpkYXRhLCBpZ3RfZmlsbGZ1
bmNfdCBmaWxsKQogCiAJbXVubWFwKHB0ciwgYnVmLT5zdXJmYWNlWzBdLnNpemUpOwogfQotCi1p
Z3Rfc2ltcGxlX21haW4KK2lndF9tYWluCiB7CiAJZGF0YV90IGRhdGEgPSB7MCwgfTsKIAlpZ3Rf
ZmlsbGZ1bmNfdCBmaWxsX2ZuID0gTlVMTDsKIAotCWRhdGEuZHJtX2ZkID0gZHJtX29wZW5fZHJp
dmVyX3JlbmRlcihEUklWRVJfSU5URUwpOwotCWRhdGEuZGV2aWQgPSBpbnRlbF9nZXRfZHJtX2Rl
dmlkKGRhdGEuZHJtX2ZkKTsKLQlpZ3RfcmVxdWlyZV9nZW0oZGF0YS5kcm1fZmQpOwotCWRhdGEu
Ym9wcyA9IGJ1Zl9vcHNfY3JlYXRlKGRhdGEuZHJtX2ZkKTsKKwlpZ3RfZml4dHVyZSB7CisJCWRh
dGEuZHJtX2ZkID0gZHJtX29wZW5fZHJpdmVyX3JlbmRlcihEUklWRVJfSU5URUwpOworCQlkYXRh
LmRldmlkID0gaW50ZWxfZ2V0X2RybV9kZXZpZChkYXRhLmRybV9mZCk7CisJCWlndF9yZXF1aXJl
X2dlbShkYXRhLmRybV9mZCk7CisJCWRhdGEuYm9wcyA9IGJ1Zl9vcHNfY3JlYXRlKGRhdGEuZHJt
X2ZkKTsKKworCQlmaWxsX2ZuID0gaWd0X2dldF9ncGdwdV9maWxsZnVuYyhkYXRhLmRldmlkKTsK
KworCQlpZ3RfcmVxdWlyZV9mKGZpbGxfZm4sICJubyBncGdwdS1maWxsIGZ1bmN0aW9uXG4iKTsK
IAotCWZpbGxfZm4gPSBpZ3RfZ2V0X2dwZ3B1X2ZpbGxmdW5jKGRhdGEuZGV2aWQpOworCX0KIAot
CWlndF9yZXF1aXJlX2YoZmlsbF9mbiwgIm5vIGdwZ3B1LWZpbGwgZnVuY3Rpb25cbiIpOworCWln
dF9zdWJ0ZXN0KCJiYXNpYyIpCisJCWdwZ3B1X2ZpbGwoJmRhdGEsIGZpbGxfZm4pOwogCi0JZ3Bn
cHVfZmlsbCgmZGF0YSwgZmlsbF9mbik7CisJaWd0X2ZpeHR1cmUgeworCQlidWZfb3BzX2Rlc3Ry
b3koZGF0YS5ib3BzKTsKKwl9CiB9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
