Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 278846314A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 08:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81959895B5;
	Tue,  9 Jul 2019 06:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E091895B5;
 Tue,  9 Jul 2019 06:58:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:58:15 -0700
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="159369367"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:58:13 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Date: Tue,  9 Jul 2019 08:58:00 +0200
Message-Id: <20190709065800.2354-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix reporting of size of created GEM
 object
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IGUxNjM0ODRhZmE4ZCAoImRybS9pOTE1OiBVcGRhdGUgc2l6ZSB1cG9uIHJldHVybiBm
cm9tCkdFTV9DUkVBVEUiKSAocmUpaW50cm9kdWNlZCByZXBvcnRpbmcgb2YgYWN0dWFsIHNpemUg
b2YgY3JlYXRlZCBHRU0Kb2JqZWN0cywgcG9zc2libHkgcm91bmRlZCB1cCBvbiBvYmplY3QgYWxp
Z25tZW50LiAgVW5mb3J0dW5hdGVseSwgaXRzCmltcGxlbWVudGF0aW9uIHJlc3VsdGVkIGluIGEg
cG9zc2libGUgdXNlLWFmdGVyLWZyZWUgYnVnLiAgVGhlIGJ1ZyBoYXMKYmVlbiBmaXhlZCBieSBj
b21taXQgOTI5ZWVjOTlmNWZkICgiZHJtL2k5MTU6IEF2b2lkIHVzZS1hZnRlci1mcmVlIGluCnJl
cG9ydGluZyBjcmVhdGUuc2l6ZSIpIGF0IHRoZSBjb3N0IG9mIHBvc3NpYmx5IGluY29ycmVjdCB2
YWx1ZSBiZWluZwpyZXBvcnRlZCBhcyBhY3R1YWwgb2JqZWN0IHNpemUuCgpTYWZlbHkgcmVzdG9y
ZSBjb3JyZWN0IHJlcG9ydGluZyBieSBjYXB0dXJpbmcgYWN0dWFsIHNpemUgb2YgY3JlYXRlZApH
RU0gb2JqZWN0IGJlZm9yZSBhIHJlZmVyZW5jZSB0byB0aGUgb2JqZWN0IGlzIHB1dC4KCkZpeGVz
OiA5MjllZWM5OWY1ZmQgKCJkcm0vaTkxNTogQXZvaWQgdXNlLWFmdGVyLWZyZWUgaW4gcmVwb3J0
aW5nIGNyZWF0ZS5zaXplIikKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51
c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jCmluZGV4IDdhZGU0MmI4ZWM5OS4uMTZiYWU1ODcwZDZmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTE3MSw2ICsxNzEsNyBAQCBpOTE1X2dlbV9jcmVhdGUoc3Ry
dWN0IGRybV9maWxlICpmaWxlLAogCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0o
ZGV2X3ByaXYsIHNpemUpOwogCWlmIChJU19FUlIob2JqKSkKIAkJcmV0dXJuIFBUUl9FUlIob2Jq
KTsKKwlzaXplID0gb2JqLT5iYXNlLnNpemU7CiAKIAlyZXQgPSBkcm1fZ2VtX2hhbmRsZV9jcmVh
dGUoZmlsZSwgJm9iai0+YmFzZSwgJmhhbmRsZSk7CiAJLyogZHJvcCByZWZlcmVuY2UgZnJvbSBh
bGxvY2F0ZSAtIGhhbmRsZSBob2xkcyBpdCBub3cgKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
