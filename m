Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BD6E44DF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 09:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68AB76E8CB;
	Fri, 25 Oct 2019 07:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBAC6E8CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 07:50:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 00:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,227,1569308400"; d="scan'208";a="188852175"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga007.jf.intel.com with ESMTP; 25 Oct 2019 00:50:49 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 23:49:32 +0800
Message-Id: <20191025154933.22607-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/cml: Remove unsupport PCI ID
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Y29tbWl0ICdhN2I0ZGVlYjAyYjkgKCJkcm0vaTkxNS9jbWw6IEFkZCBDTUwgUENJIElEUyknCmlu
dHJvZHVjZWQgbmV3IFBDSSBJRCB0aGF0IENNTCBzdXBwb3J0LiBCdXQgc29tZSBza3UKaXMgbm90
IHN1cHBvcnQgeWV0IHNvIHJlbW92ZSB0aGVtIGF2b2lkIHVuZXhwZWN0ZWQgaXNzdWUuCgpDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29t
PgpDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5
MTVfcGNpaWRzLmggfCA0IC0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oCmluZGV4IGE3MGM5ODJkZGZmOS4uNTZlODIzY2RjNzE3IDEwMDY0NAotLS0gYS9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAg
LTQ0OCw5ICs0NDgsNyBAQAogI2RlZmluZSBJTlRFTF9DTUxfR1QxX0lEUyhpbmZvKQlcCiAJSU5U
RUxfVkdBX0RFVklDRSgweDlCMjEsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQUEs
IGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDlCQUIsIGluZm8pLCBcCiAJSU5URUxfVkdB
X0RFVklDRSgweDlCQUMsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDlCQTAsIGluZm8p
LCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQTUsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklD
RSgweDlCQTgsIGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDlCQTQsIGluZm8pLCBcCkBA
IC00NjAsOSArNDU4LDcgQEAKICNkZWZpbmUgSU5URUxfQ01MX0dUMl9JRFMoaW5mbykJXAogCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg5QjQxLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNB
LCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNCLCBpbmZvKSwgXAogCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg5QkNDLCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkMwLCBpbmZv
KSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM1LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg5QkM4LCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM0LCBpbmZvKSwgXAot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
