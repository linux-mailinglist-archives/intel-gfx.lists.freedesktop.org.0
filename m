Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C31A93B35CC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 20:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0D76EC89;
	Thu, 24 Jun 2021 18:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951EE6EC88;
 Thu, 24 Jun 2021 18:31:34 +0000 (UTC)
IronPort-SDR: lSR9mv4JVwM8dxeiyCraRQx4h+Lnlnp7T4K3dbKijYMn8PRohz65811nqIWCh/kvH3N4jBvsZy
 ZENklWY+tF6A==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="207354214"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207354214"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 11:31:34 -0700
IronPort-SDR: KlBQojAwJ27frSmsP45Sv6qImAfd8rhhxE08LLAnYx3FKlSMZQYmLQ2ytezMG5hnVa61/LiSh7
 B9bfcoihGW2w==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="556585603"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.243])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 11:31:32 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Jun 2021 20:31:10 +0200
Message-Id: <20210624183110.22582-5-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
References: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Migrate to system at dma-buf
 map time
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

VW50aWwgd2Ugc3VwcG9ydCBwMnAgZG1hIG9yIGFzIGEgY29tcGxlbWVudCB0byB0aGF0LCBtaWdy
YXRlIGRhdGEKdG8gc3lzdGVtIG1lbW9yeSBhdCBkbWEtYnVmIG1hcCB0aW1lIGlmIHBvc3NpYmxl
LgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFi
dWYuYyB8IDkgKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmlu
ZGV4IDYxNmMzYTJmMWJhZi4uYTUyZjg4NWJjMDlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC0yNSw3ICsyNSwxNCBAQCBzdGF0aWMgc3RydWN0IHNn
X3RhYmxlICppOTE1X2dlbV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2htZQogCXN0cnVjdCBzY2F0dGVybGlzdCAqc3JjLCAqZHN0OwogCWludCByZXQsIGk7CiAK
LQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzX3VubG9ja2VkKG9iaik7CisJcmV0ID0g
aTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOworCWlmIChyZXQp
CisJCXJldHVybiBFUlJfUFRSKHJldCk7CisKKwlyZXQgPSBpOTE1X2dlbV9vYmplY3RfbWlncmF0
ZShvYmosIE5VTEwsIElOVEVMX1JFR0lPTl9TTUVNKTsKKwlpZiAoIXJldCkKKwkJcmV0ID0gaTkx
NV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2Jq
KTsKIAlpZiAocmV0KQogCQlnb3RvIGVycjsKIAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
