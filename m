Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9897539F487
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 13:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD526E111;
	Tue,  8 Jun 2021 11:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 347ED6E111;
 Tue,  8 Jun 2021 11:03:32 +0000 (UTC)
IronPort-SDR: UPmivUV+U7ygOv/7SBBaeRfqYcwFuAyMSFidqLpyAF+NJfh8JtH7rMzgRro3ogkBjDwWBS0yHF
 KI2hTFtWf4xA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="268674730"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="268674730"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 04:03:20 -0700
IronPort-SDR: YwYXbRV02K4qmf/ff3BjIHxbhp2CuuvSZpnYvRa+PX6eFzDU6wQEVUlPZJswYQCPkCLt7qBPI7
 1ozx10AUbX/w==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="552237143"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.215.170.251])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 04:03:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 12:02:47 +0100
Message-Id: <20210608110254.169357-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/7] Add back the buddy allocator
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
dG9wLm9yZy9zZXJpZXMvOTA2ODEvCgpNYXR0aGV3IEF1bGQgKDYpOgogIGRybS9pOTE1L3R0bTog
YWRkIHR0bV9idWRkeV9tYW4KICBkcm0vaTkxNS90dG06IGFkZCBpOTE1X3NnX2Zyb21fYnVkZHlf
cmVzb3VyY2UKICBkcm0vaTkxNS90dG06IHBhc3MgYWxvbmcgdGhlIEk5MTVfQk9fQUxMT0NfQ09O
VElHVU9VUwogIGRybS9pOTE1L3R0bTogcmVtb3ZlIG5vZGUgdXNhZ2UgaW4gb3VyIG5hbWluZwog
IGRybS9pOTE1L3R0bTogc3dpdGNoIG92ZXIgdG8gdHRtX2J1ZGR5X21hbgogIGRybS9pOTE1L3R0
bTogcmVzdG9yZSBtaW5fcGFnZV9zaXplIGJlaGF2aW91cgoKVGhvbWFzIEhlbGxzdHLDtm0gKDEp
OgogIGRybS9pOTE1L3R0bTogQ2FsY3VsYXRlIHRoZSBvYmplY3QgcGxhY2VtZW50IGF0IGdldF9w
YWdlcyB0aW1lCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAg
IHwgICAyICsKIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oICB8
ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwg
IDk4ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jICAgICAgICAgICAgIHwg
NDEyICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5oICAgICAgICAg
ICAgIHwgMTMzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2F0dGVybGlzdC5jICAg
ICAgIHwgIDgwICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjYXR0ZXJsaXN0LmggICAg
ICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlfbWFuYWdlci5j
IHwgMjQ4ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90dG1fYnVkZHlfbWFuYWdl
ci5oIHwgIDU2ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMg
ICAgfCAgNTUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCAg
ICB8ICAyMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5jICAgICAg
IHwgMTM5ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5oICAgICAg
IHwgIDE2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jICAg
fCA3ODkgKysrKysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21l
bW9yeV9yZWdpb24uYyAgfCAxNzAgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L21vY2tfcmVnaW9uLmMgIHwgIDI4ICstCiAxNiBmaWxlcyBjaGFuZ2VkLCAyMDAzIGluc2VydGlv
bnMoKyksIDI1MyBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2J1ZGR5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2J1ZGR5LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3R0bV9idWRkeV9tYW5hZ2VyLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jCgotLSAKMi4yNi4zCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
