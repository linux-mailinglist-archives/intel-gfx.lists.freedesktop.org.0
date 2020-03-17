Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E2018769F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 01:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEDCC6E519;
	Tue, 17 Mar 2020 00:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9E46E519
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 00:11:50 +0000 (UTC)
IronPort-SDR: ft+sJUp1AzoYRmHnNHiqlvyk1Y4lBVFG8OUSMJyjPZKhsO+9tv3ruKpUd13Jnc/G/CqnoLxYQo
 lXZKQbmMd0RA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 17:11:49 -0700
IronPort-SDR: HU6PDpsLGcCjr3GUBoaGhdlmW/EjEb5ermrTUqqA1xMN4+aiSJPye6Ao2/xOySGwCEfY1MIgP7
 doLarmp/RN1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,562,1574150400"; d="scan'208";a="290849069"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2020 17:11:49 -0700
Date: Mon, 16 Mar 2020 17:13:20 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200317001320.GC24231@intel.com>
References: <20200316103759.12867-1-animesh.manna@intel.com>
 <20200316103759.12867-7-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316103759.12867-7-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v5 6/7] drm/i915/dp: Register definition for
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

On Mon, Mar 16, 2020 at 04:07:58PM +0530, Animesh Manna wrote:
> DP_COMP_CTL and DP_COMP_PAT register used to program DP
> compliance pattern.
> 
> v1: Initial patch.
> v2: used pipe instead of port in macro definition. [Manasi]
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 309cb7d96b35..e93b90e17573 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9792,6 +9792,26 @@ enum skl_power_gate {
>  #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
>  #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
>  
> +/* DDI DP Compliance Control */
> +#define DDI_DP_COMP_CTL_A			0x605F0
> +#define DDI_DP_COMP_CTL_B			0x615F0
> +#define DDI_DP_COMP_CTL(pipe) _MMIO_PORT(pipe, DDI_DP_COMP_CTL_A, \
> +					 DDI_DP_COMP_CTL_B)

Since its pipe based, please try to use _MMIO_PIPE2 like in the def
of PIPECONF

> +#define  DDI_DP_COMP_CTL_ENABLE			(1 << 31)
> +#define  DDI_DP_COMP_CTL_D10_2			(0 << 28)
> +#define  DDI_DP_COMP_CTL_SCRAMBLED_0		(1 << 28)
> +#define  DDI_DP_COMP_CTL_PRBS7			(2 << 28)
> +#define  DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
> +#define  DDI_DP_COMP_CTL_HBR2			(4 << 28)
> +#define  DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
> +#define  DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
> +
> +/* DDI DP Compliance Pattern */
> +#define DDI_DP_COMP_PAT_A			0x605F4
> +#define DDI_DP_COMP_PAT_B			0x615F4
> +#define DDI_DP_COMP_PAT(pipe, i) _MMIO(_PIPE(pipe, DDI_DP_COMP_PAT_A, \
> +					     DDI_DP_COMP_PAT_B) + (i) * 4)

Same here , see if you can use _MMIO_PIPE2 and if the offsets work corectly for
all 4 pipes _A, _B, _C, _D

In both cases, might not even need to define _B

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
