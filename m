Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7891E284E04
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2CA6E4AE;
	Tue,  6 Oct 2020 14:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E27D6E4AE
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:34 +0000 (UTC)
IronPort-SDR: Pno6shvezU/wo7q17fDsrLzMWDzuqyZL46ERwYNEDP6C3jNygzUyJky5kJjeLyTsycBoTwLhLs
 e27P1nUC+2kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="226113627"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="226113627"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:10 -0700
IronPort-SDR: lj6IP9gODoaWPdKFNYdNAPz8W++ZcNmrdG9uC0mxYgVt8/E2eNjnRhFdcJDjNeY9+1aghrqZwu
 KMfs45l+rUww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="327579252"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 06 Oct 2020 07:34:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:35 +0300
Message-Id: <20201006143349.5561-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/20] drm/i915: Pimp AUX CH names
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
dCdzIG1ha2UgdGhlIEFVWCBDSCBuYW1lcyBtYXRjaCB0aGUgc3BlYyAoQVVYIEEtRiBmb3IgcHJl
LXRnbCwKQVVYIEEtQyBvciBBVVggVVNCQzEtNiBmb3IgdGdsKykuIEFuZCB3aGlsZSBhdCBpdCBs
ZXQncyBpbmNsdWRlCnRoZSBmdWxsIGVuY29kZXIgbmFtZSBpbiB0aGUgQVVYIENIIG5hbWUgYXMg
d2VsbCAoYXMgb3Bwb3NlZCB0bwpqdXN0IHVzaW5nIHBvcnRfbmFtZSgpIHdoaWNoIHdvdWxkbid0
IGdpdmUgdXMgdGhlIHJpZ2h0IHRoaW5nIG9uCnRnbCspLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMyArKysrKysrKysrLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggYTczYzM1NGM5MjBlLi4yOTlkYzQ0NGE3Nzcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTE4NzcsNiArMTg3
Nyw3IEBAIGludGVsX2RwX2F1eF9pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAJ
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRl
bF9kcCk7CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7
CisJZW51bSBhdXhfY2ggYXV4X2NoID0gZGlnX3BvcnQtPmF1eF9jaDsKIAogCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKSB7CiAJCWludGVsX2RwLT5hdXhfY2hfY3RsX3JlZyA9IHRnbF9h
dXhfY3RsX3JlZzsKQEAgLTE5MDksOSArMTkxMCwxNSBAQCBpbnRlbF9kcF9hdXhfaW5pdChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWRybV9kcF9hdXhfaW5pdCgmaW50ZWxfZHAtPmF1eCk7
CiAKIAkvKiBGYWlsdXJlIHRvIGFsbG9jYXRlIG91ciBwcmVmZXJyZWQgbmFtZSBpcyBub3QgY3Jp
dGljYWwgKi8KLQlpbnRlbF9kcC0+YXV4Lm5hbWUgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgIkFV
WCAlYy9wb3J0ICVjIiwKLQkJCQkgICAgICAgYXV4X2NoX25hbWUoZGlnX3BvcnQtPmF1eF9jaCks
Ci0JCQkJICAgICAgIHBvcnRfbmFtZShlbmNvZGVyLT5wb3J0KSk7CisJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIgJiYgYXV4X2NoID49IEFVWF9DSF9VU0JDMSkKKwkJaW50ZWxfZHAtPmF1
eC5uYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJBVVggVVNCQyVjLyVzIiwKKwkJCQkJICAg
ICAgIGF1eF9jaCAtIEFVWF9DSF9VU0JDMSArICcxJywKKwkJCQkJICAgICAgIGVuY29kZXItPmJh
c2UubmFtZSk7CisJZWxzZQorCQlpbnRlbF9kcC0+YXV4Lm5hbWUgPSBrYXNwcmludGYoR0ZQX0tF
Uk5FTCwgIkFVWCAlYy8lcyIsCisJCQkJCSAgICAgICBhdXhfY2hfbmFtZShhdXhfY2gpLAorCQkJ
CQkgICAgICAgZW5jb2Rlci0+YmFzZS5uYW1lKTsKKwogCWludGVsX2RwLT5hdXgudHJhbnNmZXIg
PSBpbnRlbF9kcF9hdXhfdHJhbnNmZXI7CiB9CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
