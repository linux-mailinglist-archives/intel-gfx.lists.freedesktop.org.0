Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61B83ACC3E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 15:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0F16EA09;
	Fri, 18 Jun 2021 13:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C85FF6EA08;
 Fri, 18 Jun 2021 13:32:01 +0000 (UTC)
IronPort-SDR: RCKIPr9U6S13nZ9cZpfyn5aSFdzJyvLptn6o1jEogO/PmZ9/1HIArJZAvyjb7syNm6fydBMe88
 Ohq0EXBisMXg==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186931270"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="186931270"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:32:01 -0700
IronPort-SDR: O/5Fab7CjsDFfJnGlkGmPVk4IQo016eePsD/2Gx91rr2BnVcWAcp2Gmu+wzHY6Lqc1sA4FwYaF
 VtN4STypUtDw==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="479821220"
Received: from murphyke-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.237.184])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:31:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Jun 2021 14:31:49 +0100
Message-Id: <20210618133150.700375-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: add back the selftest()
 hook for the buddy
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiB3ZSByZXN1cnJlY3RlZCB0aGUgc2VsZnRlc3Qgd2UgZm9yZ290IHRvIGFkZCBiYWNrIHRo
ZSBzZWxmdGVzdCgpCmhvb2ssIG1lYW5pbmcgdGhlIHRlc3QgaXMgbm90IGN1cnJlbnRseSBydW4u
CgpSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9tb2NrX3NlbGZ0ZXN0cy5oIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9tb2NrX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfbW9ja19zZWxmdGVzdHMuaAppbmRleCAzNGU1Y2FmMzgwOTMuLjY3
NTliNTYwODZmYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfbW9ja19zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
aTkxNV9tb2NrX3NlbGZ0ZXN0cy5oCkBAIC0zNCwzICszNCw0IEBAIHNlbGZ0ZXN0KGd0dCwgaTkx
NV9nZW1fZ3R0X21vY2tfc2VsZnRlc3RzKQogc2VsZnRlc3QoaHVnZXBhZ2VzLCBpOTE1X2dlbV9o
dWdlX3BhZ2VfbW9ja19zZWxmdGVzdHMpCiBzZWxmdGVzdChjb250ZXh0cywgaTkxNV9nZW1fY29u
dGV4dF9tb2NrX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KG1lbW9yeV9yZWdpb24sIGludGVsX21lbW9y
eV9yZWdpb25fbW9ja19zZWxmdGVzdHMpCitzZWxmdGVzdChidWRkeSwgaTkxNV9idWRkeV9tb2Nr
X3NlbGZ0ZXN0cykKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
