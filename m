Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4A146EE22
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:55:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E10D10E5ED;
	Thu,  9 Dec 2021 16:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C44710E117
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 06:03:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="298779400"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="298779400"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 16:59:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="612311339"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 16:59:51 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 16:56:09 -0800
Message-Id: <20211209005610.1499729-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
References: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Prepare for different firmware
 key sizes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Future GuC/HuC firmwares might be signed with different key sizes.
Don't assume that it must be always 2048 bits long.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
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

