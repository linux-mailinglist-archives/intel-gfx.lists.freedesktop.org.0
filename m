Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB81134A48
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 19:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9B889D40;
	Wed,  8 Jan 2020 18:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525D989D40
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 18:12:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:12:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="233688204"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Jan 2020 10:12:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 20:12:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:12:37 +0200
Message-Id: <20200108181242.13650-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/sdvo: Fix SDVO colorimetry bit
 defines
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCB1cCB0aGUgU0RWTyBjb2xvcmltZXRyeSBiaXRzIHRvIG1hdGNoIHRoZSBzcGVjLgoKU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm9fcmVncy5oIHwgOCAr
KysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm9fcmVn
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvX3JlZ3MuaAppbmRl
eCAxM2I5YThlMjU3YmIuLjc0ZGM2YzA0MmI2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvX3JlZ3MuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nkdm9fcmVncy5oCkBAIC03MDUsMTAgKzcwNSwxMCBAQCBzdHJ1Y3Qg
aW50ZWxfc2R2b19lbmhhbmNlbWVudHNfYXJnIHsKICNkZWZpbmUgU0RWT19DTURfR0VUX1BJWEVM
X1JFUExJCTB4OGMKICNkZWZpbmUgU0RWT19DTURfR0VUX0NPTE9SSU1FVFJZX0NBUAkweDhkCiAj
ZGVmaW5lIFNEVk9fQ01EX1NFVF9DT0xPUklNRVRSWQkweDhlCi0gICNkZWZpbmUgU0RWT19DT0xP
UklNRVRSWV9SR0IyNTYgICAweDAKLSAgI2RlZmluZSBTRFZPX0NPTE9SSU1FVFJZX1JHQjIyMCAg
IDB4MQotICAjZGVmaW5lIFNEVk9fQ09MT1JJTUVUUllfWUNyQ2I0MjIgMHgzCi0gICNkZWZpbmUg
U0RWT19DT0xPUklNRVRSWV9ZQ3JDYjQ0NCAweDQKKyAgI2RlZmluZSBTRFZPX0NPTE9SSU1FVFJZ
X1JHQjI1NgkoMSA8PCAwKQorICAjZGVmaW5lIFNEVk9fQ09MT1JJTUVUUllfUkdCMjIwCSgxIDw8
IDEpCisgICNkZWZpbmUgU0RWT19DT0xPUklNRVRSWV9ZQ3JDYjQyMgkoMSA8PCAyKQorICAjZGVm
aW5lIFNEVk9fQ09MT1JJTUVUUllfWUNyQ2I0NDQJKDEgPDwgMykKICNkZWZpbmUgU0RWT19DTURf
R0VUX0NPTE9SSU1FVFJZCTB4OGYKICNkZWZpbmUgU0RWT19DTURfR0VUX0FVRElPX0VOQ1JZUFRf
UFJFRkVSIDB4OTAKICNkZWZpbmUgU0RWT19DTURfU0VUX0FVRElPX1NUQVQJCTB4OTEKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
