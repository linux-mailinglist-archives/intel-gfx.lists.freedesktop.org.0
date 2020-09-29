Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BFB27DC0C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 00:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C926E1F6;
	Tue, 29 Sep 2020 22:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524616E1F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 22:31:06 +0000 (UTC)
IronPort-SDR: rsoYRnXQcbWZi3nkxbQKbRPew3RuarrfSECwhI314uAiy46pKcglqFGfiV8a4zpus6pQHbC3jA
 X5kY2Qs7hOow==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="226452574"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="226452574"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 15:31:06 -0700
IronPort-SDR: o+RsObBoHxYh0Pov+M931v4+kcrsIHDGYfe86lTm7AeikPC/V9v8jIxRjxecFIMlHlOVnePuDf
 Gnpr1EeVTxRw==
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="351308014"
Received: from jaborah-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.33.153])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 15:31:05 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 15:34:19 -0700
Message-Id: <20200929223419.146925-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929223419.146925-1-jose.souza@intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/vbt: Add VRR VBT toggle
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

VGhpcyB3aWxsIGJlIHVzZWQgaW4gZnV0dXJlIGJ1dCBhbHJlYWR5IGFkZGluZyB0byBWQlQgc28g
d2UgYXJlCnVwZGF0ZWQgd2l0aCBWQlQgY2hhbmdlcy4KClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRf
ZGVmcy5oCmluZGV4IGI0NzQyYzRmZGU5Ny4uNDZmM2Y0ODA0YzllIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCkBAIC04MzUsNiArODM1LDcgQEAg
c3RydWN0IGJkYl9sZnBfcG93ZXIgewogCXUxNiBsYWNlX2VuYWJsZWRfc3RhdHVzOwogCXN0cnVj
dCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgYWdncmVzc2l2ZW5lc1sxNl07CiAJdTE2IGhv
Ymw7IC8qIDIzMisgKi8KKwl1MTYgdnJyX2ZlYXR1cmVfZW5hYmxlZDsgLyogMjMzKyAqLwogfSBf
X3BhY2tlZDsKIAogLyoKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
