Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 032F610CE7B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 19:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545136E084;
	Thu, 28 Nov 2019 18:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721416E084
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 18:24:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 10:24:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,254,1571727600"; d="scan'208";a="203501918"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 Nov 2019 10:23:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2019 20:23:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 20:23:58 +0200
Message-Id: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use the correct PCH transcoder for
 LPT/WPT in intel_sanitize_frame_start_delay()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxQ
VC9XUFQgb25seSBoYXZlIFBDSCB0cmFuc2NvZGVyIEEuIE1ha2Ugc3VyZSB3ZSBwb2tlIGF0IGl0
cwpjaGlja2VuIHJlZ2lzdGVyIGluc3RlYWQgb2Ygc29tZSBub24tZXhpc3RlbnQgcmVnaXN0ZXIg
d2hlbgpGREkgaXMgYmVpbmcgZHJpdmVuIGJ5IHBpcGUgQiBvciBDLgoKQ2M6IFVtYSBTaGFua2Fy
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggNTNkYzMxMGE1ZjZkLi5mOTlkYmMzZDk2OTYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNzI3Miw3ICsx
NzI3Miw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Nhbml0aXplX2ZyYW1lX3N0YXJ0X2RlbGF5KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjCiAJCXZhbCB8PSBUUkFOU19GUkFNRV9T
VEFSVF9ERUxBWSgwKTsKIAkJSTkxNV9XUklURShyZWcsIHZhbCk7CiAJfSBlbHNlIHsKLQkJaTkx
NV9yZWdfdCByZWcgPSBUUkFOU19DSElDS0VOMihjcnRjLT5waXBlKTsKKwkJZW51bSBwaXBlIHBj
aF90cmFuc2NvZGVyID0gaW50ZWxfY3J0Y19wY2hfdHJhbnNjb2RlcihjcnRjKTsKKwkJaTkxNV9y
ZWdfdCByZWcgPSBUUkFOU19DSElDS0VOMihwY2hfdHJhbnNjb2Rlcik7CiAJCXUzMiB2YWw7CiAK
IAkJdmFsID0gSTkxNV9SRUFEKHJlZyk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
