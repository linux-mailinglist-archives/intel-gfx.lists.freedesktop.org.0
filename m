Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3737C2D9E1B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 18:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9826E0C9;
	Mon, 14 Dec 2020 17:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068946E0C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 17:49:04 +0000 (UTC)
IronPort-SDR: yX52ZFvxD8pIv6oeeHXJtgKLpNCIhvRRZySSzh4ivjbj66lxUgqhHDUbWJQcTQNUh2rd/qUi7F
 pNnLt2ID2E7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="173977285"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="173977285"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 09:49:04 -0800
IronPort-SDR: GYvds2z1uyxR5Ajy50WeSWQckmT/F925oCRAPVpigQRVLgqHGG+//z/qqsNuzJLCePIxlpuNkR
 6B3eHPQgWUDg==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="389088100"
Received: from mbenes1-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.42.53])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 09:49:03 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 09:49:12 -0800
Message-Id: <20201214174912.174065-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201214174912.174065-1-jose.souza@intel.com>
References: <20201214174912.174065-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 5/5] HAX/DO_NOT_MERGE_IT: drm/i915/display:
 Enable PSR2 selective fetch for testing
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

RW5hYmxpbmcgaXQgdG8gY2hlY2sgaWYgaXQgY2F1c2VzIHJlZ3Jlc3Npb25zIGluIENJIGJ1dCB0
aGUgZmVhdHVyZSBpcwpzdGlsbCBub3QgcmVhZHkgdG8gYmUgZW5hYmxlZCBieSBkZWZhdWx0LgoK
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oCmluZGV4IDMzMGMwM2UyYjRmNy4uYjhiMTkyNzBjMzM5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTU0LDcgKzU0LDcgQEAgc3RydWN0IGRybV9wcmludGVy
OwogCXBhcmFtKGludCwgZW5hYmxlX2ZiYywgLTEsIDA2MDApIFwKIAlwYXJhbShpbnQsIGVuYWJs
ZV9wc3IsIC0xLCAwNjAwKSBcCiAJcGFyYW0oYm9vbCwgcHNyX3NhZmVzdF9wYXJhbXMsIGZhbHNl
LCAwNjAwKSBcCi0JcGFyYW0oYm9vbCwgZW5hYmxlX3BzcjJfc2VsX2ZldGNoLCBmYWxzZSwgMDYw
MCkgXAorCXBhcmFtKGJvb2wsIGVuYWJsZV9wc3IyX3NlbF9mZXRjaCwgdHJ1ZSwgMDYwMCkgXAog
CXBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSwgMDQwMCkgXAogCXBhcmFtKGludCwg
ZW5hYmxlX2lwcywgMSwgMDYwMCkgXAogCXBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDAs
IDA2MDApIFwKLS0gCjIuMjkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
