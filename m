Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69FCBE472
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 20:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E77266EC98;
	Wed, 25 Sep 2019 18:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5B56EC88
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 18:16:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 11:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="364405665"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 25 Sep 2019 11:16:38 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 23:40:17 +0530
Message-Id: <20190925181023.12290-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190925181023.12290-1-anshuman.gupta@intel.com>
References: <20190925181023.12290-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 1/7] drm/i915/tgl: Add DC3CO required
 register and bits
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKMS4gRENfU1RBVEVfRU4g
cmVnaXN0ZXIgREMzQ08gYml0IGZpZWxkcyBhbmQgbWFza3MuCiAgIERDM0NPIGVuYWJsZSBiaXQg
d2lsbCBiZSB1c2VkIGJ5IGRyaXZlciB0byBtYWtlIERDM0NPCiAgIHJlYWR5IGZvciBETUMgZi93
IGFuZCBzdGF0dXMgYml0IHdpbGwgYmUgdXNlZCBhcyBEQzNDTwogICBlbnRyeSBzdGF0dXMuCjIu
IFRyYW5zY29kZXIgRVhJVExJTkUgcmVnaXN0ZXIgYW5kIGl0cyBiaXQgZmllbGRzIGFuZCBtYXNr
LgogICBUcmFuc2NvZGVyIEVYSVRMSU5FIGVuYWJsZSBiaXQgcmVwcmVzZW50cyBQU1IyIGlkbGUg
ZnJhbWUKICAgcmVzZXQgc2hvdWxkIGJlIGFwcGxpZWQgYXQgZXhpdCBsaW5lIGFuZCBleGl0bGlu
ZXMgbWFzawogICByZXByZXNlbnQgcmVxdWlyZWQgbnVtYmVyIG9mIHNjYW5saW5lcyBhdCB3aGlj
aCBEQzNDTwogICBleGl0IGhhcHBlbnMuCgogICBCLlNwZWNzOjQ5MTk2Cgp2MTogVXNlIG9mIFJF
R19CSVQgYW5kIHVzaW5nIGV4dHJhIHNwYWNlIGZvciBFWElUTElORV8gbWFjcm8KICAgIGRlZmlu
aXRpb24uIFtBbmltZXNoXQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVt
YW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
fCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggYmYzN2VjZWJjODJmLi42YmZlYmFiOWE0NDEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtNDEzOCw2ICs0MTM4LDcgQEAgZW51bSB7CiAjZGVmaW5lIF9WVE9U
QUxfQQkweDYwMDBjCiAjZGVmaW5lIF9WQkxBTktfQQkweDYwMDEwCiAjZGVmaW5lIF9WU1lOQ19B
CTB4NjAwMTQKKyNkZWZpbmUgX0VYSVRMSU5FX0EJMHg2MDAxOAogI2RlZmluZSBfUElQRUFTUkMJ
MHg2MDAxYwogI2RlZmluZSBfQkNMUlBBVF9BCTB4NjAwMjAKICNkZWZpbmUgX1ZTWU5DU0hJRlRf
QQkweDYwMDI4CkBAIC00MTg0LDExICs0MTg1LDE2IEBAIGVudW0gewogI2RlZmluZSBWVE9UQUwo
dHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WVE9UQUxfQSkKICNkZWZpbmUgVkJMQU5LKHRy
YW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVkJMQU5LX0EpCiAjZGVmaW5lIFZTWU5DKHRyYW5z
KQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVlNZTkNfQSkKKyNkZWZpbmUgRVhJVExJTkUodHJhbnMp
CQlfTU1JT19UUkFOUzIodHJhbnMsIF9FWElUTElORV9BKQogI2RlZmluZSBCQ0xSUEFUKHRyYW5z
KQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfQkNMUlBBVF9BKQogI2RlZmluZSBWU1lOQ1NISUZUKHRy
YW5zKQlfTU1JT19UUkFOUzIodHJhbnMsIF9WU1lOQ1NISUZUX0EpCiAjZGVmaW5lIFBJUEVTUkMo
dHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9QSVBFQVNSQykKICNkZWZpbmUgUElQRV9NVUxU
KHRyYW5zKQlfTU1JT19UUkFOUzIodHJhbnMsIF9QSVBFX01VTFRfQSkKIAorI2RlZmluZSAgIEVY
SVRMSU5FX0VOQUJMRQlSRUdfQklUKDMxKQorI2RlZmluZSAgIEVYSVRMSU5FX01BU0sJCVJFR19H
RU5NQVNLKDEyLCAwKQorI2RlZmluZSAgIEVYSVRMSU5FX1NISUZUCTAKKwogLyoKICAqIEhTVysg
ZURQIFBTUiByZWdpc3RlcnMKICAqCkBAIC0xMDExOCw2ICsxMDEyNCw4IEBAIGVudW0gc2tsX3Bv
d2VyX2dhdGUgewogLyogR0VOOSBEQyAqLwogI2RlZmluZSBEQ19TVEFURV9FTgkJCV9NTUlPKDB4
NDU1MDQpCiAjZGVmaW5lICBEQ19TVEFURV9ESVNBQkxFCQkwCisjZGVmaW5lICBEQ19TVEFURV9F
Tl9EQzNDTwkJUkVHX0JJVCgzMCkKKyNkZWZpbmUgIERDX1NUQVRFX0RDM0NPX1NUQVRVUwkJUkVH
X0JJVCgyOSkKICNkZWZpbmUgIERDX1NUQVRFX0VOX1VQVE9fREM1CQkoMSA8PCAwKQogI2RlZmlu
ZSAgRENfU1RBVEVfRU5fREM5CQkoMSA8PCAzKQogI2RlZmluZSAgRENfU1RBVEVfRU5fVVBUT19E
QzYJCSgyIDw8IDApCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
