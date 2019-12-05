Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E47981140F4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 13:44:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33036E0C9;
	Thu,  5 Dec 2019 12:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971376E0C9
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 12:44:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 04:44:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="386161775"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 05 Dec 2019 04:44:52 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 18:05:13 +0530
Message-Id: <20191205123513.22603-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: Fix in mmio offset calculation of
 DSB instance
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgdGhlIGN1cnJlbnQgdXNhZ2UgaXMgcmVzdHJpY3RlZCB0byBmaXJzdCBEU0IgaW5zdGFuY2Ug
cGVyIHBpcGUsIHNvCmV4aXN0aW5nIGNvZGUgY291bGQgbm90IGNhdGNoIHRoZSBpc3N1ZSB0byBj
YWxjdWxhdGUgdGhlIG1taW8gb2Zmc2V0Cm9mIGRpZmZlcmVudCBEU0IgaW5zdGFuY2UgcGVyIHBp
cGUuIENvcnJlY3RlZCB0aGUgb2Zmc2V0IGNhbGN1bGF0aW9uLgoKU2lnbmVkLW9mZi1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDFhNjM3NmE5N2Q0OC4u
MGIyNDI1MTNlM2ViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTEyMDc2LDcgKzEyMDc2
LDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAvKiBUaGlzIHJlZ2lzdGVyIGNvbnRyb2xzIHRo
ZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLwogI2RlZmluZSBfRFNCU0xf
SU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAogI2RlZmluZSBEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkJ
KF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAotCQkJCQkgKHBpcGUpICogMHgxMDAwICsgKGlkKSAq
IDEwMCkKKwkJCQkJIChwaXBlKSAqIDB4MTAwMCArIChpZCkgKiAweDEwMCkKICNkZWZpbmUgRFNC
X0hFQUQocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDApCiAj
ZGVmaW5lIERTQl9UQUlMKHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQp
ICsgMHg0KQogI2RlZmluZSBEU0JfQ1RSTChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNF
KHBpcGUsIGlkKSArIDB4OCkKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
