Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E15E1175D6B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD6546E45E;
	Mon,  2 Mar 2020 14:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B4A06E459
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:39:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:39:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="319081157"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 02 Mar 2020 06:39:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 16:39:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 16:39:41 +0200
Message-Id: <20200302143943.32676-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Fix cs_timestamp_frequency_hz for
 cl/bw
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRl
c3BpdGUgd2hhdCB0aGUgc3BlYyBzYXlzIHRoZSBUSU1FU1RBTVAgcmVnaXN0ZXIgc2VlbXMgdG8g
dGljawpvbmNlIGV2ZXJ5IGhyYXdjbGsgKGNvbmZpcm1lZCBvbiBpOTY1Z20gYW5kIGczNSkuCgpD
YzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCA0ICsrKy0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCBiNzU2ZThmYjc2ODIuLmJlODhl
YjQxMDM1YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC03
NDgsOCArNzQ4LDEwIEBAIHN0YXRpYyB1MzIgcmVhZF90aW1lc3RhbXBfZnJlcXVlbmN5KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJICogICAgICJUaGUgdmFsdWUgaW4gdGhp
cyByZWdpc3RlciBpbmNyZW1lbnRzIG9uY2UgZXZlcnkgMTYKIAkJICogICAgICBoY2xrcy4iICh0
aHJvdWdoIHRoZSDigJxDbG9ja2luZyBDb25maWd1cmF0aW9u4oCdCiAJCSAqICAgICAgKOKAnENM
S0NGR+KAnSkgTUNIQkFSIHJlZ2lzdGVyKQorCQkgKgorCQkgKiBUZXN0aW5nIG9uIGFjdHVhbCBo
YXJkd2FyZSBoYXMgc2hvd24gdGhlcmUgaXMgbm8gLzE2LgogCQkgKi8KLQkJcmV0dXJuIFJVTlRJ
TUVfSU5GTyhkZXZfcHJpdiktPnJhd2Nsa19mcmVxICogMTAwMCAvIDE2OworCQlyZXR1cm4gUlVO
VElNRV9JTkZPKGRldl9wcml2KS0+cmF3Y2xrX2ZyZXEgKiAxMDAwOwogCX0gZWxzZSBpZiAoSVNf
RzRYKGRldl9wcml2KSkgewogCQkvKgogCQkgKiA2MzoyMCBpbmNyZW1lbnRzIGV2ZXJ5IDEvNCBu
cwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
