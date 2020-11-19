Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C83032B8CFC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 09:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF77189CE0;
	Thu, 19 Nov 2020 08:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB94E89CE0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 08:25:02 +0000 (UTC)
IronPort-SDR: YfbxNnr3yP5WOxfh00HgcVaCDveahHxcIQMpv3q4/i4+25urkieongZevSbAcpi7nbOwbjo+G+
 ZV8fJc3i1QQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="151101119"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="151101119"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 00:25:01 -0800
IronPort-SDR: 52zU5mrl1btKMYXZjl5WWLwEnqUuGoSMyPkmw4/pp8WIYmCmRK2YZpQArvijRK6ldPEz00ALYL
 zULC7COlWjnQ==
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="534675422"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 00:25:00 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kffFJ-0000f4-12; Thu, 19 Nov 2020 10:24:49 +0200
Date: Thu, 19 Nov 2020 10:24:49 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201119082449.GC7444@platvala-desk.ger.corp.intel.com>
References: <20201119071331.10934-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119071331.10934-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not call
 hsw_set_frame_start_delay for dsi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 18, 2020 at 11:13:31PM -0800, Manasi Navare wrote:
> This should fix the boot oops for dsi
> 
> Fixes: 4e3cdb4535e7 ("drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5c07c74d4397..739be96e998d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7211,7 +7211,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);
>  
> -	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)) {
> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
>  		if (!transcoder_is_dsi(cpu_transcoder))
>  			intel_set_transcoder_timings(new_crtc_state);
>  
> @@ -7224,7 +7224,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  			intel_cpu_transcoder_set_m_n(new_crtc_state,
>  						     &new_crtc_state->fdi_m_n, NULL);
>  
> -		hsw_set_frame_start_delay(new_crtc_state);
> +			hsw_set_frame_start_delay(new_crtc_state);


Indentation for this is wrong now.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
