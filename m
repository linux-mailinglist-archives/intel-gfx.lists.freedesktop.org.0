Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B52350A8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 22:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ADCC89C27;
	Tue,  4 Jun 2019 20:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045BB89C27
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 20:09:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:09:46 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 04 Jun 2019 13:09:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 23:09:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 23:09:32 +0300
Message-Id: <20190604200933.29417-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
References: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Assert that HSW/BDW LCPLL is
 using the non-SSC reference
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
bHkgdGhlIG5vbi1TU0MgcmVmZXJlbmNlIGlzIHRydWx5IHN1cHBvcnRlZCBmb3IgdGhlIExDUExM
LiBBc3NlcnQKdGhhdCBpdCBpcyBpbmRlZWQgc2VsZWN0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9w
b3dlci5jCmluZGV4IDI3OGE3ZWRjOTRmNS4uYmI5ZWYxY2VhNWRiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC0zNjY1LDYgKzM2NjUsOSBAQCBzdGF0
aWMgdm9pZCBoc3dfYXNzZXJ0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAogCWlmICh2YWwgJiBMQ1BMTF9QTExfRElTQUJMRSkKIAkJRFJNX0VSUk9SKCJMQ1BMTCBp
cyBkaXNhYmxlZFxuIik7CisKKwlpZiAoKHZhbCAmIExDUExMX1JFRl9NQVNLKSAhPSBMQ1BMTF9S
RUZfTk9OX1NTQykKKwkJRFJNX0VSUk9SKCJMQ1BMTCBub3QgdXNpbmcgbm9uLVNTQyByZWZlcmVu
Y2VcbiIpOwogfQogCiBzdGF0aWMgdm9pZCBhc3NlcnRfY2FuX2Rpc2FibGVfbGNwbGwoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
