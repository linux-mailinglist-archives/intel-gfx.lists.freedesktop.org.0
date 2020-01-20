Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA42C143100
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 18:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F186EAA9;
	Mon, 20 Jan 2020 17:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9656EAA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 17:48:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 09:48:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="258780756"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 20 Jan 2020 09:47:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2020 19:47:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 19:47:20 +0200
Message-Id: <20200120174728.21095-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/17] drm/i915: swap() the entire cdclk state
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IG1ha2UgbGlmZSBsZXNzIGNvbmZ1c2luZyBsZXQncyBzd2FwKCkgdGhlIGVudGlyZSBjZGNsayBz
dGF0ZQpyYXRoZXIgdGhhbiBzd2FwcGluZyBzb21lIHBhcnRzLCBjb3B5aW5nIG90aGVyIHBhcnRz
LCBhbmQgbGVhdmluZwp0aGUgcmVzdCBqdXN0IGFzIGlzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxOCArKystLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBmOGU3MGE2NjhiNzQu
LjAwMjA0NGU4MDg2OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwpAQCAtMTgzNSwxOSArMTgzNSw3IEBAIHZvaWQgaW50ZWxfY2RjbGtfc3dhcF9zdGF0ZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CiAKLQkvKiBGSVhNRSBt
YXliZSBzd2FwKCkgdGhlc2UgdG9vICovCi0JbWVtY3B5KGRldl9wcml2LT5jZGNsa19zdGF0ZS5t
aW5fY2RjbGssCi0JICAgICAgIHN0YXRlLT5jZGNsa19zdGF0ZS5taW5fY2RjbGssCi0JICAgICAg
IHNpemVvZihzdGF0ZS0+Y2RjbGtfc3RhdGUubWluX2NkY2xrKSk7Ci0JbWVtY3B5KGRldl9wcml2
LT5jZGNsa19zdGF0ZS5taW5fdm9sdGFnZV9sZXZlbCwKLQkgICAgICAgc3RhdGUtPmNkY2xrX3N0
YXRlLm1pbl92b2x0YWdlX2xldmVsLAotCSAgICAgICBzaXplb2Yoc3RhdGUtPmNkY2xrX3N0YXRl
Lm1pbl92b2x0YWdlX2xldmVsKSk7Ci0KLQlkZXZfcHJpdi0+Y2RjbGtfc3RhdGUuZm9yY2VfbWlu
X2NkY2xrID0KLQkJc3RhdGUtPmNkY2xrX3N0YXRlLmZvcmNlX21pbl9jZGNsazsKLQotCXN3YXAo
c3RhdGUtPmNkY2xrX3N0YXRlLmxvZ2ljYWwsIGRldl9wcml2LT5jZGNsa19zdGF0ZS5sb2dpY2Fs
KTsKLQlzd2FwKHN0YXRlLT5jZGNsa19zdGF0ZS5hY3R1YWwsIGRldl9wcml2LT5jZGNsa19zdGF0
ZS5hY3R1YWwpOworCXN3YXAoc3RhdGUtPmNkY2xrX3N0YXRlLCBkZXZfcHJpdi0+Y2RjbGtfc3Rh
dGUpOwogfQogCiB2b2lkIGludGVsX2R1bXBfY2RjbGtfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRl
bF9jZGNsa19jb25maWcgKmNkY2xrX2NvbmZpZywKQEAgLTE5MDMsNyArMTg5MSw3IEBAIGludGVs
X3NldF9jZGNsa19wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQogCS8qIGNhbGxlZCBhZnRlciBpbnRlbF9jZGNsa19zd2FwX3N0YXRlKCkhICovCiAJY29u
c3Qgc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpvbGRfY2RjbGtfc3RhdGUgPSAmc3RhdGUtPmNk
Y2xrX3N0YXRlOwogCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqbmV3X2NkY2xrX3N0
YXRlID0gJmRldl9wcml2LT5jZGNsa19zdGF0ZTsKLQllbnVtIHBpcGUgcGlwZSA9IG9sZF9jZGNs
a19zdGF0ZS0+cGlwZTsgLyogbm90IHN3YXBwZWQgKi8KKwllbnVtIHBpcGUgcGlwZSA9IG5ld19j
ZGNsa19zdGF0ZS0+cGlwZTsKIAogCWlmIChwaXBlID09IElOVkFMSURfUElQRSB8fAogCSAgICBv
bGRfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsayA8PSBuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5j
ZGNsaykKQEAgLTE5MjQsNyArMTkxMiw3IEBAIGludGVsX3NldF9jZGNsa19wb3N0X3BsYW5lX3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkvKiBjYWxsZWQgYWZ0ZXIg
aW50ZWxfY2RjbGtfc3dhcF9zdGF0ZSgpISAqLwogCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19z
dGF0ZSAqb2xkX2NkY2xrX3N0YXRlID0gJnN0YXRlLT5jZGNsa19zdGF0ZTsKIAljb25zdCBzdHJ1
Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKm5ld19jZGNsa19zdGF0ZSA9ICZkZXZfcHJpdi0+Y2RjbGtf
c3RhdGU7Ci0JZW51bSBwaXBlIHBpcGUgPSBvbGRfY2RjbGtfc3RhdGUtPnBpcGU7IC8qIG5vdCBz
d2FwcGVkICovCisJZW51bSBwaXBlIHBpcGUgPSBuZXdfY2RjbGtfc3RhdGUtPnBpcGU7CiAKIAlp
ZiAocGlwZSAhPSBJTlZBTElEX1BJUEUgJiYKIAkgICAgb2xkX2NkY2xrX3N0YXRlLT5hY3R1YWwu
Y2RjbGsgPiBuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsaykKLS0gCjIuMjQuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
