Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24A22EF78D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140F86E88D;
	Fri,  8 Jan 2021 18:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE096E88F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:41:11 +0000 (UTC)
IronPort-SDR: UFg0IXPlwVtMI8h/lS/c+J0oMIWn2ZRGw3NF42C65E6eH431U7r8G6NQnWnC4iVYi0gtgOV+do
 M8dDSaDNnG3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="241715802"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="241715802"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:41:10 -0800
IronPort-SDR: pMC7cMoS0suLDWHI1HiVDQHFYBJW1zRbKx3kbGyzLL8CSqm0MtL1NWP2SkjvJ2JpKa3guXmOKL
 nOISkOwtXYGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="351765121"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 08 Jan 2021 10:41:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Jan 2021 20:41:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:54 +0200
Message-Id: <20210108184101.30972-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
References: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Generalize the async flip
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
CmluZGV4IDAxODlkMzc5YTU1ZS4uYWVjNDAzNzEyYzYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQzNzMsNyArMTQzNzMsNyBAQCBzdGF0
aWMgaW50IGludGVsX2F0b21pY19jaGVja19hc3luYyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIAkJICogdGhpcyh2bHYvY2h2IGFuZCBpY2wrKSBzaG91bGQgYmUgYWRkZWQgd2hl
biBhc3luYyBmbGlwIGlzCiAJCSAqIGVuYWJsZWQgaW4gdGhlIGF0b21pYyBJT0NUTCBwYXRoLgog
CQkgKi8KLQkJaWYgKHBsYW5lLT5pZCAhPSBQTEFORV9QUklNQVJZKQorCQlpZiAoIXBsYW5lLT5h
c3luY19mbGlwKQogCQkJcmV0dXJuIC1FSU5WQUw7CiAKIAkJLyoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGNmMzU4OWZkMGRkYi4uZTgzOWE3NzQ4
MDY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAg
LTMyOTAsNyArMzI5MCw5IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1f
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
