Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 600BA5AF242
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 19:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4104F10E70D;
	Tue,  6 Sep 2022 17:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15A110E70D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 17:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662484657; x=1694020657;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nWTrZ67h9tO+RGKsXFtlLmVI3udSf5pxrt6Uyfzfxhg=;
 b=MkbwsfMQAiQmRLA028IEEoXtA+0r1QZ22xoOyi/9uObz6xEh0Seb5V8o
 ZJDHQ3vqwoeVlOR0M8GueQoSFXlOWfRI/X3WpDeYDswDpTPjrbOPTN8Ja
 V6sK7HLtPfmkNY1lp4XrIlBFTXLaDAwDBTopYsX2GTdZ0051P3e6Jg+ja
 AYsX77dFljCuJGrx3f1v/sKZp9vlDf4hCmcdrDby+WLo7SWJreQQYSumm
 kCYF8i13a6oZOo0t0IEDEtHn0fZndfoSTVSpMqTj+nb/Nurm7Pb0RSBlc
 3U1prBw0W/5pVxt2dDnJP02bzSKk3g+BrNLYVvGeYUoILfj+0voLEQuc5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276393860"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="276393860"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 10:17:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="675786168"
Received: from amomin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.228])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 10:17:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220906071457.28881-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220906071457.28881-1-animesh.manna@intel.com>
 <20220906071457.28881-2-animesh.manna@intel.com>
Date: Tue, 06 Sep 2022 20:17:17 +0300
Message-ID: <87pmg88lsy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enabled 2nd pps for dual
 EDP scenario
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

On Tue, 06 Sep 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> From display gen12 onwards to support dual EDP two instances of pps added.
> Currently backlight controller and pps instance can be mapped together
> for a specific panel. Extended support for gen12 for dual EDP usage.
>
> TODO: For dual EDP scenario and panel type invalid (=255), special condition
> check to be added to reject or initialize the panel specific stuff earlier.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

So this is no worse than it already is for GLK and BXT... but they're
actually already broken. :(

As I tried to explain before, since commit 3cf050762534 ("drm/i915/bios:
Split VBT data into per-panel vs. global parts") the VBT
connector->panel.vbt.backlight.controller member gets initialized via
intel_bios_init_panel(). But intel_pps_init() uses that *before*
intel_bios_init_panel() gets called.

Mind you, I don't think the dual backlight controller thing worked
before that either, but the controller field was more likely to be
correct for the first panel. Now, it's only correct by coincidence, as
it's uninitialized.

So it's not only about PNPID panel identification (panel type 255). But
that's related, since we can't move the PNPID identification earlier,
because that needs EDID, and EDID needs panel power, and panel power
needs the PPS index. Which needs PNPID panel identification.

We'll need to do something like:

- intel_bios_panel_init w/o PNPID
- intel_pps_init
- EDID read
- intel_bios_panel_init w/ PNPID

I don't know how exactly this is supposed to work, but I'm also kind of
not tasked to figure it out either right now. ;)

HTH,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 4e770218e29f..a9ed1214a167 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1427,7 +1427,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing = true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>  
> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
>  		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
>  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>  		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;

-- 
Jani Nikula, Intel Open Source Graphics Center
