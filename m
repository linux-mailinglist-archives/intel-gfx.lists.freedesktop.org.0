Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7C759CAA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 15:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E9A6E920;
	Fri, 28 Jun 2019 13:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545156E920
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 13:12:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 06:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="314131399"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 06:12:33 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 18:37:45 +0530
Message-Id: <20190628130754.9527-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628130754.9527-1-anshuman.gupta@intel.com>
References: <20190628130754.9527-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/tgl:Added DC3CO required
 register and bits.
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

VGhpcyBwYXRjaCBhZGRzIGZvbGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKMS4gRENf
U1RBVEVfRU4gcmVnaXN0ZXIgREMzQ08gYml0IGZpZWxkcyBhbmQgbWFza3MuCjIuIFRyYW5zY29k
ZXIgRVhJVExJTkUgcmVnaXN0ZXIgYW5kIGl0cyBiaXQgZmllbGRzIGFuZCBtYXNrLgoKdjI6IENv
bW1pdCBsb2cgdHlwbyBmaXhpbmcuCgpDYzogamFuaS5uaWt1bGFAaW50ZWwuY29tCkNjOiBpbXJl
LmRlYWtAaW50ZWwuY29tCkNjOiBhbmltZXNoLm1hbm5hQGludGVsLmNvbQpTaWduZWQtb2ZmLWJ5
OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZTk3YzQ3ZmNhNjQ1Li5i
ZjU5ZmY0MDcxOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDE2MSw2ICs0MTYxLDcg
QEAgZW51bSB7CiAjZGVmaW5lIF9WVE9UQUxfQQkweDYwMDBjCiAjZGVmaW5lIF9WQkxBTktfQQkw
eDYwMDEwCiAjZGVmaW5lIF9WU1lOQ19BCTB4NjAwMTQKKyNkZWZpbmUgX0VYSVRMSU5FX0EJMHg2
MDAxOAogI2RlZmluZSBfUElQRUFTUkMJMHg2MDAxYwogI2RlZmluZSBfQkNMUlBBVF9BCTB4NjAw
MjAKICNkZWZpbmUgX1ZTWU5DU0hJRlRfQQkweDYwMDI4CkBAIC00MjA2LDExICs0MjA3LDE2IEBA
IGVudW0gewogI2RlZmluZSBWVE9UQUwodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WVE9U
QUxfQSkKICNkZWZpbmUgVkJMQU5LKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVkJMQU5L
X0EpCiAjZGVmaW5lIFZTWU5DKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVlNZTkNfQSkK
KyNkZWZpbmUgRVhJVExJTkUodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9FWElUTElORV9B
KQogI2RlZmluZSBCQ0xSUEFUKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfQkNMUlBBVF9B
KQogI2RlZmluZSBWU1lOQ1NISUZUKHRyYW5zKQlfTU1JT19UUkFOUzIodHJhbnMsIF9WU1lOQ1NI
SUZUX0EpCiAjZGVmaW5lIFBJUEVTUkModHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9QSVBF
QVNSQykKICNkZWZpbmUgUElQRV9NVUxUKHRyYW5zKQlfTU1JT19UUkFOUzIodHJhbnMsIF9QSVBF
X01VTFRfQSkKIAorI2RlZmluZSAgRVhJVExJTkVfRU5BQkxFCSgxIDw8IDMxKQorI2RlZmluZSAg
RVhJVExJTkVfTUFTSwkJKDB4MWZmZikKKyNkZWZpbmUgIEVYSVRMSU5FX1NISUZUCQkwCisKIC8q
IEhTVysgZURQIFBTUiByZWdpc3RlcnMgKi8KICNkZWZpbmUgSFNXX0VEUF9QU1JfQkFTRQkweDY0
ODAwCiAjZGVmaW5lIEJEV19FRFBfUFNSX0JBU0UJMHg2ZjgwMApAQCAtOTg3Myw2ICs5ODc5LDgg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAvKiBHRU45IERDICovCiAjZGVmaW5lIERDX1NUQVRF
X0VOCQkJX01NSU8oMHg0NTUwNCkKICNkZWZpbmUgIERDX1NUQVRFX0RJU0FCTEUJCTAKKyNkZWZp
bmUgIERDX1NUQVRFX0VOX0RDM0NPCQkoMSA8PCAzMCkKKyNkZWZpbmUgIERDX1NUQVRFX0RDM0NP
X1NUQVRVUwkJKDEgPDwgMjkpCiAjZGVmaW5lICBEQ19TVEFURV9FTl9VUFRPX0RDNQkJKDEgPDwg
MCkKICNkZWZpbmUgIERDX1NUQVRFX0VOX0RDOQkJKDEgPDwgMykKICNkZWZpbmUgIERDX1NUQVRF
X0VOX1VQVE9fREM2CQkoMiA8PCAwKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
