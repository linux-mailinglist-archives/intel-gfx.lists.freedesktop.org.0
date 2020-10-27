Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF5B29CCBC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 00:45:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5930A6E40B;
	Tue, 27 Oct 2020 23:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725706E405
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 23:45:50 +0000 (UTC)
IronPort-SDR: Uu4A0NuIJK+GlhPdrYj4o7BtvLFm2RePa0PRCaBfkXbl7u8sbStzxhiWE2d016v27xsh1EUXxb
 WosaQMoPbj1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="164680897"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="164680897"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 16:45:49 -0700
IronPort-SDR: Tn1DMQVRPpDGfF2AS1b3vNbVKlSoMFIzH+zEy9g3cytztNuMHQVlUa+LO7+1c/ls+lo64MM2QM
 FVefqXS0Xd3g==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="355729370"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.55])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 16:45:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 16:45:26 -0700
Message-Id: <20201027234526.33043-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201027234526.33043-1-jose.souza@intel.com>
References: <20201027234526.33043-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/6] HAX/DO_NOT_MERGE_IT: drm/i915/display:
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
IDA2MDApIFwKLS0gCjIuMjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
