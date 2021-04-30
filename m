Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E698136FDD8
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 17:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B14C6F550;
	Fri, 30 Apr 2021 15:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBF76F550
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 15:35:12 +0000 (UTC)
IronPort-SDR: 1S3hnkRTW6SgXRzwHQlK20Fdc126mPNZqLovyuGiHpFZGI/DPpMbsP35qdMqLFjO4ScO943O0R
 WsyZnNjqbc4g==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="196864645"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="196864645"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 08:35:02 -0700
IronPort-SDR: EgWaeSluXNsUtm/U+FklDrXOqFr3feQwI5jX6/AgIu2uiOeRL6Ot2yEyTc605OeoAQR+5CyucY
 fO1Ta3tKstGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="404641762"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 30 Apr 2021 08:35:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 18:34:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 18:34:44 +0300
Message-Id: <20210430153444.29270-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
References: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Use intel_de_wait_for_*() in cnl+
 cdclk programming
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIFBMTCBsb2NrIGJpdCB3YWl0cyB3aXRoIGludGVsX2RlX3dh
aXRfZm9yXyooKS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIHwgMTAgKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMKaW5kZXggYWI2OGEyZDcwODMwLi5mOGVkMTkyMDUzMTUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTE0OTIsOSArMTQ5Miw4IEBAIHN0YXRp
YyB2b2lkIGNubF9jZGNsa19wbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJCSAgICAgQlhUX0RFX1BMTF9QTExfRU5BQkxFLCAwKTsKIAogCS8qIFRpbWVvdXQg
MjAwdXMgKi8KLQlpZiAod2FpdF9mb3IoKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEJYVF9ERV9Q
TExfRU5BQkxFKSAmIEJYVF9ERV9QTExfTE9DSykgPT0gMCwgMSkpCi0JCWRybV9lcnIoJmRldl9w
cml2LT5kcm0sCi0JCQkidGltZW91dCB3YWl0aW5nIGZvciBDRENMSyBQTEwgdW5sb2NrXG4iKTsK
KwlpZiAoaW50ZWxfZGVfd2FpdF9mb3JfY2xlYXIoZGV2X3ByaXYsIEJYVF9ERV9QTExfRU5BQkxF
LCBCWFRfREVfUExMX0xPQ0ssIDEpKQorCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLCAidGltZW91
dCB3YWl0aW5nIGZvciBDRENMSyBQTEwgdW5sb2NrXG4iKTsKIAogCWRldl9wcml2LT5jZGNsay5o
dy52Y28gPSAwOwogfQpAQCAtMTUxMSw5ICsxNTEwLDggQEAgc3RhdGljIHZvaWQgY25sX2NkY2xr
X3BsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgdmNvKQog
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBCWFRfREVfUExMX0VOQUJMRSwgdmFsKTsKIAogCS8q
IFRpbWVvdXQgMjAwdXMgKi8KLQlpZiAod2FpdF9mb3IoKGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IEJYVF9ERV9QTExfRU5BQkxFKSAmIEJYVF9ERV9QTExfTE9DSykgIT0gMCwgMSkpCi0JCWRybV9l
cnIoJmRldl9wcml2LT5kcm0sCi0JCQkidGltZW91dCB3YWl0aW5nIGZvciBDRENMSyBQTEwgbG9j
a1xuIik7CisJaWYgKGludGVsX2RlX3dhaXRfZm9yX3NldChkZXZfcHJpdiwgQlhUX0RFX1BMTF9F
TkFCTEUsIEJYVF9ERV9QTExfTE9DSywgMSkpCisJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJ0
aW1lb3V0IHdhaXRpbmcgZm9yIENEQ0xLIFBMTCBsb2NrXG4iKTsKIAogCWRldl9wcml2LT5jZGNs
ay5ody52Y28gPSB2Y287CiB9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
