Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBA42F6C86
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BB46E12E;
	Thu, 14 Jan 2021 20:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E2A289F33
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:50:56 +0000 (UTC)
IronPort-SDR: a+uqs+yPqDQPfmU2utSZCbN71Rnq+JnhUx+vnnCm3+8B0nvIsTVFHzVvAxB1TQ0+yl33zcuc30
 xG6KLcO1Keig==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="166111657"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="166111657"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:50:55 -0800
IronPort-SDR: jNbVkpJUhrAfynYW7vBdyk1n/VnD4hndvE3qPChyjKYZHttG/S2P8ttSxIXKWOablJf+msP0mc
 wN8O8yLGW+fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="364346982"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 14 Jan 2021 12:50:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 22:50:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:50:41 +0200
Message-Id: <20210114205046.8247-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Remove dead TPS3->TPS2 fallback
 code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IHdlIGV2ZXIgZ2V0IGhlcmUgd2l0aCBUUFMzIHRoZW4gaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVy
bigpCmlzIGp1c3QgYnJva2VuLiBSZXBsYWNlIHRoZSBjcmVmdWwgZmFsbGJhY2sgd2l0aCBqdXN0
Ck1JU1NJTkdfQ0FTRSgpLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgfCAxNiArKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKaW5kZXggNmVkOTNjYmVmODI4Li4xMDkzMDg4NGNlNDIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTMxNDgsMTEgKzMxNDgsOSBAQCBjcHRfc2V0
X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAljYXNlIERQX1RSQUlOSU5H
X1BBVFRFUk5fMjoKIAkJKkRQIHw9IERQX0xJTktfVFJBSU5fUEFUXzJfQ1BUOwogCQlicmVhazsK
LQljYXNlIERQX1RSQUlOSU5HX1BBVFRFUk5fMzoKLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sCi0JCQkgICAgIlRQUzMgbm90IHN1cHBvcnRlZCwgdXNpbmcgVFBTMiBpbnN0ZWFkXG4iKTsK
LQkJKkRQIHw9IERQX0xJTktfVFJBSU5fUEFUXzJfQ1BUOwotCQlicmVhazsKKwlkZWZhdWx0Ogor
CQlNSVNTSU5HX0NBU0UoaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVybl9zeW1ib2woZHBfdHJhaW5f
cGF0KSk7CisJCXJldHVybjsKIAl9CiAKIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgaW50ZWxf
ZHAtPm91dHB1dF9yZWcsIGludGVsX2RwLT5EUCk7CkBAIC0zNDUzLDExICszNDUxLDkgQEAgZzR4
X3NldF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJY2FzZSBEUF9UUkFJ
TklOR19QQVRURVJOXzI6CiAJCSpEUCB8PSBEUF9MSU5LX1RSQUlOX1BBVF8yOwogCQlicmVhazsK
LQljYXNlIERQX1RSQUlOSU5HX1BBVFRFUk5fMzoKLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sCi0JCQkgICAgIlRQUzMgbm90IHN1cHBvcnRlZCwgdXNpbmcgVFBTMiBpbnN0ZWFkXG4iKTsK
LQkJKkRQIHw9IERQX0xJTktfVFJBSU5fUEFUXzI7Ci0JCWJyZWFrOworCWRlZmF1bHQ6CisJCU1J
U1NJTkdfQ0FTRShpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuX3N5bWJvbChkcF90cmFpbl9wYXQp
KTsKKwkJcmV0dXJuOwogCX0KIAogCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBpbnRlbF9kcC0+
b3V0cHV0X3JlZywgaW50ZWxfZHAtPkRQKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
