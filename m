Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF9990FB3
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5066D6E207;
	Sat, 17 Aug 2019 09:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD116E284
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950577"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:26 -0700
Message-Id: <20190817093902.2171-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/40] drm/i915/tgl: update DMC firmware to
 2.04
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

MiBpbXBvcnRhbnQgZml4ZXM6CiAgLSB2YmxhbmsgY291bnRlciBpcyBub3cgd29ya2luZwogIC0g
UFNSMSBpcyB3b3JraW5nCgpDYzogSm9zZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNj
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKaW5k
ZXggODI3OWU3MmVkZjRjLi41NDY1NzdlMzliNGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5j
CkBAIC0zOSw4ICszOSw4IEBACiAKICNkZWZpbmUgR0VOMTJfQ1NSX01BWF9GV19TSVpFCQlJQ0xf
Q1NSX01BWF9GV19TSVpFCiAKLSNkZWZpbmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192
ZXIyXzAzLmJpbiIKLSNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9O
KDIsIDMpCisjZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNC5iaW4i
CisjZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCA0KQogI2Rl
ZmluZSBUR0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKIE1PRFVMRV9GSVJNV0FSRShUR0xfQ1NS
X1BBVEgpOwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
