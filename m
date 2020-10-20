Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C2294367
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 21:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5698A6F440;
	Tue, 20 Oct 2020 19:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5FD6F440
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 19:43:36 +0000 (UTC)
IronPort-SDR: Qf6xJYg5xiQVrWGsVT2EMfNfKVPisvN3K8YpT6WuxiD4xuR1VIDUxpylc5N0UvqR4vC4e+qR1g
 vQGIqdR+1QWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="231462668"
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="231462668"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 12:43:36 -0700
IronPort-SDR: Yg8xTnYjOVR9dJtL3TOfJ6XdaArgl7Sb6o7ni9nmaPtpWZI1zWBszp6XTDP11z0edTB67QvTRT
 wSRuOh568kEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,398,1596524400"; d="scan'208";a="358644945"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 20 Oct 2020 12:43:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 22:43:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 22:43:30 +0300
Message-Id: <20201020194330.28568-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201020194330.28568-1-ville.syrjala@linux.intel.com>
References: <20201020194330.28568-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Try to handle 90/270 degree
 rotated initial fb
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
IHRoZSBmYiBzaXplIHJlYWRvdXQgY29ycmVjdGx5IGZvciB0aGUgOTAvMjcwIGRlZ3JlZSByb3Rh
dGVkCmNhc2VzLiBOb3Qgc3VyZSBpZiB3ZSdyZSBtaXNzaW5nIHNvbWV0aGluZyBlbHNlIGFzIHdl
bGwuCgpBbHNvIG5vIGlkZWEgd2hldGhlciB0aGUgQklPUyB3b3VsZCBldmVyIGRvIHRoaXMuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MjIgKysrKysrKysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
LCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggZmQwMTAzZjZjYzk1Li4xODNmNWQzY2QxMDYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMDYwNCw3ICsxMDYwNCw3
IEBAIHNrbF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMs
CiAJZW51bSBwaXBlIHBpcGU7CiAJdTMyIHZhbCwgYmFzZSwgb2Zmc2V0LCBzdHJpZGVfbXVsdCwg
dGlsaW5nLCBhbHBoYTsKIAlpbnQgZm91cmNjLCBwaXhlbF9mb3JtYXQ7Ci0JdW5zaWduZWQgaW50
IGFsaWduZWRfaGVpZ2h0OworCXVuc2lnbmVkIGludCBhbGlnbmVkX2hlaWdodCwgc3RyaWRlOwog
CXN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiOwogCXN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAq
aW50ZWxfZmI7CiAKQEAgLTEwNjk2LDEwICsxMDY5Niw2IEBAIHNrbF9nZXRfaW5pdGlhbF9wbGFu
ZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJICAgIHZhbCAmIFBMQU5FX0NUTF9G
TElQX0hPUklaT05UQUwpCiAJCXBsYW5lX2NvbmZpZy0+cm90YXRpb24gfD0gRFJNX01PREVfUkVG
TEVDVF9YOwogCi0JLyogOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiB3b3VsZCByZXF1aXJlIGV4dHJh
IHdvcmsgKi8KLQlpZiAoZHJtX3JvdGF0aW9uXzkwX29yXzI3MChwbGFuZV9jb25maWctPnJvdGF0
aW9uKSkKLQkJZ290byBlcnJvcjsKLQogCWJhc2UgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQ
TEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSkgJiAweGZmZmZmMDAwOwogCXBsYW5lX2NvbmZpZy0+
YmFzZSA9IGJhc2U7CiAKQEAgLTEwNzEwLDEwICsxMDcwNiwxOCBAQCBza2xfZ2V0X2luaXRpYWxf
cGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCWZiLT53aWR0aCA9ICgodmFs
ID4+IDApICYgMHhmZmZmKSArIDE7CiAKIAl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQ
TEFORV9TVFJJREUocGlwZSwgcGxhbmVfaWQpKTsKLQlzdHJpZGVfbXVsdCA9IHNrbF9wbGFuZV9z
dHJpZGVfbXVsdChmYiwgMCwgRFJNX01PREVfUk9UQVRFXzApOwotCWZiLT5waXRjaGVzWzBdID0g
KHZhbCAmIDB4M2ZmKSAqIHN0cmlkZV9tdWx0OwotCi0JYWxpZ25lZF9oZWlnaHQgPSBpbnRlbF9m
Yl9hbGlnbl9oZWlnaHQoZmIsIDAsIGZiLT5oZWlnaHQpOworCXN0cmlkZV9tdWx0ID0gc2tsX3Bs
YW5lX3N0cmlkZV9tdWx0KGZiLCAwLCBwbGFuZV9jb25maWctPnJvdGF0aW9uKTsKKwlzdHJpZGUg
PSAodmFsICYgMHgzZmYpICogc3RyaWRlX211bHQ7CisKKwlpZiAoZHJtX3JvdGF0aW9uXzkwX29y
XzI3MChwbGFuZV9jb25maWctPnJvdGF0aW9uKSkgeworCQlzd2FwKGZiLT53aWR0aCwgZmItPmhl
aWdodCk7CisJCWZiLT5waXRjaGVzWzBdID0gQUxJR04oZmItPndpZHRoICogZmItPmZvcm1hdC0+
Y3BwWzBdLAorCQkJCSAgICAgICBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50KGZiLCAwKSk7CisJ
CWFsaWduZWRfaGVpZ2h0ID0gc3RyaWRlOworCX0gZWxzZSB7CisJCWZiLT5waXRjaGVzWzBdID0g
c3RyaWRlOworCQlhbGlnbmVkX2hlaWdodCA9IGludGVsX2ZiX2FsaWduX2hlaWdodChmYiwgMCwg
ZmItPmhlaWdodCk7CisJfQogCiAJcGxhbmVfY29uZmlnLT5zaXplID0gZmItPnBpdGNoZXNbMF0g
KiBhbGlnbmVkX2hlaWdodDsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
