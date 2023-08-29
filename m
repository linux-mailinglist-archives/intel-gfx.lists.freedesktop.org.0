Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125E878C0AD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 10:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B612F10E181;
	Tue, 29 Aug 2023 08:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB7910E13C;
 Tue, 29 Aug 2023 08:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693298655; x=1724834655;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=TZ8GYbiuoYBM0DsAI7he8WhUug28zcrVynvf2FJH/bI=;
 b=CHCn/3HTu8kjBf3LObI4JRoRgZmVEQj/URNTRYrptt1ykjh+jT5owheB
 Qk8QmpPmFxnKOiZbUFXW+v5Se8cBdUqmnk/t3D2lVk8b5D8Jf7wo0zmzw
 Oiaj+PpaLTNecr3k/Ni9AsyYKjKRRtgAdv0gArmNjYZPxjp5woZK45ucb
 /yeU15CdvohgYgg2VWeETFzXv2hgPEc5i9UOERgNE8zVHwsuxT9u+EB9R
 0zDHDs9wgbEC1+E8GkjBpk2VecmxGhbd8c8blRbJ9PH2zuDnNHTlDqdT3
 sNvUB3HaqQnrwFNp29EI12+ls21+Z1iDHLRhS9CfRyH2UbNgpOkKwsHyw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="406308880"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="406308880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 01:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="808591990"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="808591990"
Received: from mnefedov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.32.206])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 01:44:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Maxime
 Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230824125121.840298-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230824125121.840298-1-ankit.k.nautiyal@intel.com>
 <20230824125121.840298-2-ankit.k.nautiyal@intel.com>
Date: Tue, 29 Aug 2023 11:44:10 +0300
Message-ID: <87a5ua2q79.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/display/dp: Assume 8 bpc support
 when DSC is supported
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

On Thu, 24 Aug 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> As per DP v1.4, a DP DSC Sink device shall support 8bpc in DPCD 6Ah.
> Apparently some panels that do support DSC, are not setting the bit for
> 8bpc.
>
> So always assume 8bpc support by DSC decoder, when DSC is claimed to be
> supported.

Maarten, Maxime, Thomas, ack for merging this via drm-intel?

BR,
Jani.

>
> v2: Use helper to get check dsc support. (Ankit)
> v3: Fix styling and other typos. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index e6a78fd32380..8a1b64c57dfd 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2449,12 +2449,16 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_S
>  	int num_bpc = 0;
>  	u8 color_depth = dsc_dpcd[DP_DSC_DEC_COLOR_DEPTH_CAP - DP_DSC_SUPPORT];
>  
> +	if (!drm_dp_sink_supports_dsc(dsc_dpcd))
> +		return 0;
> +
>  	if (color_depth & DP_DSC_12_BPC)
>  		dsc_bpc[num_bpc++] = 12;
>  	if (color_depth & DP_DSC_10_BPC)
>  		dsc_bpc[num_bpc++] = 10;
> -	if (color_depth & DP_DSC_8_BPC)
> -		dsc_bpc[num_bpc++] = 8;
> +
> +	/* A DP DSC Sink device shall support 8 bpc. */
> +	dsc_bpc[num_bpc++] = 8;
>  
>  	return num_bpc;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
