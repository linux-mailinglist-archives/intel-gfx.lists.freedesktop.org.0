Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iF8XAa1Y72n5AQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:38:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D0347298B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D5410E2A7;
	Mon, 27 Apr 2026 12:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="icbXwVio";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA2C10E2A7;
 Mon, 27 Apr 2026 12:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777293482; x=1808829482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JWgW+1iyD5QoNMTVuXBn4GUNZ1JCpmE5coRR+DQsZIk=;
 b=icbXwViotZG6H235DwJ5vSDa8udkYojX7n+P6ukVLSCqlSVUFro9J7vZ
 aErVOHZuB9GfHSI6KbkWBmznZeWiue6tiJjWb9D8uk9LVQt5Vj2dnYX2k
 c0gCDJ/OeNxmL+KTtuL/fhRaP2o1nagXd8PY/X8ESpxHd4JLcufIhTPwC
 SprU5uAMAZOWMJb2fwNgY/YYL84eMTa5knJS2jUgoUuJBn4R7nENi9ILD
 YwGO8Kp8EpdF7X4GU+ABB1tcvjbSoTanBseB3vWBZuHl4FUf2aHjv/JPm
 jIHzBkVqXTGCoTx+XqlUmao3hr2S6TW4afNsygfwSwDSCzVQhdgxdtwB5 g==;
X-CSE-ConnectionGUID: 3NOMOE2kQvyJCG8/TR0KeA==
X-CSE-MsgGUID: Kd/wiuIaTwe8IIgNS9ODqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78096738"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="78096738"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:38:02 -0700
X-CSE-ConnectionGUID: d+NOszsnSHms7Nhe0/ZNSA==
X-CSE-MsgGUID: gZHm8X10SwS852mrGI7AZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="237591019"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.116])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:38:00 -0700
Date: Mon, 27 Apr 2026 15:37:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Subject: Re: [PATCH] drm/i915/bw: reduce the pm demand peak bw based on
 display data-rate
Message-ID: <ae9YpNyZcfE1k2_m@intel.com>
References: <20260427091116.218021-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260427091116.218021-1-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 88D0347298B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Mon, Apr 27, 2026 at 12:11:16PM +0300, Vinod Govindapillai wrote:
> In xe3+, soc can lower the fabric frequency when the display
> needs less bandwidth than the minimum GV point. The threshold
> has been defined as 20GB/s. So if the required display data rate
> is less than this threshold and the slelected GV point is 0 and
> the GV point peak bw is greater than 20GB/s, we could set the
> peak bw for the pm demand to this threshold. The currentc pcode
> can handle this and adjust the fabric frequency accordingly.
> 
> Bspec: 68880
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 9c3a9bbb49f6..005761baca93 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -52,6 +52,8 @@ struct intel_qgv_point {
>  
>  #define DEPROGBWPCLIMIT		60
>  
> +#define XE3_PEAK_BW_THRESHOLD	20000
> +
>  struct intel_psf_gv_point {
>  	u8 clk; /* clock in multiples of 16.6666 MHz */
>  };
> @@ -1045,6 +1047,7 @@ static int mtl_find_qgv_points(struct intel_display *display,
>  	unsigned int best_rate = UINT_MAX;
>  	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
>  	unsigned int qgv_peak_bw  = 0;
> +	int qgv_point = num_qgv_points;
>  	int i;
>  	int ret;
>  
> @@ -1083,6 +1086,7 @@ static int mtl_find_qgv_points(struct intel_display *display,
>  		if (max_data_rate - data_rate < best_rate) {
>  			best_rate = max_data_rate - data_rate;
>  			qgv_peak_bw = display->bw.max[bw_index].peakbw[i];
> +			qgv_point = i;
>  		}
>  
>  		drm_dbg_kms(display->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
> @@ -1102,6 +1106,18 @@ static int mtl_find_qgv_points(struct intel_display *display,
>  		return -EINVAL;
>  	}
>  
> +	/*
> +	 * For xe3+, if display's required memory bw <= 20GB/s and the selected
> +	 * peak bw of QGV[0] is >= 20 GB/s, we can reduce the peak bw for the
> +	 * pm demand QCLK GV to 20GB/s
> +	 */
> +	if (DISPLAY_VER(display) >= 30 && data_rate <= XE3_PEAK_BW_THRESHOLD &&
> +	    qgv_point == 0 && qgv_peak_bw >= XE3_PEAK_BW_THRESHOLD) {
> +		qgv_peak_bw = XE3_PEAK_BW_THRESHOLD;
> +		drm_dbg_kms(display->drm, "Low display data-rate. Reduce PM demand bw for QGV: %d",
> +			    qgv_peak_bw);
> +	}

I can't figure out what that does. If this is the thing I think it is,
then the plan was to just add a new QGV point (in driver) for the lower
frequency.

> +
>  	/* MTL PM DEMAND expects QGV BW parameter in multiples of 100 mbps */
>  	new_bw_state->qgv_point_peakbw = DIV_ROUND_CLOSEST(qgv_peak_bw, 100);
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
