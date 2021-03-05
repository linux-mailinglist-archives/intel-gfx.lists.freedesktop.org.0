Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D5332EEFB
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:36:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A3C6EBFE;
	Fri,  5 Mar 2021 15:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287C16EBFE
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:36:32 +0000 (UTC)
IronPort-SDR: PAJNK9sXHRVUYzxDVl6gr7yw47KaymVRn3+w4x1xOGaJMKl0h0YuHH+GR3VhLUz2l6vd5gpU0o
 2FFymvn5kz8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="207404759"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="207404759"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:36:25 -0800
IronPort-SDR: sBlt6Jby2F03UpLnrV05whyuzmcGsHfljjf52M90zwOl++m9UVg33zefjrnVO2ugUfehNgvjw6
 4XuU39vadoHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="375022040"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 05 Mar 2021 07:36:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Mar 2021 17:36:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 17:36:08 +0200
Message-Id: <20210305153610.12177-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Calculate min_ddb_alloc for
 trans_wm
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIG1ha2UgYWxsIHRoZSAiZG8gd2UgaGF2ZSBlbm91Z2ggRERCIGZvciB0aGlzIFdNIGxldmVs
PyIKY2hlY2tzIHVzZSBtaW5fZGRiX2FsbG9jLiBUbyBhY2hpZXZlIHRoYXQgd2UgbmVlZCB0byBw
b3B1bGF0ZQp0aGlzIGZvciB0aGUgdHJhbnNpdGlvbiB3YXRlcm1hcmtzIGFzIHdlbGwuCgpDYzog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDggKysrKystLS0KIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKaW5kZXggMzY2MDFlMGE1MDczLi4zOGE2ZmVjZWQ3NGYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYwpAQCAtNDk4NiwxMyArNDk4NiwxMyBAQCBza2xfYWxsb2NhdGVfcGxhbmVfZGRi
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQlzdHJ1Y3Qgc2tsX3BsYW5lX3dt
ICp3bSA9CiAJCQkmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXTsK
IAotCQlpZiAod20tPnRyYW5zX3dtLnBsYW5lX3Jlc19iID49IHRvdGFsW3BsYW5lX2lkXSkKKwkJ
aWYgKHdtLT50cmFuc193bS5taW5fZGRiX2FsbG9jID4gdG90YWxbcGxhbmVfaWRdKQogCQkJbWVt
c2V0KCZ3bS0+dHJhbnNfd20sIDAsIHNpemVvZih3bS0+dHJhbnNfd20pKTsKIAogCQlpZiAod20t
PnNhZ3Yud20wLm1pbl9kZGJfYWxsb2MgPiB0b3RhbFtwbGFuZV9pZF0pCiAJCQltZW1zZXQoJndt
LT5zYWd2LndtMCwgMCwgc2l6ZW9mKHdtLT5zYWd2LndtMCkpOwogCi0JCWlmICh3bS0+c2Fndi50
cmFuc193bS5wbGFuZV9yZXNfYiA+PSB0b3RhbFtwbGFuZV9pZF0pCisJCWlmICh3bS0+c2Fndi50
cmFuc193bS5taW5fZGRiX2FsbG9jID4gdG90YWxbcGxhbmVfaWRdKQogCQkJbWVtc2V0KCZ3bS0+
c2Fndi50cmFuc193bSwgMCwgc2l6ZW9mKHdtLT5zYWd2LnRyYW5zX3dtKSk7CiAJfQogCkBAIC01
NDA0LDEzICs1NDA0LDE1IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21wdXRlX3RyYW5zaXRpb25fd20o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCX0gZWxzZSB7CiAJCXJlc19ibG9j
a3MgPSB3bTBfc2VsX3Jlc19iICsgdHJhbnNfb2Zmc2V0X2I7CiAJfQorCXJlc19ibG9ja3MrKzsK
IAogCS8qCiAJICogSnVzdCBhc3N1bWUgd2UgY2FuIGVuYWJsZSB0aGUgdHJhbnNpdGlvbiB3YXRl
cm1hcmsuICBBZnRlcgogCSAqIGNvbXB1dGluZyB0aGUgRERCIHdlJ2xsIGNvbWUgYmFjayBhbmQg
ZGlzYWJsZSBpdCBpZiB0aGF0CiAJICogYXNzdW1wdGlvbiB0dXJucyBvdXQgdG8gYmUgZmFsc2Uu
CiAJICovCi0JdHJhbnNfd20tPnBsYW5lX3Jlc19iID0gcmVzX2Jsb2NrcyArIDE7CisJdHJhbnNf
d20tPnBsYW5lX3Jlc19iID0gcmVzX2Jsb2NrczsKKwl0cmFuc193bS0+bWluX2RkYl9hbGxvYyA9
IG1heF90KHUxNiwgd20wLT5taW5fZGRiX2FsbG9jLCByZXNfYmxvY2tzICsgMSk7CiAJdHJhbnNf
d20tPnBsYW5lX2VuID0gdHJ1ZTsKIH0KIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
