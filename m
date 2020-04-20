Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3521B16A7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 22:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 711556E843;
	Mon, 20 Apr 2020 20:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569AA6E843
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 20:06:25 +0000 (UTC)
IronPort-SDR: UQudX3H7/Z9A+lkFMMbm4B5cBc+SdE/3rS9GEXWRi3xwZ2v6+0mLxuaKgCeZ50zgQLjhp7Z65W
 VHTw8GYLzhTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 13:06:24 -0700
IronPort-SDR: 5iWsK6leJK5ThBAWNIh4i5hvwPbh4lNGI+j54uVlbeSeUH0+as4kxhKqAZF2FeWqxt1MPN97nc
 iiUxzVxn/JtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="290946328"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 20 Apr 2020 13:06:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 23:06:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 23:06:10 +0300
Message-Id: <20200420200610.31798-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200420200610.31798-1-ville.syrjala@linux.intel.com>
References: <20200420200610.31798-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Split some long lines
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNw
bGl0IHNvbWUgb3Zlcmx5IGxvbmcgbGluZXMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMCArKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IGFkMTcyYTM4ZWEzOC4uMWYzZGY4Mzk2ZDNhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTEyNjEsNyArMTI2MSwxMCBA
QCB2b2lkIGhzd19mZGlfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
IAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShoc3dfZGRpX3RyYW5zbGF0aW9uc19mZGkpICog
MjsgaSsrKSB7CiAJCS8qIENvbmZpZ3VyZSBEUF9UUF9DVEwgd2l0aCBhdXRvLXRyYWluaW5nICov
CiAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEUF9UUF9DVEwoUE9SVF9FKSwKLQkJCSAgICAg
ICBEUF9UUF9DVExfRkRJX0FVVE9UUkFJTiB8IERQX1RQX0NUTF9FTkhBTkNFRF9GUkFNRV9FTkFC
TEUgfCBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxIHwgRFBfVFBfQ1RMX0VOQUJMRSk7CisJCQkg
ICAgICAgRFBfVFBfQ1RMX0ZESV9BVVRPVFJBSU4gfAorCQkJICAgICAgIERQX1RQX0NUTF9FTkhB
TkNFRF9GUkFNRV9FTkFCTEUgfAorCQkJICAgICAgIERQX1RQX0NUTF9MSU5LX1RSQUlOX1BBVDEg
fAorCQkJICAgICAgIERQX1RQX0NUTF9FTkFCTEUpOwogCiAJCS8qIENvbmZpZ3VyZSBhbmQgZW5h
YmxlIERESV9CVUZfQ1RMIGZvciBEREkgRSB3aXRoIG5leHQgdm9sdGFnZS4KIAkJICogRERJIEUg
ZG9lcyBub3Qgc3VwcG9ydCBwb3J0IHJldmVyc2FsLCB0aGUgZnVuY3Rpb25hbGl0eSBpcwpAQCAt
MTMzNyw3ICsxMzQwLDEwIEBAIHZvaWQgaHN3X2ZkaV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCiAJLyogRW5hYmxlIG5vcm1hbCBwaXhlbCBzZW5kaW5nIGZvciBG
REkgKi8KIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBfVFBfQ1RMKFBPUlRfRSksCi0JCSAg
ICAgICBEUF9UUF9DVExfRkRJX0FVVE9UUkFJTiB8IERQX1RQX0NUTF9MSU5LX1RSQUlOX05PUk1B
TCB8IERQX1RQX0NUTF9FTkhBTkNFRF9GUkFNRV9FTkFCTEUgfCBEUF9UUF9DVExfRU5BQkxFKTsK
KwkJICAgICAgIERQX1RQX0NUTF9GRElfQVVUT1RSQUlOIHwKKwkJICAgICAgIERQX1RQX0NUTF9M
SU5LX1RSQUlOX05PUk1BTCB8CisJCSAgICAgICBEUF9UUF9DVExfRU5IQU5DRURfRlJBTUVfRU5B
QkxFIHwKKwkJICAgICAgIERQX1RQX0NUTF9FTkFCTEUpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRl
bF9kZGlfaW5pdF9kcF9idWZfcmVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQotLSAK
Mi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
