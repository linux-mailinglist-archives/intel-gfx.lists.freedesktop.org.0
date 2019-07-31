Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 522F27CADE
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 19:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFAB789811;
	Wed, 31 Jul 2019 17:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2987689805
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 17:48:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:48:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="323826051"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 31 Jul 2019 10:48:43 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6VHmg4t016470; Wed, 31 Jul 2019 18:48:42 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 17:48:30 +0000
Message-Id: <20190731174833.22080-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] add more probe failures
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

djI6IHJlYmFzZWQKCk1pY2hhbCBXYWpkZWN6a28gKDMpOgogIGRybS9pOTE1OiBBZGQgaTkxNSB0
byBpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlCiAgZHJtL2k5MTUvdWM6IEluamVjdCBwcm9iZSBl
cnJvcnMgaW50byBpbnRlbF91Y19pbml0X2h3CiAgZHJtL2k5MTUvd29wY206IERvbid0IGZhaWwg
b24gV09QQ00gcGFydGl0aW9uaW5nIGZhaWx1cmUKCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29ubmVjdG9yLmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2h1Yy5jICAgICAgICB8ICA0ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYyAgICAgICAgIHwgMjMgKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAgICB8ICA1ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8IDI3ICsrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAxMiArKysrLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgMTggKysrKy0tLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgICAgICB8ICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndnQuYyAgICAgICAgICAgICAgfCAgMiArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgICAgICAgICAgIHwgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgICAgICAgICAgICB8IDMwICsrKysrKysr
Ky0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmggICAgICAgICAg
ICB8ICAyICstCiAxMyBmaWxlcyBjaGFuZ2VkLCA3OSBpbnNlcnRpb25zKCspLCA1MiBkZWxldGlv
bnMoLSkKCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
