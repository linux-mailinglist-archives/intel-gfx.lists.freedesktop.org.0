Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D6A9A94B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 09:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5573E6EBDE;
	Fri, 23 Aug 2019 07:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D6F6EBD6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 07:57:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 15:31:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="208338632"
Received: from rgcayeta-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.34.110])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 15:31:51 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 00:31:34 +0200
Message-Id: <20190822223136.30758-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/2] drm/i915: timeline semaphore support
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

SGksCgpKdXN0IGZpZGRsaW5nIHdpdGggZW51bXMgdG8gYXZvaWQgZGVmYXVsdCAwIHZhbHVlcyBh
cyByZWNvbW1lbmRlZCBieQpKYXNvbi4KCkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgyKToK
ICBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgogIGRy
bS9pOTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBzdXBwb3J0CgogLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgMzQ2ICsrKysrKysrKysrKysrKy0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgICAzICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMgICAgICAgICAgfCAgIDEgKwogaW5jbHVk
ZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAgICAgIHwgIDY1ICsrKy0KIDQgZmls
ZXMgY2hhbmdlZCwgMzU0IGluc2VydGlvbnMoKyksIDYxIGRlbGV0aW9ucygtKQoKLS0KMi4yMy4w
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
