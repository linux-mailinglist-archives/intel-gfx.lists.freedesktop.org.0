Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2023A5F78
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 11:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7D289C99;
	Mon, 14 Jun 2021 09:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D902389C55;
 Mon, 14 Jun 2021 09:53:04 +0000 (UTC)
IronPort-SDR: IS+TiL3hjBjBLFCg2wWkqee9a2Ti5llkcSpWZ5vA6kU5UXsxzM1eDchLV7PLtQk911EMk0ANVc
 HSVfgsMIaDlw==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="269634161"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="269634161"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:53:03 -0700
IronPort-SDR: cMTcrJ7PhDQoqL9s69yTagqVe+S21RTeS2N/D1v9BlM6vzrYd+TcvgjpEImt2BjNGWYllolgC0
 TgCH7gC8go8A==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="449838968"
Received: from janlundk-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.32])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:53:02 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 14 Jun 2021 11:52:26 +0200
Message-Id: <20210614095230.126284-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/4] drm/i915: Move system memory to TTM for
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
ciAocmVwb3J0ZWQgYnkgTWF0dGV3IEF1bGQpCgpUaG9tYXMgSGVsbHN0csO2bSAoNCk6CiAgZHJt
L2k5MTU6IFVwZGF0ZSBvYmplY3QgcGxhY2VtZW50IGZsYWdzIHRvIGJlIG11dGFibGUKICBkcm0v
aTkxNS90dG06IEFkanVzdCBnZW0gZmxhZ3MgYW5kIGNhY2hpbmcgc2V0dGluZ3MgYWZ0ZXIgYSBt
b3ZlCiAgZHJtL2k5MTUvdHRtOiBDYWxjdWxhdGUgdGhlIG9iamVjdCBwbGFjZW1lbnQgYXQgZ2V0
X3BhZ2VzIHRpbWUKICBkcm0vaTkxNS90dG06IFVzZSBUVE0gZm9yIHN5c3RlbSBtZW1vcnkKCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1faW50ZXJuYWwuYyAgfCAgIDQgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgICAgICB8ICAxMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDM4ICsrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgIDE0ICstCiAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMjAgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICB8ICAgMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAgICAgIHwgICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyAgICAgfCAgMTAgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8IDIyNSArKysrKysrKysrKysr
Ky0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgICB8ICAg
NCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMgIHwgICA0
ICstCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAgIDUg
Ky0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8ICAgNCAr
LQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fcGh5cy5jICAgIHwgICAzICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDMgLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICAgIHwgICA3ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggICAgfCAgIDggKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5jICAgICAgIHwgICA4ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmggICAgICAgfCAgIDIgKwogMTkgZmls
ZXMgY2hhbmdlZCwgMjc5IGluc2VydGlvbnMoKyksIDk2IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
