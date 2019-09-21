Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD0FBA265
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35818891A4;
	Sun, 22 Sep 2019 12:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E752D6E093
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2019 20:20:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Sep 2019 13:20:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,532,1559545200"; d="scan'208";a="194993761"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Sep 2019 13:20:24 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Sep 2019 01:40:51 +0530
Message-Id: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v4][PATCH 0/3] adding gamma state checker for icl+
 platforms
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEgbHV0IHZhbHVlcwpmb3IgaWNlbGFrZSsgcGxhdGZvcm1zLiBJdCdzIGV4dGVuc2lvbiBvZiB0
aGUKcGF0Y2ggc2VyaWVzIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8z
MjgyNDYvP3Nlcmllcz01ODAzOQp3aGljaCBlbmFibGVkIHRoZSBiYXNpYyBpbmZyYXN0cnVjdHVy
ZSBhbmQgc3RhdGUgY2hlY2tlciBmb3IKbGVnYWN5IHBsYXRmb3Jtcy4KTWFqb3IgY2hhbmdlcyBk
b25lIGluIHBhdGNoIDIsIGRldGFpbHMgaW4gY29tbWl0IG1lc3NhZ2UuCgpTd2F0aSBTaGFybWEg
KDMpOgogIGRybS9pOTE1L2NvbG9yOiBGaXggZm9ybWF0dGluZyBpc3N1ZXMKICBkcm0vaTkxNS9j
b2xvcjogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkKICBGT1JfVEVTVElOR19PTkxZOiBQcmludCBy
Z2IgdmFsdWVzIG9mIGh3IGFuZCBzdyBibG9icwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYyB8IDE2OCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgICA2ICsrCiAyIGZpbGVz
IGNoYW5nZWQsIDEzOCBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
