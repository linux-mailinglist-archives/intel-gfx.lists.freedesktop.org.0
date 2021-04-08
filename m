Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D976358EAF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 22:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC18B6E323;
	Thu,  8 Apr 2021 20:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687FA6E217
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 20:46:50 +0000 (UTC)
IronPort-SDR: lqLp6eFARF2bl062+BCi6IS9445SsyJL+3xZC4dOoWmdWR69AWsFSMXzexYiWfTiD4Qw7weg+g
 z8KtIfjxxWRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193744445"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193744445"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:46:49 -0700
IronPort-SDR: NvbkFL4rLXNvVLX3guOfHgTqblZYBJCzFFQJ8GMNPJOgvDuIKeDlP9CskvcKKTwIGl9yNl+sll
 OQPDWTvTPcpA==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="530741119"
Received: from muweizha-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.2.85])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:46:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Apr 2021 13:49:16 -0700
Message-Id: <20210408204917.254272-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Implement Wa_14013723622
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

VGhpcyBXQSBmaXggc29tZSBkaXNwbGF5IGdsaXRjaGVzIHdoZW4gdGhlIHN5c3RlbSBpcyB1bmRl
ciBoaWdoCm1lbW9yeSBwcmVzc3VyZS4KCkJTcGVjOiA1Mjg5MApDYzogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIHwgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA1
ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCmluZGV4IGNiZjdhNjBhZmU1NC4uZjRhNzc5NjQzZjRkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKQEAgLTEyNTQ5LDQgKzEyNTQ5LDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAj
ZGVmaW5lIFRHTF9ST09UX0RFVklDRV9TS1VfVUxYCQkweDIKICNkZWZpbmUgVEdMX1JPT1RfREVW
SUNFX1NLVV9VTFQJCTB4NAogCisjZGVmaW5lIENMS1JFUV9QT0xJQ1kJCQlfTU1JTygweDEwMTAz
OCkKKyNkZWZpbmUgIENMS1JFUV9QT0xJQ1lfTUVNX1VQX09WUkQJUkVHX0JJVCgxKQorCiAjZW5k
aWYgLyogX0k5MTVfUkVHX0hfICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAzMmYzMDFj
YTNhYjAuLjhlMzllMzAwMzZiMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC03MTQxLDYg
KzcxNDEsMTEgQEAgc3RhdGljIHZvaWQgZ2VuMTJscF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJLyogV2FfMTQwMTEwNTk3ODg6dGdsLHJrbCxh
ZGxfcyxkZzEgKi8KIAlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBHRU4xMF9E
RlJfUkFUSU9fRU5fQU5EX0NISUNLRU4sCiAJCQkgMCwgREZSX0RJU0FCTEUpOworCisJLyogV2Ff
MTQwMTM3MjM2MjI6dGdsLHJrbCxkZzEsYWRsLXMgKi8KKwlpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID09IDEyKQorCQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBDTEtSRVFf
UE9MSUNZLAorCQkJCSBDTEtSRVFfUE9MSUNZX01FTV9VUF9PVlJELCAwKTsKIH0KIAogc3RhdGlj
IHZvaWQgZGcxX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
