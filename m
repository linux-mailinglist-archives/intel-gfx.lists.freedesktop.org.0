Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D04A83B5AF0
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 11:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B496E2E6;
	Mon, 28 Jun 2021 09:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA7E6E2E6;
 Mon, 28 Jun 2021 09:10:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="271774861"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="271774861"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 02:09:59 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="419097090"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.242])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 02:09:57 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 28 Jun 2021 11:09:38 +0200
Message-Id: <20210628090943.45690-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915/gem: Introduce a migrate
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
ZWQgZml4LgoKTWF0dGhldyBBdWxkICgxKToKICBkcm0vaTkxNS9nZW06IEludHJvZHVjZSBhIHNl
bGZ0ZXN0IGZvciB0aGUgZ2VtIG9iamVjdCBtaWdyYXRlCiAgICBmdW5jdGlvbmFsaXR5CgpUaG9t
YXMgSGVsbHN0csO2bSAoNCk6CiAgZHJtL2k5MTUvZ2VtOiBJbXBsZW1lbnQgb2JqZWN0IG1pZ3Jh
dGlvbgogIGRybS9pOTE1L2Rpc3BsYXk6IE1pZ3JhdGUgb2JqZWN0cyB0byBMTUVNIGlmIHBvc3Np
YmxlIGZvciBkaXNwbGF5CiAgZHJtL2k5MTUvZ2VtOiBGaXggc2FtZS1kcml2ZXItYW5vdGhlci1p
bnN0YW5jZSBkbWEtYnVmIGV4cG9ydAogIGRybS9pOTE1L2dlbTogTWlncmF0ZSB0byBzeXN0ZW0g
YXQgZG1hLWJ1ZiBtYXAgdGltZQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5jICAgIHwgIDM2ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rv
bWFpbi5jICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1l
bS5jICAgICAgfCAgMjEgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuYyAgICB8ICA5NyArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmggICAgfCAgMTIgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dF90eXBlcy5oICB8ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRt
LmMgICAgICAgfCAgNjkgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93
YWl0LmMgICAgICB8ICAxOSArKwogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
ZG1hYnVmLmMgIHwgIDgzICsrKysrLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fbWlncmF0ZS5jIHwgMjM3ICsrKysrKysrKysrKysrKysrKwogLi4uL2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggIHwgICAxICsKIDEyIGZpbGVzIGNoYW5nZWQsIDU0
NiBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21pZ3JhdGUuYwoKLS0gCjIu
MzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
