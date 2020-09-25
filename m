Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B24E0278935
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3736ECEB;
	Fri, 25 Sep 2020 13:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4336ECEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:02 +0000 (UTC)
IronPort-SDR: DUo7/R9CufbRX7I6WLevFhngVMfj4SVOZUCUYApXrquz/v6G9jJrL59OYEwwCyukaGPOQB9xAn
 Viknk0wYnbtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="149288996"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="149288996"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:02 -0700
IronPort-SDR: tj4L2STTGx6lIaI4MIR09lcPE1gLd1MgT24qMUkPaq7MLBL6/B/flD0BspE/evUO6+bkSUlcRD
 h5J9zdEljqCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="349743166"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 25 Sep 2020 06:17:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:16:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:48 +0300
Message-Id: <20200925131656.10022-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Fix state checker
 hw.active/hw.enable readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBy
ZXZpb3VzbHkgaW50ZWxfZHVtcF9waXBlX2NvbmZpZygpIHVzZWQgdG8gZHVtcCB0aGUgZnVsbCBj
cnRjIHN0YXRlCndoZXRoZXIgb3Igbm90IHRoZSBjcnRjIHdhcyBsb2dpY2FsbHkgZW5hYmxlZCBv
ciBub3QuIEFzIHRoYXQgbWVhbnQKb2NjYXNpb25hbGx5IGR1bXBpbmcgY29uZnVzaW5nIHN0YWxl
IGdhcmJhZ2UgSSBjaGFuZ2VkIGl0IHRvCmNoZWNrIHdoZXRoZXIgdGhlIGNydGMgaXMgbG9naWNh
bGx5IGVuYWJsZWQgb3Igbm90LiBIb3dldmVyIEkgZGlkCm5vdCByZWFsaXplIHRoYXQgdGhlIHN0
YXRlIGNoZWNrZXIgcmVhZG91dCBjb2RlIGRvZXMgbm90CnBvcHVsYXRlIGNydGNfc3RhdGUuaHcu
e2FjdGl2ZSxlbmFibGVkfS4gSGVuY2UgdGhlIHN0YXRlIGNoZWNrZXIKZHVtcCB3b3VsZCBvbmx5
IGdpdmUgdXMgYSBmdWxsIGR1bXAgb2YgdGhlIHN3IHN0YXRlIGJ1dCBub3QgdGhlIGh3CnN0YXRl
LiBGaXggdGhhdCBieSBwb3B1bGF0aW5nIHRob3NlIGJpdHMgb2YgdGhlIGh3IHN0YXRlIGFzIHdl
bGwuCgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KRml4
ZXM6IDEwZDc1ZjU0MjhmZCAoImRybS9pOTE1OiBGaXggcGxhbmUgc3RhdGUgZHVtcHMiKQpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTUg
KysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
aW5kZXggNWE5ZDkzM2U0MjVhLi5kNjRlNDZhY2ZiYmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDMwNCw3ICsxNDMwNCw2IEBAIHZlcmlm
eV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCXN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZyA9IG9s
ZF9jcnRjX3N0YXRlOwogCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSA9IG9sZF9jcnRj
X3N0YXRlLT51YXBpLnN0YXRlOwotCWJvb2wgYWN0aXZlOwogCiAJX19kcm1fYXRvbWljX2hlbHBl
cl9jcnRjX2Rlc3Ryb3lfc3RhdGUoJm9sZF9jcnRjX3N0YXRlLT51YXBpKTsKIAlpbnRlbF9jcnRj
X2ZyZWVfaHdfc3RhdGUob2xkX2NydGNfc3RhdGUpOwpAQCAtMTQzMTQsMTYgKzE0MzEzLDE5IEBA
IHZlcmlmeV9jcnRjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWRybV9kYmdfa21z
KCZkZXZfcHJpdi0+ZHJtLCAiW0NSVEM6JWQ6JXNdXG4iLCBjcnRjLT5iYXNlLmJhc2UuaWQsCiAJ
CSAgICBjcnRjLT5iYXNlLm5hbWUpOwogCi0JYWN0aXZlID0gZGV2X3ByaXYtPmRpc3BsYXkuZ2V0
X3BpcGVfY29uZmlnKGNydGMsIHBpcGVfY29uZmlnKTsKKwlwaXBlX2NvbmZpZy0+aHcuZW5hYmxl
ID0gbmV3X2NydGNfc3RhdGUtPmh3LmVuYWJsZTsKKworCXBpcGVfY29uZmlnLT5ody5hY3RpdmUg
PQorCQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfcGlwZV9jb25maWcoY3J0YywgcGlwZV9jb25maWcp
OwogCiAJLyogd2Uga2VlcCBib3RoIHBpcGVzIGVuYWJsZWQgb24gODMwICovCi0JaWYgKElTX0k4
MzAoZGV2X3ByaXYpKQotCQlhY3RpdmUgPSBuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlOworCWlm
IChJU19JODMwKGRldl9wcml2KSAmJiBwaXBlX2NvbmZpZy0+aHcuYWN0aXZlKQorCQlwaXBlX2Nv
bmZpZy0+aHcuYWN0aXZlID0gbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZTsKIAotCUk5MTVfU1RB
VEVfV0FSTihuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlICE9IGFjdGl2ZSwKKwlJOTE1X1NUQVRF
X1dBUk4obmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSAhPSBwaXBlX2NvbmZpZy0+aHcuYWN0aXZl
LAogCQkJImNydGMgYWN0aXZlIHN0YXRlIGRvZXNuJ3QgbWF0Y2ggd2l0aCBodyBzdGF0ZSAiCiAJ
CQkiKGV4cGVjdGVkICVpLCBmb3VuZCAlaSlcbiIsCi0JCQluZXdfY3J0Y19zdGF0ZS0+aHcuYWN0
aXZlLCBhY3RpdmUpOworCQkJbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSwgcGlwZV9jb25maWct
Pmh3LmFjdGl2ZSk7CiAKIAlJOTE1X1NUQVRFX1dBUk4oY3J0Yy0+YWN0aXZlICE9IG5ld19jcnRj
X3N0YXRlLT5ody5hY3RpdmUsCiAJCQkidHJhbnNpdGlvbmFsIGFjdGl2ZSBzdGF0ZSBkb2VzIG5v
dCBtYXRjaCBhdG9taWMgaHcgc3RhdGUgIgpAQCAtMTQzMzIsNiArMTQzMzQsNyBAQCB2ZXJpZnlf
Y3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAogCWZvcl9lYWNoX2VuY29kZXJf
b25fY3J0YyhkZXYsICZjcnRjLT5iYXNlLCBlbmNvZGVyKSB7CiAJCWVudW0gcGlwZSBwaXBlOwor
CQlib29sIGFjdGl2ZTsKIAogCQlhY3RpdmUgPSBlbmNvZGVyLT5nZXRfaHdfc3RhdGUoZW5jb2Rl
ciwgJnBpcGUpOwogCQlJOTE1X1NUQVRFX1dBUk4oYWN0aXZlICE9IG5ld19jcnRjX3N0YXRlLT5o
dy5hY3RpdmUsCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
