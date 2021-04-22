Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6168368692
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 20:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9901E6E578;
	Thu, 22 Apr 2021 18:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30D16E578
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 18:30:02 +0000 (UTC)
IronPort-SDR: uKWTWnW4tNAuiNin45dAiP4bnCu/qk+1ZEsUqYoVjczzodGiTkGrWZ/VvO8cLLWRVr2bbUjRVG
 USHj+sR+WmVQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="196060046"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; d="scan'208";a="196060046"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 11:30:01 -0700
IronPort-SDR: c3q857Yem85CCQ37GVA0n4QXWrn4U1Y5nXFDJBWIpqmc3ZrYRJtK+0igwHR7GHxXOyiKQm5dBJ
 HrCIvoBU0VBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="455902433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 22 Apr 2021 11:29:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Apr 2021 21:29:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Apr 2021 21:29:55 +0300
Message-Id: <20210422182957.10022-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/fbc: Avoid GLK+ FBC corruption
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bW92ZSByZWR1bmRhbnQgbWFudWFsIEZCQyBudWtlcyB0byBhdm9pZCB0aGUgR0xLKyBGQkMKbnVr
ZStkaXNhYmxlK3BsYW5lIHVwZGF0ZSBmYWlsIGFuZCBjYXVzaW5nIHRoZSB0b3Agb2YgdGhlIHNj
cmVlbgp0byBiZWNvbWUgY29ycnVwdGVkLiBBIDEwMCUgd29ya2Fyb3VuZCBsaWtlbHkgbmVlZHMg
eWV0IGFub3RoZXIKdmJsYW5rIHdhaXQsIGJ1dCB0aGF0J3Mgbm90IGVudGlyZWx5IHRyaXZpYWwg
dG8gZG8gd2l0aG91dApodXJ0aW5nIGludGVyYWN0aXZpdHksIHNvIGZvciBub3cgYXQgbGVhc3Qg
dHJ5IHRvIGF2b2lkIHRoZQppc3N1ZSBmb3IgcHVyZWx5IHBhZ2UgZmxpcHBlZCB3b3JrbG9hZHMu
CgpUZXN0LXdpdGg6IDIwMjEwNDIwMTA0NzA0LjUwMTgtMS12aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbQoKVmlsbGUgU3lyasOkbMOkICgyKToKICBkcm0vaTkxNS9mYmM6IERvbid0IG51a2Ug
bWFudWFsbHkgYXJvdW5kIGZsaXBzCiAgZHJtL2k5MTU6IFJlbW92ZSByZWR1bmRhbnQgRElSVFlG
QiBmcm9udGJ1ZmZlciBmbHVzaGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCAgMyAtLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMgICAgIHwgMTggKysrKysrKysrKystLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
