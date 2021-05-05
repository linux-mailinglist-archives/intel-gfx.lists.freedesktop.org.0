Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F0A3749CB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 23:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0996EC5E;
	Wed,  5 May 2021 21:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12ED86EC5E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 21:02:07 +0000 (UTC)
IronPort-SDR: cs/1AnpwDNa6oVcD81qLX7JZ4aBqLGZvXXiObN/lv7t6ZkAxKcEw9uVQ5pFZthChsrijPvlgl7
 5jqyS1szaQXw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="283738662"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="283738662"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 14:01:57 -0700
IronPort-SDR: MAiS0TY5Qd3OjS/RyPzsXrCh9IEguN5qkMNJNjJHXSnxZ51MT9f/UAIUFFhJkTO/bPv8CzHh17
 snQcskY5CxFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="428292881"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 05 May 2021 14:01:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 May 2021 00:01:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 May 2021 00:01:54 +0300
Message-Id: <20210505210154.4136-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove redundant DIRTYFB frontbuffer
 flushes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBmcm9udGJ1ZmZlciB0cmFja2luZyBjb2RlIGlzIHN1cHBvc2VkIHRvIGhhbmRsZSBwbGFuZQp1
cGRhdGVzIHZpYSBPUklHSU5fRkxJUC4gUmlnaHQgbm93IHdlJ3JlIGFsc28gZG9pbmcgaW50ZXJu
YWwKT1JJR0lOX0RJUlRZRkIgZmx1c2hlZCBhcyB3ZWxsLiBDYW4ndCBzZWUgdGhlIHBvaW50IHNv
IGdldCByaWQKb2YgdGhlbS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBm
Y2Q4MTIzZWRlOGUuLjFmZTg1YTZlYTkwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE3MzIsOCArMTczMiw2IEBAIGludGVsX2ZpbmRfaW5p
dGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMsCiAJaW50ZWxfcGxh
bmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGludGVsX3N0YXRlLCBpbnRlbF9zdGF0ZSwKIAkJCQkJ
ICBpbnRlbF9jcnRjKTsKIAotCWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKHRvX2ludGVsX2Zyb250
YnVmZmVyKGZiKSwgT1JJR0lOX0RJUlRZRkIpOwotCiAJYXRvbWljX29yKHRvX2ludGVsX3BsYW5l
KHByaW1hcnkpLT5mcm9udGJ1ZmZlcl9iaXQsCiAJCSAgJnRvX2ludGVsX2Zyb250YnVmZmVyKGZi
KS0+Yml0cyk7CiB9CkBAIC0xMDY0Nyw3ICsxMDY0NSw2IEBAIGludGVsX3ByZXBhcmVfcGxhbmVf
ZmIoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCQlyZXR1cm4gcmV0OwogCiAJaTkxNV9nZW1f
b2JqZWN0X3dhaXRfcHJpb3JpdHkob2JqLCAwLCAmYXR0cik7Ci0JaTkxNV9nZW1fb2JqZWN0X2Zs
dXNoX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0RJUlRZRkIpOwogCiAJaWYgKCFuZXdfcGxhbmVf
c3RhdGUtPnVhcGkuZmVuY2UpIHsgLyogaW1wbGljaXQgZmVuY2luZyAqLwogCQlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
