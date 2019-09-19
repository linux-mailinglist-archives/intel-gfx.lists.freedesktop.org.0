Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9704BB80C4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 20:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B816EAF5;
	Thu, 19 Sep 2019 18:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F169F6EAF5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 18:26:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 11:26:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181561970"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 19 Sep 2019 11:26:51 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 23:47:17 +0530
Message-Id: <1568917040-3365-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v3][PATCH 0/3] adding gamma state checker for icl+
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
YXkvaW50ZWxfY29sb3IuYyB8IDI1MiArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgICA3ICsKIDIgZmlsZXMg
Y2hhbmdlZCwgMjI2IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
