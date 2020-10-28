Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DD929D2B4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C88A89CF9;
	Wed, 28 Oct 2020 21:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A8C896B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:34:19 +0000 (UTC)
IronPort-SDR: xjf+VjIyKZVCaKF81JphJp2xCWTho8aTYJuWnPGyDbdvuG4IlIpK1jPJkcGKV8Bmy8qAo/1ql2
 4VgyEoOgD5EA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="165751547"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="165751547"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:34:18 -0700
IronPort-SDR: JhyLFClUH4sgHTt74fFUsCss9s+cd5mq2xspkQ0moBh+ISdkVQTl7gSZagl8FKafCzPAYiizfF
 5Fcr05ZZ9Cjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="394957049"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 28 Oct 2020 14:34:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Oct 2020 23:34:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 23:33:22 +0200
Message-Id: <20201028213323.5423-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 18/19] drm/i915: Use GEN3_IRQ_INIT() to init
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHJlYXNvbiBub3QgdG8gdXNlIEdFTjNfSVJRX0lOSVQoKSBvbiBpY3ArLgoKUmV2aWV3ZWQtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA4ICsrLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
CmluZGV4IDIzMzc0MTZlNTgxYy4uOTUyNjhmY2EyZmJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKQEAgLTM3MzksMTQgKzM3MzksMTAgQEAgc3RhdGljIHZvaWQgZ2VuOF9pcnFfcG9zdGluc3Rh
bGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMgdm9pZCBpY3Bf
aXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKKwlz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmZGV2X3ByaXYtPnVuY29yZTsKIAl1MzIgbWFz
ayA9IFNERV9HTUJVU19JQ1A7CiAKLQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgSTkxNV9S
RUFEKFNERUlFUikgIT0gMCk7Ci0JSTkxNV9XUklURShTREVJRVIsIDB4ZmZmZmZmZmYpOwotCVBP
U1RJTkdfUkVBRChTREVJRVIpOwotCi0JZ2VuM19hc3NlcnRfaWlyX2lzX3plcm8oJmRldl9wcml2
LT51bmNvcmUsIFNERUlJUik7Ci0JSTkxNV9XUklURShTREVJTVIsIH5tYXNrKTsKKwlHRU4zX0lS
UV9JTklUKHVuY29yZSwgU0RFLCB+bWFzaywgMHhmZmZmZmZmZik7CiB9CiAKIHN0YXRpYyB2b2lk
IGdlbjExX2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
