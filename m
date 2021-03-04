Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E966832D849
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 18:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6E66EA45;
	Thu,  4 Mar 2021 17:04:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9310A6EA3B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 17:04:51 +0000 (UTC)
IronPort-SDR: ydSI6cWu5Onh/tHDaMzZWD4Z27TP9i8pcRiX2J5G8PRLVg6I5aQjoTYcUmoXmIZrI2ZUELjhJG
 10IwUN64MY9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="175087494"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="175087494"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 09:04:34 -0800
IronPort-SDR: 1Et0A/y4zE2I3dmuBfxZhwhrYI75ysa68iD40dKA3EVpwAhDmOdTKLU9D2NJtY0BCgymFra35v
 jF8o7X0gFwZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="507459413"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 04 Mar 2021 09:04:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Mar 2021 19:04:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 19:04:20 +0200
Message-Id: <20210304170421.10901-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
References: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Return zero as the scanline
 counter for disabled pipes
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
Cc: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHByaW50IHRoZSBzY2FubGluZSBjb3VudGVycyBhcyB1bnNpZ25lZCBpbnRlZ2VycyBzbyB0aGUg
LTEKaGVyZSBqdXN0IG1ha2VzIHRoZSBkZWJ1Z3MvdHJhY2VzIGxvb2sgYSBiaXQgbWVzc3kuIFpl
cm8gc2VlbXMKZXF1YWxseSB2YWxpZCBmb3IgdGhpcyB1c2VjYXNlLgoKQ2M6IFN0ZXZlbiBSb3N0
ZWR0IDxyb3N0ZWR0QGdvb2RtaXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCAwMWM0MDkwMDVmNmYuLjQ0YWVk
NGNiZjg5NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC03OTQsNyArNzk0LDcgQEAgc3Rh
dGljIGludCBfX2ludGVsX2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQogCWludCBwb3NpdGlvbiwgdnRvdGFsOwogCiAJaWYgKCFjcnRjLT5hY3RpdmUpCi0JCXJldHVy
biAtMTsKKwkJcmV0dXJuIDA7CiAKIAl2YmxhbmsgPSAmY3J0Yy0+YmFzZS5kZXYtPnZibGFua1tk
cm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFzZSldOwogCW1vZGUgPSAmdmJsYW5rLT5od21vZGU7Ci0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
