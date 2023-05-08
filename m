Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBBE6FB09C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 14:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F3010E27E;
	Mon,  8 May 2023 12:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D992B10E27E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 12:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683550315; x=1715086315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m3N7euh39z/3lwtStQh7QF0EIWWZ6x15wFTTc6jvku0=;
 b=gWf3+VlDXhBMr0IOo7Oh3kuJE8l5pyecUteUhsKYw427/LgElyUlVYeq
 T+krDC5Wh6jyBOwWwUipc9An+cbBIfNuRy3Jut8lBUC/QUM5yxkC0NjVV
 rUqLnFaSfu4IalFt7pERfNfs98eZYMpIvGb3yZvfQwg3y8+eQHNrtjb+d
 Iu0aDq2gsAvwF3h4taVw7PgiZgN/4oSqF+h5QqVRcsK8AXbxg5cH7Akaa
 oasRjdP42FTFHW9Oj+llIhpL/5AsS/0TuhYT23oWRUvJugTm3Q2CxGo/x
 BSN15jrVzvogT+ZbJhAl9EQpXcg3fsqztx07t/h4rwRpMDHh02Ksf3gmJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="329994795"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="329994795"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="842675283"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="842675283"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:51:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 May 2023 18:17:09 +0530
Message-Id: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Handle BPC for HDMI2.1 PCON without DSC1.2
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

Ankit Nautiyal (6):
  drm/i915/dp: Consider output_format while computing dsc bpp
  drm/i915/dp_mst: Use output_format to get the final link bpp
  drm/i915/dp: Use consistent name for link bpp and compressed bpp
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
  drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints

 drivers/gpu/drm/i915/display/intel_dp.c     | 237 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  26 ++-
 3 files changed, 187 insertions(+), 90 deletions(-)

-- 
2.25.1

