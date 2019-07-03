Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3939A5ED37
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 22:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C7D6E1D7;
	Wed,  3 Jul 2019 20:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37D56E1E8
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 20:08:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 13:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="158085089"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 03 Jul 2019 13:08:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2019 23:08:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 23:08:23 +0300
Message-Id: <20190703200824.5971-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
References: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Cosmetic fix for skl+ plane
 switch statement
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
ZSBvZiB0aGUgc3dpdGNoIGNhc2VzIGhhcyB0aGUgYnl0ZSBvcmRlciB2cy4gZm9ybWF0IGJpdHMK
cmV2ZXJzZWQgdG8gYWxsIHRoZSBvdGhlciBjYXNlcy4gQXBwZWFzZSB0aGUgb2NkIGFuZCByZW9y
ZGVyCnRoZW0uCgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDFhZGQzYTBkZmMwNi4uZjY4OTc5NmQwNzAzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMzk3MywxMCArMzk3
MywxMCBAQCBzdGF0aWMgdTMyIHNrbF9wbGFuZV9jdGxfZm9ybWF0KHUzMiBwaXhlbF9mb3JtYXQp
CiAJY2FzZSBEUk1fRk9STUFUX1hSR0I4ODg4OgogCWNhc2UgRFJNX0ZPUk1BVF9BUkdCODg4ODoK
IAkJcmV0dXJuIFBMQU5FX0NUTF9GT1JNQVRfWFJHQl84ODg4OworCWNhc2UgRFJNX0ZPUk1BVF9Y
QkdSMjEwMTAxMDoKKwkJcmV0dXJuIFBMQU5FX0NUTF9GT1JNQVRfWFJHQl8yMTAxMDEwIHwgUExB
TkVfQ1RMX09SREVSX1JHQlg7CiAJY2FzZSBEUk1fRk9STUFUX1hSR0IyMTAxMDEwOgogCQlyZXR1
cm4gUExBTkVfQ1RMX0ZPUk1BVF9YUkdCXzIxMDEwMTA7Ci0JY2FzZSBEUk1fRk9STUFUX1hCR1Iy
MTAxMDEwOgotCQlyZXR1cm4gUExBTkVfQ1RMX09SREVSX1JHQlggfCBQTEFORV9DVExfRk9STUFU
X1hSR0JfMjEwMTAxMDsKIAljYXNlIERSTV9GT1JNQVRfWEJHUjE2MTYxNjE2RjoKIAljYXNlIERS
TV9GT1JNQVRfQUJHUjE2MTYxNjE2RjoKIAkJcmV0dXJuIFBMQU5FX0NUTF9GT1JNQVRfWFJHQl8x
NjE2MTYxNkYgfCBQTEFORV9DVExfT1JERVJfUkdCWDsKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
