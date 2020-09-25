Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C484278936
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E2FD6ECE3;
	Fri, 25 Sep 2020 13:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BF96ECE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:05 +0000 (UTC)
IronPort-SDR: JlFE1TiQ5xGydVw3ip65sNjsGmdzQ24fzjGPfgmvGNXeeXJQrXKqizhIIU95dZ2Vvpvj1CqA2K
 4IoaPpT5AbOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="149289025"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="149289025"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:05 -0700
IronPort-SDR: XkC8RDlbeuG9VQ4GXVBqIzb7vOn+aYj+72yaPH3+xpLSrOkGMYsfKpSvEc8zRA8Fmo5LMDemIR
 yByK7lsxEvQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="323371777"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 25 Sep 2020 06:17:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:49 +0300
Message-Id: <20200925131656.10022-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Move MST master transcoder dump
 earlier
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIE1TVCBtYXN0ZXIgdHJhbnNjb2RlciBkdW1wIG5leHQgdG8gdGhlIG90aGVyIHRyYW5z
Y29kZXIKYml0cy4KClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCBkNjRlNDZhY2ZiYmQuLmU1YmE4ZGJiY2ExYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEzMDk3LDYgKzEzMDk3LDkgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqcGlwZV9jb25maWcsCiAJCSAgICB0cmFuc2NvZGVyX25hbWUocGlwZV9jb25maWctPmNwdV90
cmFuc2NvZGVyKSwKIAkJICAgIHBpcGVfY29uZmlnLT5waXBlX2JwcCwgcGlwZV9jb25maWctPmRp
dGhlcik7CiAKKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIk1TVCBtYXN0ZXIgdHJhbnNj
b2RlcjogJXNcbiIsCisJCSAgICB0cmFuc2NvZGVyX25hbWUocGlwZV9jb25maWctPm1zdF9tYXN0
ZXJfdHJhbnNjb2RlcikpOworCiAJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCSAgICAi
cG9ydCBzeW5jOiBtYXN0ZXIgdHJhbnNjb2RlcjogJXMsIHNsYXZlIHRyYW5zY29kZXIgYml0bWFz
ayA9IDB4JXhcbiIsCiAJCSAgICB0cmFuc2NvZGVyX25hbWUocGlwZV9jb25maWctPm1hc3Rlcl90
cmFuc2NvZGVyKSwKQEAgLTEzMTk0LDkgKzEzMTk3LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHVt
cF9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcs
CiAJCQkgICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBwaXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSwK
IAkJCSAgICBwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxlLCBwaXBlX2NvbmZpZy0+Y3NjX2VuYWJs
ZSk7CiAKLQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIk1TVCBtYXN0ZXIgdHJhbnNjb2Rl
cjogJXNcbiIsCi0JCSAgICB0cmFuc2NvZGVyX25hbWUocGlwZV9jb25maWctPm1zdF9tYXN0ZXJf
dHJhbnNjb2RlcikpOwotCiBkdW1wX3BsYW5lczoKIAlpZiAoIXN0YXRlKQogCQlyZXR1cm47Ci0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
