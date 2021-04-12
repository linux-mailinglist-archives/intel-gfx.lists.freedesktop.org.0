Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7923735B9E7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 07:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188CB89E59;
	Mon, 12 Apr 2021 05:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816AD89E59
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 05:46:17 +0000 (UTC)
IronPort-SDR: 3cvDjSAc75PKI1tkjeFp+LR1WbBZMwxhFKeQzphz+ifOidzKudVY07I5ZkbexycFmFxhFronVa
 qBlADnDSAL0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="190929150"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="190929150"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 22:46:16 -0700
IronPort-SDR: 0PsTAmZaRN+HqxtbTXv0sebn8enyCYyGyUtCqUcP8b8FP3f0kg1uNFEwithV7G1KQXS9Kpxrnf
 42K4fQ9k8sMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="460026243"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 11 Apr 2021 22:46:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Apr 2021 08:46:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 08:46:03 +0300
Message-Id: <20210412054607.18133-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Restore lost glk FBC 16bpp w/a
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
IGxvc3QgdGhlIEZCQyAxNmJwcCA1MTJieXRlIHN0cmlkZSByZXF1aXJlbWVudCBvbiBnbGsgd2hl
bgp3ZSBzd2l0Y2hlZCBmcm9tIGRpc3BsYXkgdmVyc2lvbiA5IHRvIDEwLiBSZXN0b3JlIHRoZSB3
L2EgdG8KYXZvaWQgZW5hYmxpbmcgRkJDIHdpdGggYSBiYWQgc3RyaWRlIGFuZCB0aHVzIGRpc3Bs
YXkgZ2FyYmFnZS4KCkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpG
aXhlczogMmI1YTQ1NjJlZGQwICgiZHJtL2k5MTUvZGlzcGxheTogU2ltcGxpZnkgR0xLIGRpc3Bs
YXkgdmVyc2lvbiB0ZXN0cyIpClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4
IDA0ZDljN2QyMmIwNC4uZGNjMGY3M2VhMjI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMKQEAgLTU5OCw3ICs1OTgsNyBAQCBzdGF0aWMgYm9vbCBzdHJpZGVfaXNf
dmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlyZXR1cm4gZmFsc2U7
CiAKIAkvKiBEaXNwbGF5IFdBICMxMTA1OiBza2wsYnh0LGtibCxjZmwsZ2xrICovCi0JaWYgKElT
X0RJU1BMQVlfVkVSKGRldl9wcml2LCA5KSAmJgorCWlmICgoSVNfRElTUExBWV9WRVIoZGV2X3By
aXYsIDkpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSAmJgogCSAgICBtb2RpZmllciA9PSBE
Uk1fRk9STUFUX01PRF9MSU5FQVIgJiYgc3RyaWRlICYgNTExKQogCQlyZXR1cm4gZmFsc2U7CiAK
LS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
