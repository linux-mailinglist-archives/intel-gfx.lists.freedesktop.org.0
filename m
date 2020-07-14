Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9E221F61B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF606E80B;
	Tue, 14 Jul 2020 15:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7799F6E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:26:35 +0000 (UTC)
IronPort-SDR: vJSYKUYL8to3QqvpRePHRVVsIqx5sZ/6j7/Ku/FU6otGzUo0pbwwfUtFzzFHVFo0xZNXuFJnqX
 ig47hSb3YO8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="233797087"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="233797087"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 08:26:35 -0700
IronPort-SDR: 8DWAknFW0LyeNpmb1syM7WHivq/F8nYni5T/gcXwoHUZ0OEtSvc1xn4+vmHwTgykTa8PCq9YKS
 amMNQAnkM5ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="268680964"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 14 Jul 2020 08:26:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 18:26:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 18:26:25 +0300
Message-Id: <20200714152626.380-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714152626.380-1-ville.syrjala@linux.intel.com>
References: <20200714152626.380-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Make i830 .get_cdclk() assignment
 less confusing
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
cGxpY2l0bHkgY2hlY2sgZm9yIGk4MzAgd2hlbiBhc3NpZ25pbmcgdGhlIC5nZXRfY2RjbGsoKSB2
ZnVuYywKYW5kIHRoZW4gZGVhbCB3aXRoIHRoZSBjYXNlIG9mIG5vdCBoYXZpbmcgYXNzaWduZWQg
dGhlIHZmdW5jCnNlcGFyYXRlbHkuIExlc3MgY29uZnVzaW5nLCBhbmQgZ2V0cyByaWQgb2YgdGhl
IGNoZWNrcGF0Y2ggY29tcGxhaW50CmFib3V0IHVzaW5nIHt9IG9uIG9uZSBicmFuY2ggYnV0IG5v
dCB0aGUgb3RoZXJzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMgfCA5ICsrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMKaW5kZXggNzIwOTVlZjE0NDI2Li45ZDZjYWNiZGI2OTEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTI5MDMsOSArMjkwMywxMCBAQCB2b2lk
IGludGVsX2luaXRfY2RjbGtfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfY2RjbGsgPSBpODV4X2dldF9jZGNsazsKIAllbHNl
IGlmIChJU19JODQ1RyhkZXZfcHJpdikpCiAJCWRldl9wcml2LT5kaXNwbGF5LmdldF9jZGNsayA9
IGZpeGVkXzIwMG1oel9nZXRfY2RjbGs7Ci0JZWxzZSB7IC8qIDgzMCAqLwotCQlkcm1fV0FSTigm
ZGV2X3ByaXYtPmRybSwgIUlTX0k4MzAoZGV2X3ByaXYpLAotCQkJICJVbmtub3duIHBsYXRmb3Jt
LiBBc3N1bWluZyAxMzMgTUh6IENEQ0xLXG4iKTsKKwllbHNlIGlmIChJU19JODMwKGRldl9wcml2
KSkKKwkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X2NkY2xrID0gZml4ZWRfMTMzbWh6X2dldF9jZGNs
azsKKworCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwgIWRldl9wcml2LT5kaXNwbGF5Lmdl
dF9jZGNsaywKKwkJICAgICAiVW5rbm93biBwbGF0Zm9ybS4gQXNzdW1pbmcgMTMzIE1IeiBDRENM
S1xuIikpCiAJCWRldl9wcml2LT5kaXNwbGF5LmdldF9jZGNsayA9IGZpeGVkXzEzM21oel9nZXRf
Y2RjbGs7Ci0JfQogfQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
