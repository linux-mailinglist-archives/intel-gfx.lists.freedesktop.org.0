Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F07F7451
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 13:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A136110E1E9;
	Fri, 24 Nov 2023 12:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E7F10E1E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 12:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700830399; x=1732366399;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=hNJBnXr2JFVNDgGGeUwyn9PeBSbBE2Xqah5x1xPFIvI=;
 b=he0/11ASpDbAm6dcfRGibEAE8J7RR8fE4nROKTORpM3eCrZRR2HGXC9n
 qbNAtBrHaOkQxxvS+cFyjZslql86OCh2iWcQSrTlzbjZSFUdPTZ4kEK8o
 q9st4HY5neG12T+f0RwCPLXgqSkNyvHW1bDCc8VD+R/5pwI/CJF+uHbHA
 Rkb57Li4S+eqh6hyEznHi4lzNTn33LXQVdOd6dkljmZfrPqhWnxguFBtm
 /sah47N5kFlOScUmlHF9MXRSkH08Uu0K1j0Aeql2jFj8kJ9h2lumk8duh
 nDcnc8xImc/G5l3k8qK3nEYCI8HZEx+d+0dLsoNKdgXxS7SzL46yd6Kd2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="395234408"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="395234408"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 04:53:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="940915424"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="940915424"
Received: from dashah-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.230])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 04:53:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Fri, 24 Nov 2023 14:53:14 +0200
Message-ID: <87jzq79uth.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Add Adaptive Sync SDP logging
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

On Thu, 23 Nov 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add structure representing Adaptive Sync Secondary Data
> Packet (AS SDP). Also, add Adaptive Sync SDP logging in
> drm_dp_helper.c to facilitate debugging.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 15 +++++++++++++
>  include/drm/display/drm_dp.h            |  1 +
>  include/drm/display/drm_dp_helper.h     | 30 +++++++++++++++++++++++++
>  3 files changed, 46 insertions(+)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index d72b6f9a352c..a205e14a6681 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2917,6 +2917,21 @@ void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
>  }
>  EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>  
> +void drm_dp_as_sdp_log(const char *level, struct device *dev,
> +		       const struct drm_dp_as_sdp *async)
> +{
> +#define DP_SDP_LOG(fmt, ...) dev_printk(level, dev, fmt, ##__VA_ARGS__)
> +	DP_SDP_LOG("DP SDP: %s, revision %u, length %u\n", "VSC",
> +		   async->revision, async->length);
> +	DP_SDP_LOG("	vmin: %d vmax: %d\n", async->vmin, async->vmax);
> +	DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
> +	DP_SDP_LOG("    duration_incr_ms: %u\n", async->duration_incr_ms);
> +	DP_SDP_LOG("    duration_decr_ms: %u\n", async->duration_decr_ms);
> +	DP_SDP_LOG("    operation_mode: %u\n", async->operation_mode);
> +#undef DP_SDP_LOG
> +}
> +EXPORT_SYMBOL(drm_dp_as_sdp_log);

This inspired me to resurrect a drm logging series I've had [1], in
particular patch [2]. Please let's do this properly.

Also, throughout the series, please don't use "async" for "adaptive
sync". It's bound to confuse people. Async means asynchronous, period.

[1] https://patchwork.freedesktop.org/series/126873/
[2] https://patchwork.freedesktop.org/patch/msgid/95f1e3981fa3c5304f3c74e82330f12983d35735.1700829750.git.jani.nikula@intel.com

> +
>  /**
>   * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
>   * @dpcd: DisplayPort configuration data
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 83d2039c018b..0575ab8ea088 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -1578,6 +1578,7 @@ enum drm_dp_phy {
>  #define DP_SDP_PPS			0x10 /* DP 1.4 */
>  #define DP_SDP_VSC_EXT_VESA		0x20 /* DP 1.4 */
>  #define DP_SDP_VSC_EXT_CEA		0x21 /* DP 1.4 */
> +#define DP_SDP_ADAPTIVE_SYNC	0x22 /* DP 1.4 */

This is completely unrelated to everything else in the patch.

>  /* 0x80+ CEA-861 infoframe types */
>  
>  #define DP_SDP_AUDIO_INFOFRAME_HB2	0x1b
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 863b2e7add29..63b6bef3f21d 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -98,6 +98,36 @@ struct drm_dp_vsc_sdp {
>  	enum dp_content_type content_type;
>  };
>  
> +/**
> + * struct drm_dp_as_sdp - drm DP Adaptive Sync SDP
> + *
> + * This structure represents a DP AS SDP of drm
> + * It is based on DP 2.1 spec [Table 2-126:  Adaptive-Sync SDP Header Bytes] and
> + * [Table 2-127: Adaptive-Sync SDP Payload for DB0 through DB8]
> + *
> + * @sdp_type: secondary-data packet type
> + * @length: number of valid data bytes
> + * @vmin: minimum vtotal
> + * @vmax: maximum vtotal
> + * @duration_incr_ms: Successive frame duration increase
> + * @duration_decr_ms: Successive frame duration decrease
> + * @operation_mode: Adaptive Sync Operation Mode
> + */
> +
> +struct drm_dp_as_sdp {
> +	unsigned char sdp_type;
> +	unsigned char revision;
> +	unsigned char length;

Why unsigned char here...

> +	u16 vmin, vmax;
> +	u16 target_rr;
> +	u8 duration_incr_ms;
> +	u8 duration_decr_ms;
> +	u8 operation_mode;

...but u8 here?

> +};
> +
> +void drm_dp_as_sdp_log(const char *level, struct device *dev,
> +		       const struct drm_dp_as_sdp *async);
> +
>  void drm_dp_vsc_sdp_log(const char *level, struct device *dev,
>  			const struct drm_dp_vsc_sdp *vsc);

-- 
Jani Nikula, Intel
