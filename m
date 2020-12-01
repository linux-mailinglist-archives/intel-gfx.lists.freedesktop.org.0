Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F0C2CAABC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 19:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC226E86F;
	Tue,  1 Dec 2020 18:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489B96E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 18:30:32 +0000 (UTC)
IronPort-SDR: mFw6zPfc9F3KA2E/lmb1EmaJ+bw+GuISGpG1NrlesZ1wRdSIsCin7kaYBhH3vJ03yXkJ5HD2Wn
 +tgJIKBTUQzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="234487939"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="234487939"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 10:30:32 -0800
IronPort-SDR: GdWmsqjAZ0RsYQUesBzQ0ZGN54NZ3mLINytqctUhBjKQLMbO0M3e3p1UIfs9/A4cLIlEz0Y87b
 oaedBMys2HpQ==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="405220280"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 10:30:30 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 00:34:06 +0530
Message-Id: <20201201190406.1752-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201201190406.1752-1-uma.shankar@intel.com>
References: <20201201190406.1752-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 2/2] Revert "drm/i915/display/fbc: Disable fbc by
 default on TGL"
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

RkJDIGNhbiBiZSByZS1lbmFibGVkIG9uIFRHTCB3aXRoIFdBIG9mIGtlZXBpbmcgaXQgZGlzYWJs
ZWQKd2hpbGUgUFNSMiBpcyBlbmFibGVkLgoKVGhpcyByZXZlcnRzIGNvbW1pdCAyOTgyZGVkMmZm
NWNlMGNmMWE0OWJjMzlhNTI2ZGExODI3ODJiNjY0LgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNyAtLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCBm
NWQ1YTY0OGNiMjIuLjMzMjAwYjVjZmFkMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jCkBAIC0xNDQ1LDEzICsxNDQ1LDYgQEAgc3RhdGljIGludCBpbnRlbF9zYW5p
dGl6ZV9mYmNfb3B0aW9uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAo
IUhBU19GQkMoZGV2X3ByaXYpKQogCQlyZXR1cm4gMDsKIAotCS8qCi0JICogRmJjIGlzIGNhdXNp
bmcgcmFuZG9tIHVuZGVycnVucyBpbiBDSSBleGVjdXRpb24gb24gVEdMIHBsYXRmb3Jtcy4KLQkg
KiBEaXNhYmxpbmcgdGhlIHNhbWUgd2hpbGUgdGhlIHByb2JsZW0gaXMgYmVpbmcgZGVidWdnZWQg
YW5kIGFuYWx5emVkLgotCSAqLwotCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQotCQlyZXR1
cm4gMDsKLQogCWlmIChJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJp
dikgPj0gOSkKIAkJcmV0dXJuIDE7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
