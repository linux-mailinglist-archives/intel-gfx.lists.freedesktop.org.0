Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030583B62A7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 16:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E6A89FD7;
	Mon, 28 Jun 2021 14:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E4A89FD7;
 Mon, 28 Jun 2021 14:46:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="271825197"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="271825197"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 07:46:38 -0700
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="408091008"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.242])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 07:46:37 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 28 Jun 2021 16:46:21 +0200
Message-Id: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/5] drm/i915/gem: Introduce a migrate
 interface
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

V2Ugd2FudCB0byBiZSBhYmxlIHRvIGV4cGxpY2l0bHkgbWlncmF0ZSBvYmplY3RzIGJldHdlZW4g
Z2VtIG1lbW9yeQpyZWdpb25zLCBpbml0aWFsbHkgZm9yIGRpc3BsYXkgYW5kIGRtYS1idWYsIGJ1
dCB0aGVyZSBtaWdodCBiZSBtb3JlCnVzZS1jYXNlcyBjb21pbmcgdXAuCgpJbnRyb2R1Y2UgYSBn
ZW0gbWlncmF0ZSBpbnRlcmZhY2UsIGFkZCBhIHNlbGZ0ZXN0IGFuZCB1c2UgaXQgZm9yCmRpc3Bs
YXkgZmIgcGlubmluZyBhbmQgZG1hLWJ1ZiBtYXBwaW5nLgoKVGhpcyBzZXJpZXMgc2hvdWxkIG1h
a2UgYWNjZWxlcmF0ZWQgZGVza3RvcCB3b3JrIG9uIERHMSB3aXRoIERHMS1lbmFibGVkCk9wZW5H
TC4KCnYyOgotIEFkZHJlc3MgcmV2aWV3IGNvbW1lbnRzIGJ5IE1hdHRoZXcgQXVsZCBvbiBwYXRj
aCAxLzUuIE1vcmUgZGV0YWlscyBvbgogIHRoZSBwYXRjaCBjb21taXQgbWVzc2FnZS4KLSBBZGRy
ZXNzIGEgZG1hLWJ1ZiBsb2NraW5nIGlzc3VlIHBvaW50ZWQgb3V0IGJ5IE1pY2hhZWwgUnVobCwg
YW5kCiAgYWRkIGEgc2VsZnRlc3QgdG8gY2F0Y2ggdGhhdCBpc3N1ZSBtb3ZpbmcgZm9yd2FyZC4K
LSBSZWJhc2UgdGhlIGRtYS1idWYgbWlncmF0aW9uIHBhdGNoIG9uIHRoZSBhYm92ZS1tZW50aW9u
ZWQgZml4LgoKdjM6Ci0gRml4IGk5MTVfZ2VtX29iamVjdF9jYW5fbWlncmF0ZSgpIHRvIHJldHVy
biB0cnVlIGlmIG9iamVjdCBpcyBhbHJlYWR5IGluCiAgdGhlIGNvcnJlY3QgcmVnaW9uLCBldmVu
IGlmIHRoZSBvYmplY3Qgb3BzIGRvZXNuJ3QgaGF2ZSBhIG1pZ3JhdGUoKQogIGNhbGxiYWNrLgot
IFVwZGF0ZSB0eXBvIGluIGNvbW1pdCBtZXNzYWdlLgoKTWF0dGhldyBBdWxkICgxKToKICBkcm0v
aTkxNS9nZW06IEludHJvZHVjZSBhIHNlbGZ0ZXN0IGZvciB0aGUgZ2VtIG9iamVjdCBtaWdyYXRl
CiAgICBmdW5jdGlvbmFsaXR5CgpUaG9tYXMgSGVsbHN0csO2bSAoNCk6CiAgZHJtL2k5MTUvZ2Vt
OiBJbXBsZW1lbnQgb2JqZWN0IG1pZ3JhdGlvbgogIGRybS9pOTE1L2Rpc3BsYXk6IE1pZ3JhdGUg
b2JqZWN0cyB0byBMTUVNIGlmIHBvc3NpYmxlIGZvciBkaXNwbGF5CiAgZHJtL2k5MTUvZ2VtOiBG
aXggc2FtZS1kcml2ZXItYW5vdGhlci1pbnN0YW5jZSBkbWEtYnVmIGV4cG9ydAogIGRybS9pOTE1
L2dlbTogTWlncmF0ZSB0byBzeXN0ZW0gYXQgZG1hLWJ1ZiBtYXAgdGltZQoKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgNSArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgIDM2ICsrLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jICAgICAgfCAgMjEgLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICA5NyArKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAgMTIgKy0KIC4uLi9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oICB8ICAgOSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgICAgfCAgNjkgKysrLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgICAgICB8ICAxOSArKwogLi4uL2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgIDgzICsrKysrLQogLi4uL2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0ZS5jIHwgMjM3ICsrKysrKysrKysrKysr
KysrKwogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggIHwgICAx
ICsKIDEyIGZpbGVzIGNoYW5nZWQsIDU0NiBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX21pZ3JhdGUuYwoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
