Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5A3BDF36E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 16:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD7F10E81F;
	Wed, 15 Oct 2025 14:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/CKlq4b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEE210E81E;
 Wed, 15 Oct 2025 14:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760540325; x=1792076325;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AkFteLIUweH7oSgstjfVyfQNUSoqK2drQI6zXQEXil8=;
 b=U/CKlq4bDftg9xTV6HHgwOAytNcJw2TuBpuCwEAxO4LjavWk3t7lclx7
 rlsLQKr7IUtKfniQjIe8SBpzzqTqYji0zcCNaMnrzdme2yyFR5hsnN1Mt
 ry6x8maKlhAVdxm1qnFRtm3c7WiubTDqfYJQnc2q4FsceUui4yLQd7+2a
 ulW+6GNsJiEADfMdfd5NagiWz2W/wWZMQWgsV6BJeKiAa5ZdZ5KvO8Shg
 cUduA4MRAthPvVwWst3nEhG46gccNKiyDaUzOQrOZ3mRom516pXAlc5XD
 DnbV3AGBt+i3KaTJRHv/rv7z/dMsC9t1SJJb2ti6+C3gVh00/eMv1y1B8 g==;
X-CSE-ConnectionGUID: XX8G7T+FQpWrdgGiOqLI1Q==
X-CSE-MsgGUID: RR95hpEBR9KryjYJmcFjPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66579385"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="66579385"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 07:58:44 -0700
X-CSE-ConnectionGUID: Odei/Z+TTXqSIXa4Gkq4cQ==
X-CSE-MsgGUID: UAOM4GBfTAO9OSsDUo5CQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205895948"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 07:58:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>,
 Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Juha-pekka
 Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 14/32] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-14-d2d1e26520aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-14-d2d1e26520aa@intel.com>
Date: Wed, 15 Oct 2025 17:58:37 +0300
Message-ID: <49092d9e223f524bb4a8f478e9cf964a465e7938@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>
> Some of the register fields of MBUS_CTL and DBUF_CTL register are
> changed for Xe3p_LPD platforms. Update the changed fields in the driver.
> Below are the changes:
>
> MBUS_CTL:
> 	Translation Throttle Min
> 		It changed from BIT[15:13] to BIT[16:13]
>
> DBUF_CTL:
> 	Min Tracker State Service
> 		It changed from BIT[18:16] to BIT[20:16]
>         Max Tracker State Service
> 		It changed to from BIT[23:19] to BIT[14:10]
> 		but using default value, so no need to define
> 		in code.
>
> Bspec: 68868, 68872
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c      | 16 ++++++++++++----
>  drivers/gpu/drm/i915/display/skl_watermark_regs.h | 12 ++++++++++--
>  2 files changed, 22 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 9df9ee137bf9..41f64e347436 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3505,7 +3505,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
>  	if (!HAS_MBUS_JOINING(display))
>  		return;
>  
> -	if (DISPLAY_VER(display) >= 20)
> +	if (DISPLAY_VER(display) >= 35)
> +		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
> +			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
> +	else if (DISPLAY_VER(display) >= 20)
>  		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
>  			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>  
> @@ -3516,9 +3519,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
>  		    ratio, str_yes_no(joined_mbus));
>  
>  	for_each_dbuf_slice(display, slice)
> -		intel_de_rmw(display, DBUF_CTL_S(slice),
> -			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> -			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +		if (DISPLAY_VER(display) >= 35)
> +			intel_de_rmw(display, DBUF_CTL_S(slice),
> +				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +		else
> +			intel_de_rmw(display, DBUF_CTL_S(slice),
> +				     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +				     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
>  }
>  
>  static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> index c5572fc0e847..7e0877303e05 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> @@ -41,7 +41,11 @@
>  #define   MBUS_JOIN_PIPE_SELECT(pipe)		REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
>  #define   MBUS_JOIN_PIPE_SELECT_NONE		MBUS_JOIN_PIPE_SELECT(7)
>  #define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
> -#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
> +#define   MBUS_TRANSLATION_THROTTLE_MIN(val) \
> +		REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(16, 13)
> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val) \
> +		REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
>  
>  /*
>   * The below are numbered starting from "S1" on gen11/gen12, but starting
> @@ -65,7 +69,11 @@
>  #define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
>  #define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
>  #define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
> -#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE(x) \
> +		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(20, 16)
> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x) \
> +		REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)

Please just keep the long lines in this file. In this case, I think it's
cleaner.


>  
>  #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
>  #define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)

-- 
Jani Nikula, Intel
