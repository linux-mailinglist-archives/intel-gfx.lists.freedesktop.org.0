Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08A577F8F9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 16:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C54410E4A5;
	Thu, 17 Aug 2023 14:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8259610E06D;
 Thu, 17 Aug 2023 14:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692282640; x=1723818640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rl25muklPZMQH1OgEFXT+27JkNFiWXtOJyP5s2IupYQ=;
 b=mqZwvCrC+C9nvtTcIzfmYarT61bY3H0wqWP5DwvUPb11fvDry3I/41WI
 hKtMMpa1rZnqClwqaidcuNwNsBkW8nSfGo/zT/euOmXQGZk6wDpv97JA+
 ctrGypbT8Zfle3oV6MuBxLiFoJBcBoNe7vATYItvK797M+p0/+L/9uX38
 UQisblfWGNf5YGG6mlj81KhfAqT1URmAqcNNVCKnAhUugScVG4XdkA4v+
 R0d39AKxx6muyQemh5rPe8HYX8cQP4nSA+CX9iREBdGKysyGkVn+dLM0e
 pDdt500Oo+brp5qfl50wdYthbHa6gfY/wWKqZjH+k0WN3dpcSgUS7e6UJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376581588"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="376581588"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="858244033"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="858244033"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:54:41 +0530
Message-Id: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/18] DSC misc fixes
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

This series is an attempt to address multiple issues with DSC,
scattered in separate existing series.

Patches 1-4 are DSC fixes from series to Handle BPC for HDMI2.1 PCON
https://patchwork.freedesktop.org/series/107550/

Patches 5-6 are from series DSC fixes for Bigjoiner:
https://patchwork.freedesktop.org/series/115773/

Patches 7-17 are based on series to add DSC fractional BPP support:
https://patchwork.freedesktop.org/series/111391/

Rev2: Addressed review comments from Stan, Ville.

Rev3: Split larger patches. Separate out common helpers.

Rev4: Rebased, fixed checkpatch warnings.

Rev5: Addressed review comments from Stan.
Added a patch to check if forced dsc format can be used before forcing.

Rev6: Addressed review comments from Stan.

Rev7: Reordered and rebased.

Rev8: Dropped few patches to be taken into separate series.
Fixed typo in commit message in Patch#2 and rebased.

Ankit Nautiyal (18):
  drm/i915/dp: Consider output_format while computing dsc bpp
  drm/i915/dp: Move compressed bpp check with 420 format inside the
    helper
  drm/i915/dp_mst: Use output_format to get the final link bpp
  drm/i915/dp: Use consistent name for link bpp and compressed bpp
  drm/i915/dp: Update Bigjoiner interface bits for computing compressed
    bpp
  drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
  drm/i915/dp: Remove extra logs for printing DSC info
  drm/i915/dp: Avoid forcing DSC BPC for MST case
  drm/i915/dp: Add functions to get min/max src input bpc with DSC
  drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
  drm/i915/dp: Avoid left shift of DSC output bpp by 4
  drm/i915/dp: Rename helper to get DSC max pipe_bpp
  drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp
  drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with
    DSC
  drm/i915/dp: Separate out function to get compressed bpp with joiner
  drm/i915/dp: Get optimal link config to have best compressed bpp
  drm/i915/dp: Check src/sink compressed bpp limit for edp
  drm/i915/dp: Check if force_dsc_output_format is possible

 drivers/gpu/drm/i915/display/intel_cdclk.c  |  59 +-
 drivers/gpu/drm/i915/display/intel_dp.c     | 651 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  16 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  33 +-
 4 files changed, 596 insertions(+), 163 deletions(-)

-- 
2.40.1

