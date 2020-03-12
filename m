Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C57BA183D07
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 00:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2458C6E262;
	Thu, 12 Mar 2020 23:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6879F6E262
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 23:07:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 16:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="237017458"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2020 16:07:20 -0700
Date: Thu, 12 Mar 2020 16:08:43 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200312230843.GE8846@intel.com>
References: <20200310153745.22814-1-animesh.manna@intel.com>
 <20200310153745.22814-7-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310153745.22814-7-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 6/7] drm/i915/dp: Register definition for
 DP compliance register
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

Hi Animesh,

Here all the DP_COMP_CTL and DP_COMP_PAT register offsets should
be pipe based like we changed in the intel_dp_update_phy_pattern()
Since it could be on Port B but still use Pipe A and it should in that
case write to DDi_DP_COMP_CTL_A

On Tue, Mar 10, 2020 at 09:07:44PM +0530, Animesh Manna wrote:
> DP_COMP_CTL and DP_COMP_PAT register used to program DP
> compliance pattern.
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 79ae9654dac9..7de4786b4882 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9786,6 +9786,26 @@ enum skl_power_gate {
>  #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
>  #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
>  
> +/* DDI DP Compliance Control */
> +#define DDI_DP_COMP_CTL_A                      0x605F0
> +#define DDI_DP_COMP_CTL_B                      0x615F0

You skipped defs for for _CTL_C and CTL_D (all 4 pipes on TGL)

> +#define DDI_DP_COMP_CTL(port) _MMIO_PORT(port, DDI_DP_COMP_CTL_A, \
> +					 DDI_DP_COMP_CTL_B)

Change this macro accordingly to select from 4 pipe addresses

> +#define  DDI_DP_COMP_CTL_ENABLE                        (1 << 31)
> +#define  DDI_DP_COMP_CTL_D10_2                 (0 << 28)
> +#define  DDI_DP_COMP_CTL_SCRAMBLED_0           (1 << 28)
> +#define  DDI_DP_COMP_CTL_PRBS7                 (2 << 28)
> +#define  DDI_DP_COMP_CTL_CUSTOM80                      (3 << 28)
> +#define  DDI_DP_COMP_CTL_HBR2                  (4 << 28)
> +#define  DDI_DP_COMP_CTL_SCRAMBLED_1           (5 << 28)
> +#define  DDI_DP_COMP_CTL_HBR2_RESET            (0xFC << 0)
> +
> +/* DDI DP Compliance Pattern */
> +#define DDI_DP_COMP_PAT_A                      0x605F4
> +#define DDI_DP_COMP_PAT_B                      0x615F4
> +#define DDI_DP_COMP_PAT(port, i) _MMIO(_PORT(port, DDI_DP_COMP_PAT_A, \
> +					     DDI_DP_COMP_PAT_B) + (i) * 4)

Same here to use pipe based offsets and define PAT_C and PAT_D as well

Manasi

> +
>  /* Sideband Interface (SBI) is programmed indirectly, via
>   * SBI_ADDR, which contains the register offset; and SBI_DATA,
>   * which contains the payload */
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
