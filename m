Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FE070BE94
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 14:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863CB10E307;
	Mon, 22 May 2023 12:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2EDC10E307
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 12:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684759335; x=1716295335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OyT18qbGqBjFKPdX7cKnU7af5qBm+WYHIiVfyGidlyg=;
 b=S9/5rirCY2htgGri4chR/M1OH2X94YYP/6fnnGrQQlI+5slol/BApJNr
 iOX7h+BnNhydqWj9YSreJT39ouaJjsy7nV3yRvfPCgc2wJ0bX4ATwCjc1
 MQjktXg4hBAs0NSA6UjuJPzVuSHQKVIHmYm+50t1TGiKuBuzDHokUkbXa
 0rANcsEjUY+2qqxduCbRK4XEICzgcG5RR3zHMPc7zzVtqTC6F9DW/PB3s
 zpVPEkbxwo4JQWuraTXQRCPi68/VRaFyWz0fWHZ4qpPcsEqQQLsrKdo7J
 AXBcdFbaVtVXdIosPKlN+Qp8sps0yi5n6d5ZGW6UE4ay5ae5uRqawo+aV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="381135146"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381135146"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 05:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="697630196"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="697630196"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 05:42:12 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 May 2023 14:42:05 +0200
Message-Id: <20230522124205.368-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Wait for active retire before
 i915_active_fini()
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 andrzej.hajda@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_active_fini() finalizes the debug object, which can occur before
the active retires and deactivates the debug object. Wait for one
final time before calling i915_active_fini();

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8311
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 20a44788999e..bad698bece27 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1710,6 +1710,8 @@ static void release_references(struct i915_vma *vma, struct intel_gt *gt,
 	if (vm_ddestroy)
 		i915_vm_resv_put(vma->vm);
 
+	/* Wait for async active retire */
+	i915_active_wait(&vma->active);
 	i915_active_fini(&vma->active);
 	GEM_WARN_ON(vma->resource);
 	i915_vma_free(vma);
-- 
2.39.0

