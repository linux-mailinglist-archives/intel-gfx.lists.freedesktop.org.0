Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF0F3A6D5A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 19:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAAB089D8E;
	Mon, 14 Jun 2021 17:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6132889C16;
 Mon, 14 Jun 2021 17:43:23 +0000 (UTC)
IronPort-SDR: yyqCinerunoCvJrLx2ojfRn2+Vrt8CANY4SynSq9enrWXUDObvJmAWH4VFS/vPGzrYcryCmFZp
 QLiuJUh6i/kQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="204020410"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="204020410"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:43:23 -0700
IronPort-SDR: ITSNqzLqSPKK06ReJ4VqV/+f0WTbiv+vVfhqSQ5AYzWq1ruE3mfU+MQmzuKKCWJfcAqybee++6
 nTW4T6JV3Peg==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="451666841"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.50])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:42:59 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 14 Jun 2021 19:42:42 +0200
Message-Id: <20210614174246.403854-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/4] drm/i915: Move system memory to TTM for
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
YXRjaCAyIGFuZCAzIGRlYWxzIHdpdGggdXBkYXRpbmcgdGhlIGk5MTUgZ2VtIGJvb2trZWVwaW5n
IGFmdGVyIGEgVFRNIG1vdmUsClBhdGNoIDQgbW92ZXMgc3lzdGVtIG92ZXIgZnJvbSBzaG1lbSB0
byBUVE0gZm9yIGRpc2NyZXRlCgpOb3RlIHRoYXQgdGhlIG1vY2sgZGV2aWNlIGRvZXNuJ3QgY29u
c2lkZXIgaXRzZWxmIGRpc2NyZXRlIHNvIHRoZSBUVE0Kc3lzdGVtIHBhdGggaXMgbm90IGNoZWNr
ZWQgYnkgdGhlIG1vY2sgc2VsZnRlc3RzLgoKdjI6Ci0gU3R5bGUgZml4ZXMgKHJlcG9ydGVkIGJ5
IE1hdHRoZXcgQXVsZCkKLSBEcm9wIHRoZSBsYXN0IHBhdGNoIChtaWdyYXRpb24pIEl0IG5lZWRz
IHNlbGZ0ZXN0cyBhbmQgc29tZSBhZGRpdGlvbmFsIHdvcmsuCi0gVW5jb25kaXRpb25hbGx5IGFk
ZCBWTV9JTyBhdCBtbWFwIHRpbWUuCgp2MzoKLSBNb3JlIHN0eWxlIGZpeGVzIChyZXBvcnRlZCBi
eSBNYXR0aGV3IEF1bGQpCi0gRG9uJ3Qgb3ZlcmZpbGwgdGhlIGJ1c3kgcGxhY2VtZW50IHZlY3Rv
ciAocmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQoKdjQ6Ci0gUmVtb3ZlIGNvbmZ1c2lvbiBhcm91
bmQgc2hyaW5rYWJsZSBvYmplY3RzIChyZXBvcnRlZCBieSBNYXR0aGV3IEF1bGQpCgp2NToKLSBS
ZW1vdmUgY29uZnVzaW9uIGFyb3VuZCBzaHJpbmthYmxlIG9iamVjdHMgYWdhaW4sIGJ1dCB0aGlz
IHRpbWUgaW4gdGhlCiAgY29ycmVjdCBwYXRjaC4gKHJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkK
ClRob21hcyBIZWxsc3Ryw7ZtICg0KToKICBkcm0vaTkxNTogVXBkYXRlIG9iamVjdCBwbGFjZW1l
bnQgZmxhZ3MgdG8gYmUgbXV0YWJsZQogIGRybS9pOTE1L3R0bTogQWRqdXN0IGdlbSBmbGFncyBh
bmQgY2FjaGluZyBzZXR0aW5ncyBhZnRlciBhIG1vdmUKICBkcm0vaTkxNS90dG06IENhbGN1bGF0
ZSB0aGUgb2JqZWN0IHBsYWNlbWVudCBhdCBnZXRfcGFnZXMgdGltZQogIGRybS9pOTE1L3R0bTog
VXNlIFRUTSBmb3Igc3lzdGVtIG1lbW9yeQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9pbnRlcm5hbC5jICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX21tYW4uYyAgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmMgICAgfCAgMzggKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmggICAgfCAgMTQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdF90eXBlcy5oICB8ICAyMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BhZ2VzLmMgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cGh5cy5jICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9z
aG1lbS5jICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0
bS5jICAgICAgIHwgMjI0ICsrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyAgIHwgICA0ICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9odWdlX2dlbV9vYmplY3QuYyAgfCAgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICAgNSArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgICA0ICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9waHlzLmMgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgICB8ICAgMyAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmMgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uaCAgICB8ICAgOCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdp
b25fdHRtLmMgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl90dG0uaCAgICAgICB8ICAgMiArCiAxOSBmaWxlcyBjaGFuZ2VkLCAyNzggaW5zZXJ0aW9ucygr
KSwgOTYgZGVsZXRpb25zKC0pCgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
