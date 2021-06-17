Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9560C3AAEE7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 10:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6236E8A8;
	Thu, 17 Jun 2021 08:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A502B6E8A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 08:37:28 +0000 (UTC)
IronPort-SDR: vsW8rCXnyJIJlyU+dH8iz3tV6P5Phzi4KOBL5TA0ntC28up3cbx+BrnsGGJskhi+vhQyBxziv5
 87C49An+se3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="206147322"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="206147322"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 01:37:27 -0700
IronPort-SDR: DaI2+PVkvFzDA8uQKRjKiq46yDNPDb7xPeZEfcXWWO+ic03Peh6UvybXlNp+LQPCfyN3U8tur4
 pU1CN4U/g1Ww==
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="450951012"
Received: from scjonesx-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.17.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 01:37:25 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Jun 2021 09:37:19 +0100
Message-Id: <20210617083719.497619-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: remove unused function
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfcmVnaW9uX3R0bV9ub2RlX2ZyZWUgaXMgbm8gbG9uZ2VyIHVzZWQuIEFsc28gZml4dXAg
dGhlIHJlbGF0ZWQKa2VybmVsZG9jLgoKUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxs
a3BAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5jIHwg
MTQgKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl90dG0uYwppbmRleCBk
NTNkNzhkZWMyYmUuLjRjZDEwZjM2NGU4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcmVnaW9uX3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Jl
Z2lvbl90dG0uYwpAQCAtMTQxLDcgKzE0MSw3IEBAIHN0cnVjdCBzZ190YWJsZSAqaW50ZWxfcmVn
aW9uX3R0bV9yZXNvdXJjZV90b19zdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtCiAK
ICNpZmRlZiBDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QKIC8qKgotICogaW50ZWxfcmVnaW9uX3R0
bV9ub2RlX2FsbG9jIC0gQWxsb2NhdGUgbWVtb3J5IHJlc291cmNlcyBmcm9tIGEgcmVnaW9uCisg
KiBpbnRlbF9yZWdpb25fdHRtX3Jlc291cmNlX2FsbG9jIC0gQWxsb2NhdGUgbWVtb3J5IHJlc291
cmNlcyBmcm9tIGEgcmVnaW9uCiAgKiBAbWVtOiBUaGUgbWVtb3J5IHJlZ2lvbiwKICAqIEBzaXpl
OiBUaGUgcmVxdWVzdGVkIHNpemUgaW4gYnl0ZXMKICAqIEBmbGFnczogQWxsb2NhdGlvbiBmbGFn
cwpAQCAtMTUwLDggKzE1MCw4IEBAIHN0cnVjdCBzZ190YWJsZSAqaW50ZWxfcmVnaW9uX3R0bV9y
ZXNvdXJjZV90b19zdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtCiAgKiBtZW1vcnkg
ZnJvbSBzdGFuZGFsb25lIFRUTSByYW5nZSBtYW5hZ2Vycywgd2l0aG91dCB0aGUgVFRNIGV2aWN0
aW9uCiAgKiBmdW5jdGlvbmFsaXR5LiBEb24ndCB1c2UgaWYgeW91IGFyZSBub3QgY29tcGxldGVs
eSBzdXJlIHRoYXQncyB0aGUKICAqIGNhc2UuIFRoZSByZXR1cm5lZCBvcGFxdWUgbm9kZSBjYW4g
YmUgY29udmVydGVkIHRvIGFuIHNnX3RhYmxlIHVzaW5nCi0gKiBpbnRlbF9yZWdpb25fdHRtX25v
ZGVfdG9fc3QoKSwgYW5kIGNhbiBiZSBmcmVlZCB1c2luZwotICogaW50ZWxfcmVnaW9uX3R0bV9u
b2RlX2ZyZWUoKS4KKyAqIGludGVsX3JlZ2lvbl90dG1fcmVzb3VyY2VfdG9fc3QoKSwgYW5kIGNh
biBiZSBmcmVlZCB1c2luZworICogaW50ZWxfcmVnaW9uX3R0bV9yZXNvdXJjZV9mcmVlKCkuCiAg
KgogICogUmV0dXJuOiBBIHZhbGlkIHBvaW50ZXIgb24gc3VjY2VzcywgYW4gZXJyb3IgcG9pbnRl
ciBvbiBmYWlsdXJlLgogICovCkBAIC0xNzgsMTQgKzE3OCw2IEBAIGludGVsX3JlZ2lvbl90dG1f
cmVzb3VyY2VfYWxsb2Moc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAogI2VuZGlm
CiAKLXZvaWQgaW50ZWxfcmVnaW9uX3R0bV9ub2RlX2ZyZWUoc3RydWN0IGludGVsX21lbW9yeV9y
ZWdpb24gKm1lbSwKLQkJCQlzdHJ1Y3QgdHRtX3Jlc291cmNlICpyZXMpCi17Ci0Jc3RydWN0IHR0
bV9yZXNvdXJjZV9tYW5hZ2VyICptYW4gPSBtZW0tPnJlZ2lvbl9wcml2YXRlOwotCi0JbWFuLT5m
dW5jLT5mcmVlKG1hbiwgcmVzKTsKLX0KLQogLyoqCiAgKiBpbnRlbF9yZWdpb25fdHRtX3Jlc291
cmNlX2ZyZWUgLSBGcmVlIGEgcmVzb3VyY2UgYWxsb2NhdGVkIGZyb20gYSByZXNvdXJjZSBtYW5h
Z2VyCiAgKiBAbWVtOiBUaGUgcmVnaW9uIHRoZSByZXNvdXJjZSB3YXMgYWxsb2NhdGVkIGZyb20u
Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
