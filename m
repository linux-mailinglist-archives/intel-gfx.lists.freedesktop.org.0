Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F0E3B74F4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 17:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7029A6E8A8;
	Tue, 29 Jun 2021 15:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6207C6E898;
 Tue, 29 Jun 2021 15:12:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195318909"
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="195318909"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 08:12:26 -0700
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="408203383"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 08:12:25 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 29 Jun 2021 17:12:00 +0200
Message-Id: <20210629151203.209465-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/3] drm/i915/gem: Introduce a migrate
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
IFVwZGF0ZSB0eXBvIGluIGNvbW1pdCBtZXNzYWdlLgoKdjQ6Ci0gRGl0Y2ggZG1hLWJ1ZiBwYXRj
aGVzIGZvciBub3cuCi0gSW1wcm92ZSBkb2N1bWVudGF0aW9uIChTdWdnZXN0ZWQgYnkgTWF0dGV3
IEF1bGQgYW5kIE1pY2hhZWwgUnVobCkKLSBBbHdheXMgYXNzdW1lIFRUTSBtaWdyYXRpb24gaGl0
cyBhIFRUTSBtb3ZlIGFuZCB1bnNldHMgdGhlIHBhZ2VzIHRocm91Z2gKICBtb3ZlX25vdGlmeS4g
KFJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkKLSBBZGQgYSBkbWFfZmVuY2VfbWlnaHRfd2FpdCgp
IGFubm90YXRpb24gdG8KICBpOTE1X2dlbV9vYmplY3Rfd2FpdF9taWdyYXRpb24oKSAoU3VnZ2Vz
dGVkIGJ5IERhbmllbCBWZXR0ZXIpCi0gU2VsZnRlc3QgdXBkYXRlcyAoU2VlIHNwZWNpZmljcyBv
biB0aGF0IHBhdGNoKS4KLSBBZGRlZCBSLUJzCnY1OgotIFJlLWFkZCBtaWdodF9zbGVlcCgpIGFu
bm90YXRpb24gdG8gaTkxNV9nZW1fb2JqZWN0X3dhaXRfbWlncmF0aW9uKCkKLSBBZGRlZCBSLUIu
CgpNYXR0aGV3IEF1bGQgKDEpOgogIGRybS9pOTE1L2dlbTogSW50cm9kdWNlIGEgc2VsZnRlc3Qg
Zm9yIHRoZSBnZW0gb2JqZWN0IG1pZ3JhdGUKICAgIGZ1bmN0aW9uYWxpdHkKClRob21hcyBIZWxs
c3Ryw7ZtICgyKToKICBkcm0vaTkxNS9nZW06IEltcGxlbWVudCBvYmplY3QgbWlncmF0aW9uCiAg
ZHJtL2k5MTUvZGlzcGxheTogTWlncmF0ZSBvYmplY3RzIHRvIExNRU0gaWYgcG9zc2libGUgZm9y
IGRpc3BsYXkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
fCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyAgICB8
ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYyAgICAgIHwg
IDIxIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAx
MTMgKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAg
ICB8ICAxMiArLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgg
IHwgICA5ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8
ICA3NyArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgICAg
ICB8ICAxOSArKwogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0ZS5j
IHwgMjU4ICsrKysrKysrKysrKysrKysrKwogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xp
dmVfc2VsZnRlc3RzLmggIHwgICAxICsKIDEwIGZpbGVzIGNoYW5nZWQsIDQ4MSBpbnNlcnRpb25z
KCspLCAzNiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21pZ3JhdGUuYwoKLS0gCjIuMzEuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
