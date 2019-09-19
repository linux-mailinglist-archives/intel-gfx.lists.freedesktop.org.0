Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A3B7F1E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AFC6F534;
	Thu, 19 Sep 2019 16:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8046F534
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="186853590"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 19 Sep 2019 09:31:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:30:55 +0300
Message-Id: <20190919163113.17402-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 03/21] sna: undef
 FontSetPrivate() before redefining it
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkF2
b2lkIHRoZSBjb21waWxlciBnZXR0aW5ncyB1cHNldCBhYm91dCB1cyByZWRlZmluaW5nCkZvbnRT
ZXRQcml2YXRlKCkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIHNyYy9zbmEvc25hX2FjY2VsLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEvc25hX2FjY2Vs
LmMgYi9zcmMvc25hL3NuYV9hY2NlbC5jCmluZGV4IDdmZDAwYjlhZjY3OS4uOTM0YzhmNjYyYmVh
IDEwMDY0NAotLS0gYS9zcmMvc25hL3NuYV9hY2NlbC5jCisrKyBiL3NyYy9zbmEvc25hX2FjY2Vs
LmMKQEAgLTEyMSw2ICsxMjEsNyBAQAogCiAjaWYgWEZPTlQyX0NMSUVOVF9GVU5DU19WRVJTSU9O
ID49IDEKICNkZWZpbmUgQWxsb2NhdGVGb250UHJpdmF0ZUluZGV4KCkgeGZvbnQyX2FsbG9jYXRl
X2ZvbnRfcHJpdmF0ZV9pbmRleCgpCisjdW5kZWYgRm9udFNldFByaXZhdGUKICNkZWZpbmUgRm9u
dFNldFByaXZhdGUoZm9udCwgaWR4LCBkYXRhKSB4Zm9udDJfZm9udF9zZXRfcHJpdmF0ZShmb250
LCBpZHgsIGRhdGEpCiAjZW5kaWYKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
