Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6703CC072
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 03:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802C16EA02;
	Sat, 17 Jul 2021 01:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E176E9FD
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 01:08:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="232656456"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="232656456"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:15 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="431385293"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 18:12:25 -0700
Message-Id: <20210717011227.204494-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210717011227.204494-1-jose.souza@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display/psr2: Mark as updated all
 planes that intersect with pipe_clip
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

V2l0aG91dCB0aGlzIHBsYW5lcyB0aGF0IHdlcmUgYWRkZWQgYnkgaW50ZWxfcHNyMl9zZWxfZmV0
Y2hfdXBkYXRlKCkKdGhhdCBpbnRlcnNlY3Qgd2l0aCBwaXBlIGRhbWFnZWQgYXJlYSB3aWxsIG5v
dApoYXZlIHNrbF9wcm9ncmFtX3BsYW5lKCkgYW5kIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9z
ZWxfZmV0Y2goKQpjYWxsZWQsIGNhdXNpbmcgcGFuZWwgdG8gbm90IGJlIHByb3Blcmx5IHVwZGF0
ZWQuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwppbmRleCBkNDM2NDkwYWIyOGM2Li4xYzQxMDQyODQxZmIxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTE2OTksNiArMTY5OSw3IEBAIGlu
dCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAJCXNlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0
Y2hfYXJlYTsKIAkJc2VsX2ZldGNoX2FyZWEtPnkxID0gaW50ZXIueTEgLSBuZXdfcGxhbmVfc3Rh
dGUtPnVhcGkuZHN0LnkxOwogCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSBpbnRlci55MiAtIG5ld19w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7CisJCWNydGNfc3RhdGUtPnVwZGF0ZV9wbGFuZXMgfD0g
QklUKHBsYW5lLT5pZCk7CiAJfQogCiBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDoKLS0gCjIuMzIu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
