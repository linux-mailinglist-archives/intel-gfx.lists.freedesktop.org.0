Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C903B7163
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 13:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F7D6E862;
	Tue, 29 Jun 2021 11:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0662D6E862;
 Tue, 29 Jun 2021 11:37:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="269259968"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="269259968"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 04:37:30 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="625600007"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 04:37:28 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 29 Jun 2021 13:37:10 +0200
Message-Id: <20210629113713.154654-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/3] drm/i915/gem: Introduce a migrate
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
biB0aGF0IHBhdGNoKS4KLSBBZGRlZCBSLUJzCgpNYXR0aGV3IEF1bGQgKDEpOgogIGRybS9pOTE1
L2dlbTogSW50cm9kdWNlIGEgc2VsZnRlc3QgZm9yIHRoZSBnZW0gb2JqZWN0IG1pZ3JhdGUKICAg
IGZ1bmN0aW9uYWxpdHkKClRob21hcyBIZWxsc3Ryw7ZtICgyKToKICBkcm0vaTkxNS9nZW06IElt
cGxlbWVudCBvYmplY3QgbWlncmF0aW9uCiAgZHJtL2k5MTUvZGlzcGxheTogTWlncmF0ZSBvYmpl
Y3RzIHRvIExNRU0gaWYgcG9zc2libGUgZm9yIGRpc3BsYXkKCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kb21haW4uYyAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2xtZW0uYyAgICAgIHwgIDIxIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAxMTMgKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAxMiArLQogLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgICA5ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8ICA3NyArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgICAgICB8ICAxOSArKwogLi4uL2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0ZS5jIHwgMjU4ICsrKysrKysrKysrKysrKysrKwogLi4u
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggIHwgICAxICsKIDEwIGZp
bGVzIGNoYW5nZWQsIDQ4MSBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21p
Z3JhdGUuYwoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
