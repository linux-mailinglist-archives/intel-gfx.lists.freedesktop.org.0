Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6E3743C4F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 15:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852E210E46D;
	Fri, 30 Jun 2023 13:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D8810E166
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 13:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688130136; x=1719666136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1SLYOap5WhOh41APlDuLsmiIE0styTCK9dMc/49/2qc=;
 b=GvkswVr0xw6wYfKleRh6YMhWWCg8lFlsFkEfWPZvLwktkPt10hZd78Cp
 qYPMI9fJxBluItpVqdUfpLW4rhSh4UYwAKywnzpv9ZCgNkPKvvRnwR8mN
 1s8Ah4HgHriy33zk7gumS71v32eP3ECR7AkRqhf56HQBSA3f7e1RYDBB+
 tOWZrNRTVAafTFKrVIMBj7OZ/bybZqaHngJROshUs5OcNDxML63z2+AUJ
 VpglG+GVmq4Tn4AGlIl0Pj9HHI0oteTyI/jjRIO9qLGuwvKEqVlvsSxmq
 gks/YDyNZeO8Den1AmklzZ8mruN8ea8hS0BLFGURjoj7c+nLvO3sxn7ef g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="341970859"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="341970859"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 06:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="752987986"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="752987986"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 06:01:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:27:46 +0530
Message-Id: <20230630125748.4141993-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Handle BPC for HDMI2.1 PCON without DSC1.2
 sink and other fixes
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

This series fixes issues faced when an HDMI2.1 sink that does not
support DSC is connected via HDMI2.1PCON. It also includes other minor
HDMI2.1 PCON fixes/refactoring.

Patch 1-3 Have minor fixes to consider output_format while computing
dsc_bpp and have consistent naming for pipe_bpp, link_bpp and
compressed_bpp.

Patch 4-6 Calculate the max BPC that can be sufficient with either
RGB or YCbcr420 format for the maximum FRL rate supported.

Rev2: Split the refactoring of DFP RG->YCBCR conversion into smaller
patches, as suggested by Jani N.
Also dropped the unnecessary helper for DSC1.2 support for HDMI2.1 DFP.

Rev3: As suggested by Ville, added new member sink_format to store the
final format that the sink will be using, which might be different
than the output format, and thus might need color/format conversion
performed by the PCON.

Rev4: Fix typo in switch case as, reported by kernel test bot.

Rev5: Corrected order of setting sink_format and output_format. (Ville)
Avoided the flag ycbcr420_output and used the sink_format to facilitate
4:2:2 support at a later stage. (Ville)

Rev6: Added missing changes for sdvo. (Ville)
Added check for scaler and DSC constraints with YCbCr420.

Rev7: Split change to add scaler constraint in separate patch, and rebased.

Rev8: Rebased. Fixed check for mode rate with dsc in modevalid.
Fixed scaler constraint as per display version.

Rev9: Rebased.

Rev10: Addressed review comments from Ville.
Dropped patch to check for mode rate with dsc during modevalid, as the
compressed bpp is already selected with bandwidth considerations.

Rev11: Fixed the policy to use output format as RGB first if possible,
followed by YCbCr444, atlast YCbCr420. Also removed the scaler-constraints
with YCbCr420, as these are handled in scaler code. (Ville)

Rev12: Added a patch for configuring PCON to convert output_format to
YCBCR444. Added patch to have consistent naming for link bpp and
compressed bpp. 

Rev13: Few patches of original series are merged. Rebased the patches
and addressed few comments from Ville on last series.

Rev14: Use new wrapper for checking frl/tmds downstream constraints
while getting max bpc also.

Ankit Nautiyal (2):
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
  drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints

 drivers/gpu/drm/i915/display/intel_dp.c | 86 ++++++++++++++++---------
 1 file changed, 56 insertions(+), 30 deletions(-)

-- 
2.40.1

