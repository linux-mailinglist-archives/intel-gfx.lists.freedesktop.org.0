Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F8525C1B0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 15:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9656E9F3;
	Thu,  3 Sep 2020 13:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651586E9F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 13:33:49 +0000 (UTC)
IronPort-SDR: i1cXJs+I1kgzx/NviBdJ/Z+J0OXSUqJxr7IgFIux2YUnsw2yqDLXM0DU9q5JTGRnETW9Cd0fR/
 teLPttm+nVcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="137623260"
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="137623260"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 06:33:48 -0700
IronPort-SDR: krc95ZO5vYmBZOVzAo065tZ0SM7ngFzyi9QTJo7Lgs2OAFmiWozsXdDe+kcbwQPj4kG+Nd0GJW
 k1JjhZWRDnZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="302209874"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 03 Sep 2020 06:33:47 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 9513E840553; Thu,  3 Sep 2020 16:31:46 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Sep 2020 16:31:44 +0300
Message-Id: <20200903133144.740-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Unlock the shared hwsp_gtt object
 after pinning
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKVGhl
IGh3c3BfZ3R0IG9iamVjdCBpcyB1c2VkIGZvciBzdWItYWxsb2NhdGlvbiBhbmQgY291bGQgdGhl
cmVmb3JlCmJlIHNoYXJlZCBieSBtYW55IGNvbnRleHRzIGNhdXNpbmcgdW5uZWNlc3NhcnkgY29u
dGVudGlvbiBkdXJpbmcKY29uY3VycmVudCBjb250ZXh0IHBpbm5pbmcuCkhvd2V2ZXIgc2luY2Ug
d2UncmUgY3VycmVudGx5IGxvY2tpbmcgaXQgb25seSBmb3IgcGlubmluZywgaXQgcmVtYWlucwpy
ZXNpZGVudCB1bnRpbCB3ZSB1bnBpbiBpdCwgYW5kIHRoZXJlZm9yZSBpdCdzIHNhZmUgdG8gZHJv
cCB0aGUKbG9jayBlYXJseSwgYWxsb3dpbmcgZm9yIGNvbmN1cnJlbnQgdGhyZWFkIGFjY2Vzcy4K
ClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgfCA3ICsr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0LmMKaW5kZXggNjFiMDVjZDRjNDdhLi42NWU5NTZiYTE5ZTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKQEAgLTI3MSw2ICsyNzEsMTMg
QEAgaW50IF9faW50ZWxfY29udGV4dF9kb19waW5fd3coc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LAogCWk5MTVfYWN0aXZlX3JlbGVhc2UoJmNlLT5hY3RpdmUpOwogZXJyX2N0eF91bnBpbjoKIAlp
bnRlbF9jb250ZXh0X3Bvc3RfdW5waW4oY2UpOworCisJLyoKKwkgKiBVbmxvY2sgdGhlIGh3c3Bf
Z2d0dCBvYmplY3Qgc2luY2UgaXQncyBzaGFyZWQuIFRoaXMgaXMgZmluZSBmb3Igbm93CisJICog
c2luY2UgdGhlIGxvY2sgaGFzIGJlZW4gdXNlZCBmb3IgcGlubmluZyBvbmx5LCBub3QgZmVuY2lu
Zy4KKwkgKi8KKwlpOTE1X2dlbV93d191bmxvY2tfc2luZ2xlKGNlLT50aW1lbGluZS0+aHdzcF9n
Z3R0LT5vYmopOworCiAJcmV0dXJuIGVycjsKIH0KIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
