Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8AF6D1DC2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64C510F1AC;
	Fri, 31 Mar 2023 10:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1973210F1AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257900; x=1711793900;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AaLv/tTz2Ks6IGZ+PdaYlBI3Zw350HIkBV8WExBqI3Y=;
 b=TqsBTY6+v2ZROEHQpy2fqVLJcT35EjFKALIYeWaQJxeCSGfve8V7QpHA
 WiLydcDbWmjoXr1MpJxGRoXdoHP0MAcOjxUzj/Iu5BWADSO+W20pf3DFo
 Q6yxeXsXmsez6risiqtP2I3Lg3zxYlf/17VR1nZsSo1BP0OmRgNMxZFFq
 6Fv45c7BxIf4gaPD7GmZZd9cuJBGam/xV8uIrAasStWltraykrz8P11Jn
 iitgdi4a19+WYgW0WB133n2+XEN9e1eqWIKXhZpoJ+E6l0CbOeDvdlF1C
 CKXYmRbqnH6IwdgxialGYydPj7Q6oNl0Vi42/fJnWQ9lFx8quwwvCmAyM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="340141712"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="340141712"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="796068315"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796068315"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 15:46:00 +0530
Message-Id: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] Handle BPC for HDMI2.1 PCON without
 DSC1.2 sink and other fixes
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

Patch 1-2 Have minor fixes/cleanups.
Patch 3-6 Pull the decision making to use DFP conversion capabilities
for every mode during compute config, instead of having that decision
during DP initializing phase.
Patch 7-8 Calculate the max BPC that can be sufficient with either
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

Ankit Nautiyal (13):
  drm/i915/display: Add new member to configure PCON color conversion
  drm/i915/display: Add new member in intel_dp to store ycbcr420
    passthrough cap
  drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
    sink_format
  drm/i915/dp: Configure PCON for conversion of output_format to
    YCbCr444
  drm/i915/display: Use sink_format instead of ycbcr420_output flag
  drm/i915/dp: Add helper to get sink_format
  drm/i915/dp: Rearrange check for illegal mode and comments in
    mode_valid
  drm/i915/dp: Consider output_format while computing dsc bpp
  drm/i915/dp_mst: Use output_format to get the final link bpp
  drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
  drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
  drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
  drm/i915/dp: Use consistent name for link bpp and compressed bpp

 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 494 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  27 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 15 files changed, 437 insertions(+), 203 deletions(-)

-- 
2.25.1

