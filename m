Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 779C07500E6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 10:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E03010E06E;
	Wed, 12 Jul 2023 08:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F37FE10E06E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 08:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689149631; x=1720685631;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=baduCXL8AJ2W+LIycba2Buwqi6q0ZLVUhKOIy/0Dkf0=;
 b=CD57M7gjlTyYXdV5MRQMXcWwIOI2mNQ+6CzK96ciieibvONCOgdjGxVc
 KALfB9l7q3zf+qYjbWthugYLwICu3ITbpzq31M/HAQkTRx0Gl0XIgo1bc
 LrPSdIQuEpn7jQDyYc1lww1WtTE6gC+aBqmbNPuX0VpDWKZqcpq5btQDo
 PjrQFaMBjpdwSLOao7cwheEqmuU6wtRfucrlRveVySseg0J75q2AE8Ls4
 yTPXb8TD8ySugIgZOBiZiKs+Vaq8Da7DLGzIypMw46LHLJQRcBpjHENfa
 OdzFwhDenJoWn1jVl2IX9X6sXc06rTR1ItubICnci4h7hxQ01Tvah1qEr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="349685478"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="349685478"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 01:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="791539875"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="791539875"
Received: from rispas-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.142])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 01:13:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87o7kih1uh.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
 <87o7kih1uh.fsf@intel.com>
Date: Wed, 12 Jul 2023 11:13:45 +0300
Message-ID: <87ilaph7ie.fsf@intel.com>
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

On Tue, 11 Jul 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 11 Jul 2023, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>> v2: Add Jani Nikula's change for quirk for sync polarity
>
> This was a quick hack suggestion to try. If it works, I think it works
> by concidence, because a fastset won't update the sync flags in
> TRANS_DDI_FUNC_CTL register. Did not check whether they can even be
> updated while the transcoder is enabled.

Bspec 49198 seems to indicate TRANS_DDI_FUNC_CTL can be changed without
a full mode set.

The sync polarity still needs to be modified in the ->update_pipe()
hooks.


BR,
Jani.


>
>> CC: Jani Nikula <jani.nikula@intel.com>
>> Credits-to: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>
> It would be useful to have a bug report at fdo gitlab with the EDID
> attached.
>
> BR,
> Jani.
>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>>  drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
>>  2 files changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 43cba98f7753..088b45e032aa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>  	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>>  			      DRM_MODE_FLAG_INTERLACE);
>>  
>> -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
>> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS) && !fastset) {
>>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>>  				      DRM_MODE_FLAG_PHSYNC);
>>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 9232a305b1e6..b9eeaedabd22 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct intel_connector *connector,
>>  static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
>>  			     const struct drm_display_mode *preferred_mode)
>>  {
>> -	return drm_mode_match(mode, preferred_mode,
>> -			      DRM_MODE_MATCH_TIMINGS |
>> -			      DRM_MODE_MATCH_FLAGS |
>> -			      DRM_MODE_MATCH_3D_FLAGS) &&
>> +	u32 sync_flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
>> +		DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
>> +
>> +	return (mode->flags & ~sync_flags) == (preferred_mode->flags & ~sync_flags) &&
>> +		mode->hdisplay == preferred_mode->hdisplay &&
>> +		mode->vdisplay == preferred_mode->vdisplay &&
>>  		mode->clock != preferred_mode->clock;
>>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
