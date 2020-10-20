Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E7294366
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 21:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4799A6E20F;
	Tue, 20 Oct 2020 19:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034BE6E20F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 19:43:33 +0000 (UTC)
IronPort-SDR: 6zwyZbT6IWYxDo+qPb8+OmPdP8boxRKRRcWe1dE8Ict72xBUWxvlqNuOQcl1i6k8mJLOvFJblZ
 u1cjyk8pIXxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="251966537"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="251966537"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 12:43:33 -0700
IronPort-SDR: yBPzwI3Y70rRLsrEWv0Xv77LHQjWok/Wdi8dDZldGZmwegycPD2B6U9gCU6dODIk3cKLjUpdxQ
 y4tFXRckUo9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="320764588"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 20 Oct 2020 12:43:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 22:43:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 22:43:29 +0300
Message-Id: <20201020194330.28568-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Reject 90/270 degree rotated
 initial fbs
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
IGRvbid0IGN1cnJlbnRseSBoYW5kbGUgdGhlIGluaXRpYWwgZmIgcmVhZG91dCBjb3JyZWN0bHkK
Zm9yIDkwLzI3MCBkZWdyZWUgcm90YXRlZCBzY2Fub3V0LiBSZWplY3QgaXQuCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2MGJhY2RiZTdmOTIuLmZkMDEwM2Y2Y2M5NSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEw
Njk2LDYgKzEwNjk2LDEwIEBAIHNrbF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsCiAJICAgIHZhbCAmIFBMQU5FX0NUTF9GTElQX0hPUklaT05UQUwpCiAJ
CXBsYW5lX2NvbmZpZy0+cm90YXRpb24gfD0gRFJNX01PREVfUkVGTEVDVF9YOwogCisJLyogOTAv
MjcwIGRlZ3JlZSByb3RhdGlvbiB3b3VsZCByZXF1aXJlIGV4dHJhIHdvcmsgKi8KKwlpZiAoZHJt
X3JvdGF0aW9uXzkwX29yXzI3MChwbGFuZV9jb25maWctPnJvdGF0aW9uKSkKKwkJZ290byBlcnJv
cjsKKwogCWJhc2UgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQTEFORV9TVVJGKHBpcGUsIHBs
YW5lX2lkKSkgJiAweGZmZmZmMDAwOwogCXBsYW5lX2NvbmZpZy0+YmFzZSA9IGJhc2U7CiAKLS0g
CjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
