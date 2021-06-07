Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD3839E68C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 20:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADD46E9B6;
	Mon,  7 Jun 2021 18:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56466E02A;
 Mon,  7 Jun 2021 18:24:01 +0000 (UTC)
IronPort-SDR: VM48LgduYwQKB0aZY6D5IKq2hArrq+6LIJkQOB9DKQ52g7N5etvmkJXqfzqaemtVdBIkhRqrJm
 IKz9V0OjljYg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="185051935"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="185051935"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:24:01 -0700
IronPort-SDR: xI2ghkBynp4BN09AoF0Z8UN1dsFMnjcf0d1VcQusg744KxuHkS186BHzEXZagL8sy8U443Z9w9
 p8hjq+dXnnPA==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="476295014"
Received: from iwilsonx-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.48])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:24:00 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Jun 2021 19:22:04 +0100
Message-Id: <20210607182210.99036-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Add back the buddy allocator
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmVlZHMgdG8gYmUgYXBwbGllZCBvbiB0b3Agb2Y6Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvOTA2ODEvCgpNYXR0aGV3IEF1bGQgKDUpOgogIGRybS9pOTE1L3R0bTog
YWRkIHR0bV9idWRkeV9tYW4KICBkcm0vaTkxNS90dG06IGFkZCBpOTE1X3NnX2Zyb21fYnVkZHlf
cmVzb3VyY2UKICBkcm0vaTkxNS90dG06IHBhc3MgYWxvbmcgdGhlIEk5MTVfQk9fQUxMT0NfQ09O
VElHVU9VUwogIGRybS9pOTE1L3R0bTogc3dpdGNoIG92ZXIgdG8gdHRtX2J1ZGR5X21hbgogIGRy
bS9pOTE1L3R0bTogcmVzdG9yZSBtaW5fcGFnZV9zaXplIGJlaGF2aW91cgoKVGhvbWFzIEhlbGxz
dHLDtm0gKDEpOgogIGRybS9pOTE1L3R0bTogQ2FsY3VsYXRlIHRoZSBvYmplY3QgcGxhY2VtZW50
IGF0IGdldF9wYWdlcyB0aW1lCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAg
ICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
YyAgICAgICB8IDEwNSArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYyAgICAg
ICAgICAgICB8IDQxMiArKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHku
aCAgICAgICAgICAgICB8IDEzMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NhdHRl
cmxpc3QuYyAgICAgICB8ICA4MCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2F0dGVy
bGlzdC5oICAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHRtX2J1ZGR5
X21hbmFnZXIuYyB8IDI0NiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHRtX2J1
ZGR5X21hbmFnZXIuaCB8ICA1NiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5
X3JlZ2lvbi5jICAgIHwgIDU1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlf
cmVnaW9uLmggICAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90
dG0uYyAgICAgICB8IDEwOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90
dG0uaCAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9i
dWRkeS5jICAgfCA3ODkgKysrKysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3Rz
L2ludGVsX21lbW9yeV9yZWdpb24uYyAgfCAxNzAgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfcmVnaW9uLmMgIHwgIDE3ICstCiAxNSBmaWxlcyBjaGFuZ2VkLCAxOTcw
IGluc2VydGlvbnMoKyksIDIzMCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmgKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jCgotLSAK
Mi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
