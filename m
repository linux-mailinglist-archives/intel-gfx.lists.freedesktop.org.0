Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A88CFEA5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7317C6E84E;
	Tue,  8 Oct 2019 16:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEDE6E84E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:14:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="223281804"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 08 Oct 2019 09:14:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Oct 2019 19:14:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 19:14:33 +0300
Message-Id: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Expose 10:10:10 XRGB formats on
 SNB-BDW sprites
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNO
Qi1CRFcgc3VwcG9ydCAxMDoxMDoxMCBmb3JtYXRzIG9uIHRoZSBzcHJpdGUgcGxhbmVzLiBMZXQn
cyBleHBvc2UKdGhlbS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYyB8IDE2ICsrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKaW5kZXggNjMzZmE4MDY5MzQ4Li45MGIwZTY1NDIwYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpAQCAtMTA1NCw2ICsxMDU0LDEyIEBAIHN0YXRp
YyB1MzIgaXZiX3Nwcml0ZV9jdGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCiAJY2FzZSBEUk1fRk9STUFUX1hSR0I4ODg4OgogCQlzcHJjdGwgfD0gU1BSSVRFX0ZP
Uk1BVF9SR0JYODg4OwogCQlicmVhazsKKwljYXNlIERSTV9GT1JNQVRfWEJHUjIxMDEwMTA6CisJ
CXNwcmN0bCB8PSBTUFJJVEVfRk9STUFUX1JHQlgxMDEwMTAgfCBTUFJJVEVfUkdCX09SREVSX1JH
Qlg7CisJCWJyZWFrOworCWNhc2UgRFJNX0ZPUk1BVF9YUkdCMjEwMTAxMDoKKwkJc3ByY3RsIHw9
IFNQUklURV9GT1JNQVRfUkdCWDEwMTAxMDsKKwkJYnJlYWs7CiAJY2FzZSBEUk1fRk9STUFUX1lV
WVY6CiAJCXNwcmN0bCB8PSBTUFJJVEVfRk9STUFUX1lVVjQyMiB8IFNQUklURV9ZVVZfT1JERVJf
WVVZVjsKIAkJYnJlYWs7CkBAIC0xMjg4LDYgKzEyOTQsMTIgQEAgc3RhdGljIHUzMiBnNHhfc3By
aXRlX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljYXNl
IERSTV9GT1JNQVRfWFJHQjg4ODg6CiAJCWR2c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYODg4Owog
CQlicmVhazsKKwljYXNlIERSTV9GT1JNQVRfWEJHUjIxMDEwMTA6CisJCWR2c2NudHIgfD0gRFZT
X0ZPUk1BVF9SR0JYMTAxMDEwIHwgRFZTX1JHQl9PUkRFUl9YQkdSOworCQlicmVhazsKKwljYXNl
IERSTV9GT1JNQVRfWFJHQjIxMDEwMTA6CisJCWR2c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYMTAx
MDEwOworCQlicmVhazsKIAljYXNlIERSTV9GT1JNQVRfWVVZVjoKIAkJZHZzY250ciB8PSBEVlNf
Rk9STUFUX1lVVjQyMiB8IERWU19ZVVZfT1JERVJfWVVZVjsKIAkJYnJlYWs7CkBAIC0xOTgzLDYg
KzE5OTUsOCBAQCBzdGF0aWMgY29uc3QgdTY0IGk5eHhfcGxhbmVfZm9ybWF0X21vZGlmaWVyc1td
ID0gewogc3RhdGljIGNvbnN0IHUzMiBzbmJfcGxhbmVfZm9ybWF0c1tdID0gewogCURSTV9GT1JN
QVRfWEJHUjg4ODgsCiAJRFJNX0ZPUk1BVF9YUkdCODg4OCwKKwlEUk1fRk9STUFUX1hSR0IyMTAx
MDEwLAorCURSTV9GT1JNQVRfWEJHUjIxMDEwMTAsCiAJRFJNX0ZPUk1BVF9ZVVlWLAogCURSTV9G
T1JNQVRfWVZZVSwKIAlEUk1fRk9STUFUX1VZVlksCkBAIC0yMTkzLDYgKzIyMDcsOCBAQCBzdGF0
aWMgYm9vbCBzbmJfc3ByaXRlX2Zvcm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUg
Kl9wbGFuZSwKIAlzd2l0Y2ggKGZvcm1hdCkgewogCWNhc2UgRFJNX0ZPUk1BVF9YUkdCODg4ODoK
IAljYXNlIERSTV9GT1JNQVRfWEJHUjg4ODg6CisJY2FzZSBEUk1fRk9STUFUX1hSR0IyMTAxMDEw
OgorCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoKIAljYXNlIERSTV9GT1JNQVRfWVVZVjoK
IAljYXNlIERSTV9GT1JNQVRfWVZZVToKIAljYXNlIERSTV9GT1JNQVRfVVlWWToKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
