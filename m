Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E785ED36
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 22:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9656E1E2;
	Wed,  3 Jul 2019 20:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E7F6E1E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 20:08:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 13:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="191157249"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 03 Jul 2019 13:08:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2019 23:08:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 23:08:22 +0300
Message-Id: <20190703200824.5971-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
References: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Deal with cpp==8 for g4x
 watermarks
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
Y3MgdGVsbCB1cyB0aGF0IG9uIGc0eCB3ZSBoYXZlIHRvIGNvbXB1dGUgdGhlIFNSIHdhdGVybWFy
a3MKdXNpbmcgNCBieXRlcyBwZXIgcGl4ZWwuIEknbSBnb2luZyB0byBhc3N1bWUgdGhhdCBvbmx5
IGFwcGxpZXMKdG8gMSBhbmQgMiBieXRlIHBlciBwaXhlbCBmb3JtYXRzLCBhbmQgbm90IDggYnl0
ZSBwZXIgcGl4ZWwKZm9ybWF0cy4gVGhhdCBzZWVtcyBsaWtlIGEgcmVjaXBlIGZvciBhbiBpbnN1
ZmZpY2llbnQgd2F0ZXJtYXJrCndoaWNoIGNvdWxkIGxlYWQgdG8gdW5kZXJydW5zLiBVc2UgdGhl
IG1heGltdW0gb2YgdGhlIHR3byBudW1iZXJzCmluc3RlYWQuCgpSZXZpZXdlZC1ieTogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMKaW5kZXggZDEwYzYyZDNmMTBjLi44NzI0NGQ4MjE1YTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYwpAQCAtMTExNiw2ICsxMTE2LDggQEAgc3RhdGljIHUxNiBnNHhfY29tcHV0ZV93bShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlpZiAoIWludGVsX3dtX3Bs
YW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpKQogCQlyZXR1cm4gMDsKIAorCWNw
cCA9IHBsYW5lX3N0YXRlLT5iYXNlLmZiLT5mb3JtYXQtPmNwcFswXTsKKwogCS8qCiAJICogTm90
IDEwMCUgc3VyZSB3aGljaCB3YXkgRUxLIHNob3VsZCBnbyBoZXJlIGFzIHRoZQogCSAqIHNwZWMg
b25seSBzYXlzIENML0NURyBzaG91bGQgYXNzdW1lIDMyYnBwIGFuZCBCVwpAQCAtMTEyOSw5ICsx
MTMxLDcgQEAgc3RhdGljIHUxNiBnNHhfY29tcHV0ZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkgKi8KIAlpZiAoSVNfR000NShkZXZfcHJpdikgJiYgcGxh
bmUtPmlkID09IFBMQU5FX1BSSU1BUlkgJiYKIAkgICAgbGV2ZWwgIT0gRzRYX1dNX0xFVkVMX05P
Uk1BTCkKLQkJY3BwID0gNDsKLQllbHNlCi0JCWNwcCA9IHBsYW5lX3N0YXRlLT5iYXNlLmZiLT5m
b3JtYXQtPmNwcFswXTsKKwkJY3BwID0gbWF4KGNwcCwgNHUpOwogCiAJY2xvY2sgPSBhZGp1c3Rl
ZF9tb2RlLT5jcnRjX2Nsb2NrOwogCWh0b3RhbCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFs
OwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
