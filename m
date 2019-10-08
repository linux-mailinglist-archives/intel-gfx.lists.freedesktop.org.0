Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DB5CFEAB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572FF6E855;
	Tue,  8 Oct 2019 16:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725C96E857
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:15:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="205458071"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Oct 2019 09:14:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Oct 2019 19:14:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 19:14:39 +0300
Message-Id: <20191008161441.12721-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFj
Y29yZGluZyB0byB0aGUgc3BlYyBjb2xvciBrZXlpbmcgaXMgbm90IHN1cHBvcnRlZCB3aXRoCmZw
MTYgcGl4ZWwgZm9ybWF0cyBvbiBza2wrLiBSZWplY3QgdGhhdCBjb21iby4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDE4ICsrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCBjYzllNWM5NjY4YjEuLmQ2
Y2Q0NmUzZjczOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jCkBAIC0xNjg5LDYgKzE2ODksMTkgQEAgdmx2X3Nwcml0ZV9jaGVjayhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGJvb2wgZm9y
bWF0X2lzX2ZwMTYodTMyIGZvcm1hdCkKK3sKKwlzd2l0Y2ggKGZvcm1hdCkgeworCWNhc2UgRFJN
X0ZPUk1BVF9YUkdCMTYxNjE2MTZGOgorCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOgor
CWNhc2UgRFJNX0ZPUk1BVF9BUkdCMTYxNjE2MTZGOgorCWNhc2UgRFJNX0ZPUk1BVF9BQkdSMTYx
NjE2MTZGOgorCQlyZXR1cm4gdHJ1ZTsKKwlkZWZhdWx0OgorCQlyZXR1cm4gZmFsc2U7CisJfQor
fQorCiBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUpCiB7CkBAIC0xNzYwLDYgKzE3NzMsMTEgQEAgc3RhdGljIGludCBz
a2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAorCWlmIChwbGFuZV9zdGF0ZS0+Y2tleS5mbGFn
cyAmJiBmb3JtYXRfaXNfZnAxNihmYi0+Zm9ybWF0LT5mb3JtYXQpKSB7CisJCURSTV9ERUJVR19L
TVMoIkNvbG9yIGtleWluZyBub3Qgc3VwcG9ydGVkIHdpdGggZnAxNiBmb3JtYXRzXG4iKTsKKwkJ
cmV0dXJuIC1FSU5WQUw7CisJfQorCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
