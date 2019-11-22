Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1168E105F25
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 05:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34D36F4D6;
	Fri, 22 Nov 2019 04:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94EF46F4D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 04:03:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 20:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,228,1571727600"; d="scan'208";a="205288575"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2019 20:03:06 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 22 Nov 2019 09:32:25 +0530
Message-Id: <20191122040226.15933-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Wa_1604555607 implementation and
 verification skip
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

SW1wbGVtZW50cyB0aGUgV2FfMTYwNDU1NTYwNyBhbmQgc2tpcHMgaXRzIHZlcmlmaWNhdGlvbiBh
cyB0aGUgRkZfTU9ERTIKcmVnaXN0ZXIgaXMgd3JpdGUgb25seSB0aWxsIFRHTCBCMC4KCk1pY2hl
bCBUaGllcnJ5ICgxKToKICBkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBXYV8xNjA0NTU1NjA3Cgog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDM0ICsrKysrKysr
KysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAg
ICB8ICA0ICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
