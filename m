Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C077CACD7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 17:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E9C10E215;
	Mon, 16 Oct 2023 15:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866E610E20D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 15:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697468547; x=1729004547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v4cbeUbH9TT8GkQkRzb+FF3ZRnBOCxSlZs1GDORJp/w=;
 b=ILJIqnCVfDtj33L+0PHILLvUcdpW+poV/TjWWTweQJc+gT1et/jVfABG
 q6H2VgPL5tAqgM1z0epILlau7z9qsxMeyl9GDP9ZuiDZ2rFjAl+pgn/Kh
 x1XzlWE+Ge5vmw47ryQNDqzTUJ9C1cY2oN//15kVhrwiFFwDHzaDPG5Zz
 +but8vH3JgsDFaKKzVBrEE5yRP4dZsJMjKhi0PvvJjqnNw7ZbStCfoo1H
 9KjxWFpZwNJmyzvEIQQ1yeK8Vpft3hoWMQEVFZUj8rBXnO4zf8dM4Di1i
 owavpGd8rCvh+VjuA78+/Hrw2t5Aa5xFXSiKeamjGoGKxOUEsysp5Tv3p Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="389408254"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="389408254"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759429295"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="759429295"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:01:54 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 07:51:09 -0700
Message-Id: <20231016145109.2843611-8-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
References: <20231016145109.2843611-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v16 7/7] drm/i915: Enable GuC TLB invalidations
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
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
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

