Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF70538F516
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A326E973;
	Mon, 24 May 2021 21:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBA46E96D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:44:55 +0000 (UTC)
IronPort-SDR: RVB1jdKe3xxD3iIA4vjUGq7/yMep3T0fBgZnAU+MoH9RSW+RGvM8Dk6IP0KgNLKrmui5xZ2ADl
 4+3z6Du3axMw==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="181677506"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="181677506"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:55 -0700
IronPort-SDR: cJLWolcTIWzoSNRYAA5180t+FlwNm/j4kYqFNZrOzSo6WHk4k3XHdZgW9eVrVX1FBYr5v3IoaF
 H/tS+632DGbQ==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="546513293"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.32.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:54 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 14:48:01 -0700
Message-Id: <20210524214805.259692-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/display/adl_p: Drop earlier return
 in tc_has_modular_fia()
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

TU9EVUxBUl9GSUFfTUFTSyBpcyBzZXQgaW4gYWRsX3Agc28gd2UgY2FuIGRyb3AgdGhpcyBlYWxp
ZXIgcmV0dXJuCmFuZCByZWFkIHJlZ2lzdGVycy4KQWxzbyB0byBhdm9pZCB3YXJuaW5ncyBmcm9t
IGljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVsZCgpIHdoZW4KY2FsbGluZyB0Y19jb2xkX2Jsb2Nr
KCkgaW4gdGhpcyBmdW5jdGlvbnMgaXQgaXMgbmVjZXNzYXJ5IHRvIGhlbGQgdGhlCmxvY2suCgpD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMKaW5kZXggNWYwMzIxNWEwM2U0Li5kYjg1ZTBlMjAzMWUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKQEAgLTczNCwxMyArNzM0LDExIEBAIHRjX2hh
c19tb2R1bGFyX2ZpYShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnCiAJaWYgKCFJTlRFTF9JTkZPKGk5MTUpLT5kaXNwbGF5Lmhhc19t
b2R1bGFyX2ZpYSkKIAkJcmV0dXJuIGZhbHNlOwogCi0JLyogVE9ETzogY2hlY2sgaWYgaW4gcmVh
bCBIVyBNT0RVTEFSX0ZJQV9NQVNLIGlzIHNldCwgaWYgc28gcmVtb3ZlIHRoaXMgYmxvY2sgKi8K
LQlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpCi0JCXJldHVybiB0cnVlOwotCisJbXV0ZXhfbG9j
aygmZGlnX3BvcnQtPnRjX2xvY2spOwogCXdha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKGRpZ19wb3J0
KTsKIAl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLCBQT1JUX1RYX0RGTEVY
RFBTUChGSUExKSk7CiAJdGNfY29sZF91bmJsb2NrKGRpZ19wb3J0LCB3YWtlcmVmKTsKKwltdXRl
eF91bmxvY2soJmRpZ19wb3J0LT50Y19sb2NrKTsKIAogCWRybV9XQVJOX09OKCZpOTE1LT5kcm0s
IHZhbCA9PSAweGZmZmZmZmZmKTsKIAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
