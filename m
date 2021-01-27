Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66B5305AB5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0646E7D3;
	Wed, 27 Jan 2021 12:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0EA6E5D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:03:41 +0000 (UTC)
IronPort-SDR: Q3lOWacqn9PM3QzudR6m8dNA0c1/tCvKyNOXNfDrc/8UhvyIzo712Um2i0cd8p0kBUSfdWwgpj
 D0wFTkCU6GhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180136898"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180136898"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:41 -0800
IronPort-SDR: E54P9snimPNEAvZ90PJVK+ZewL8fmEGavBbLC4NEg9Gt0mJne7QAyQYgCohOk8RZ5WYWKX/a+b
 EbOuJY26Dg7Q==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="362410305"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:40 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:03:14 +0000
Message-Id: <20210127120316.370305-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127120316.370305-1-matthew.auld@intel.com>
References: <20210127120316.370305-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/8] drm/i915: allocate context from LMEM
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlZmVyIGFsbG9jYXRpbmcgdGhlIGNvbnRleHQgZnJvbSBMTUVNIG9uIGRnZnguCgpCYXNlZCBv
biBhIHBhdGNoIGZyb20gTWljaGVsIFRoaWVycnkuCgp2MjogZmxhdHRlbiB0aGUgY2hhaW4KClNp
Z25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCmluZGV4IDMzYjUyOWRjYjA1Zi4uODUwOGI4ZDcwMWMxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwpAQCAtMyw2ICszLDggQEAKICAqIENvcHlyaWdodCDCqSAyMDE0IElu
dGVsIENvcnBvcmF0aW9uCiAgKi8KIAorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCisK
ICNpbmNsdWRlICJnZW44X2VuZ2luZV9jcy5oIgogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5j
bHVkZSAiaTkxNV9wZXJmLmgiCkBAIC04MDgsNyArODEwLDkgQEAgX19scmNfYWxsb2Nfc3RhdGUo
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
CiAJCWNvbnRleHRfc2l6ZSArPSBQQUdFX1NJWkU7CiAJfQogCi0Jb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9zaG1lbShlbmdpbmUtPmk5MTUsIGNvbnRleHRfc2l6ZSk7CisJb2JqID0gaTkx
NV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGVuZ2luZS0+aTkxNSwgY29udGV4dF9zaXplLCAwKTsK
KwlpZiAoSVNfRVJSKG9iaikpCisJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0o
ZW5naW5lLT5pOTE1LCBjb250ZXh0X3NpemUpOwogCWlmIChJU19FUlIob2JqKSkKIAkJcmV0dXJu
IEVSUl9DQVNUKG9iaik7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
