Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA07518A36C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 21:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEB16E958;
	Wed, 18 Mar 2020 20:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E666E95C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 20:02:42 +0000 (UTC)
IronPort-SDR: 18sbfbl991gNPe6E2rsIQUpNH152PYIjL4YAh6MkwxzuLFw/pGgebey0w3PQ4ASucoVxPEtp8E
 N7ys1IDOmXzg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 13:02:41 -0700
IronPort-SDR: uzsN3Fma7xLlit/FL7paNCgIJWZZkzr0VM6TW3ujU6u7RelAwuhZv4YWvARpVfILdbdYcTqIE3
 vVNqM7p7EyrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="238285876"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga008.fm.intel.com with ESMTP; 18 Mar 2020 13:02:41 -0700
Date: Wed, 18 Mar 2020 13:04:15 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200318200415.GA6198@intel.com>
References: <20200317001320.GC24231@intel.com>
 <20200318063514.17943-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318063514.17943-1-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 6/7] drm/i915/dp: Register definition for
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

On Wed, Mar 18, 2020 at 12:05:14PM +0530, Animesh Manna wrote:
> DP_COMP_CTL and DP_COMP_PAT register used to program DP
> compliance pattern.
> 
> v1: Initial patch.
> v2: used pipe instead of port in macro definition. [Manasi]
> v3: used trans_offset for offset calculation. [Manasi]
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 309cb7d96b35..8b6c9fbfe74b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9792,6 +9792,22 @@ enum skl_power_gate {
>  #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
>  #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
>  
> +/* DDI DP Compliance Control */
> +#define _DDI_DP_COMP_CTL_A			0x605F0
> +#define DDI_DP_COMP_CTL(pipe)			_MMIO_TRANS2(pipe, _DDI_DP_COMP_CTL_A)

Any reason why you couldnt use _MMIO_PIPE2 ?

> +#define   DDI_DP_COMP_CTL_ENABLE		(1 << 31)
> +#define   DDI_DP_COMP_CTL_D10_2			(0 << 28)
> +#define   DDI_DP_COMP_CTL_SCRAMBLED_0		(1 << 28)
> +#define   DDI_DP_COMP_CTL_PRBS7			(2 << 28)
> +#define   DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
> +#define   DDI_DP_COMP_CTL_HBR2			(4 << 28)
> +#define   DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
> +#define   DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
> +
> +/* DDI DP Compliance Pattern */
> +#define _DDI_DP_COMP_PAT_A			0x605F4
> +#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_TRANS2(pipe, _DDI_DP_COMP_PAT_A) + (i) * 4)

Why cant you use a simple _MMIO_PIPE2(pipe,  _DDI_DP_COMP_PAT_A) ?
The offsets are same as the DP_COMP_CTL

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
