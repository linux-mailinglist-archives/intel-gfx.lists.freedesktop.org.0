Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2D92F54CD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEC46EC7D;
	Wed, 13 Jan 2021 22:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466876EC6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:32 +0000 (UTC)
IronPort-SDR: Jzb+gI97Yz3aJP6HdYFm9tATKRDudQhYiB3aW8XMNgf6QEHfYKtzKauZGtQmLj8Kjme8E1JCHd
 0GlS/UUnV5uQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="177498739"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="177498739"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:32 -0800
IronPort-SDR: 2y5j3yOj77IU6p2tqBtF2w/MIfsFPjvNtcmqLi8I2tJ9OBO2wvwIShRZnQHX49Gci0y9Ml/dKi
 k/BhfSEtHYNg==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696562"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:31 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:25 -0800
Message-Id: <20210113220935.4151-9-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 08/18] drm/i915/display: VRR + DRRS cannot be
 enabled together
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IFZSUiBpcyBlbmFibGVkLCBEUlJTIGNhbm5vdCBiZSBlbmFibGVkLCBzbyBtYWtlIHRoaXMgY2hl
Y2sKaW4gYXRvbWljIGNoZWNrLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IGEyNzUzMDNjMGM1Yy4uODY5YTlk
MjkxZTFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yODQ1
LDYgKzI4NDUsOSBAQCBpbnRlbF9kcF9kcnJzX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsCiAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0g
aW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvcjsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKIAorCWlmIChwaXBlX2NvbmZpZy0+dnJy
LmVuYWJsZSkKKwkJcmV0dXJuOworCiAJLyoKIAkgKiBEUlJTIGFuZCBQU1IgY2FuJ3QgYmUgZW5h
YmxlIHRvZ2V0aGVyLCBzbyBnaXZpbmcgcHJlZmVyZW5jZSB0byBQU1IKIAkgKiBhcyBpdCBhbGxv
d3MgbW9yZSBwb3dlci1zYXZpbmdzIGJ5IGNvbXBsZXRlIHNodXR0aW5nIGRvd24gZGlzcGxheSwK
LS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
