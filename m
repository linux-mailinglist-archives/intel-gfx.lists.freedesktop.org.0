Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E11247C0016
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117A610E397;
	Tue, 10 Oct 2023 15:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F3110E390
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696950810; x=1728486810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCPg81uT6dezkH2hVM6SDIRyOuX6w9glL6jnh8lBjcM=;
 b=e0LISq1sdSNjFd1obf5IHTnvBMuKRKF162iQGXtHqaVwoa8WFtgwuuaS
 G5KGqOAbKwwURiTyz1YCMMenjbfm6e/6iaBMA8Pkj5HXYp6RsBIlaDaGs
 ESQIooRzi3+Tge1NeDT4H4IqH3/+dvPAn/MOqwN+TYsJUBkLAEtPs+9h9
 UqIEsAydVAyogbknWrqkfCStjg6JLL5Vs9fmhrXsD/zQu/0yXY6bHfcHw
 TkIZQINLSp8ES08fU/H8VRdHFmL02LreAxyTWwWYJZjpY6ZlO989XyeZv
 aixNFrXOFNZPutpxJ2ddsSXEiKuQ3ii1PgoCRTBVCUnbIcKp95TJMk/u3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415435756"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="415435756"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:13:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757155025"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="757155025"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:13:29 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 08:02:44 -0700
Message-Id: <20231010150244.2021420-8-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 7/7] drm/i915: Enable GuC TLB invalidations
 for MTL
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable GuC TLB invalidations for MTL.  Though more platforms than just
MTL support GuC TLB invalidations, MTL is presently the only platform
that requires it for any purpose, so only enable it there for now to
minimize cross-platform impact.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index df7c261410f79..d4b51ececbb12 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -829,6 +829,7 @@ static const struct intel_device_info mtl_info = {
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
 	.has_guc_deprivilege = 1,
+	.has_guc_tlb_invalidation = 1,
 	.has_llc = 0,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
-- 
2.25.1

