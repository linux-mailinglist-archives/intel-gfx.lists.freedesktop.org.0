Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EBDAB6FA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 13:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AD86E249;
	Fri,  6 Sep 2019 11:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0214C6E249
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 11:16:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 04:16:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="334863592"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 06 Sep 2019 04:16:22 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 14:14:13 +0300
Message-Id: <20190906111413.7738-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v1] drm/i915: List modes,
 regardless of encoder presence
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
Cc: martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2VydGFpbiBzaXR1YXRpb25zIGVuY29kZXIgbWlnaHQgYmUgbm90IHByZXNlbnQgZm9yIGNv
bm5lY3RvciwKaG93ZXZlciBtaWdodCBiZSB1c2VmdWwgdG8gZGlzcGxhdCBwcm9iZWQgbW9kZXMg
Zm9yIHRoZSBjb25uZWN0b3IsCmlmIGFueS4KClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNv
dnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
CmluZGV4IDk3OThmMjdhNjk3YS4uOGZhMDUxMGU4OTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYwpAQCAtMjU3NCw2ICsyNTc0LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2Nvbm5l
Y3Rvcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJICAgZHJtX2dldF9zdWJwaXhlbF9vcmRl
cl9uYW1lKGNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLnN1YnBpeGVsX29yZGVyKSk7CiAJc2VxX3By
aW50ZihtLCAiXHRDRUEgcmV2OiAlZFxuIiwgY29ubmVjdG9yLT5kaXNwbGF5X2luZm8uY2VhX3Jl
dik7CiAKKwlzZXFfcHJpbnRmKG0sICJcdG1vZGVzOlxuIik7CisJbGlzdF9mb3JfZWFjaF9lbnRy
eShtb2RlLCAmY29ubmVjdG9yLT5tb2RlcywgaGVhZCkKKwkJaW50ZWxfc2VxX3ByaW50X21vZGUo
bSwgMiwgbW9kZSk7CisKIAlpZiAoIWludGVsX2VuY29kZXIpCiAJCXJldHVybjsKIApAQCAtMjU5
NywxMCArMjYwMSw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2Nvbm5lY3Rvcl9pbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwKIAlkZWZhdWx0OgogCQlicmVhazsKIAl9Ci0KLQlzZXFfcHJpbnRmKG0sICJc
dG1vZGVzOlxuIik7Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeShtb2RlLCAmY29ubmVjdG9yLT5tb2Rl
cywgaGVhZCkKLQkJaW50ZWxfc2VxX3ByaW50X21vZGUobSwgMiwgbW9kZSk7CiB9CiAKIHN0YXRp
YyBjb25zdCBjaGFyICpwbGFuZV90eXBlKGVudW0gZHJtX3BsYW5lX3R5cGUgdHlwZSkKLS0gCjIu
MTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
