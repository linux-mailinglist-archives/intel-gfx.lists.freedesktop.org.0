Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD4E6ECCA9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 15:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCA210E453;
	Mon, 24 Apr 2023 13:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C207A10E453
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 13:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682341758; x=1713877758;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jy+c+LYSk94Mkq929bi8qp8tn2tsmpPX08uQZH06Dfg=;
 b=AcPw1RkAFBLOBPeFHKX8AxhZO72KX8d+R4K09gkOQ+XlfpGTtKnhs+a0
 S8/ma/dLolTEHiCM2djsUKwRs57CNaK1FiV4phq2hzlzyYE42t1JgUvog
 mAKc7gSwgtIESLJPhXjsSK8dVXq4AvUXzmtoWw6oPcb/RRf30WLvMfzUH
 JqucF0eYiRlAPXaNQOt9Lqp0Bo4JR/qbbjrguayRk0eQCcU3eJG671sD2
 itSG4kSkxEe9zGbW6jR9hk67sO5J3haGbiPkfYZcQzUaWpR4oX2LJxxx5
 jV1u2EZG1lUAqBIjrifn0ytttZIiqSm6BjFgvg6SC/NqZPTwI6EcqZAbz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="409381676"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="409381676"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 06:09:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="1022706999"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="1022706999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 24 Apr 2023 06:09:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 16:09:13 +0300
Date: Mon, 24 Apr 2023 16:09:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ/eb4WKq9Mvsel@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 00/13] Handle BPC for HDMI2.1 PCON without
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 31, 2023 at 03:46:00PM +0530, Ankit Nautiyal wrote:
> This series fixes issues faced when an HDMI2.1 sink that does not
> support DSC is connected via HDMI2.1PCON. It also includes other minor
> HDMI2.1 PCON fixes/refactoring.
> 
> Patch 1-2 Have minor fixes/cleanups.
> Patch 3-6 Pull the decision making to use DFP conversion capabilities
> for every mode during compute config, instead of having that decision
> during DP initializing phase.
> Patch 7-8 Calculate the max BPC that can be sufficient with either
> RGB or YCbcr420 format for the maximum FRL rate supported.
> 
> Rev2: Split the refactoring of DFP RG->YCBCR conversion into smaller
> patches, as suggested by Jani N.
> Also dropped the unnecessary helper for DSC1.2 support for HDMI2.1 DFP.
> 
> Rev3: As suggested by Ville, added new member sink_format to store the
> final format that the sink will be using, which might be different
> than the output format, and thus might need color/format conversion
> performed by the PCON.
> 
> Rev4: Fix typo in switch case as, reported by kernel test bot.
> 
> Rev5: Corrected order of setting sink_format and output_format. (Ville)
> Avoided the flag ycbcr420_output and used the sink_format to facilitate
> 4:2:2 support at a later stage. (Ville)
> 
> Rev6: Added missing changes for sdvo. (Ville)
> Added check for scaler and DSC constraints with YCbCr420.
> 
> Rev7: Split change to add scaler constraint in separate patch, and rebased.
> 
> Rev8: Rebased. Fixed check for mode rate with dsc in modevalid.
> Fixed scaler constraint as per display version.
> 
> Rev9: Rebased.
> 
> Rev10: Addressed review comments from Ville.
> Dropped patch to check for mode rate with dsc during modevalid, as the
> compressed bpp is already selected with bandwidth considerations.
> 
> Rev11: Fixed the policy to use output format as RGB first if possible,
> followed by YCbCr444, atlast YCbCr420. Also removed the scaler-constraints
> with YCbCr420, as these are handled in scaler code. (Ville)
> 
> Rev12: Added a patch for configuring PCON to convert output_format to
> YCBCR444. Added patch to have consistent naming for link bpp and
> compressed bpp. 
> 
> Ankit Nautiyal (13):
>   drm/i915/display: Add new member to configure PCON color conversion
>   drm/i915/display: Add new member in intel_dp to store ycbcr420
>     passthrough cap
>   drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
>     sink_format
>   drm/i915/dp: Configure PCON for conversion of output_format to
>     YCbCr444
>   drm/i915/display: Use sink_format instead of ycbcr420_output flag
>   drm/i915/dp: Add helper to get sink_format
>   drm/i915/dp: Rearrange check for illegal mode and comments in
>     mode_valid

Apart from a few minor nits that set looks pretty much ready
to go in. Maybe rebase and submit just those so we can push them?

The rest might still need some tweaking, and I probably need 
to refresh mymemory on the FRL stuff before I look at those.

>   drm/i915/dp: Consider output_format while computing dsc bpp
>   drm/i915/dp_mst: Use output_format to get the final link bpp
>   drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
>   drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
>   drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
>   drm/i915/dp: Use consistent name for link bpp and compressed bpp
> 
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   5 +
>  .../drm/i915/display/intel_display_types.h    |  12 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 494 ++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  27 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 ++-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
>  15 files changed, 437 insertions(+), 203 deletions(-)
> 
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
