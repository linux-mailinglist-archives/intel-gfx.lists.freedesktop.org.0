Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C6C30E9F5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 03:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC186EC64;
	Thu,  4 Feb 2021 02:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F00B26EC64
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 02:08:53 +0000 (UTC)
IronPort-SDR: iXyk9IHJh2t2fvwzr/ZuSjCxRU/i0HXteAH2J5zttsKYukTQmtWm8FwbBkuypDBqBdmuaMJj/U
 qmhuGTWT72lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="181298247"
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="181298247"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 18:08:51 -0800
IronPort-SDR: Os8sx7b+4kPFLIJ0RtCGpwkB33fvgBq2XEor3KkZ5TX8mVppJcUpwhHAFoTKj0hKWJJMsGcNEI
 C+cevzISpR4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="414807647"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 03 Feb 2021 18:08:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 04:08:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 04:08:45 +0200
Message-Id: <20210204020846.2094-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Index min_{cdclk,
 voltage_level}[] with pipe
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCm1p
bl9jZGNsa1tdIGFuZCBtaW5fdm9sdGFnZV9sZXZlbFtdIGFyZSBzdXBwb3NlZCB0byBiZSBpbmRl
eGVkCndpdGggdGhlIHBpcGUuIEZpeCB1cCBhIGZldyBjYXNlcyB3aGVyZSB3ZSBpbmRleCB2aWEg
dGhlIGNydGMKaW5kZXggKHZpYSB0aGUgYXRvbWljIGl0ZXJhdG9ycykgaW5zdGVhZC4KClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgOCArKysr
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggYmY4M2U5ZTc1
MjI3Li5hOTAxOTI4N2Y3ZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMKQEAgLTIxNDUsMTAgKzIxNDUsMTAgQEAgc3RhdGljIGludCBpbnRlbF9jb21wdXRl
X21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQogCQlpZiAo
SVNfRVJSKGJ3X3N0YXRlKSkKIAkJCXJldHVybiBQVFJfRVJSKGJ3X3N0YXRlKTsKIAotCQlpZiAo
Y2RjbGtfc3RhdGUtPm1pbl9jZGNsa1tpXSA9PSBtaW5fY2RjbGspCisJCWlmIChjZGNsa19zdGF0
ZS0+bWluX2NkY2xrW2NydGMtPnBpcGVdID09IG1pbl9jZGNsaykKIAkJCWNvbnRpbnVlOwogCi0J
CWNkY2xrX3N0YXRlLT5taW5fY2RjbGtbaV0gPSBtaW5fY2RjbGs7CisJCWNkY2xrX3N0YXRlLT5t
aW5fY2RjbGtbY3J0Yy0+cGlwZV0gPSBtaW5fY2RjbGs7CiAKIAkJcmV0ID0gaW50ZWxfYXRvbWlj
X2xvY2tfZ2xvYmFsX3N0YXRlKCZjZGNsa19zdGF0ZS0+YmFzZSk7CiAJCWlmIChyZXQpCkBAIC0y
MTk5LDEwICsyMTk5LDEwIEBAIHN0YXRpYyBpbnQgYnh0X2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2
ZWwoc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZSkKIAkJZWxzZQogCQkJbWlu
X3ZvbHRhZ2VfbGV2ZWwgPSAwOwogCi0JCWlmIChjZGNsa19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2
ZWxbaV0gPT0gbWluX3ZvbHRhZ2VfbGV2ZWwpCisJCWlmIChjZGNsa19zdGF0ZS0+bWluX3ZvbHRh
Z2VfbGV2ZWxbY3J0Yy0+cGlwZV0gPT0gbWluX3ZvbHRhZ2VfbGV2ZWwpCiAJCQljb250aW51ZTsK
IAotCQljZGNsa19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2ZWxbaV0gPSBtaW5fdm9sdGFnZV9sZXZl
bDsKKwkJY2RjbGtfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsW2NydGMtPnBpcGVdID0gbWluX3Zv
bHRhZ2VfbGV2ZWw7CiAKIAkJcmV0ID0gaW50ZWxfYXRvbWljX2xvY2tfZ2xvYmFsX3N0YXRlKCZj
ZGNsa19zdGF0ZS0+YmFzZSk7CiAJCWlmIChyZXQpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
