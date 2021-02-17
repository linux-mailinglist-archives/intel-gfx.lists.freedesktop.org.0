Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 398BD31DD28
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 17:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6296E55E;
	Wed, 17 Feb 2021 16:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0B36E55E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 16:20:54 +0000 (UTC)
IronPort-SDR: 4+ddJ3ePHyIyJH1gt2KEIUBTxGLfYyh6TK5F7ij5MxkyPgzLTvuM0+KOeuM4uZRTHS4P55OjEZ
 keoUX1sSowoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="183365927"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183365927"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 08:20:53 -0800
IronPort-SDR: lzTZxl1orOPqICA5HBQyF+5igsxRSVbXEvra9iRaFmvRgDCZfbbw/6cXjMe4zRM401YaeRethZ
 wq/4pClkOKEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="439417142"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 17 Feb 2021 08:20:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Feb 2021 18:20:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Feb 2021 18:20:50 +0200
Message-Id: <20210217162050.13803-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Wait for scanout to stop when
 sanitizing planes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
ZW4gd2Ugc2FuaXRpemUgcGxhbmVzIGxldCdzIHdhaXQgZm9yIHRoZSBzY2Fub3V0IHRvIHN0b3AK
YmVmb3JlIHdlIGxldCB0aGUgc3Vic2VxdWVudCBjb2RlIHRlYXIgZG93biB0aGUgZ2d0dCBtYXBw
aW5ncwphbmQgd2hhdG5vdC4gQ3VyZXMgYW4gdW5kZXJydW4gb24gbXkgaXZiIHdoZW4gSSBib290
IHdpdGgKVlQtZCBlbmFibGVkIGFuZCB0aGUgQklPUyBmYiBnZXRzIHRocm93biBvdXQgZHVlIHRv
IHN0b2xlbgpiZWluZyBjb25zaWRlcmVkIHVudXNhYmxlIHdpdGggVlQtZCBhY3RpdmUuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGFjYWRlMDA0ZThiMS4uM2UyYzE5MmVjNzA4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MjQwMyw2ICsyNDAzLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcGxhbmVfZGlzYWJsZV9ub2F0b21p
YyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJaW50ZWxfc2V0X2NwdV9maWZvX3VuZGVycnVu
X3JlcG9ydGluZyhkZXZfcHJpdiwgY3J0Yy0+cGlwZSwgZmFsc2UpOwogCiAJaW50ZWxfZGlzYWJs
ZV9wbGFuZShwbGFuZSwgY3J0Y19zdGF0ZSk7CisJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9w
cml2LCBjcnRjLT5waXBlKTsKIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
