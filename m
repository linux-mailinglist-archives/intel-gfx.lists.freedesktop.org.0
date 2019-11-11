Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F464F818E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 21:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21EF66E9DB;
	Mon, 11 Nov 2019 20:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376ED6E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 20:50:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 12:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="194060045"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga007.jf.intel.com with ESMTP; 11 Nov 2019 12:50:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 12:50:23 -0800
Message-Id: <20191111205024.22853-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Improve error handling on DSB
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

SSB3YXMgZGVidWdnaW5nIGEgcHJvYmxlbSB0aGF0IGdvdCBmaXhlZCBieSBhMDk2ODgzZGRhMmMg
KCJkcm0vaTkxNS9kc2I6ClJlbW92ZSBQSU5fTUFQUEFCTEUgZnJvbSB0aGUgRFNCIG9iamVjdCBW
TUEiKS4gV2hpbGUgdGhhdCBzcGVjaWZpYwpwcm9ibGVtIGlzIGFscmVhZHkgZml4ZWQsIG90aGVy
cyBtYXkgcG9wIHVwIGluIGZ1dHVyZS4gVGhpcyBzZXJpZXMKaXMgdGVzdGVkIGJ5IHRlbXBvcmFy
aWx5IHJldmVydGluZyB0aGF0IGNvbW1pdCBhbmQgZW5zdXJpbmcgd2UgaGF2ZQpvbmx5IGEgZXJy
b3IgbWVzc2FnZSBpbiB0aGUgbG9nLCB3aXRoIGdyYWNlZnVsIGRlZ3JhZGF0aW9uIHRvCiJwYXNz
LXRocm91Z2ggd3JpdGVzIiBsaWtlIG9uIHBsYXRmb3JtcyB0aGF0IGRvbid0IHN1cHBvcnQgRFNC
LgoKTHVjYXMgRGUgTWFyY2hpICgyKToKICBkcm0vaTkxNS9kc2I6IHJlbW92ZSBhdG9taWMgb3Bl
cmF0aW9ucwogIGRybS9pOTE1L2RzYjogZml4IGV4dHJhIHdhcm5pbmcgb24gZXJyb3IgcGF0aCBo
YW5kbGluZwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAyNyAr
KysrKysrKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmggfCAgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxMSBk
ZWxldGlvbnMoLSkKCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
