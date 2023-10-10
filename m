Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4C27C03EA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013FE10E3C8;
	Tue, 10 Oct 2023 18:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E43610E3E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964247; x=1728500247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCPg81uT6dezkH2hVM6SDIRyOuX6w9glL6jnh8lBjcM=;
 b=Fo6cYEcQAk/gxz9x7ICmohrqZ5TO+VxmFlAV0ple17P/RlS+d+VudB+7
 a//ZnWqwbtRQzO1xAfDUO660V4y7qYjxVNJ03wpGPAqIp6FTjWTrLFhGA
 5vreVBrqoZzOwZ0QMv5wPHBxrdFJYUKWEHx2Pe3CriQWhK8sy2m8vRrE/
 Fnk9duiyZJ/GbPgZOV8z3LabxbmCkROkllhUevh729E2TT1htkjTsKbZs
 ONAswKCB5ITZegTARZNndVu7vTTV1NL7uPel4pJb7rqS8T7xnOmbRoUOW
 9ymq037VBLZyaoYoZSfRjYETmH6OOefR8uBNEo8IbSmavZg56AYJ7Jjev g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830089"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830089"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802298"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802298"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:26 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:38 -0700
Message-Id: <20231010184641.2119129-8-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
References: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 07/10] drm/i915: Enable GuC TLB
 invalidations for MTL
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
Cc: andi.shyti@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 nirmoy.das@intel.com
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

