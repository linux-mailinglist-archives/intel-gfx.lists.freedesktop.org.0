Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9AB26ACEF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 21:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48E46E8F1;
	Tue, 15 Sep 2020 19:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF2289C18;
 Tue, 15 Sep 2020 19:04:31 +0000 (UTC)
IronPort-SDR: HuXcBuhdF4n3eqAKpsqioBslOSQI6ww0mxu4kpDXa6YWGKK2Ak1CzXaxAu/yZnZRjjbiVEy38X
 xyDztd2t6qDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="138829729"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="138829729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 12:04:21 -0700
IronPort-SDR: 5FIuHz+wpLv9I75nZJ44QarO2AkAvPpiEwMKJxB3GdpIO+9q33aKJU4yAYPTJKV72heBpqvf3S
 lKrm/b9XNIrA==
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="345964726"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 12:04:21 -0700
Date: Tue, 15 Sep 2020 15:06:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20200915190639.GC503362@intel.com>
References: <20200915172939.2810538-1-lyude@redhat.com>
 <20200915172939.2810538-2-lyude@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915172939.2810538-2-lyude@redhat.com>
Subject: Re: [Intel-gfx] [RFC 1/5] drm/i915/dp: Program source OUI on eDP
 panels
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Vasily Khoruzhick <anarsoul@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 15, 2020 at 01:29:35PM -0400, Lyude Paul wrote:
> Since we're about to start adding support for Intel's magic HDR
> backlight interface over DPCD, we need to ensure we're properly
> programming this field so that Intel specific sink services are exposed.
> Otherwise, 0x300-0x3ff will just read zeroes.
> 
> We also take care not to reprogram the source OUI if it already matches
> what we expect. This is just to be careful so that we don't accidentally
> take the panel out of any backlight control modes we found it in.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Cc: thaytan@noraisin.net
> Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4bd10456ad188..b591672ec4eab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3428,6 +3428,7 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
>  void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	u8 edp_oui[] = { 0x00, 0xaa, 0x01 };

what are these values?

>  	int ret, i;
>  
>  	/* Should have a valid DPCD by this point */
> @@ -3443,6 +3444,14 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
>  	} else {
>  		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
>  
> +		/* Write the source OUI as early as possible */
> +		if (intel_dp_is_edp(intel_dp)) {
> +			ret = drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, edp_oui,
> +						sizeof(edp_oui));
> +			if (ret < 0)
> +				drm_err(&i915->drm, "Failed to write eDP source OUI\n");
> +		}
> +
>  		/*
>  		 * When turning on, we need to retry for 1ms to give the sink
>  		 * time to wake up.
> @@ -4530,6 +4539,23 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
>  	}
>  }
>  
> +static void
> +intel_edp_init_source_oui(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	u8 oui[] = { 0x00, 0xaa, 0x01 };
> +	u8 buf[3] = { 0 };
> +
> +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
> +		drm_err(&i915->drm, "Failed to read source OUI\n");
> +
> +	if (memcmp(oui, buf, sizeof(oui)) == 0)
> +		return;
> +
> +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
> +		drm_err(&i915->drm, "Failed to write source OUI\n");
> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  {
> @@ -4607,6 +4633,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
>  		intel_dp_get_dsc_sink_cap(intel_dp);
>  
> +	/*
> +	 * Program our source OUI so we can make various Intel-specific AUX
> +	 * services available (such as HDR backlight controls)
> +	 */
> +	intel_edp_init_source_oui(intel_dp);

I believe we should restrict this to the supported platforms: cfl, whl, cml, icl, tgl
no?

> +
>  	return true;
>  }
>  
> -- 
> 2.26.2
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
