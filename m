Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0883A7E23
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 14:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7E06E28B;
	Tue, 15 Jun 2021 12:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BC16E28B;
 Tue, 15 Jun 2021 12:24:20 +0000 (UTC)
IronPort-SDR: gxRTVrOGzEksF7JABUPyJwaGh2ulcG6s9AUSBmJ8gjHAYpr9TwNjwlNcN3+xLniX8t1vgMBn4w
 0hYawWAAKO2Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="193286964"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="193286964"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 05:24:19 -0700
IronPort-SDR: 7o6rPd65e8j0kJE3BN0JdExwbqOgDko7R8Y9YWPn7xW+91i40cSc/zr75+dDvyg0vvotvSmBAG
 IYNqwACpeX2Q==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="487762188"
Received: from vgribano-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.53])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 05:24:17 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 15 Jun 2021 14:24:08 +0200
Message-Id: <20210615122408.32347-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: Fix memory leaks
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4IHR3byBtZW1vcnkgbGVha3MgaW50cm9kdWNlZCB3aXRoIHRoZSB0dG0gYmFja2VuZC4KCkZp
eGVzOiAyMTNkNTA5Mjc3NjMgKCJkcm0vaTkxNS90dG06IEludHJvZHVjZSBhIFRUTSBpOTE1IGdl
bSBvYmplY3QgYmFja2VuZCIpClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fdHRtLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCmluZGV4IDA4YjcyYzI4MGNi
NS4uODA1OWNiNjFiYzNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5j
CkBAIC0xMjIsNiArMTIyLDcgQEAgc3RhdGljIHZvaWQgaTkxNV90dG1fdHRfZGVzdHJveShzdHJ1
Y3QgdHRtX2RldmljZSAqYmRldiwgc3RydWN0IHR0bV90dCAqdHRtKQogCXN0cnVjdCBpOTE1X3R0
bV90dCAqaTkxNV90dCA9IGNvbnRhaW5lcl9vZih0dG0sIHR5cGVvZigqaTkxNV90dCksIHR0bSk7
CiAKIAl0dG1fdHRfZGVzdHJveV9jb21tb24oYmRldiwgdHRtKTsKKwl0dG1fdHRfZmluaSh0dG0p
OwogCWtmcmVlKGk5MTVfdHQpOwogfQogCkBAIC0yMTcsNiArMjE4LDcgQEAgc3RhdGljIHZvaWQg
aTkxNV90dG1fZGVsZXRlX21lbV9ub3RpZnkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykK
IAogCWlmIChsaWtlbHkob2JqKSkgewogCQkvKiBUaGlzIHJlbGVhc2VzIGFsbCBnZW0gb2JqZWN0
IGJpbmRpbmdzIHRvIHRoZSBiYWNrZW5kLiAqLworCQlpOTE1X3R0bV9mcmVlX2NhY2hlZF9pb19z
dChvYmopOwogCQlfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0KG9iaik7CiAJfQogfQotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
