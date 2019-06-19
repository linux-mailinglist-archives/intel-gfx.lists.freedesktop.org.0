Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8A84C072
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C45C6E44A;
	Wed, 19 Jun 2019 18:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F29B6E44B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:03:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 11:03:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="186532559"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 19 Jun 2019 11:03:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 21:03:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 21:03:09 +0300
Message-Id: <20190619180312.31817-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/sdvo: Remove duplicate
 SET_INPUT_TIMINGS_PART1 cmd name string
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNk
dm9fY21kX25hbWVzW10gY29udGFpbnMgdHdvIGVudHJpZXMgZm9yIFNFVF9JTlBVVF9USU1JTkdT
X1BBUlQxLgpSZW1vdmUgb25lIG9mIHRoZW0uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2
by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKaW5kZXggZmI3
NzE3NmI5YThjLi4yZGU3OTQ4YjcyNzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc2R2by5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc2R2by5jCkBAIC0yOTksNyArMjk5LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBfc2R2
b19jbWRfbmFtZSB7CiAJU0RWT19DTURfTkFNRV9FTlRSWShTRFZPX0NNRF9HRVRfSU5QVVRfVElN
SU5HU19QQVJUMiksCiAJU0RWT19DTURfTkFNRV9FTlRSWShTRFZPX0NNRF9TRVRfSU5QVVRfVElN
SU5HU19QQVJUMSksCiAJU0RWT19DTURfTkFNRV9FTlRSWShTRFZPX0NNRF9TRVRfSU5QVVRfVElN
SU5HU19QQVJUMiksCi0JU0RWT19DTURfTkFNRV9FTlRSWShTRFZPX0NNRF9TRVRfSU5QVVRfVElN
SU5HU19QQVJUMSksCiAJU0RWT19DTURfTkFNRV9FTlRSWShTRFZPX0NNRF9TRVRfT1VUUFVUX1RJ
TUlOR1NfUEFSVDEpLAogCVNEVk9fQ01EX05BTUVfRU5UUlkoU0RWT19DTURfU0VUX09VVFBVVF9U
SU1JTkdTX1BBUlQyKSwKIAlTRFZPX0NNRF9OQU1FX0VOVFJZKFNEVk9fQ01EX0dFVF9PVVRQVVRf
VElNSU5HU19QQVJUMSksCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
