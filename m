Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E3F2F1B18
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761DB89CA0;
	Mon, 11 Jan 2021 16:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EFE89CA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:37:28 +0000 (UTC)
IronPort-SDR: 0iVnLKIAHAHkfouJ4wxY55MsWtzJh5n+xHuEdky7u+HFzPtnhBtee5jKo9CRB20fa7lVvSEEeD
 3jamHAUHdDSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="174383907"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="174383907"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:37:28 -0800
IronPort-SDR: X5QNLxgs0TsJkXg4sNwWlSP4Ce4zTSj8XbKR+u9ke8uPt8Dy8+fHgD1SWrAjyrT+6wFGIDYj3D
 gY0e4TiF6W+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="464213752"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Jan 2021 08:37:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Jan 2021 18:37:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 18:37:04 +0200
Message-Id: <20210111163711.12913-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915: Generalize the async flip
 capability check
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
bHkgYXNzaWduIHRoZSBwbGFuZS0+YXN5bmNfZmxpcCgpIHZmdW5jIHdoZW4gdGhlIHBsYW5lIHN1
cHBvcnRzCmFzeW5jIGZsaXBzLiBGb3Igbm93IHdlIGtlZXAgdGhpcyBhcnRpZmljaWFsbHkgbGlt
aXRlZCB0byB0aGUgcHJpbWFyeQpwbGFuZSBzaW5jZSB0aGF0cyB0aGUgb25seSB0aGluZyB0aGUg
bGVnYWN5IHBhZ2UgZmxpcCB1YXBpIGNhbiB0YXJnZXQKYW5kIHRoZXJlIGlzIG5vIGFzeW5jIGZs
aXAgc3VwcG9ydCBpbiB0aGUgYXRvbWljIHVhcGkgeWV0LgoKQ2M6IEthcnRoaWsgQiBTIDxrYXJ0
aGlrLmIuc0BpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5p
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMgIHwgNCArKystCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IDc3MzVjMjhiMjQ2Ny4uMWFkOTJmY2FlZTdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQzNzcsNyArMTQzNzcsNyBAQCBzdGF0
aWMgaW50IGludGVsX2F0b21pY19jaGVja19hc3luYyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIAkJICogdGhpcyh2bHYvY2h2IGFuZCBpY2wrKSBzaG91bGQgYmUgYWRkZWQgd2hl
biBhc3luYyBmbGlwIGlzCiAJCSAqIGVuYWJsZWQgaW4gdGhlIGF0b21pYyBJT0NUTCBwYXRoLgog
CQkgKi8KLQkJaWYgKHBsYW5lLT5pZCAhPSBQTEFORV9QUklNQVJZKQorCQlpZiAoIXBsYW5lLT5h
c3luY19mbGlwKQogCQkJcmV0dXJuIC1FSU5WQUw7CiAKIAkJLyoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGIyNGM4ZmM4ZTgzZS4uMGE1NjQ4ZDVk
Y2Y4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAg
LTMzMDksNyArMzMwOSw5IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlwbGFuZS0+Z2V0X2h3X3N0YXRlID0gc2tsX3BsYW5l
X2dldF9od19zdGF0ZTsKIAlwbGFuZS0+Y2hlY2tfcGxhbmUgPSBza2xfcGxhbmVfY2hlY2s7CiAJ
cGxhbmUtPm1pbl9jZGNsayA9IHNrbF9wbGFuZV9taW5fY2RjbGs7Ci0JcGxhbmUtPmFzeW5jX2Zs
aXAgPSBza2xfcGxhbmVfYXN5bmNfZmxpcDsKKworCWlmIChwbGFuZV9pZCA9PSBQTEFORV9QUklN
QVJZKQorCQlwbGFuZS0+YXN5bmNfZmxpcCA9IHNrbF9wbGFuZV9hc3luY19mbGlwOwogCiAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCiAJCWZvcm1hdHMgPSBpY2xfZ2V0X3BsYW5lX2Zv
cm1hdHMoZGV2X3ByaXYsIHBpcGUsCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
