Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD48A39F132
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73BA6E0E8;
	Tue,  8 Jun 2021 08:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA8A6E0E8;
 Tue,  8 Jun 2021 08:44:55 +0000 (UTC)
IronPort-SDR: PoK9fuaobfJPyIjXF8IlpSMVePnlla2vyR0Fj9HkEv4LwqzBBqAChRmYb6Qb1PCTvpLUdMvVUk
 QjTZGs+7otRg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="202943813"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="202943813"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:44:55 -0700
IronPort-SDR: Don0Giq5XTFmzPgPGZmQJqJYn2z0HWBokPp7Lr+VlJ+zkbyNIRe4jtxf6LOoq6GJ4zeDz6cBRq
 Xas8Rjn+myYw==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="440381975"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.215.170.251])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:44:52 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 09:44:22 +0100
Message-Id: <20210608084428.142676-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] Add back the buddy allocator
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
YyAgICAgICB8IDEwMiArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYyAgICAg
ICAgICAgICB8IDQxMiArKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHku
aCAgICAgICAgICAgICB8IDEzMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NhdHRl
cmxpc3QuYyAgICAgICB8ICA4MCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2F0dGVy
bGlzdC5oICAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHRtX2J1ZGR5
X21hbmFnZXIuYyB8IDI0OCArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdHRtX2J1
ZGR5X21hbmFnZXIuaCB8ICA1NiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5
X3JlZ2lvbi5jICAgIHwgIDU1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlf
cmVnaW9uLmggICAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90
dG0uYyAgICAgICB8IDEwOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90
dG0uaCAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9i
dWRkeS5jICAgfCA3ODkgKysrKysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3Rz
L2ludGVsX21lbW9yeV9yZWdpb24uYyAgfCAxNzAgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfcmVnaW9uLmMgIHwgIDE3ICstCiAxNSBmaWxlcyBjaGFuZ2VkLCAxOTY5
IGluc2VydGlvbnMoKyksIDIzMCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmgKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jCgotLSAK
Mi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
