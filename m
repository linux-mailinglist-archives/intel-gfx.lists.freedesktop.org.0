Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF902245B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D006E25F;
	Fri, 17 Jul 2020 21:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 718C16E260
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:39 +0000 (UTC)
IronPort-SDR: iF3NWF3nuDf7uH6qH4kZGTB5pyP6At7K+EU5WC4N2Gov2awuSV6vkOAKDPHwm5uA5OdUveXr9/
 4cc/WNzbaBmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="167817116"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="167817116"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:38 -0700
IronPort-SDR: X41XNdEGoT4tQAw+pa5WeujOTybg3AHLlF4uC6hb1lDYTuKfjW/id/8syHkY0XcOTOpip1/jqo
 aXC1cL7px9wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="270913622"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 17 Jul 2020 14:14:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:43 +0300
Message-Id: <20200717211345.26851-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/20] drm/i915: Extract ilk_crtc_has_gamma() &
 co.
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgYSBmZXcgaGVscGVycyB0byBjaGVjayB3aGV0aGVyIHRoZSBodyBkZWdhbW1hIG9yCmdh
bW1hIExVVCBpcyBlbmFibGVkLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMgfCAyNyArKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggYWNmM2QxNTJlZGZlLi5mNzE0Yzg3ZDhl
NDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKQEAgLTE2
MjgsMTIgKzE2MjgsMTUgQEAgc3RhdGljIGludCBpOXh4X2dhbW1hX3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAl9CiB9CiAKK3N0YXRpYyBib29s
IGlsa19jcnRjX2hhc19nYW1tYShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKK3sKKwlyZXR1cm4gY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlICYmCisJCShjcnRjX3N0
YXRlLT5jc2NfbW9kZSAmIENTQ19QT1NJVElPTl9CRUZPUkVfR0FNTUEpICE9IDA7Cit9CisKIHN0
YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIHsKLQlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKLQkJcmV0
dXJuIDA7Ci0KLQlpZiAoKGNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9S
RV9HQU1NQSkgPT0gMCkKKwlpZiAoIWlsa19jcnRjX2hhc19nYW1tYShjcnRjX3N0YXRlKSkKIAkJ
cmV0dXJuIDA7CiAKIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsKQEAgLTE2NzEs
OSArMTY3NCwxOSBAQCBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJfQogfQogCitzdGF0aWMgYm9vbCBpY2xf
Y3J0Y19oYXNfZGVnYW1tYShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKK3sKKwlyZXR1cm4gY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIFBSRV9DU0NfR0FNTUFfRU5B
QkxFOworfQorCitzdGF0aWMgYm9vbCBpY2xfY3J0Y19oYXNfZ2FtbWEoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJcmV0dXJuIGNydGNfc3RhdGUtPmdhbW1h
X21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEU7Cit9CisKIHN0YXRpYyBpbnQgaWNsX2dhbW1h
X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsK
LQlpZiAoKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEUpID09
IDApCisJaWYgKCFpY2xfY3J0Y19oYXNfZ2FtbWEoY3J0Y19zdGF0ZSkpCiAJCXJldHVybiAwOwog
CiAJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0sp
IHsKQEAgLTIyNDEsMTAgKzIyNTQsMTAgQEAgc3RhdGljIHZvaWQgaWNsX3JlYWRfbHV0cyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAotCWlmIChjcnRj
X3N0YXRlLT5nYW1tYV9tb2RlICYgUFJFX0NTQ19HQU1NQV9FTkFCTEUpCisJaWYgKGljbF9jcnRj
X2hhc19kZWdhbW1hKGNydGNfc3RhdGUpKQogCQljcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCA9
IGdsa19yZWFkX2RlZ2FtbWFfbHV0KGNydGMpOwogCi0JaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9t
b2RlICYgUE9TVF9DU0NfR0FNTUFfRU5BQkxFKSA9PSAwKQorCWlmICghaWNsX2NydGNfaGFzX2dh
bW1hKGNydGNfc3RhdGUpKQogCQlyZXR1cm47CiAKIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1h
X21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgewotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
