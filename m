Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA04195DD4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 19:43:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782F96E0E6;
	Fri, 27 Mar 2020 18:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 578236E0E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 18:43:13 +0000 (UTC)
IronPort-SDR: TiMeOgo+AYsIEehUk5Vj5o1yM/Q3cIdFKPwQaumL8Ix8JDN5MBOaRvJcJ5j85++OLpsxDn2A2g
 T5cFPnpOutOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 11:43:12 -0700
IronPort-SDR: 8SNsAGu1VbmrJpb7Q0VmI0uU7zVqPoiaEd+u0S3Y+BR6l+XCuIVo3CYp6qtInuo/ST4zk6Kon7
 FE7XJ4X7aqIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="447518565"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga005.fm.intel.com with ESMTP; 27 Mar 2020 11:43:12 -0700
Date: Fri, 27 Mar 2020 11:45:04 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200327184503.GB22190@intel.com>
References: <20200319215119.GA11219@intel.com>
 <20200324051111.29398-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324051111.29398-1-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v7 6/7] drm/i915/dp: Register definition for
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

On Tue, Mar 24, 2020 at 10:41:11AM +0530, Animesh Manna wrote:
> DP_COMP_CTL and DP_COMP_PAT register used to program DP
> compliance pattern.
> 
> v1: Initial patch.
> v2: used pipe instead of port in macro definition. [Manasi]
> v3: used trans_offset for offset calculation. [Manasi]
> v4: Used MMIO_PIPE for evenly spaced register offset instead
> MMIO_PIPE2. [Ville]
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 309cb7d96b35..465862ed2cf8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9792,6 +9792,24 @@ enum skl_power_gate {
>  #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
>  #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
>  
> +/* DDI DP Compliance Control */
> +#define _DDI_DP_COMP_CTL_A			0x605F0
> +#define _DDI_DP_COMP_CTL_B			0x615F0
> +#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)

This looks good now.

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
> +#define _DDI_DP_COMP_PAT_B			0x615F4
> +#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)

I still dont understand why we need to use that i argument here and why cant just pipe give us the desired offset
with _MMIO_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) ?

IMO we should be able to use the above since even here the registers are evenly offseted (0x605F4, 0x615F4, 0x62F54, 0x63F54)

Regards
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
