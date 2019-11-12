Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FEAF91B3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD9F6E9D4;
	Tue, 12 Nov 2019 14:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F8666E9D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="207488976"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 12 Nov 2019 06:15:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:14:58 +0200
Message-Id: <20191112141503.1116-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: Pass intel_crtc to
 ironlake_fdi_disable()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN3
aXRjaCB0byBpbnRlbF9jcnRjIGZyb20gZHJtX2NydGMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKy0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGU1MmVhOTY0Mzc5MC4uZmZh
ZGZkOTBjM2NmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtNTA0OSwxMiArNTA0OSwxMCBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9mZGlfcGxs
X2Rpc2FibGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMpCiAJdWRlbGF5KDEwMCk7CiB9
CiAKLXN0YXRpYyB2b2lkIGlyb25sYWtlX2ZkaV9kaXNhYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0
YykKK3N0YXRpYyB2b2lkIGlyb25sYWtlX2ZkaV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQogewotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5kZXY7Ci0Jc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwotCXN0cnVjdCBpbnRlbF9j
cnRjICppbnRlbF9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKLQllbnVtIHBpcGUgcGlwZSA9
IGludGVsX2NydGMtPnBpcGU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwog
CWk5MTVfcmVnX3QgcmVnOwogCXUzMiB0ZW1wOwogCkBAIC02NzQ4LDcgKzY3NDYsNyBAQCBzdGF0
aWMgdm9pZCBpcm9ubGFrZV9jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9s
ZF9jcnRjX3N0YXRlLAogCWlyb25sYWtlX3BmaXRfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7CiAK
IAlpZiAob2xkX2NydGNfc3RhdGUtPmhhc19wY2hfZW5jb2RlcikKLQkJaXJvbmxha2VfZmRpX2Rp
c2FibGUoY3J0Yyk7CisJCWlyb25sYWtlX2ZkaV9kaXNhYmxlKGludGVsX2NydGMpOwogCiAJaW50
ZWxfZW5jb2RlcnNfcG9zdF9kaXNhYmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKIAotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
