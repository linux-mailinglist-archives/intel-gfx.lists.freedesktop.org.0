Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1863B005C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 11:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A326E462;
	Tue, 22 Jun 2021 09:34:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455EC6E463;
 Tue, 22 Jun 2021 09:34:36 +0000 (UTC)
IronPort-SDR: 9DliDrBPyf2bVMpbHYauBh/H7DMiuEJToTuM0Fvm1sJJDt6fFlD3YZU22kJmCTgk/ptTEUDJ4s
 g/d6uzdpTYdw==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194159543"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="194159543"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 02:34:30 -0700
IronPort-SDR: KeqS7mHu9PNmf/r2dmT4j3QomvlEKAHoCGg01W5Igm1rhZ+dkuMzvrWXZ9uhJE6OBJKCu6OHr+
 mDOrsXxRVvFA==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="623409974"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.95])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 02:34:27 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 22 Jun 2021 11:34:15 +0200
Message-Id: <20210622093418.153400-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/3] drm/i915: Move system memory to TTM for
 discrete
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFybHkgaW1wbGVtZW50YXRpb24gb2YgbW92aW5nIHN5c3RlbSBtZW1vcnkgZm9yIGRpc2NyZXRl
IGNhcmRzIG92ZXIgdG8KVFRNLiBXZSBmaXJzdCBhZGQgdGhlIG5vdGlvbiBvZiBvYmplY3RzIGJl
aW5nIG1pZ3JhdGFibGUgdW5kZXIgdGhlIG9iamVjdApsb2NrIHRvIGk5MTUgZ2VtLCBhbmQgYWRk
IHNvbWUgYXNzZXJ0cyB0byB2ZXJpZnkgdGhhdCBvYmplY3RzIGFyZSBlaXRoZXIKbG9ja2VkIG9y
IHBpbm5lZCB3aGVuIHRoZSBwbGFjZW1lbnQgaXMgY2hlY2tlZCBieSB0aGUgZ2VtIGNvZGUuCgpQ
YXRjaCAyIGRlYWxzIHdpdGggdXBkYXRpbmcgdGhlIGk5MTUgZ2VtIGJvb2trZWVwaW5nIGFmdGVy
IGEgVFRNIG1vdmUsClBhdGNoIDMgbW92ZXMgc3lzdGVtIG92ZXIgZnJvbSBzaG1lbSB0byBUVE0g
Zm9yIGRpc2NyZXRlCgpOb3RlIHRoYXQgdGhlIG1vY2sgZGV2aWNlIGRvZXNuJ3QgY29uc2lkZXIg
aXRzZWxmIGRpc2NyZXRlIHNvIHRoZSBUVE0Kc3lzdGVtIHBhdGggaXMgbm90IGNoZWNrZWQgYnkg
dGhlIG1vY2sgc2VsZnRlc3RzLgoKdjI6Ci0gU3R5bGUgZml4ZXMgKHJlcG9ydGVkIGJ5IE1hdHRo
ZXcgQXVsZCkKLSBEcm9wIHRoZSBsYXN0IHBhdGNoIChtaWdyYXRpb24pIEl0IG5lZWRzIHNlbGZ0
ZXN0cyBhbmQgc29tZSBhZGRpdGlvbmFsIHdvcmsuCi0gVW5jb25kaXRpb25hbGx5IGFkZCBWTV9J
TyBhdCBtbWFwIHRpbWUuCgp2MzoKLSBNb3JlIHN0eWxlIGZpeGVzIChyZXBvcnRlZCBieSBNYXR0
aGV3IEF1bGQpCi0gRG9uJ3Qgb3ZlcmZpbGwgdGhlIGJ1c3kgcGxhY2VtZW50IHZlY3RvciAocmVw
b3J0ZWQgYnkgTWF0dGhldyBBdWxkKQoKdjQ6Ci0gUmVtb3ZlIGNvbmZ1c2lvbiBhcm91bmQgc2hy
aW5rYWJsZSBvYmplY3RzIChyZXBvcnRlZCBieSBNYXR0aGV3IEF1bGQpCgp2NToKLSBSZW1vdmUg
Y29uZnVzaW9uIGFyb3VuZCBzaHJpbmthYmxlIG9iamVjdHMgYWdhaW4sIGJ1dCB0aGlzIHRpbWUg
aW4gdGhlCiAgY29ycmVjdCBwYXRjaC4gKHJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkKCnY2Ogot
IE9uZSBwYXRjaCBhbHJlYWR5IGNvbW1pdHRlZC4KLSBJbnRyb2R1Y2UgYSBfX2k5MTVfZ2VtX29i
amVjdF9pc19sbWVtKCkgdG8gYmUgdXNlZCBpbiBzaXR1YXRpb25zIHdoZXJlIHdlCiAga25vdyB0
aGF0IGEgZmVuY2UgdGhhdCBjYW4ndCBjdXJyZW50bHkgc2lnbmFsIGtlZXBzIHRoZSBvYmplY3Qg
ZnJvbSBiZWluZwogIG1pZ3JhdGVkIG9yIGV2aWN0ZWQuCi0gUmViYXNlIG9uIGFjY2VsZXJhdGVk
IFRUTSBtb3ZlcwotIEZpeCBUT0RPOnMgZm9yIHN1cHBvcnRpbmcgc3lzdGVtIG1lbW9yeSB3aXRo
IFRUTS4KLSBVcGRhdGUgdGhlIG9iamVjdCBHRU0gcmVnaW9uIGFmdGVyIGEgVFRNIG1vdmUgaWYg
Y29tcGF0aWJsZS4KLSBNb3ZlIGEgY291cGxlIG9mIHdhcm5pbmdzIGZvciBzaG1lbSBvbiBER0ZY
LgoKdjc6Ci0gSnVzdCB1cGRhdGVkIGEgY29tbWl0IG1lc3NhZ2Ugd2l0aCB2ZXJzaW9uIGhpc3Rv
cnkgdW5kZXIgZGFzaGVzLgoKVGhvbWFzIEhlbGxzdHLDtm0gKDMpOgogIGRybS9pOTE1OiBVcGRh
dGUgb2JqZWN0IHBsYWNlbWVudCBmbGFncyB0byBiZSBtdXRhYmxlCiAgZHJtL2k5MTUvdHRtOiBB
ZGp1c3QgZ2VtIGZsYWdzIGFuZCBjYWNoaW5nIHNldHRpbmdzIGFmdGVyIGEgbW92ZQogIGRybS9p
OTE1L3R0bTogVXNlIFRUTSBmb3Igc3lzdGVtIG1lbW9yeQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2xtZW0uYyAgICAgIHwgIDIyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbG1lbS5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYyAgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgMzggKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5oICAgIHwgIDE0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wYWdlcy5jICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BoeXMuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc2htZW0uYyAgICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90dG0uYyAgICAgICB8IDE5NCArKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMgIHwgICA0ICstCiAuLi4vZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAgIDUgKy0KIC4uLi9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvaTkxNV9nZW1fcGh5cy5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDMgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9ncHVfZXJyb3IuYyAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9tZW1vcnlfcmVnaW9uLmMgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX21lbW9yeV9yZWdpb24uaCAgICB8ICAgOCArCiAyMCBmaWxlcyBjaGFuZ2VkLCAyNjUgaW5z
ZXJ0aW9ucygrKSwgOTUgZGVsZXRpb25zKC0pCgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
