Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC1780C3E
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Aug 2019 21:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C08B89CF3;
	Sun,  4 Aug 2019 19:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10AB889CF3
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Aug 2019 19:51:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 12:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,347,1559545200"; d="scan'208";a="181498399"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Aug 2019 12:50:58 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.143])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x74JovTN026070; Sun, 4 Aug 2019 20:50:58 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  4 Aug 2019 19:50:48 +0000
Message-Id: <20190804195052.31140-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Don't fail on HuC early init errors
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

TmV4dCBzdGVwIHRvIGlnbm9yZSBhbGwgSHVDIHJlbGF0ZWQgZXJyb3JzCgpNaWNoYWwgV2FqZGVj
emtvICg0KToKICBkcm0vaTkxNS9ndWM6IFByZWZlciBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9z
dXBwb3J0ZWQKICBkcm0vaTkxNS9odWM6IFByZWZlciBpbnRlbF9odWNfaXNfc3VwcG9ydGVkCiAg
ZHJtL2k5MTUvdWM6IFJlbW92ZSByZWR1bmRhbnQgR3VDIHN1cHBvcnQgY2hlY2tzCiAgZHJtL2k5
MTUvdWM6IERvbid0IGZhaWwgb24gSHVDIGVhcmx5IGluaXQgZXJyb3JzCgogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgfCAgOCArKysrLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgfCAgOSArKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmMgIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCi0tIAoyLjE5LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
