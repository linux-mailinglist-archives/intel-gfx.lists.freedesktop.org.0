Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 002D41ADEAC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 15:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577FF6EBF7;
	Fri, 17 Apr 2020 13:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633E26EBF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 13:47:26 +0000 (UTC)
IronPort-SDR: EdZdLmBsUYvd8+0VbkoMCdiKnR3EBxImWLkSZIlYum9LZ/8PJoFCsUD7L+xXw4Q6XVjO3eEMwf
 is+2YWFI1FbA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 06:47:25 -0700
IronPort-SDR: ZZVbMHNISAKqgb3fnsCBEbkZ9vngRxu+9R8Yz4XpAy5bTxQVA5xNLAgkWzNO5KSTnBGzjj29gx
 FIsb/peyE0yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="289267519"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 17 Apr 2020 06:47:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Apr 2020 16:47:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 16:47:18 +0300
Message-Id: <20200417134720.16654-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Move the TRANS_DDI_FUNC_CTL
 enable to a later point
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
IHJlYXNvbiB0aGF0IEkgY2FuIHNlZSB3aHkgd2Ugc2hvdWxkIGVuYWJsZSBUUkFOU19ERElfRlVO
Q19DVEwKYmVmb3JlIHdlIHNldCB1cCB0aGUgd2F0ZXJtYXJrcyBvZiBjb25mb2dpdXJlIHRoZSBt
YnVzIHN0dWZmLgpJbiBmYWN0IHJlb3JkZXJpbmcgdGhlc2Ugc2VlbXMgdG8gbWF0Y2ggdGhlIGJz
cGVjIHNlcXVlbmNlIGJldHRlciwKYW5kIGNyaWN1YWxseSB3aWxsIGFsbG93IHVzIHRvIHB1c2gg
dGhlIFRSQU5TX0RESV9GVU5DX0NUTCBlbmFibGUKaW50byB0aGUgZW5jb2RlciBlbmFibGUgaG9v
ayBhcyBhIGZvbGxvd3VwLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggYWY1YjQwNTViMzhhLi43YTFlN2I1YWU4NGUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC03MDcxLDE1ICs3MDcx
LDE1IEBAIHN0YXRpYyB2b2lkIGhzd19jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKIAkJaWNsX3NldF9w
aXBlX2NoaWNrZW4oY3J0Yyk7CiAKLQlpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2Nv
ZGVyKSkKLQkJaW50ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMobmV3X2NydGNfc3RhdGUp
OwotCiAJaWYgKGRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcykKIAkJZGV2X3By
aXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRlLCBjcnRjKTsKIAogCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKQogCQlpY2xfcGlwZV9tYnVzX2VuYWJsZShjcnRjKTsKIAor
CWlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1X3RyYW5zY29kZXIpKQorCQlpbnRlbF9kZGlfZW5h
YmxlX3RyYW5zY29kZXJfZnVuYyhuZXdfY3J0Y19zdGF0ZSk7CisKIAlpbnRlbF9lbmNvZGVyc19l
bmFibGUoc3RhdGUsIGNydGMpOwogCiAJaWYgKHBzbF9jbGtnYXRlX3dhKSB7Ci0tIAoyLjI0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
