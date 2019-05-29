Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744FE2E1E8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 18:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84E56E218;
	Wed, 29 May 2019 16:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1F26E218
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 16:06:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 09:06:21 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 May 2019 09:06:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 May 2019 19:06:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 19:06:00 +0300
Message-Id: <20190529160605.28739-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
References: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: Cosmetic fix for skl+ plane
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
ZGVyCnRoZW0uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
YyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggM2I5MTNkNTljYzc0Li43
N2NkZTZkZTY5ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM5Njcs
MTAgKzM5NjcsMTAgQEAgc3RhdGljIHUzMiBza2xfcGxhbmVfY3RsX2Zvcm1hdCh1MzIgcGl4ZWxf
Zm9ybWF0KQogCWNhc2UgRFJNX0ZPUk1BVF9YUkdCODg4ODoKIAljYXNlIERSTV9GT1JNQVRfQVJH
Qjg4ODg6CiAJCXJldHVybiBQTEFORV9DVExfRk9STUFUX1hSR0JfODg4ODsKKwljYXNlIERSTV9G
T1JNQVRfWEJHUjIxMDEwMTA6CisJCXJldHVybiBQTEFORV9DVExfRk9STUFUX1hSR0JfMjEwMTAx
MCB8IFBMQU5FX0NUTF9PUkRFUl9SR0JYOwogCWNhc2UgRFJNX0ZPUk1BVF9YUkdCMjEwMTAxMDoK
IAkJcmV0dXJuIFBMQU5FX0NUTF9GT1JNQVRfWFJHQl8yMTAxMDEwOwotCWNhc2UgRFJNX0ZPUk1B
VF9YQkdSMjEwMTAxMDoKLQkJcmV0dXJuIFBMQU5FX0NUTF9PUkRFUl9SR0JYIHwgUExBTkVfQ1RM
X0ZPUk1BVF9YUkdCXzIxMDEwMTA7CiAJY2FzZSBEUk1fRk9STUFUX1hCR1IxNjE2MTYxNkY6CiAJ
Y2FzZSBEUk1fRk9STUFUX0FCR1IxNjE2MTYxNkY6CiAJCXJldHVybiBQTEFORV9DVExfRk9STUFU
X1hSR0JfMTYxNjE2MTZGIHwgUExBTkVfQ1RMX09SREVSX1JHQlg7Ci0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
