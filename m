Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9FB27D9FB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 23:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16AA66E1EE;
	Tue, 29 Sep 2020 21:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D8E6E1E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 21:26:05 +0000 (UTC)
IronPort-SDR: DN/o70rilb1k0bMin5wc1Cy/IXLshG0pGT/OCBcPBbGzuTWBf/vT7fHxJiddVgEDSCKM4haNKp
 /nfCNqMTbKAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="162353202"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="162353202"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:26:05 -0700
IronPort-SDR: NI3wDcxN1W9jmAzv0bGA2Fqyfwc7sy7lOOP2y5xUueifKxNXfCTZUskmfPoRIERbhVA1VEPy3B
 S4wQ5PH+TC5w==
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="514032288"
Received: from jaborah-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.33.153])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:26:04 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 14:29:12 -0700
Message-Id: <20200929212912.108706-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929212912.108706-1-jose.souza@intel.com>
References: <20200929212912.108706-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/vbt: Add VRR VBT toggle
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
ZGVmcy5oCmluZGV4IDEyZWM0YzA3ODFjZS4uODdmNDAzNDI0NzE5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCkBAIC04MzUsNiArODM1LDcgQEAg
c3RydWN0IGJkYl9sZnBfcG93ZXIgewogCXUxNiBsYWNlX2VuYWJsZWRfc3RhdHVzOwogCXN0cnVj
dCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgYWdncmVzc2l2ZW5lc1sxNl07CiAJdTE2IGhv
Ymw7IC8qIDIzMisgKi8KKwl1MTYgdnJyX2ZlYXR1cmVfZW5hYmxlZDsgLyogMjMzKyAqLwogfSBf
X3BhY2tlZDsKIAogLyoKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
