Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB873C9C02
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2646E7EC;
	Thu, 15 Jul 2021 09:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0F46E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:36:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210499676"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="210499676"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:36:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="452361677"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 15 Jul 2021 02:35:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:35:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:27 +0300
Message-Id: <20210715093530.31711-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: Reuse ilk_needs_fb_cb_tune()
 for the reduced clock as well
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBpbGtfbmVlZHNfZmJfY2JfdHVuZSgpIGZvciByZWR1Y2VkX2Nsb2NrIGluc3RlYWQgb2YgaGFu
ZCByb2xsaW5nCml0LiBBbHNvIGlsa19uZWVkc19mYl9jYl90dW5lKCkgY2FuIGp1c3QgdXNlIHRo
ZSBwcmVjb21wdXRlZCBNIHZhbHVlCmluc3RlYWQgb2YgY2FsY3VsYXRpbmcgaXQgYWdhaW4uCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMKaW5kZXggOWIzMGQ2ZTI5YTQ3
Li41NDM4OTAwNTAwNDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bC5jCkBAIC05NTIsNyArOTUyLDcgQEAgc3RhdGljIGludCBoc3dfY3J0Y19jb21wdXRlX2Nsb2Nr
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCiBzdGF0aWMgYm9vbCBpbGtf
bmVlZHNfZmJfY2JfdHVuZShjb25zdCBzdHJ1Y3QgZHBsbCAqZHBsbCwgaW50IGZhY3RvcikKIHsK
LQlyZXR1cm4gaTl4eF9kcGxsX2NvbXB1dGVfbShkcGxsKSA8IGZhY3RvciAqIGRwbGwtPm47CisJ
cmV0dXJuIGRwbGwtPm0gPCBmYWN0b3IgKiBkcGxsLT5uOwogfQogCiBzdGF0aWMgdm9pZCBpbGtf
dXBkYXRlX3BsbF9kaXZpZGVycyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
QEAgLTk4MSw3ICs5ODEsNyBAQCBzdGF0aWMgdm9pZCBpbGtfdXBkYXRlX3BsbF9kaXZpZGVycyhz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJZnAgfD0gRlBfQ0JfVFVORTsK
IAogCWZwMiA9IGk5eHhfZHBsbF9jb21wdXRlX2ZwKHJlZHVjZWRfY2xvY2spOwotCWlmIChyZWR1
Y2VkX2Nsb2NrLT5tIDwgZmFjdG9yICogcmVkdWNlZF9jbG9jay0+bikKKwlpZiAoaWxrX25lZWRz
X2ZiX2NiX3R1bmUocmVkdWNlZF9jbG9jaywgZmFjdG9yKSkKIAkJZnAyIHw9IEZQX0NCX1RVTkU7
CiAKIAljcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmZwMCA9IGZwOwotLSAKMi4zMS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
