Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F71A89D2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 20:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A1A6E529;
	Tue, 14 Apr 2020 18:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D508A6E529
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 18:39:56 +0000 (UTC)
IronPort-SDR: BErHnzDNUpWvHc/SWNHdWFQPXcG7oAzszSdlLKTAudotFfpMy9yz7b1/vwl8aINOBbo24BWzPu
 wLVT1jK32+RQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 11:39:56 -0700
IronPort-SDR: ZtuIpOhHsk6ngGak+hr7nRRKXWjVhx4Kcrtm97vvAEEA8SGo91/r+JBw38q1cThPzXbiGMNifK
 UGvp11RIk+9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="242075997"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with SMTP; 14 Apr 2020 11:39:56 -0700
Date: Tue, 14 Apr 2020 11:39:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20200414183955.GA2715344@mdroper-desk1.amr.corp.intel.com>
References: <20200413090003.13451-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413090003.13451-1-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Update forcewake firmware
 ranges
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

On Mon, Apr 13, 2020 at 02:00:03AM -0700, Radhakrishna Sripada wrote:
> Some workarounds are not sticking across suspend resume cycles. The
> forcewake ranges table has been updated and would reflect the hardware
> appropriately.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222

It's unfortunate that they still haven't updated the bspec for this yet.
A few comments below based on my understanding of the document we
received from the hardware team.

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 55 +++++++++++++++++++++--------
>  1 file changed, 41 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index fa86b7ab2d99..c0e21697a44c 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1098,32 +1098,59 @@ static const struct intel_forcewake_range __gen11_fw_ranges[] = {

Looks like the first range in this table (0x0 - 0xaff) needs to be
changed to '0' (or rather combined with the following entry for a
combined 0x0 - 0x1fff range set to '0')


>  	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_BLITTER),
> -	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x5200, 0x53ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x5400, 0x54ff, FORCEWAKE_BLITTER),

In the version of the document I'm looking at, the wake target for this
entry is blank, which usually means no wake target is required.  AFAICS,
no registers actually fall in this range on gen11, so I'd either set
this to '0' to explicitly match the document, or just leave it combined
with the two surrounding render ranges for simplicity (and smaller table
size).

> +	GEN_FW_RANGE(0x5500, 0x7fff, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0x8160, 0x82ff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
> -	GEN_FW_RANGE(0x8500, 0x8bff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x8500, 0x87ff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x8800, 0x883f, 0),
> +	GEN_FW_RANGE(0x8840, 0x8bff, FORCEWAKE_BLITTER),

I see 0x8840 - 0x8bff as a reserved range with no forcewake target so we
should be able to combine it with the range before it.

>  	GEN_FW_RANGE(0x8c00, 0x8cff, FORCEWAKE_RENDER),
> -	GEN_FW_RANGE(0x8d00, 0x93ff, FORCEWAKE_BLITTER),
> -	GEN_FW_RANGE(0x9400, 0x97ff, FORCEWAKE_ALL),
> -	GEN_FW_RANGE(0x9800, 0xafff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x8d00, 0x94cf, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x9560, 0x95ff, 0),
> +	GEN_FW_RANGE(0x9600, 0xafff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0xb000, 0xb47f, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0xb480, 0xdeff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0xdf00, 0xe8ff, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0xe900, 0x16dff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x16e00, 0x19fff, FORCEWAKE_RENDER),
> -	GEN_FW_RANGE(0x1a000, 0x243ff, FORCEWAKE_BLITTER),
> -	GEN_FW_RANGE(0x24400, 0x247ff, FORCEWAKE_RENDER),
> -	GEN_FW_RANGE(0x24800, 0x3ffff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x1a000, 0x23fff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x24000, 0x2407f, 0),
> +	GEN_FW_RANGE(0x24080, 0x2417f, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x24180, 0x242ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x24300, 0x243ff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x24400, 0x245ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x24600, 0x2467f, FORCEWAKE_BLITTER),

This one is a reserved range with no registers, so we can just squash it
into the two render ranges on either side of it.

> +	GEN_FW_RANGE(0x24680, 0x247ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x24800, 0x249ff, FORCEWAKE_BLITTER),

Also reserved with no registers.

> +	GEN_FW_RANGE(0x24a00, 0x24a7f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x24a80, 0x24dff, FORCEWAKE_BLITTER),

Also reserved with no registers.

So I think we should be able to have just use one render range that runs
from 0x24400 - 0x24fff.

> +	GEN_FW_RANGE(0x24e00, 0x24fff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x25000, 0x3ffff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
> -	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
> -	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
> -	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
> +	GEN_FW_RANGE(0x1c0000, 0x1c2bff, FORCEWAKE_MEDIA_VDBOX0),
> +	GEN_FW_RANGE(0x1c2c00, 0x1c3eff, FORCEWAKE_BLITTER),

This is another reserved range that can be combined into the ranges
around it (0x1c0000 - 0x1c3fff).

> +	GEN_FW_RANGE(0x1c3f00, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
> +	GEN_FW_RANGE(0x1c4000, 0x1c6bff, FORCEWAKE_MEDIA_VDBOX1),
> +	GEN_FW_RANGE(0x1c6c00, 0x1c7eff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x1c7f00, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),

0x1c4000 - 0x1c7fff are reserved for vdbox1, but that doesn't exist on
this platform (we only have vdbox0 and vdbox2 on ICL and only vdbox0 on
EHL/JSL).  So the three entries above should be combined into a single
range with target '0' here.

> +	GEN_FW_RANGE(0x1c8000, 0x1ca0ff, FORCEWAKE_MEDIA_VEBOX0),
> +	GEN_FW_RANGE(0x1ca100, 0x1cbeff, FORCEWAKE_BLITTER),

Another reserved range; can squash with the two surrounding ranges.

> +	GEN_FW_RANGE(0x1cbf00, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
>  	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_BLITTER),

Another reserved range.  Either set to 0 or combine with one of the
ranges before/after it.

> -	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
> -	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
> -	GEN_FW_RANGE(0x1d8000, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
> +	GEN_FW_RANGE(0x1d0000, 0x1d2bff, FORCEWAKE_MEDIA_VDBOX2),
> +	GEN_FW_RANGE(0x1d2c00, 0x1d3eff, FORCEWAKE_BLITTER),

Reserved range; can squash with ranges around it.

> +	GEN_FW_RANGE(0x1d3f00, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
> +	GEN_FW_RANGE(0x1d4000, 0x1d6bff, FORCEWAKE_MEDIA_VDBOX3),
> +	GEN_FW_RANGE(0x1d6c00, 0x1d7eff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x1d7f00, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
> +	GEN_FW_RANGE(0x1d8000, 0x1da0ff, FORCEWAKE_MEDIA_VEBOX1),
> +	GEN_FW_RANGE(0x1da100, 0x1dbeff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x1dbf00, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)

As noted above, gen11 doesn't have vdbox1 or vdbox3, so these entries
should just be set to '0' (including the reserved ranges that you have
listed as blitter right now).

>  };
>  
>  /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
