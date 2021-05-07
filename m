Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23384376335
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 12:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DB56E054;
	Fri,  7 May 2021 09:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EA9B6E03B;
 Fri,  7 May 2021 09:59:57 +0000 (UTC)
IronPort-SDR: b3cUPqwOs3Gm6v4WrXDW2Ew0NbTxW0MffnvLNdkPj1ytzwIMrMYUsD0Lh4QQRWSZKGoq/q/1TM
 Z4ftXFVf2f+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="185824697"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="185824697"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 02:59:56 -0700
IronPort-SDR: YosjoQJuKwsE0kuenBfnyQ4Cr3gXYkBMUJWcC3k0Nldeh74PG9v/iXRXiPlWCX3h3xp1eUpYts
 kscCrWMja7dQ==
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="434842132"
Received: from flydon-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.20.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 02:59:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 10:59:48 +0100
Message-Id: <20210507095948.384230-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/stolen: shuffle around
 init_memory_region
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZ2VuZXJhbGx5IHdhbnQgdG8gZmlyc3QgY2FsbCBpOTE1X2dlbV9vYmplY3RfaW5pdF9tZW1v
cnlfcmVnaW9uKCkKYmVmb3JlIGNhbGxpbmcgaW50byBnZXRfcGFnZXMoKSwgc2luY2UgdGhpcyBz
ZXRzIHVwIHZhcmlvdXMgYml0cyBvZgpzdGF0ZSB3aGljaCBtaWdodCBiZSBuZWVkZWQgdGhlcmUu
IEN1cnJlbnRseSBmb3Igc3RvbGVuIHRoaXMgZG9lc24ndAptYXR0ZXIgbXVjaCwgYnV0IGl0IG1p
Z2h0IGluIHRoZSBmdXR1cmUsIGFuZCBhdCB0aGUgdmVyeSBsZWFzdCB0aGlzCm1ha2VzIHRoaW5n
cyBjb25zaXN0ZW50IHdpdGggdGhlIG90aGVyIGJhY2tlbmRzLgoKU2lnbmVkLW9mZi1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0g
PHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9zdG9sZW4uYwppbmRleCAyOTNmNjQwZmFhMGEuLmI1NTUzZmMzYWM0ZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwpAQCAtNjU3LDkgKzY1Nywx
MSBAQCBzdGF0aWMgaW50IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0IGlu
dGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAlpZiAoV0FSTl9PTighaTkxNV9nZW1fb2JqZWN0X3Ry
eWxvY2sob2JqKSkpCiAJCXJldHVybiAtRUJVU1k7CiAKKwlpOTE1X2dlbV9vYmplY3RfaW5pdF9t
ZW1vcnlfcmVnaW9uKG9iaiwgbWVtKTsKKwogCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFn
ZXMob2JqKTsKLQlpZiAoIWVycikKLQkJaTkxNV9nZW1fb2JqZWN0X2luaXRfbWVtb3J5X3JlZ2lv
bihvYmosIG1lbSk7CisJaWYgKGVycikKKwkJaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5
X3JlZ2lvbihvYmopOwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAogCXJldHVybiBl
cnI7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
