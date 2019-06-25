Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AC154CF1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 12:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773E46E0DD;
	Tue, 25 Jun 2019 10:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3AB76E0DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 10:58:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 03:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; 
 d="scan'208,223";a="172323788"
Received: from bgrossx-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.141.23])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2019 03:58:38 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 13:58:30 +0300
Message-Id: <20190625105832.19064-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915: CTS fixes
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbSBleHBlcmltZW50YXRpb24gd3JpdGluZy9yZWFkaW5nIHRob3NlIG91dCB0aG9zZSByZWdp
c3RlcnMgc2VlbXMKdG8gYmUgcmVhZC1vbmx5LiBDb250cmFyeSB0byB0aGUgZGVzY3JpcHRpb24g
aW4gdGhlIGRvY3VtZW50YXRpb24uLi4KClNvIHdoaXRlbGlzdCB0aGVtIGFzIHJlYWQgb25seS4K
CkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgyKToKICBkcm0vaTkxNTogd2hpdGVsaXN0IFBT
XyhERVBUSHxJTlZPQ0FUSU9OKV9DT1VOVAogIGRybS9pOTE1L2ljbDogd2hpdGVsaXN0IFBTXyhE
RVBUSHxJTlZPQ0FUSU9OKV9DT1VOVAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgfCAxNiArKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKLS0KMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
