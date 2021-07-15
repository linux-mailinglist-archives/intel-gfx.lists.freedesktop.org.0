Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1D63CA73A
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 20:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C326E898;
	Thu, 15 Jul 2021 18:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9F96E89E;
 Thu, 15 Jul 2021 18:50:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="232439395"
X-IronPort-AV: E=Sophos;i="5.84,243,1620716400"; d="scan'208";a="232439395"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 11:50:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,243,1620716400"; d="scan'208";a="466858112"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Jul 2021 11:50:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 21:50:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 21:49:52 +0300
Message-Id: <20210715184954.7794-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715184954.7794-1-ville.syrjala@linux.intel.com>
References: <20210715184954.7794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm: Introduce
 drm_modeset_lock_all_ctx_retry()
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
Cc: Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxh
eWVyIGRybV9tb2Rlc2V0X2xvY2tfYWxsX2N0eF9yZXRyeSgpIG9uIHRvcCBvZgpkcm1fbW9kZXNl
dF9sb2NrX2N0eF9yZXRyeSgpIHRvIG1ha2UgdGhlIGZhaXJseSBjb21tb24KImxldCdzIGxvY2sg
ZXZlcnl0aGluZyIgcGF0dGVybiBuaWNlci4KCkN1cnJlbnRseSB3ZSBoYXZlIERSTV9NT0RFU0VU
X0xPQ0tfQUxMX3tCRUdJTixFTkR9KCkgZm9yIHRoaXMKYnV0IEkgZG9uJ3QgcmVhbGx5IGxpa2Ug
aXQgZHVlIHRvIHRoZSBtYWdpYyBnb3RvcyB3aXRoaW4sCndoaWNoIG1ha2VzIGl0IGhhcmQgdG8g
dXNlIGlmIHlvdSB3YW50IHRvIGRvIG11bHRpcGxlIHN0ZXBzCmJldHdlZW4gdGhlIEJFR0lORy9F
TkQuIE9uZSB3b3VsZCBlaXRoZXIgaGF2ZSB0byBrbm93IHRoZQpuYW1lIG9mIHRoZSBtYWdpYyBs
YWJlbCwgb3IgYWx3YXlzIHdyYXAgdGhlIHdob2xlIHRoaW5nIGludG8KYSBmdW5jdGlvbiBzbyBv
bmx5IHRoZSBzaW5nbGUgY2FsbCBhcHBlYXJzIGJldHdlZW4gdGhlIEJFR0lOL0VORC4KCkNjOiBT
ZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bEBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9kcm1fbW9kZXNldF9sb2NrLmggfCA2
ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2xvY2suaCBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2xv
Y2suaAppbmRleCA1ZWFhZDI1MzNkZTUuLjJlMjU0ODY4MGFhYSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX21vZGVzZXRfbG9jay5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2xv
Y2suaApAQCAtMjIzLDQgKzIyMywxMCBAQCB2b2lkIF9kcm1fbW9kZXNldF9sb2NrX2VuZChzdHJ1
Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCwKIAkgICAgIF9kcm1fbW9kZXNldF9sb2Nr
X2xvb3AoJihyZXQpKTsgXAogCSAgICAgX2RybV9tb2Rlc2V0X2xvY2tfZW5kKChjdHgpLCAoc3Rh
dGUpLCAmKHJldCkpKQogCisjZGVmaW5lIGRybV9tb2Rlc2V0X2xvY2tfYWxsX2N0eF9yZXRyeShk
ZXYsIGN0eCwgc3RhdGUsIGZsYWdzLCByZXQpIFwKKwlmb3IgKF9kcm1fbW9kZXNldF9sb2NrX2Jl
Z2luKChjdHgpLCAoc3RhdGUpLCAoZmxhZ3MpLCAmKHJldCkpOyBcCisJICAgICBfZHJtX21vZGVz
ZXRfbG9ja19sb29wKCYocmV0KSk7IFwKKwkgICAgIF9kcm1fbW9kZXNldF9sb2NrX2VuZCgoY3R4
KSwgKHN0YXRlKSwgJihyZXQpKSkgXAorCQlmb3JfZWFjaF9pZigoKHJldCkgPSBkcm1fbW9kZXNl
dF9sb2NrX2FsbF9jdHgoKGRldiksIChjdHgpKSkgPT0gMCkKKwogI2VuZGlmIC8qIERSTV9NT0RF
U0VUX0xPQ0tfSF8gKi8KLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
