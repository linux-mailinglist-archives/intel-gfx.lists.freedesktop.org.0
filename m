Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5F9172AA4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164DB6ED58;
	Thu, 27 Feb 2020 22:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FB86ED4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:00:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285467840"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 14:00:15 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:00:57 -0800
Message-Id: <20200227220101.321671-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227220101.321671-1-jose.souza@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/11] drm/i915/tgl: Fix the Wa number of a
 fix
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

VGhlIFdhIG51bWJlciBmb3IgdGhpcyBmaXggaXMgV2FfMTYwNzA4NzA1NiB0aGUgQlNwZWMgYnVn
IGlkIGlzCjE2MDcwODcwNTYsIGp1c3QgdXBkYXRpbmcgdG8gbWF0Y2ggQlNwZWMuCgpCU3BlYzog
NTI4OTAKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDgwNDEx
ZTQwODAzOS4uMGNkZDNjNTBlMGFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKQEAgLTkzMSw3ICs5MzEsNyBAQCB0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2Fs
KQogCQkJICAgIFNVQlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsCiAJCQkgICAgQ1BTU1VOSVRf
Q0xLR0FURV9ESVMpOwogCi0JLyogV2FfMTQwOTE4MDMzODp0Z2wgKi8KKwkvKiBXYV8xNjA3MDg3
MDU2OnRnbCBhbHNvIGtub3cgYXMgQlVHOjE0MDkxODAzMzggKi8KIAlpZiAoSVNfVEdMX1JFVklE
KGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKIAkJd2Ffd3JpdGVfb3Iod2FsLAog
CQkJICAgIFNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKLS0gCjIuMjUuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
