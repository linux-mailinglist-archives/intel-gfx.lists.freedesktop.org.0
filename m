Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EB43889B7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 10:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DD76ECEC;
	Wed, 19 May 2021 08:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3686ECE8;
 Wed, 19 May 2021 08:49:48 +0000 (UTC)
IronPort-SDR: 02m4kXmbJFW8i6Na++34LZgcNR6X4PCr396g2rKxXYJSt/uJPdHb7dM70Mno4uVvA6n7M/WRo9
 KQ3jZuFE7/PA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264842315"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="264842315"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 01:49:47 -0700
IronPort-SDR: A3ZuhPoIvJIIdAoaTqts9TxeYrNEf8KE5EMeiILZ3gJCoV+i9djmJYQoUZoL+LRZoPm1PmY9Iq
 JTjcnVdLXZpg==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="473401082"
Received: from akrolak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.74])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 01:49:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dim-tools@lists.freedesktop.org
Date: Wed, 19 May 2021 11:49:32 +0300
Message-Id: <20210519084932.8666-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [drm-rerere PATCH] nightly.conf: drop amd branches from
 drm-tip
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
	intel-gfx@lists.freedesktop.org, Xinhui <Xinhui.Pan@amd.com>,
	dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Pan@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UndmUgaGFkIGEgc3RhbGUgcmVwbyBmb3IgYW1kIGluIGRybS10aXAgc2luY2UgYXJvdW5kIHY0
LjE1IGkuZS4gZm9yCm1vcmUgdGhhbiB0aHJlZSB5ZWFycy4gTm9ib2R5IHNlZW1zIHRvIG5vdGlj
ZSBvciBjYXJlLiBEcm9wIHRoZSBhbWQKYnJhbmNoZXMgZnJvbSBkcm0tdGlwLgoKSGF2aW5nIHRo
ZSBjdXJyZW50IGFtZCBicmFuY2hlcyBpbiBkcm0tdGlwIHdvdWxkIGJlIG5pY2UgdG8gaGF2ZSwg
aWYKb25seSB0byBoYXZlIGEgY29tbW9uIGRybSBpbnRlZ3JhdGlvbiB0cmVlLiBIb3dldmVyLCBt
YWludGFpbmluZyB0aGF0CmhhcyBhIGNvc3QgZHVlIHRvIHRoZSBpbmV2aXRhYmxlIGNvbmZsaWN0
cy4gV2UgY2FuIGFkZCB0aGUgYnJhbmNoZXMgYmFjawppZiBhbmQgd2hlbiB0aGVyZSdzIGludGVy
ZXN0IGluIHNoYXJpbmcgdGhlIGJ1cmRlbi4KCkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+CkNjOiBQYW4sIFhpbmh1aSA8WGluaHVpLlBhbkBhbWQuY29tPgpDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBuaWdodGx5LmNvbmYgfCA5IC0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmlnaHRseS5jb25m
IGIvbmlnaHRseS5jb25mCmluZGV4IDkyMTE1NTBlZjc1Yy4uMzVmYjFkOWJhNjAwIDEwMDY0NAot
LS0gYS9uaWdodGx5LmNvbmYKKysrIGIvbmlnaHRseS5jb25mCkBAIC00MCwxMiArNDAsNiBAQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0tbWlzYwogaHR0cHM6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9naXQvZHJtL2RybS1taXNjCiBodHRwczovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dpdC9kcm0vZHJtLW1pc2MuZ2l0CiAiCi1kcm1fdGlwX3JlcG9zW2RybS1hbWRdPSIK
LXNzaDovL2dpdC5mcmVlZGVza3RvcC5vcmcvZ2l0L2RybS9kcm0tYW1kCi1naXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWFtZAotaHR0cHM6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9naXQvZHJtL2RybS1hbWQKLWh0dHBzOi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2l0
L2RybS9kcm0tYW1kLmdpdAotIgogZHJtX3RpcF9yZXBvc1tkcm1dPSIKIHNzaDovL2dpdC5mcmVl
ZGVza3RvcC5vcmcvZ2l0L2RybS9kcm0KIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9kcm0KQEAgLTc2LDE3ICs3MCwxNCBAQCBkcm1fdGlwX2NvbmZpZz0oCiAJImRybQkJCWRybS1m
aXhlcyIKIAkiZHJtLW1pc2MJCWRybS1taXNjLWZpeGVzIgogCSJkcm0taW50ZWwJCWRybS1pbnRl
bC1maXhlcyIKLQkiZHJtLWFtZAkJZHJtLWFtZC1maXhlcyIKIAogCSJkcm0JCQlkcm0tbmV4dCIK
IAkiZHJtLW1pc2MJCWRybS1taXNjLW5leHQtZml4ZXMiCiAJImRybS1pbnRlbAkJZHJtLWludGVs
LW5leHQtZml4ZXMiCi0JImRybS1hbWQJCWRybS1hbWQtbmV4dC1maXhlcyIKIAogCSJkcm0tbWlz
YwkJZHJtLW1pc2MtbmV4dCIKIAkiZHJtLWludGVsCQlkcm0taW50ZWwtbmV4dCIKIAkiZHJtLWlu
dGVsCQlkcm0taW50ZWwtZ3QtbmV4dCIKLQkiZHJtLWFtZAkJZHJtLWFtZC1uZXh0IgogCiAJInNv
dW5kLXVwc3RyZWFtCQlmb3ItbGludXMiCiAJInNvdW5kLXVwc3RyZWFtCQlmb3ItbmV4dCIKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
