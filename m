Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A25D3B1BF9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB57C6E8F2;
	Wed, 23 Jun 2021 14:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A0B6E8F1;
 Wed, 23 Jun 2021 14:05:18 +0000 (UTC)
IronPort-SDR: obPXF4AyhV95zSzmX4PuorYi5JtZ1NV7i7au0/rDHVxLJ9wuPUkvMItiM/6UD9DIxsygxS/Ju4
 /EHsKsvRbF/A==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="271112217"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="271112217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:04:20 -0700
IronPort-SDR: U4sItoMd2ZZpN50BzAZSZKwZpvOGHAgVqbcRTJrgggDpJW7/X35SuY+W/B5h4cOStqScjJkNQx
 VevSgzqpfulQ==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="453046058"
Received: from bkuncer-mobl1.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.243])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:04:18 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 23 Jun 2021 16:04:07 +0200
Message-Id: <20210623140410.15869-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 0/3] drm/i915: Move system memory to TTM for
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
cnkgdW5kZXIgZGFzaGVzLgoKdjg6Ci0gUmVpbnN0YXRlIGFsaWdubWVudCBhdCB0dG1fYm9faW5p
dF9yZXNlcnZlZCgpIHRpbWUuIChSZXBvcnRlZCBieQogIE1hdHRoZXcgQXVsZCkuCi0gV2hlbiBj
aGFuZ2luZyByZWdpb25zLCBhbHNvIG1vdmUgdGhlIG9iamVjdCB0byB0aGUgbmV3IHJlZ2lvbiBs
aXN0CiAgYW5kIGJyZWFrIGVhcmx5LiAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKS4KLSBEb24n
dCBmbGFnIHRoZSBvYmplY3QgYXMgY29udGlndW91cyBiYXNlZCBvbiB0aGUgY3VycmVudCByZWdp
b24gbWluCiAgcGFnZXMgc2l6ZS4Kdjk6Ci0gUmVtb3ZlIGEgREdGWCB3YXJuaW5nIGluIF9faTkx
NV9nZW1fb2JqZWN0X3JlbGVhc2Vfc2htZW0gc2luY2UgaXQKICBpcyBjYWxsZWQgZnJvbSB0aGUg
dXNlcnB0ciBjb2RlLgoKVGhvbWFzIEhlbGxzdHLDtm0gKDMpOgogIGRybS9pOTE1OiBVcGRhdGUg
b2JqZWN0IHBsYWNlbWVudCBmbGFncyB0byBiZSBtdXRhYmxlCiAgZHJtL2k5MTUvdHRtOiBBZGp1
c3QgZ2VtIGZsYWdzIGFuZCBjYWNoaW5nIHNldHRpbmdzIGFmdGVyIGEgbW92ZQogIGRybS9pOTE1
L3R0bTogVXNlIFRUTSBmb3Igc3lzdGVtIG1lbW9yeQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9pbnRlcm5hbC5jICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2xtZW0uYyAgICAgIHwgIDIyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbG1lbS5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYyAgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmMgICAgfCAgMzggKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5oICAgIHwgIDE0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfdHlwZXMuaCAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wYWdlcy5jICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BoeXMuYyAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcmVnaW9uLmMgICAgfCAgIDQgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3NobWVtLmMgICAgIHwgICA5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtLmMgICAgICAgfCAxOTYgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jICAgfCAgIDQgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2h1Z2VfZ2VtX29iamVjdC5jICB8ICAgNCArLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyAgIHwgICA1ICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9tbWFuLmMgICAgfCAgIDQgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX3BoeXMuYyAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCAgICAgICAgICAgICAgIHwgICAzIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z3B1X2Vycm9yLmMgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5jICAgIHwgICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmggICAgfCAgIDggKwogMjEgZmlsZXMgY2hhbmdlZCwgMjY2IGluc2VydGlv
bnMoKyksIDk5IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
