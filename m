Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1363809FE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE866EE72;
	Fri, 14 May 2021 12:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DFB6EE6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:23 +0000 (UTC)
IronPort-SDR: 6HnxqjL5FoJH1vTIcagOXvGLSUHpPhincoqREzSLPRo585c2odouBXv5/UAt9ZDxa9Xjac3XuG
 AGgcwZUKt/BQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="199862146"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="199862146"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:23 -0700
IronPort-SDR: CnYcWOkUrgvRkqfQlwpvwXSWoRSEriaGQlulbttPJG3z0tF1HpJYmjVPxR4O8Xop1PpIGKx7Eq
 Tt1sM1xJANzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="470518323"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 14 May 2021 05:58:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:47 +0300
Message-Id: <20210514125751.17075-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/14] drm/i915: Add missing invalidate to g4x
 wm readout
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
dCdzIG5vdCBmb3JnZXQgdG8gbWFyayB0aGUgdW51c2VkIHdhdGVybWFyayBsZXZlbHMgYXMgaW52
YWxpZAphZnRlciB0aGUgcmVhZG91dC4gVGhlIHZsdi9jaHYgY29kZXBhdGggaGFzIHRoaXMgYnV0
IHRoZSBnNHgKZGlkbid0IGZvciBzb21lIHJlYXNvbi4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA2Nzc2ZmU0MWM0NGQuLmRkMDU3N2EwMzIz
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC02NTE3LDYgKzY1MTcsOCBAQCB2b2lkIGc0
eF93bV9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJ
CQkgICAgIHBsYW5lX2lkLCBVU0hSVF9NQVgpOwogCQlnNHhfcmF3X2ZiY193bV9zZXQoY3J0Y19z
dGF0ZSwgbGV2ZWwsIFVTSFJUX01BWCk7CiAKKwkJZzR4X2ludmFsaWRhdGVfd21zKGNydGMsIGFj
dGl2ZSwgbGV2ZWwpOworCiAJCWNydGNfc3RhdGUtPndtLmc0eC5vcHRpbWFsID0gKmFjdGl2ZTsK
IAkJY3J0Y19zdGF0ZS0+d20uZzR4LmludGVybWVkaWF0ZSA9ICphY3RpdmU7CiAKLS0gCjIuMjYu
MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
