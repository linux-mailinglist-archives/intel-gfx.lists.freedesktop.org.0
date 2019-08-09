Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED8E883F2
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 22:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F08C6EE95;
	Fri,  9 Aug 2019 20:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65E889E1B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 20:29:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 13:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="204035007"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.86])
 by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2019 13:29:26 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 21:29:23 +0100
Message-Id: <20190809202926.14545-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Some bits from the LMEM series
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIGdvaW5nIHRvIHdhbnQgdGhlIGJsdCBpbXByb3ZlbWVudHMgYW5kIHRoZXkgY2FuIGdv
IGluIHdpdGhvdXQgZXZlcnl0aGluZwplbHNlLiBBbHNvIHRoZSBidWRkeSBhbGxvY2F0b3IgaXMg
ZmFpcmx5IHN0YW5kYWxvbmUgYXQgdGhpcyBwb2ludCwgYW5kIGluY2x1ZGVzCmEgc2V0IG9mIHNl
bGZ0ZXN0cyhzb21lIGRvbmF0ZWQgYnkgQ2hyaXMpIGFuZCBpcyB1bmxpa2VseSB0byBjaGFuZ2Ug
bXVjaC4KCk1hdHRoZXcgQXVsZCAoMyk6CiAgZHJtL2k5MTU6IGJ1ZGR5IGFsbG9jYXRvcgogIGRy
bS9pOTE1L2JsdDogZG9uJ3QgYXNzdW1lIHBpbm5lZCBpbnRlbF9jb250ZXh0CiAgZHJtL2k5MTUv
Ymx0OiBidW1wIHRoZSBzaXplIHJlc3RyaWN0aW9uCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgIHwgICAxICsKIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYyAgICB8ICAzNCArLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X2JsdC5jICAgIHwgMTQyICsrKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF9ibHQuaCAgICB8ICAgOSArLQogLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jbGllbnRfYmx0LmMgIHwgIDE2ICstCiAuLi4vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX29iamVjdF9ibHQuYyAgfCAgMjIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVk
ZHkuYyAgICAgICAgICAgICB8IDQzMyArKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9idWRkeS5oICAgICAgICAgICAgIHwgMTI2ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nbG9iYWxzLmMgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2xvYmFscy5oICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9idWRkeS5jICAgfCA3MTkgKysrKysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfbW9ja19zZWxmdGVzdHMuaCAgfCAgIDEgKwogMTIgZmlsZXMgY2hh
bmdlZCwgMTQ1NiBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jCgotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
