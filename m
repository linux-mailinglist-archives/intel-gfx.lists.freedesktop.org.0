Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 997073809FC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F3F6EE6B;
	Fri, 14 May 2021 12:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D816EE6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:23 +0000 (UTC)
IronPort-SDR: zXCkPk0fFnu1gpzhAph+n4wuJtsMy695TRBP1VkLdbvY/MP7u5FiD090G2jgBZ0TG/SdVRS/Ik
 Hynq1EmvQQ0A==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="200222458"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="200222458"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:19 -0700
IronPort-SDR: +IF5kHUzR7OEBaQrDP/JStJ9bnrpIQ3I/C2E+tvOJN8NCCAcNiiXht0d5TPPyvh7y46qfSqV4Z
 4duMzizWy1fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="438024046"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 14 May 2021 05:58:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:45 +0300
Message-Id: <20210514125751.17075-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Simplify up g4x watermark
 sanitation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGNhbiBzaW1wbGlmeSB0aGUgZzR4IHdhdGVybWFyayBzYW5pdGF0aW9uIGJ5IHJldXNpbmcgdGhl
CnNlY29uZCBoYWxmIG9mIGc0eF9jb21wdXRlX3BpcGVfd20oKSB0byBjb252ZXJ0IHRoZSBzYW5p
dGl6ZWQKcmF3IHdhdGVybWFya3MgaW50byB0aGUgcHJvcGVyIGZvcm0gdG8gYmUgdXNlZCBhcyB0
aGUKb3B0aW1hbC9pbnRlcm1lZGlhdGUgd2F0ZXJtYXJrcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIxICsrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKaW5kZXggMTE1Y2JmNGNkMTBmLi5iMmViYzVmZjAwMDcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYwpAQCAtNjU1MiwzNyArNjU1MiwzMCBAQCB2b2lkIGc0eF93bV9zYW5pdGl6ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQl0b19pbnRlbF9jcnRjX3N0YXRl
KGNydGMtPmJhc2Uuc3RhdGUpOwogCQlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlID0KIAkJCXRvX2ludGVsX3BsYW5lX3N0YXRlKHBsYW5lLT5iYXNlLnN0YXRlKTsKLQkJc3Ry
dWN0IGc0eF93bV9zdGF0ZSAqd21fc3RhdGUgPSAmY3J0Y19zdGF0ZS0+d20uZzR4Lm9wdGltYWw7
CiAJCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQgPSBwbGFuZS0+aWQ7Ci0JCWludCBsZXZlbDsKKwkJ
aW50IGxldmVsLCBudW1fbGV2ZWxzID0gaW50ZWxfd21fbnVtX2xldmVscyhkZXZfcHJpdik7CiAK
IAkJaWYgKHBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpCiAJCQljb250aW51ZTsKIAotCQlmb3Ig
KGxldmVsID0gMDsgbGV2ZWwgPCAzOyBsZXZlbCsrKSB7CisJCWZvciAobGV2ZWwgPSAwOyBsZXZl
bCA8IG51bV9sZXZlbHM7IGxldmVsKyspIHsKIAkJCXN0cnVjdCBnNHhfcGlwZV93bSAqcmF3ID0K
IAkJCQkmY3J0Y19zdGF0ZS0+d20uZzR4LnJhd1tsZXZlbF07CiAKIAkJCXJhdy0+cGxhbmVbcGxh
bmVfaWRdID0gMDsKLQkJCXdtX3N0YXRlLT53bS5wbGFuZVtwbGFuZV9pZF0gPSAwOwotCQl9CiAK
LQkJaWYgKHBsYW5lX2lkID09IFBMQU5FX1BSSU1BUlkpIHsKLQkJCWZvciAobGV2ZWwgPSAwOyBs
ZXZlbCA8IDM7IGxldmVsKyspIHsKLQkJCQlzdHJ1Y3QgZzR4X3BpcGVfd20gKnJhdyA9Ci0JCQkJ
CSZjcnRjX3N0YXRlLT53bS5nNHgucmF3W2xldmVsXTsKKwkJCWlmIChwbGFuZV9pZCA9PSBQTEFO
RV9QUklNQVJZKQogCQkJCXJhdy0+ZmJjID0gMDsKLQkJCX0KLQotCQkJd21fc3RhdGUtPnNyLmZi
YyA9IDA7Ci0JCQl3bV9zdGF0ZS0+aHBsbC5mYmMgPSAwOwotCQkJd21fc3RhdGUtPmZiY19lbiA9
IGZhbHNlOwogCQl9CiAJfQogCiAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwg
Y3J0YykgewogCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CiAJCQl0b19p
bnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOworCQlpbnQgcmV0OworCisJCXJldCA9
IF9nNHhfY29tcHV0ZV9waXBlX3dtKGNydGNfc3RhdGUpOworCQlkcm1fV0FSTl9PTigmZGV2X3By
aXYtPmRybSwgcmV0KTsKIAogCQljcnRjX3N0YXRlLT53bS5nNHguaW50ZXJtZWRpYXRlID0KIAkJ
CWNydGNfc3RhdGUtPndtLmc0eC5vcHRpbWFsOwotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
