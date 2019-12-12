Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BE211C147
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 01:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6716EC1D;
	Thu, 12 Dec 2019 00:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4694B6EC1D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 00:26:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 16:26:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216101539"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 16:26:32 -0800
Date: Wed, 11 Dec 2019 16:27:52 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191212002752.GC19224@intel.com>
References: <20191114160522.9699-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114160522.9699-1-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 01/11] HAX to make DSC work on the icelake
 test system
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

On Thu, Nov 14, 2019 at 05:05:12PM +0100, Maarten Lankhorst wrote:
> DSC is available on the display emulator, but not set in DPCD.
> Override the entries to allow bigjoiner testing.

In general for these hacks for specific emulator, can we base it on certain i915 parameter like
dsc_emaulator or something to override these values else we might actually affect DSC
behaviour for the actual dsc panels.

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c | 4 ++--
>  include/drm/drm_dp_helper.h     | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
> index 2c7870aef469..3d6038f35ea2 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -1261,7 +1261,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>  		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
>  			return 4;
>  		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
> -			return 2;
> +			return 4;

Is this also needed for the big joiner since it doesnt return 4 slice count?

Manasi

>  		if (slice_cap1 & DP_DSC_1_PER_DP_DSC_SINK)
>  			return 1;
>  	} else {
> @@ -1285,7 +1285,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>  		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
>  			return 4;
>  		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
> -			return 2;
> +			return 4;
>  		if (slice_cap1 & DP_DSC_1_PER_DP_DSC_SINK)
>  			return 1;
>  	}
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 51ecb5112ef8..2ebd7feffd90 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1270,6 +1270,7 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpc[DP_DSC_RECEIVER_CAP_SI
>  static inline bool
>  drm_dp_sink_supports_dsc(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
>  {
> +	return dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT];
>  	return dsc_dpcd[DP_DSC_SUPPORT - DP_DSC_SUPPORT] &
>  		DP_DSC_DECOMPRESSION_IS_SUPPORTED;
>  }
> -- 
> 2.24.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
