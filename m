Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC436284E06
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2297A6E4B1;
	Tue,  6 Oct 2020 14:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08AB06E4B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:47 +0000 (UTC)
IronPort-SDR: UYprnP3kkMkl33+wJcIdSjXgIYv8VHt+yUxitXCLIBFmD9CnPrwjPX5buC7cru+Gl2uP5VAfh9
 Rzsp/QLt86Jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="164585729"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="164585729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:46 -0700
IronPort-SDR: qgKhtp+2LxMJ26+JPV8IjelFpMT0ERyzU/xjuQI1cR0tWZS0XHEIjEyRqSHKP1/FffI0edLP5n
 5ONdWnsIIObQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="387898770"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 06 Oct 2020 07:34:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:48 +0300
Message-Id: <20201006143349.5561-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/20] drm/i915: Use GEN3_IRQ_INIT() to init
 south interrupts in icp+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHJlYXNvbiBub3QgdG8gdXNlIEdFTjNfSVJRX0lOSVQoKSBvbiBpY3ArLgoKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgOCArKy0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YwppbmRleCAyMjJkMmU2ZDdlZTQuLjYzYWU2MGVjMjMyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCkBAIC0zNzIyLDE0ICszNzIyLDEwIEBAIHN0YXRpYyB2b2lkIGdlbjhfaXJxX3Bvc3RpbnN0
YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogc3RhdGljIHZvaWQgaWNw
X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJ
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7CiAJdTMyIG1h
c2sgPSBTREVfR01CVVNfSUNQOwogCi0JZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIEk5MTVf
UkVBRChTREVJRVIpICE9IDApOwotCUk5MTVfV1JJVEUoU0RFSUVSLCAweGZmZmZmZmZmKTsKLQlQ
T1NUSU5HX1JFQUQoU0RFSUVSKTsKLQotCWdlbjNfYXNzZXJ0X2lpcl9pc196ZXJvKCZkZXZfcHJp
di0+dW5jb3JlLCBTREVJSVIpOwotCUk5MTVfV1JJVEUoU0RFSU1SLCB+bWFzayk7CisJR0VOM19J
UlFfSU5JVCh1bmNvcmUsIFNERSwgfm1hc2ssIDB4ZmZmZmZmZmYpOwogfQogCiBzdGF0aWMgdm9p
ZCBnZW4xMV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
