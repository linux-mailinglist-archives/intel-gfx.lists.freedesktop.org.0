Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE04AC370C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C156E084;
	Tue,  1 Oct 2019 14:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301A66E03B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:22:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:22:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="197867654"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Oct 2019 07:22:37 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 19:46:20 +0530
Message-Id: <20191001141625.24017-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001141625.24017-1-anshuman.gupta@intel.com>
References: <20191001141625.24017-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 1/6] drm/i915/tgl: Add DC3CO required
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
c2gubWFubmFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCA4ICsrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
aW5kZXggMDU4YWE1Y2E4YjczLi4xODhkM2IzODI2MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aApAQCAtNDE0NCw2ICs0MTQ0LDcgQEAgZW51bSB7CiAjZGVmaW5lIF9WVE9UQUxfQQkweDYwMDBj
CiAjZGVmaW5lIF9WQkxBTktfQQkweDYwMDEwCiAjZGVmaW5lIF9WU1lOQ19BCTB4NjAwMTQKKyNk
ZWZpbmUgX0VYSVRMSU5FX0EJMHg2MDAxOAogI2RlZmluZSBfUElQRUFTUkMJMHg2MDAxYwogI2Rl
ZmluZSBfQkNMUlBBVF9BCTB4NjAwMjAKICNkZWZpbmUgX1ZTWU5DU0hJRlRfQQkweDYwMDI4CkBA
IC00MTkwLDExICs0MTkxLDE2IEBAIGVudW0gewogI2RlZmluZSBWVE9UQUwodHJhbnMpCQlfTU1J
T19UUkFOUzIodHJhbnMsIF9WVE9UQUxfQSkKICNkZWZpbmUgVkJMQU5LKHRyYW5zKQkJX01NSU9f
VFJBTlMyKHRyYW5zLCBfVkJMQU5LX0EpCiAjZGVmaW5lIFZTWU5DKHRyYW5zKQkJX01NSU9fVFJB
TlMyKHRyYW5zLCBfVlNZTkNfQSkKKyNkZWZpbmUgRVhJVExJTkUodHJhbnMpCQlfTU1JT19UUkFO
UzIodHJhbnMsIF9FWElUTElORV9BKQogI2RlZmluZSBCQ0xSUEFUKHRyYW5zKQkJX01NSU9fVFJB
TlMyKHRyYW5zLCBfQkNMUlBBVF9BKQogI2RlZmluZSBWU1lOQ1NISUZUKHRyYW5zKQlfTU1JT19U
UkFOUzIodHJhbnMsIF9WU1lOQ1NISUZUX0EpCiAjZGVmaW5lIFBJUEVTUkModHJhbnMpCQlfTU1J
T19UUkFOUzIodHJhbnMsIF9QSVBFQVNSQykKICNkZWZpbmUgUElQRV9NVUxUKHRyYW5zKQlfTU1J
T19UUkFOUzIodHJhbnMsIF9QSVBFX01VTFRfQSkKIAorI2RlZmluZSAgIEVYSVRMSU5FX0VOQUJM
RQlSRUdfQklUKDMxKQorI2RlZmluZSAgIEVYSVRMSU5FX01BU0sJCVJFR19HRU5NQVNLKDEyLCAw
KQorI2RlZmluZSAgIEVYSVRMSU5FX1NISUZUCTAKKwogLyoKICAqIEhTVysgZURQIFBTUiByZWdp
c3RlcnMKICAqCkBAIC0xMDI4OCw2ICsxMDI5NCw4IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewog
LyogR0VOOSBEQyAqLwogI2RlZmluZSBEQ19TVEFURV9FTgkJCV9NTUlPKDB4NDU1MDQpCiAjZGVm
aW5lICBEQ19TVEFURV9ESVNBQkxFCQkwCisjZGVmaW5lICBEQ19TVEFURV9FTl9EQzNDTwkJUkVH
X0JJVCgzMCkKKyNkZWZpbmUgIERDX1NUQVRFX0RDM0NPX1NUQVRVUwkJUkVHX0JJVCgyOSkKICNk
ZWZpbmUgIERDX1NUQVRFX0VOX1VQVE9fREM1CQkoMSA8PCAwKQogI2RlZmluZSAgRENfU1RBVEVf
RU5fREM5CQkoMSA8PCAzKQogI2RlZmluZSAgRENfU1RBVEVfRU5fVVBUT19EQzYJCSgyIDw8IDAp
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
