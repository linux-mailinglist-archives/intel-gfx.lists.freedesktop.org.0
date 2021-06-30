Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A65D3B82A9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 15:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACAA6E105;
	Wed, 30 Jun 2021 13:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C216E105;
 Wed, 30 Jun 2021 13:07:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195634516"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="195634516"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 06:07:17 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="558290323"
Received: from vanderss-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.133])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 06:07:15 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 30 Jun 2021 15:06:59 +0200
Message-Id: <20210630130701.349458-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/gem: dma-buf fixes for migration
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

T3VyIGRtYS1idWYgY29kZSBpcyBjdXJyZW50bHkgY29tcGxldGVseSBicm9rZW4gdW5sZXNzIHRo
ZSBpbXBvcnRlciBpcwpkeW5hbWljIGluIHdoaWNoIGNhc2UgdGhlIHNnX2xpc3QgY2FjaGluZyBz
YXZlcyB0aGUgZGF5LiBJbiBwYXJ0aWN1bGFyLAp0aGUgY2FzZSB3aGVyZSBhbm90aGVyIGluc3Rh
bmNlIG9mIG91ciBkcml2ZXIgdHJpZXMgdG8gaW1wb3J0IGEgZG1hLWJ1ZgpleHBvcnRlZCBieSBv
dXIgZHJpdmVyIGVuZHMgdXAgaW4gYSByZWN1cnNpdmUgbG9jay4KClNpbmNlIHRoZSByZWNlbnQg
VFRNIG1pZ3JhdGlvbiB3b3JrIHNwZWMgc3BlY2lmaWVzIHRvIGZpeCB1cCB0aGUgZG1hLWJ1Zgpj
b2RlIHdpdGggbWlncmF0aW9uIGFuZCB0aGVyZSdzIG5vIHBvaW50IGluIGRvaW5nIHNvIHdoZW4g
aXQncwpjb21wbGV0ZWx5IGJyb2tlbiwgdGFrZSBhIGZpcnN0IHN0ZXAgdG8gbWFrZSBhdCBsZWFz
dCB0aGUgZXhwb3J0ZXIgb2JleQp0aGUgZG1hLWJ1ZiBsb2NraW5nIHJ1bGVzIHRoZSBkbWEtYnVm
IGNvcmUgZW5mb3JjZXMgZm9yIGEgZHluYW1pYyBleHBvcnRlcjoKCi0gSW1wbGVtZW50IGFuZCBh
Y3Qgb24gcGluLSBhbmQgdW5waW4uCi0gQ2FsbCBtb3ZlX25vdGlmeSBpZiBtaWdyYXRpbmcuICh3
ZSBvcHQgbm90IHRvIG1pZ3JhdGUgd2hpbGUgZG1hLWJ1Zl9tYXBwZWQpLgotIG1hcF9kbWFfYnVm
KCkgaXMgdW5jb25kaXRpb25hbGx5IGNhbGxlZCBsb2NrZWQuCgpBZGQgYSBzZWxmdGVzdCB0aGF0
IGVuc3VyZXMgdGhhdCBpdCB3b3JrcyB3aXRoIGJvdGggb3VyIG93biBhbmQgYSBmYWtlCmR5bmFt
aWMgaW1wb3J0ZXIuCgpBbHNvIGltcGxlbWVudCBtaWdyYXRpb24gaW4gdGhlIHNlY29uZCBwYXRj
aCBiZWZvcmUgcGlubmluZyBpbiBwaW4oKQphbmQgbWFwX2RtYV9idWYoKS4KCk5vdGUgdGhhdCB0
aGUgaW1wb3J0ZXIgcmVtYWlucyBicm9rZW4gZm9yIG90aGVyIG5vbi1keW5hbWljIGV4cG9ydGVy
cywgYnV0CmF0IGxlYXN0IG5vdCBmb3IgdGhlIHNhbWUtZHJpdmVyLXNlcGFyYXRlLWluc3RhbmNl
cyBjYXNlLgoKUmVnYXJkbGVzcyB3aGV0aGVyIHdlIHdhbnQgdG8gZml4IHRoaXMgbm93IHdpdGgg
dGhpcyBzZXJpZXMsIG9yIGluIGFuCnVuc3BlY2lmaWVkIGZ1dHVyZSwgdGhlIHNlbGZ0ZXN0IG1h
eSBjb21lIGluIGhhbmR5LgoKVGhvbWFzIEhlbGxzdHLDtm0gKDIpOgogIGRybS9pOTE1L2dlbTog
TWFrZSBvdXIgZG1hLWJ1ZiBleHBvcnRlciBkeW5hbWljCiAgZHJtL2k5MTUvZ2VtOiBNaWdyYXRl
IHRvIHN5c3RlbSBhdCBkbWEtYnVmIG1hcCB0aW1lCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgIDQ4ICsrKysrKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8IDExOCArKysrKysrKysrKysrKysrKy0KIDIgZmls
ZXMgY2hhbmdlZCwgMTYyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
