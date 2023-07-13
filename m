Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FCE75230C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 15:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6C489160;
	Thu, 13 Jul 2023 13:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79DF610E6D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 13:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689253804; x=1720789804;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=oP89+WoOELed5dMAPGNb3PsH8rzpgDRY8uc/k0lJeMc=;
 b=Gh4r6OU0grSAuOO547TOT8kIIA77vhpP8o+/GHLj2BIhm8POMJvS48M0
 8eNf3In4/46CqqkvJc+ddVafhhJKx0nh1dOtD0ekkWnWdUt6E0vOT8Y0V
 D+oG2ZSSz+KjJUFZCaP+FTuVQ8H7FRObGm9/KE9Rw++bWVd38qA6hLqPv
 tZvtDKRoFvAaXmo7+rZF1mXmxlwx1tWYuvSgg5DvRIOVhAw74Wgo27odn
 wVuE9L1YRR4PmQu3IcYf6p0PUy5+xFwlLGuhf0PAeBlrifL9qZiXHgixw
 NqCU+KkOSaCWcIhN3Vbd3k1S0Af+IfIOq4OFjI6BJibqxGqmJstd8Z+fl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="344774216"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="344774216"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:08:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="968611954"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="968611954"
Received: from atadj-mobl1.amr.corp.intel.com (HELO localhost) ([10.252.50.30])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:08:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB4204E1633B31119E05BA58238936A@DM6PR11MB4204.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
 <87o7kih1uh.fsf@intel.com> <87ilaph7ie.fsf@intel.com>
 <DM6PR11MB4204E1633B31119E05BA58238936A@DM6PR11MB4204.namprd11.prod.outlook.com>
Date: Thu, 13 Jul 2023 16:08:39 +0300
Message-ID: <877cr4ez6w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
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

On Wed, 12 Jul 2023, "Srinivas, Vidya" <vidya.srinivas@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Wednesday, July 12, 2023 1:44 PM
>> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
>> differing sync polarities
>>
>> On Tue, 11 Jul 2023, Jani Nikula <jani.nikula@intel.com> wrote:
>> > On Tue, 11 Jul 2023, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>> >> v2: Add Jani Nikula's change for quirk for sync polarity
>> >
>> > This was a quick hack suggestion to try. If it works, I think it works
>> > by concidence, because a fastset won't update the sync flags in
>> > TRANS_DDI_FUNC_CTL register. Did not check whether they can even be
>> > updated while the transcoder is enabled.
>>
>> Bspec 49198 seems to indicate TRANS_DDI_FUNC_CTL can be changed
>> without a full mode set.
>>
>> The sync polarity still needs to be modified in the ->update_pipe() hooks.
>
> Hello Jani,
>
> Thank you very much. Apart from sync polarity, VRR panel is doing full modeset between
> refresh rates 165 to 60Hz due to vrr.vmin, vrr.vmax, vrr.flipline and vrr.guardband mismatch.
> Can VRR panel do seamless fastset between 165Hz and 60Hz? Kindly let me know.
> Thank you.

I think it should be possible, even if the driver does not handle it
properly atm.

Not sure if it can be combined with VRR itself. I guess typically you'd
change the refresh rate instead of fastset when you're using VRR, but if
you're not using VRR, would be great to be able to have DRRS and
fastsets between the modes.

BR,
Jani.

>
> Regards
> Vidya
>>
>>
>> BR,
>> Jani.
>>
>>
>> >
>> >> CC: Jani Nikula <jani.nikula@intel.com>
>> >> Credits-to: Jani Nikula <jani.nikula@intel.com>
>> >> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>> >
>> > It would be useful to have a bug report at fdo gitlab with the EDID
>> > attached.
>> >
>> > BR,
>> > Jani.
>> >
>> >
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>> >>  drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
>> >>  2 files changed, 7 insertions(+), 5 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> >> b/drivers/gpu/drm/i915/display/intel_display.c
>> >> index 43cba98f7753..088b45e032aa 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >> @@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct
>> intel_crtc_state *current_config,
>> >>    PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>> >>                          DRM_MODE_FLAG_INTERLACE);
>> >>
>> >> -  if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
>> >> +  if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)
>> &&
>> >> +!fastset) {
>> >>            PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>> >>                                  DRM_MODE_FLAG_PHSYNC);
>> >>            PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
>> >> b/drivers/gpu/drm/i915/display/intel_panel.c
>> >> index 9232a305b1e6..b9eeaedabd22 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> >> @@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct intel_connector
>> >> *connector,  static bool is_alt_drrs_mode(const struct drm_display_mode
>> *mode,
>> >>                         const struct drm_display_mode *preferred_mode)
>> {
>> >> -  return drm_mode_match(mode, preferred_mode,
>> >> -                        DRM_MODE_MATCH_TIMINGS |
>> >> -                        DRM_MODE_MATCH_FLAGS |
>> >> -                        DRM_MODE_MATCH_3D_FLAGS) &&
>> >> +  u32 sync_flags = DRM_MODE_FLAG_PHSYNC |
>> DRM_MODE_FLAG_NHSYNC |
>> >> +          DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
>> >> +
>> >> +  return (mode->flags & ~sync_flags) == (preferred_mode->flags &
>> ~sync_flags) &&
>> >> +          mode->hdisplay == preferred_mode->hdisplay &&
>> >> +          mode->vdisplay == preferred_mode->vdisplay &&
>> >>            mode->clock != preferred_mode->clock;  }
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
