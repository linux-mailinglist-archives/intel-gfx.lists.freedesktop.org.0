Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6287447C08
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 10:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6913189150;
	Mon, 17 Jun 2019 08:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7BC89150
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 08:21:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 01:21:56 -0700
X-ExtLoop1: 1
Received: from sorvi.fi.intel.com ([10.237.72.207])
 by orsmga006.jf.intel.com with ESMTP; 17 Jun 2019 01:21:55 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 11:24:13 +0300
Message-Id: <20190617082413.22549-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Add missing device ID
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIG1pc3NpbmcgUENJIGRldmljZSBJRCBmb3IgU0tVIElDTExQIFUgR1QgMS41RiAoMHg4
QTU0KSBhcyBwZXIgQlNQZWMuCgpCU3BlYzogMTkwOTIKClNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aCB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmgKaW5kZXggNmQ2MGVhNjhjMTcxLi42YzM0MmFjNDcwYzggMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aApAQCAtNTY4LDcgKzU2OCw4IEBACiAJSU5URUxfVkdBX0RFVklDRSgweDhBNTYsIGluZm8pLCBc
CiAJSU5URUxfVkdBX0RFVklDRSgweDhBNzEsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgw
eDhBNzAsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDhBNTMsIGluZm8pCisJSU5URUxf
VkdBX0RFVklDRSgweDhBNTMsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDhBNTQsIGlu
Zm8pCiAKICNkZWZpbmUgSU5URUxfSUNMXzExX0lEUyhpbmZvKSBcCiAJSU5URUxfSUNMX1BPUlRf
Rl9JRFMoaW5mbyksIFwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
