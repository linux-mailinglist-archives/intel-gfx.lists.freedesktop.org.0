Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C875172C81
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 00:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 245C36ED7C;
	Thu, 27 Feb 2020 23:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98EF76ED7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 23:49:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 15:49:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227347013"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 15:49:17 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 15:50:05 -0800
Message-Id: <20200227235005.18706-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.06 for TGL
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

TmV3IGZpcm13YXJlIGNvbnRhaW5zIG1pbm9yIGZpeGVzIGFyb3VuZCBjb250ZXh0IHJlc3RvcmUu
CgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCmluZGV4IDU3MzIwYzEyODM5Zi4u
MzExMjU3MmNmYjdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Nzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMK
QEAgLTQwLDggKzQwLDggQEAKIAogI2RlZmluZSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkUJCUlDTF9D
U1JfTUFYX0ZXX1NJWkUKIAotI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3Zl
cjJfMDQuYmluIgotI2RlZmluZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04o
MiwgNCkKKyNkZWZpbmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbiIK
KyNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDYpCiAjZGVm
aW5lIFRHTF9DU1JfTUFYX0ZXX1NJWkUJCTB4NjAwMAogTU9EVUxFX0ZJUk1XQVJFKFRHTF9DU1Jf
UEFUSCk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
