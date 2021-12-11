Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA92470F38
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 01:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD9C10E689;
	Sat, 11 Dec 2021 00:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489C510E659;
 Sat, 11 Dec 2021 00:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639181294; x=1670717294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nITdbghDSywoGovnxm7f873gTjaw/rZ0ccu9omSKGjo=;
 b=dMV/EDFy8e0oUfvtModkzbfNZV3uJ/MvgolYJ2WWqwR5ANrOibCepo6V
 BEM1n2Mq0d2fLv/d042HQtjkEivfIyt+EU1FDa4VkoTDZyqZdmUCgICH6
 5SlsokEO6145j5moFxYAvqeW+bne25MkRi48oFVV2kPVZQ6dCDRz6TPWD
 /HIdbtxTzznI4eQ/S0CylESjGP36qLEPJCIbVbbamdIFLjORL53DDfWdV
 3l/H/wATd89i90dSVREuGlKaZUVvxCK1IMT37wB9wzLDjyrnrDt+YjU8X
 ObJYwU0+TVU48qUwTzDlHfPqJNypP6XxhVgcEosC0A+4+tF4c6ldUuGVy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="218508342"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="218508342"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 16:08:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="504149995"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 16:08:13 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 16:07:55 -0800
Message-Id: <20211211000756.1698923-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211211000756.1698923-1-daniele.ceraolospurio@intel.com>
References: <20211211000756.1698923-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/uc: Prepare for different
 firmware key sizes
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Future GuC/HuC firmwares might be signed with different key sizes.
Don't assume that it must be always 2048 bits long.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index b7fa51aefdff..01683f5f95bd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -322,13 +322,6 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	uc_fw->ucode_size = (css->size_dw - css->header_size_dw) * sizeof(u32);
 
 	/* now RSA */
-	if (unlikely(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
-		drm_warn(&i915->drm, "%s firmware %s: unexpected key size: %u != %u\n",
-			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
-			 css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
-		err = -EPROTO;
-		goto fail;
-	}
 	uc_fw->rsa_size = css->key_size_dw * sizeof(u32);
 
 	/* At least, it should have header, uCode and RSA. Size of all three. */
-- 
2.25.1

