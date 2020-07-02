Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8286212805
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 17:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF97E6E110;
	Thu,  2 Jul 2020 15:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77776E110
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 15:37:26 +0000 (UTC)
IronPort-SDR: vOTaFNJywbzoszRrl+xlgE+4eYbF8vYerIm/gzSCfyGpX70rDwzjcFFy7g/UxjXthmbnoeSxQj
 4xWhjNX9Grkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="164987141"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="164987141"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 08:37:26 -0700
IronPort-SDR: oEPQspBK7u4mZ1atrwAAWIQ+2ut3XUKG57zD/SjhLokSe5jpaiM6VkO4p4n+afBTCUtODPSnfL
 eIjC0bicsEuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="295931734"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 02 Jul 2020 08:37:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jul 2020 18:37:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 18:37:19 +0300
Message-Id: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: FBC fixes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
ZnRvdmVycyBmcm9tIHRoZSBlYXJsaWVyIEZCQyBzZXJpZXMuCgpWaWxsZSBTeXJqw6Rsw6QgKDQp
OgogIGRybS9pOTE1L2ZiYzogVXNlIHRoZSBjb3JyZWN0IHBsYW5lIHN0cmlkZQogIGRybS9pOTE1
L2ZiYzogRml4IG51a2UgZm9yIHByZS1zbmIgcGxhdGZvcm1zCiAgZHJtL2k5MTUvZmJjOiBFbmFi
bGUgZmJjIG9uIGk4NjUKICBkcm0vaTkxNS9mYmM6IEFsbG93IEZCQyB0byByZWNvbXByZXNzIGFm
dGVyIGEgM0Qgd29ya2xvYWQgb24gaTg1eC9pODY1CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYyAgICAgfCA1MCArKysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgICAgICAgICAgICAgIHwgMTAgKysrKwogNSBmaWxlcyBjaGFuZ2VkLCA1NyBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
