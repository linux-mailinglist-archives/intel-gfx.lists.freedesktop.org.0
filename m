Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 109BB3917D5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 14:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6636E6ECDB;
	Wed, 26 May 2021 12:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000406ECDB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 12:49:17 +0000 (UTC)
IronPort-SDR: z9mFFDgfFuyfOVeMTTlXmRA7BVlRKeV2U7glkasxWcq/bpU3nitRILWGUoIGPUMNalyRURZAqQ
 hLwy8lq5zxrg==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="263659337"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="263659337"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 05:49:14 -0700
IronPort-SDR: KzG1H9yJjGKm/slTCc3VoOB/FdCAxiKpbYSWrfFIZFuERFBnbxBK5NEgIdbz23R+6mYcwQbKJo
 8gYehODhm4ZA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="444026028"
Received: from mschan-mobl1.amr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.212.100.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 05:49:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 13:49:01 +0100
Message-Id: <20210526124901.245689-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: relax 2big checking around
 initial fb
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpUaGUga2VybmVs
IHByZWZlcnMgZW5hYmxpbmcgZmJjIG92ZXIgdGhlIGluaXRpYWwgZmIsIHNpbmNlIHRoaXMgbGVh
ZHMgdG8KYWN0dWFsIHJ1bnRpbWUgcG93ZXIgc2F2aW5ncywgc28gaWYgdGhlIGluaXRpYWwgZmIg
aXMgZGVlbWVkIHRvbyBiaWcKdXNpbmcgc29tZSBoZXVyaXN0aWMsIHRoZW4gd2Ugc2ltcGx5IHNr
aXAgYWxsb2NhdGluZyBzdG9sZW4gZm9yIGl0LgpIb3dldmVyIGlmIHRoZSBrZXJuZWwgaXMgbm90
IGNvbmZpZ3VyZWQgd2l0aCBmYmNvbiB0aGVuIGl0IHNob3VsZCBiZQpwb3NzaWJsZSB0byByZWxh
eCB0aGlzLCBzaW5jZSB1bmxpa2Ugd2l0aCBmYmNvbiB0aGUgZGlzcGxheSBzZXJ2ZXIKc2hvdWxk
bid0IHByZXNlcnZlIGl0IHdoZW4gbGF0ZXIgcmVwbGFjaW5nIGl0LCBhbmQgc28gd2Ugc2hvdWxk
IGJlIGFibGUKdG8gcmUtdXNlIHRoZSBzdG9sZW4gbWVtb3J5IGZvciBmYmMgYW5kIGZyaWVuZHMu
IFRoaXMgcGF0Y2ggaXMgcmVwb3J0ZWQKdG8gZml4IHNvbWUgZmxpY2tlciBzZWVuIGR1cmluZyBi
b290IHNwbGFzaCBvbiBzb21lIGRldmljZXMuCgp2Mjogcy9GUkFNRUJVRkZFUl9DT05TT0xFL0NP
TkZJR19GUkFNRUJVRkZFUl9DT05TT0xFCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNv
bT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNj
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwppbmRleCAwYmIyZTU4MmM4N2YuLmRiOTdhOTJkYzg0ZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE2OTAsNyArMTY5
MCw4IEBAIGluaXRpYWxfcGxhbmVfdm1hKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAog
CSAqIGltcG9ydGFudCBhbmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0IHNwYWNlIHdpdGgg
RkJDIG9yIG90aGVyCiAJICogZmVhdHVyZXMuCiAJICovCi0JaWYgKHNpemUgKiAyID4gaTkxNS0+
c3RvbGVuX3VzYWJsZV9zaXplKQorCWlmIChJU19FTkFCTEVEKENPTkZJR19GUkFNRUJVRkZFUl9D
T05TT0xFKSAmJgorCSAgICBzaXplICogMiA+IGk5MTUtPnN0b2xlbl91c2FibGVfc2l6ZSkKIAkJ
cmV0dXJuIE5VTEw7CiAKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9mb3Jf
cHJlYWxsb2NhdGVkKGk5MTUsIGJhc2UsIHNpemUpOwotLSAKMi4yNi4zCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
