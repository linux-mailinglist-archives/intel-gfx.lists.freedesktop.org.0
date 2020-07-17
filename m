Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78872245AE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D61A6E1F8;
	Fri, 17 Jul 2020 21:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7D56E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:31 +0000 (UTC)
IronPort-SDR: 2zLTE1pi9+xnuSH+SoNze5Zr/RmQ8UfGcJpgB31EEUduLn1Yscufetq7b2lKtfwt3t6//ZkGGa
 zJZxPCZXvLkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="147652427"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="147652427"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:30 -0700
IronPort-SDR: UYe/jvQKwQ6u3pdr3VfHK+Gh9rIgiV3m7ZGd99L0tU0lR3Ce4Sse3+j+s9R1ysHJ6YqB6MX3ZC
 7n7cVfP+Ei+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="361457118"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 17 Jul 2020 14:14:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:40 +0300
Message-Id: <20200717211345.26851-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/20] drm/i915: Make ilk_load_luts() deal with
 degamma
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgaWxrX2xvYWRfbHV0cygpIHJlYWR5IGZvciBhIGRlZ2FtbWEgbHV0LiBDdXJyZW50bHkgd2Ug
bmV2ZXIKaGF2ZSBvbmUsIGJ1dCBzb29uIHdlIG1heSBnZXQgb25lIGZyb20gcmVhZG91dCwgYW5k
IEkgdGhpbmsgd2UKbWF5IHdhbnQgdG8gY2hhbmdlIHRoZSBzdGF0ZSBjb21wdXRhdGlvbiBzdWNo
IHRoYXQgd2UgbWF5IGVuZCB1cAp3aXRoIG9uZSBldmVuIHdoZW4gdXNlcnNwYWNlIGhhcyBzaW1w
bHkgc3VwcGxpZWQgYSBnYW1tYSBsdXQuCgpBdCBsZWFzdCB0aGUgY29kZSBub3cgZm9sbG93cyB0
aGUgcGF0aCBsYWlkIG91dCBieSB0aGUgaXZiL2Jkdwpjb3VudGVycGFycy4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNiArKysrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IGQ1Y2U1OGMzYmMxMS4uMTJh
NDFmYjRhOThjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
CkBAIC02MzcsMTMgKzYzNywxNSBAQCBzdGF0aWMgdm9pZCBpbGtfbG9hZF9sdXRzKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCWNvbnN0IHN0
cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqZ2FtbWFfbHV0ID0gY3J0Y19zdGF0ZS0+aHcuZ2FtbWFf
bHV0OworCWNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqZGVnYW1tYV9sdXQgPSBjcnRj
X3N0YXRlLT5ody5kZWdhbW1hX2x1dDsKKwljb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2Ig
KmJsb2IgPSBnYW1tYV9sdXQgPzogZGVnYW1tYV9sdXQ7CiAKIAlzd2l0Y2ggKGNydGNfc3RhdGUt
PmdhbW1hX21vZGUpIHsKIAljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgotCQlpbGtfbG9hZF9s
dXRfOChjcnRjLCBnYW1tYV9sdXQpOworCQlpbGtfbG9hZF9sdXRfOChjcnRjLCBibG9iKTsKIAkJ
YnJlYWs7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Ci0JCWlsa19sb2FkX2x1dF8xMChj
cnRjLCBnYW1tYV9sdXQpOworCQlpbGtfbG9hZF9sdXRfMTAoY3J0YywgYmxvYik7CiAJCWJyZWFr
OwogCWRlZmF1bHQ6CiAJCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsKLS0g
CjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
