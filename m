Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F33C1AE3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 23:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C876E9B9;
	Thu,  8 Jul 2021 21:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A8A6E9B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 21:14:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="207775063"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="207775063"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="560755490"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:20 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 14:18:23 -0700
Message-Id: <20210708211827.288601-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/adl_s: Extend Wa_1406941453
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

QlNwZWM6IDU0MzcwCkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
fCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGMz
NDYyMjllMmJlMDAuLjcyNTYyYzIzM2FkMjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTY3Nyw4ICsxNjc3LDkgQEAgcmNzX2VuZ2luZV93YV9p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsKQogCQkJICAgICBHRU44X1JDX1NFTUFfSURMRV9NU0dfRElTQUJMRSk7CiAJfQogCi0JaWYg
KElTX0RHMShpOTE1KSB8fCBJU19ST0NLRVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1
KSkgewotCQkvKiBXYV8xNDA2OTQxNDUzOnRnbCxya2wsZGcxICovCisJaWYgKElTX0RHMShpOTE1
KSB8fCBJU19ST0NLRVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1KSB8fAorCSAgICBJ
U19BTERFUkxBS0VfUyhpOTE1KSkgeworCQkvKiBXYV8xNDA2OTQxNDUzOnRnbCxya2wsZGcxLGFk
bC1zICovCiAJCXdhX21hc2tlZF9lbih3YWwsCiAJCQkgICAgIEdFTjEwX1NBTVBMRVJfTU9ERSwK
IAkJCSAgICAgRU5BQkxFX1NNQUxMUEwpOwotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
