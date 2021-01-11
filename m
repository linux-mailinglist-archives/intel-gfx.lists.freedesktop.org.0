Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1342F1B14
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8AF489B55;
	Mon, 11 Jan 2021 16:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A162289B55
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:37:17 +0000 (UTC)
IronPort-SDR: JpwfTPhjU4+xQ13GREANjANkMlV7z6YswwXZ9R7V3s48tyUR5yvfUntU373wmdJucmC5jF1+VW
 LFau/bMjmWcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="157671938"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="157671938"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:37:17 -0800
IronPort-SDR: /shJXsN3ebls+nhWuxSZ95cIuTsV/Y6kE8nHH0Jk/Hdp7I1nWJ958gcOiIH34tLgqUal8gzxgG
 Wz9cYp3bP4Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="352661899"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 11 Jan 2021 08:37:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Jan 2021 18:37:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 18:37:01 +0200
Message-Id: <20210111163711.12913-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/11] drm/i915: WARN if plane src coords are
 too big
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklu
Zm9ybSB1cyBpZiB3ZSdyZSBidWdneSBhbmQgYXJlIGFib3V0IHRvIGV4Y2VlZCB0aGUgc2l6ZSBv
ZiB0aGUKYml0ZmllbGRzIGluIHRoZSBwbGFuZSBUSUxFT0ZGL09GRlNFVCByZWdpc3RlcnMuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jICAgIHwg
NyArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYwppbmRleCBiNzg5ODVjODU1YTUuLmIxMTU4Y2U0
ZGY5MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5l
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMKQEAgLTI3
Niw2ICsyNzYsMTMgQEAgaW50IGk5eHhfY2hlY2tfcGxhbmVfc3VyZmFjZShzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCQl9CiAJfQogCisJaWYgKElTX0hBU1dFTEwoZGV2
X3ByaXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKKwkJZHJtX1dBUk5fT04oJmRldl9w
cml2LT5kcm0sIHNyY194ID4gODE5MSB8fCBzcmNfeSA+IDQwOTUpOworCX0gZWxzZSBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA0ICYmCisJCSAgIGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1B
VF9NT0RfWF9USUxFRCkgeworCQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgc3JjX3ggPiA0
MDk1IHx8IHNyY195ID4gNDA5NSk7CisJfQorCiAJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBd
Lm9mZnNldCA9IG9mZnNldDsKIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0ueCA9IHNyY194
OwogCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS55ID0gc3JjX3k7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDAxODlkMzc5YTU1ZS4uNzcz
NWMyOGIyNDY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMzg1NCw2ICszODU0LDggQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJm
YWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCX0KIAl9CiAKKwlk
cm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgeCA+IDgxOTEgfHwgeSA+IDgxOTEpOworCiAJcGxh
bmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLm9mZnNldCA9IG9mZnNldDsKIAlwbGFuZV9zdGF0ZS0+
Y29sb3JfcGxhbmVbMF0ueCA9IHg7CiAJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnkgPSB5
OwpAQCAtMzkyNiw2ICszOTI4LDggQEAgc3RhdGljIGludCBza2xfY2hlY2tfbnYxMl9hdXhfc3Vy
ZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCQl9CiAJfQogCisJ
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgeCA+IDgxOTEgfHwgeSA+IDgxOTEpOworCiAJcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lW3V2X3BsYW5lXS5vZmZzZXQgPSBvZmZzZXQ7CiAJcGxhbmVfc3Rh
dGUtPmNvbG9yX3BsYW5lW3V2X3BsYW5lXS54ID0geDsKIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxh
bmVbdXZfcGxhbmVdLnkgPSB5OwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
