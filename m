Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4AF2179A5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A7F6E348;
	Tue,  7 Jul 2020 20:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911316E348
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:43:46 +0000 (UTC)
IronPort-SDR: FxfzAZsLv4/aFugcuI7BqduTMmQ8KoYykaytpAzxYyohaO78Oiqd9I0fvmIkI1WI/lTcW8pPYY
 mBvvXftR3M5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="209222026"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="209222026"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 13:43:45 -0700
IronPort-SDR: IqElvkwKJwKCnCj0VJFh5arj4ueGT7CE+hU8bc6UFg0v7a+ntJLUfZ0y5AALQq3ROEMoGdKure
 omuFbJ4VlVrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="457243802"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga005.jf.intel.com with ESMTP; 07 Jul 2020 13:43:45 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 13:45:30 -0700
Message-Id: <20200707204530.42289-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/ehl: Add new PCI ids
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHdvIG5ldyBQQ0kgaWRzIGFkZGVkIHRvIGVobC4KCnYyOiBhZGRlZCB0d28gYWRkaXRpb25hbCBQ
Q0kgaWRzCgpCU3BlYzogMjkxNTMKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5o
IGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAppbmRleCBiYzk4OWRlMmFhYzIuLmQ2Y2IyODk5
MmJhMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRl
L2RybS9pOTE1X3BjaWlkcy5oCkBAIC01ODgsNyArNTg4LDExIEBACiAJSU5URUxfVkdBX0RFVklD
RSgweDQ1NTEsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDQ1NDEsIGluZm8pLCBcCiAJ
SU5URUxfVkdBX0RFVklDRSgweDRFNzEsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDQ1
NTcsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDQ1NTUsIGluZm8pLCBcCiAJSU5URUxf
VkdBX0RFVklDRSgweDRFNjEsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDRFNTcsIGlu
Zm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDRFNTUsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RF
VklDRSgweDRFNTEsIGluZm8pCiAKIC8qIFRHTCAqLwotLSAKMi4yNy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
