Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C617BE85C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527FA10E0BA;
	Mon,  9 Oct 2023 17:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8CF010E290
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 17:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696873202; x=1728409202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCPg81uT6dezkH2hVM6SDIRyOuX6w9glL6jnh8lBjcM=;
 b=BQXVEXcI90iszgCNltDruMp7XsLAi0M9CjIfRyDtG15cM0cAPiKyTDHW
 JBAi4X/weMucyrc+rhQ5SN5o2EBbpNk93sZO6ioKXvomqpDqJiBwEzizO
 FBywb51tW1ZSf2/nfi5Ndao8eRz1fsM8EHIp5b0tO58y38xHiNmc3aj7e
 Qhm8iC7l6Hc9/j3nwcl28wzv1wVlqIrLe3sZVWKDl036L6KxSK0KeVb6w
 Vy3wQkBLIu7UQmI2vWlADLmiRysud90HU7AVJMtmFitnqm2Sj+SuB94GH
 nKHrjHURRw7OOsCb4Pn0jeTL6KLul1CMe0PFb9mMuI2qc4mop4re3xD3M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450705022"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450705022"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788251457"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788251457"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:40:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 10:29:19 -0700
Message-Id: <20231009172919.1769055-8-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 7/7] drm/i915: Enable GuC TLB invalidations
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

