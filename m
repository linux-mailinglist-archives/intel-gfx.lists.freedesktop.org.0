Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0373AF63C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 21:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92EDC6E400;
	Mon, 21 Jun 2021 19:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCFC6E3F9;
 Mon, 21 Jun 2021 19:37:01 +0000 (UTC)
IronPort-SDR: 8SrZfsjAGx0QU+2PtFD7MwJpqrDF+l9sR3hsQyhYDGTQ0fYDXGkeHfTl5iUQAv+I/wjLknlvQ4
 f06OE5RgrmeA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="292548367"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="292548367"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 12:37:00 -0700
IronPort-SDR: YZzy1rBylVz0mvgSMLv6qQDxe6JVwbABPVYQCm+q8uogsE+U629luKJQX0x9VmktjwRmtgc9gJ
 SL8BTq6F7+Gw==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="489989521"
Received: from gperry-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.94])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 12:36:59 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 21 Jun 2021 21:36:41 +0200
Message-Id: <20210621193644.105627-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/3] drm/i915: Move system memory to TTM for
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
LgoKVGhvbWFzIEhlbGxzdHLDtm0gKDMpOgogIGRybS9pOTE1OiBVcGRhdGUgb2JqZWN0IHBsYWNl
bWVudCBmbGFncyB0byBiZSBtdXRhYmxlCiAgZHJtL2k5MTUvdHRtOiBBZGp1c3QgZ2VtIGZsYWdz
IGFuZCBjYWNoaW5nIHNldHRpbmdzIGFmdGVyIGEgbW92ZQogIGRybS9pOTE1L3R0bTogVXNlIFRU
TSBmb3Igc3lzdGVtIG1lbW9yeQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9p
bnRlcm5hbC5jICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xt
ZW0uYyAgICAgIHwgIDIyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1l
bS5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YyAgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMgICAgfCAgMzggKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oICAgIHwgIDE0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlw
ZXMuaCAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5j
ICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAg
ICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyAg
ICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAg
ICB8IDE5NCArKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV91c2VycHRyLmMgICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVn
ZV9nZW1fb2JqZWN0LmMgIHwgICA0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aHVnZV9wYWdlcy5jICAgfCAgIDUgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYyAgICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fcGh5cy5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAg
ICAgICAgICAgICAgfCAgIDMgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3Iu
YyAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVn
aW9uLmMgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdp
b24uaCAgICB8ICAgOCArCiAyMCBmaWxlcyBjaGFuZ2VkLCAyNjUgaW5zZXJ0aW9ucygrKSwgOTUg
ZGVsZXRpb25zKC0pCgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
