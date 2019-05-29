Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 847972E1EE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 18:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15D56E0BE;
	Wed, 29 May 2019 16:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77EE6E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 16:06:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 09:06:36 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 May 2019 09:06:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 May 2019 19:06:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 19:06:05 +0300
Message-Id: <20190529160605.28739-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
References: <20190529160605.28739-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Add support for half float
 framebuffers on snb sprites
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNu
YiBzdXBwb3J0cyBmcDE2IHBpeGVsIGZvcm1hdHMgb24gdGhlIHNwcml0ZSBwbGFuZXMuIEV4cG9z
ZSB0aGF0CmNhcGFiaWxpdHkuIE5vdGhpbmcgc3BlY2lhbCBuZWVkcyB0byBiZSBkb25lLCBpdCBq
dXN0IHdvcmtzLgoKdjI6IFJlYmFzZSBvbiB0b3Agb2YgaWNsIGZwMTYKICAgIFNwbGl0IHNuYisg
c3ByaXRlIGJpdHMgaW50byBhIHNlcGFyYXRlIHBhdGNoCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3By
aXRlLmMKaW5kZXggMTlmZDcxZDQ0NTdiLi5mYTk1MDZhZTI5MDEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3Nwcml0ZS5jCkBAIC0xMzAwLDYgKzEzMDAsMTIgQEAgc3RhdGljIHUzMiBnNHhfc3By
aXRlX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljYXNl
IERSTV9GT1JNQVRfWFJHQjg4ODg6CiAJCWR2c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYODg4Owog
CQlicmVhazsKKwljYXNlIERSTV9GT1JNQVRfWEJHUjE2MTYxNjE2RjoKKwkJZHZzY250ciB8PSBE
VlNfRk9STUFUX1JHQlgxNjE2MTYgfCBEVlNfUkdCX09SREVSX1hCR1I7CisJCWJyZWFrOworCWNh
c2UgRFJNX0ZPUk1BVF9YUkdCMTYxNjE2MTZGOgorCQlkdnNjbnRyIHw9IERWU19GT1JNQVRfUkdC
WDE2MTYxNjsKKwkJYnJlYWs7CiAJY2FzZSBEUk1fRk9STUFUX1lVWVY6CiAJCWR2c2NudHIgfD0g
RFZTX0ZPUk1BVF9ZVVY0MjIgfCBEVlNfWVVWX09SREVSX1lVWVY7CiAJCWJyZWFrOwpAQCAtMTk5
OCw4ICsyMDA0LDEwIEBAIHN0YXRpYyBjb25zdCB1NjQgaTl4eF9wbGFuZV9mb3JtYXRfbW9kaWZp
ZXJzW10gPSB7CiB9OwogCiBzdGF0aWMgY29uc3QgdTMyIHNuYl9wbGFuZV9mb3JtYXRzW10gPSB7
Ci0JRFJNX0ZPUk1BVF9YQkdSODg4OCwKIAlEUk1fRk9STUFUX1hSR0I4ODg4LAorCURSTV9GT1JN
QVRfWEJHUjg4ODgsCisJRFJNX0ZPUk1BVF9YUkdCMTYxNjE2MTZGLAorCURSTV9GT1JNQVRfWEJH
UjE2MTYxNjE2RiwKIAlEUk1fRk9STUFUX1lVWVYsCiAJRFJNX0ZPUk1BVF9ZVllVLAogCURSTV9G
T1JNQVRfVVlWWSwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
