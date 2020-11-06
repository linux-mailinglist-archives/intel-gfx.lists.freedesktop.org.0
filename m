Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CCC2A9ACE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 18:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5A46EABB;
	Fri,  6 Nov 2020 17:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1096EABB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 17:31:05 +0000 (UTC)
IronPort-SDR: P8EKvFame/h2CFKdLgHr1gVPbmrJbZI/JnhwoAEdeGTCAzgW6bDgEkkS3BV87LZNyJ4u0svdpA
 JYpBq170wY5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="156575102"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="156575102"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 09:30:45 -0800
IronPort-SDR: 3xk87b5DBxumFCTeFmtYOQvoXqPyLzG7/oizBhJdmuShQH/5XhP2McKqbUpGMyuDoBp1SIcT0v
 yBbxzND9l2Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="353430885"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 06 Nov 2020 09:30:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Nov 2020 19:30:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 19:30:36 +0200
Message-Id: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Eliminate
 intel_atomic_crtc_state_for_each_plane_state() from skl+ wm code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgaW50ZWxfYXRvbWljX2NydGNfc3RhdGVfZm9yX2VhY2hfcGxhbmVfc3RhdGUoKSBm
cm9tIHRoZQpza2wrIHdtIGNvZGUgc28gdGhhdCB3ZSBkb24ndCBoYXZlIHRvIGJvdGhlciBtZXNz
aW5nIHdpdGggaXQgZm9yCmJpZ2pvaW5lciBzdXBwb3J0LgoKVmlsbGUgU3lyasOkbMOkICg2KToK
ICBkcm0vaTkxNTogUGFzcyBpbnRlbF9hdG9taWNfc3RhdGUgYXJvdW5kCiAgZHJtL2k5MTU6IE51
a2UgaW50ZWxfYXRvbWljX2NydGNfc3RhdGVfZm9yX2VhY2hfcGxhbmVfc3RhdGUoKSBmcm9tCiAg
ICBza2wrIHdtIGNvZGUKICBkcm0vaTkxNTogUGltcCB0aGUgd2F0ZXJtYXJrIGRvY3VtZW50YXRp
b24gYSBiaXQKICBkcm0vaTkxNTogUHJlY29tcHV0ZSBjYW5fc2FndiBmb3IgZWFjaCB3bSBsZXZl
bAogIGRybS9pOTE1OiBTdG9yZSBwbGFuZSByZWxhdGl2ZSBkYXRhIHJhdGUgaW4gY3J0Y19zdGF0
ZQogIGRybS9pOTE1OiBSZW1vdmUgc2tsX2FkanVzdGVkX3BsYW5lX3BpeGVsX3JhdGUoKQoKIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA1MyArKystLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgMTk2ICsrKysr
KysrKy0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMjUgaW5zZXJ0aW9ucygrKSwgMTI0IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
