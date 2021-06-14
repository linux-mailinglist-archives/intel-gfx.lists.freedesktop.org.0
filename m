Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B6B3A6610
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 13:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B07D89CB5;
	Mon, 14 Jun 2021 11:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF85C899B5;
 Mon, 14 Jun 2021 11:54:16 +0000 (UTC)
IronPort-SDR: I/ENIHFxuqqn4WtwZVCYN+kz3w387Hh0VpGLvbZwJVaVlcUqqqz0v6kHAk8GXbXOq9lO8wVStj
 wxvgMfqOTdzA==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="185490606"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="185490606"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 04:54:16 -0700
IronPort-SDR: TJQlzI/X8emlIUyaMCWPoCaG/e7uQLF+p9pY5r1vaf2qWPk2PmETP7f4P9OVZfmam0/ni5dQjQ
 5qqD82NB7CxA==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="451570234"
Received: from janlundk-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.32])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 04:54:14 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 14 Jun 2021 13:54:02 +0200
Message-Id: <20210614115406.153107-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] drm/i915: Move system memory to TTM for
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
bmQgc2hyaW5rYWJsZSBvYmplY3RzIChyZXBvcnRlZCBieSBNYXR0aGV3IEF1bGQpCgpUaG9tYXMg
SGVsbHN0csO2bSAoNCk6CiAgZHJtL2k5MTU6IFVwZGF0ZSBvYmplY3QgcGxhY2VtZW50IGZsYWdz
IHRvIGJlIG11dGFibGUKICBkcm0vaTkxNS90dG06IEFkanVzdCBnZW0gZmxhZ3MgYW5kIGNhY2hp
bmcgc2V0dGluZ3MgYWZ0ZXIgYSBtb3ZlCiAgZHJtL2k5MTUvdHRtOiBDYWxjdWxhdGUgdGhlIG9i
amVjdCBwbGFjZW1lbnQgYXQgZ2V0X3BhZ2VzIHRpbWUKICBkcm0vaTkxNS90dG06IFVzZSBUVE0g
Zm9yIHN5c3RlbSBtZW1vcnkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW50
ZXJuYWwuYyAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFu
LmMgICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5jICAgIHwgIDM4ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oICAgIHwgIDE0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlw
ZXMuaCAgfCAgMjAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5j
ICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAg
ICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyAg
ICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAg
ICB8IDIyNCArKysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV91c2VycHRyLmMgICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVn
ZV9nZW1fb2JqZWN0LmMgIHwgICA0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aHVnZV9wYWdlcy5jICAgfCAgIDUgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYyAgICB8ICAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fcGh5cy5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAg
ICAgICAgICAgICAgfCAgIDMgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3Jl
Z2lvbi5jICAgIHwgICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVn
aW9uLmggICAgfCAgIDggKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5j
ICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmgg
ICAgICAgfCAgIDIgKwogMTkgZmlsZXMgY2hhbmdlZCwgMjc4IGluc2VydGlvbnMoKyksIDk2IGRl
bGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
