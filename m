Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FD03B35C4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 20:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1066EC78;
	Thu, 24 Jun 2021 18:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B94646EC78;
 Thu, 24 Jun 2021 18:31:25 +0000 (UTC)
IronPort-SDR: L/kXFticsq1TmKCGjTG6iFpPl/Pu94EaQrVmYRuc1YJP2EBZDrrzh4r3usDjTV5L6cLa3Gofu8
 p2XJQP2lex7A==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="207354183"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207354183"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 11:31:25 -0700
IronPort-SDR: rx079BVLzev/HeNQJcHhqf5yLMfv1sZRdb+dSbF+j2JLvsRSWXP8xaDf+x8NpDjLZ+RX5jSkI8
 I9EDy4euCBEg==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="556585507"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.243])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 11:31:22 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Jun 2021 20:31:06 +0200
Message-Id: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/gem: Introduce a migrate interface
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
a2UgdGhlIGRlc2t0b3AgbGlnaHQgdXAgb24gREcxIHdpdGggREcxLWVuYWJsZWQKbWVzYS4KCk1h
dHRoZXcgQXVsZCAoMSk6CiAgZHJtL2k5MTUvZ2VtOiBJbnRyb2R1Y2UgYSBzZWxmdGVzdCBmb3Ig
dGhlIGdlbSBvYmplY3QgbWlncmF0ZQogICAgZnVuY3Rpb25hbGl0eQoKVGhvbWFzIEhlbGxzdHLD
tm0gKDMpOgogIGRybS9pOTE1L2dlbTogSW1wbGVtZW50IG9iamVjdCBtaWdyYXRpb24KICBkcm0v
aTkxNS9kaXNwbGF5OiBNaWdyYXRlIG9iamVjdHMgdG8gTE1FTSBpZiBwb3NzaWJsZSBmb3IgZGlz
cGxheQogIGRybS9pOTE1L2dlbTogTWlncmF0ZSB0byBzeXN0ZW0gYXQgZG1hLWJ1ZiBtYXAgdGlt
ZQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgNSAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgICA5ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgICAgfCAgIDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMgICAgICB8ICAyMSAtLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDkyICsrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAxMiAr
LQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgICA5ICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8ICA2OSArKyst
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyAgICAgIHwgIDE5ICsr
CiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9taWdyYXRlLmMgfCAyMzcgKysr
KysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVz
dHMuaCAgfCAgIDEgKwogMTEgZmlsZXMgY2hhbmdlZCwgNDM0IGluc2VydGlvbnMoKyksIDQyIGRl
bGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0ZS5jCgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
