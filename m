Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D92539739E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7216EA56;
	Tue,  1 Jun 2021 12:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF656EE39
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 08:12:12 +0000 (UTC)
IronPort-SDR: qJGIYqY/0JXN74qrL0xS+ds3l9xxVP6joIN24GBU7/op2aH05olxvTg28npy7LFR8j5eX2Yj6q
 cptlMR44hhqg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="189797546"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="189797546"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 01:12:11 -0700
IronPort-SDR: qUBxaa59vEOq2QFrcPY3NQoK4dosMIjS2LwibZ6ZhXRUUZa9ciTmT+9Y+ZWQvPKiFlqbqgtkxQ
 C4W8OpMfsx2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="631078631"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.91])
 by fmsmga006.fm.intel.com with ESMTP; 27 May 2021 01:12:10 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 May 2021 11:15:40 +0300
Message-Id: <20210527081540.20152-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 01 Jun 2021 12:51:14 +0000
Subject: [Intel-gfx] [PATCH] INTEL_DII: drm/i915/adl_p: Same slices mask is
 not same Dbuf state
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

V2UgY3VycmVudGx5IHRyZWF0IHNhbWUgc2xpY2UgbWFzayBhcyBhIHNhbWUgREJ1ZiBzdGF0ZSBh
bmQgc2tpcAp1cGRhdGluZyB0aGUgRGJ1ZiBzbGljZXMsIGlmIHdlIGRldGVjdCB0aGF0LgpUaGlz
IGlzIHdyb25nIGFzIGlmIHdlIGhhdmUgYSBtdWx0aSB0byBzaW5nbGUgcGlwZSBjaGFuZ2Ugb3IK
dmljZSB2ZXJzYSwgdGhhdCB3b3VsZCBiZSB0cmVhdGVkIGFzIGEgc2FtZSBEYnVmIHN0YXRlIGFu
ZCB0aHVzCm5vIGNoYW5nZXMgcmVxdWlyZWQsIHNvIHdlIGRvbid0IGdldCBNYnVzIHVwZGF0ZWQs
IGNhdXNpbmcgaXNzdWVzLgpTb2x1dGlvbjogY2hlY2sgYWxzbyBtYnVzX2pvaW4sIGluIGFkZGl0
aW9uIHRvIHNsaWNlcyBtYXNrLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5p
c2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAwMGYzZGVhZDIwYWQuLjgwNGQ4
MzQ4NmU4MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC04MDkzLDcgKzgwOTMsOCBAQCB2
b2lkIGludGVsX2RidWZfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIAkJaW50ZWxfYXRvbWljX2dldF9vbGRfZGJ1Zl9zdGF0ZShzdGF0ZSk7CiAKIAlp
ZiAoIW5ld19kYnVmX3N0YXRlIHx8Ci0JICAgIG5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNl
cyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpCisJICAgICgobmV3X2RidWZfc3Rh
dGUtPmVuYWJsZWRfc2xpY2VzID09IG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcykKKwkg
ICAgJiYgKG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+am9p
bmVkX21idXMpKSkKIAkJcmV0dXJuOwogCiAJV0FSTl9PTighbmV3X2RidWZfc3RhdGUtPmJhc2Uu
Y2hhbmdlZCk7CkBAIC04MTEzLDcgKzgxMTQsOCBAQCB2b2lkIGludGVsX2RidWZfcG9zdF9wbGFu
ZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWludGVsX2F0b21p
Y19nZXRfb2xkX2RidWZfc3RhdGUoc3RhdGUpOwogCiAJaWYgKCFuZXdfZGJ1Zl9zdGF0ZSB8fAot
CSAgICBuZXdfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMgPT0gb2xkX2RidWZfc3RhdGUtPmVu
YWJsZWRfc2xpY2VzKQorCSAgICAoKG5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyA9PSBv
bGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpCisJICAgICYmIChuZXdfZGJ1Zl9zdGF0ZS0+
am9pbmVkX21idXMgPT0gb2xkX2RidWZfc3RhdGUtPmpvaW5lZF9tYnVzKSkpCiAJCXJldHVybjsK
IAogCVdBUk5fT04oIW5ld19kYnVmX3N0YXRlLT5iYXNlLmNoYW5nZWQpOwotLSAKMi4yNC4xLjQ4
NS5nYWQwNWEzZDhlNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
