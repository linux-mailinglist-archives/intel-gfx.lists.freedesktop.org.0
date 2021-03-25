Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 940AF349BD3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906C56EE4F;
	Thu, 25 Mar 2021 21:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3036EE4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:14 +0000 (UTC)
IronPort-SDR: en2e/l1eUxEnCVDU6+7LPIW9yEVUeKLh0g+22X8kc2IjiUI++6odKLf3tFirjufVxV0SVfj7V0
 bLXWRvOCbwBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171004980"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171004980"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:14 -0700
IronPort-SDR: gbxXnVSJpny2MIbVed+aiqtdK5NgOvnXR5V0ynjH/vq4rwZT+WGMvBGlGWwxLjnPgpPeD151Tt
 HVJ3+XNVVi6Q==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235622"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:45 +0200
Message-Id: <20210325214808.2071517-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/25] drm/i915/selftest: Fix error handling
 in igt_vma_remapped_gtt()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW4gaW5uZXIgc2NvcGUgdmVyc2lvbiBvZiBlcnIgc2hhZG93cyB0aGUgdmFyaWFibGUgaW4gdGhl
IG91dGVyIHNjb3BlLAphbmQgZXJyIGRvZXNuJ3QgZ2V0IHNldCBhZnRlciBhIGZhaWx1cmUsIGZp
eCB0aGVzZS4KClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCmluZGV4IDFiNjEyNWU0YzFhYzYuLjM1
NDgxY2ZiYjYzNTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5j
CkBAIC04OTAsNyArODkwLDYgQEAgc3RhdGljIGludCBpZ3Rfdm1hX3JlbWFwcGVkX2d0dCh2b2lk
ICphcmcpCiAJCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAkJCXUzMiBfX2lvbWVtICptYXA7CiAJ
CQl1bnNpZ25lZCBpbnQgeCwgeTsKLQkJCWludCBlcnI7CiAKIAkJCWk5MTVfZ2VtX29iamVjdF9s
b2NrKG9iaiwgTlVMTCk7CiAJCQllcnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0dF9kb21h
aW4ob2JqLCB0cnVlKTsKQEAgLTk2Miw2ICs5NjEsNyBAQCBzdGF0aWMgaW50IGlndF92bWFfcmVt
YXBwZWRfZ3R0KHZvaWQgKmFyZykKIAkJCQkJCSAgICAgICAqdCA9PSBJOTE1X0dHVFRfVklFV19S
T1RBVEVEID8gIlJvdGF0ZWQiIDogIlJlbWFwcGVkIiwKIAkJCQkJCSAgICAgICB2YWwsIGV4cCk7
CiAJCQkJCQlpOTE1X3ZtYV91bnBpbl9pb21hcCh2bWEpOworCQkJCQkJZXJyID0gLUVJTlZBTDsK
IAkJCQkJCWdvdG8gb3V0OwogCQkJCQl9CiAJCQkJfQotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
