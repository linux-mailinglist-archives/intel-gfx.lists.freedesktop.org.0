Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570A44C8D78
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 15:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0656410E1B6;
	Tue,  1 Mar 2022 14:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A1410E1B6;
 Tue,  1 Mar 2022 14:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646144084; x=1677680084;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NjojBCsmhSp7vBxnEedXZupiso++RjCixpwrwJr/BJ4=;
 b=gjeZB/br+eqkIOcYKDQYvxcZ/OSrhsoT3g8LRIbIssyF0vlb0lGZngJ/
 MPRXFtGkAqnId3B6PRoa3anb/bxWOrYdzae4OEntmDDESlsDSrmN5mI2a
 HFJr3RF2vI73LYLMNjXBVCiKZ7rwI4/LDLZ41AMZUGWhCeUwqhouHfXhA
 aoQE2a9sps9GXr8wxq+SFa2kNPqU3xE831Y6HDdqDYmkYv+MKgtMKEIJ2
 4cn7HirVDwi4Cct4vppAZ3/l2LmE2sjgU5g3Z/d8qSFVhoOnjZLRiZoXI
 diyPX7b8XGFtKg1eEVv+hJ96tiAQ7tCV9oVv89vpCOb9tXpAsllhz9hH7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="316350632"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="316350632"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 06:14:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="575712589"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2022 06:14:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 16:14:24 +0200
Date: Tue, 1 Mar 2022 16:14:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Yh4qQD/hlQCuNUFx@intel.com>
References: <20220228201234.1448613-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220228201234.1448613-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add a DP1.2 compatible way to
 read LTTPR capabilities
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 28, 2022 at 10:12:34PM +0200, Imre Deak wrote:
> At least some DELL monitors (P2715Q) with DPCD_REV 1.2 return corrupted
> DPCD register values when reading from the 0xF0000- LTTPR range with an
> AUX transaction block size bigger than 1. The DP standard requires 0 to
> be returned - as for any other reserved/invalid addresses - but these
> monitors return the DPCD_REV register value repeated in each byte of the
> read buffer. This will in turn corrupt the values returned by the LTTPRs
> between the source and the monitor: LTTPRs must adjust the values they
> read from the downstream DPRX, for instance left-shift/init the
> downstream DP_PHY_REPEATER_CNT value. Since the value returned by the
> monitor's DPRX is non-zero the adjusted values will be corrupt.
> 
> Reading the LTTPR registers one-by-one instead of reading all of them
> with a single AUX transfer works around the issue.
> 
> According to the DP standard's 0xF0000 register description:
> "LTTPR-related registers at DPCD Addresses F0000h through F02FFh are
> valid only for DPCD r1.4 (or higher)." While it's unclear if DPCD r1.4
> refers to the DPCD_REV or to the
> LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV register (tickets filed
> at the VESA site to clarify this haven't been addressed), one
> possibility is that it's a restriction due to non-compliant monitors
> described above. Disabling the non-transparent LTTPR mode for all such
> monitors is not a viable solution: the transparent LTTPR mode has its
> own issue causing link training failures and this would affect a lot of
> monitors in use with DPCD_REV < 1.4. Instead this patch works around
> the problem by reading the LTTPR common and PHY cap registers one-by-one
> for any monitor with a DPCD_REV < 1.4.
> 
> The standard requires the DPCD capabilites to be read after the LTTPR
> common capabilities are read, so re-read the DPCD capabilities after
> the LTTPR common and PHY caps were read out.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4531
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/dp/drm_dp.c                   | 58 ++++++++++++-------
>  .../drm/i915/display/intel_dp_link_training.c | 30 +++++++---
>  include/drm/dp/drm_dp_helper.h                |  2 +
>  3 files changed, 59 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/dp/drm_dp.c b/drivers/gpu/drm/dp/drm_dp.c
> index 703972ae14c64..f3950d42980f9 100644
> --- a/drivers/gpu/drm/dp/drm_dp.c
> +++ b/drivers/gpu/drm/dp/drm_dp.c
> @@ -2390,9 +2390,36 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_S
>  }
>  EXPORT_SYMBOL(drm_dp_dsc_sink_supported_input_bpcs);
>  
> +static int drm_dp_read_lttpr_regs(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE], int address,
> +				  u8 *buf, int buf_size)
> +{
> +	/*
> +	 * Some monitors with a DPCD_REV < 0x14 return corrupted values when
> +	 * reading from the 0xF0000- range with a block size bigger than 1.
> +	 */

This sounds really scary. Have we checked what other registers might
end up corrupted? Eg. couple of rounds of comparing full dd bs=1 vs. 
dd bs=16.

> +	int block_size = dpcd[DP_DPCD_REV] < 0x14 ? 1 : buf_size;
> +	int offset = 0;
> +	int ret;
> +
> +	while (offset < buf_size) {

Can we use a for loop?

> +		ret = drm_dp_dpcd_read(aux,
> +				       address + offset,
> +				       &buf[offset], block_size);
> +		if (ret < 0)
> +			return ret;
> +
> +		WARN_ON(ret != block_size);
> +
> +		offset += block_size;
> +	}
> +
> +	return 0;
> +}
> +

-- 
Ville Syrj�l�
Intel
