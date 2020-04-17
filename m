Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA331AE4A0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 20:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336F26E486;
	Fri, 17 Apr 2020 18:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8001D6E486
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 18:18:13 +0000 (UTC)
IronPort-SDR: 41JL0S/C3XdnvpUKk3INHSssZ97rogj8I6frcZWXB7YV9k/K0R90LayLG48rsTL4QRKWcGdtls
 6NH6NjUzjFhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 11:18:13 -0700
IronPort-SDR: SkLZvxCZRLFlrcD1EbMrap1dxTQ5BE9dORckYwqUQ23Yye7pjgs8JgrAFskE688v/+1W1DbmKT
 gg2B+xXw+O4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="257657986"
Received: from mjlydon-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.134.73.110])
 by orsmga006.jf.intel.com with SMTP; 17 Apr 2020 11:18:12 -0700
Date: Fri, 17 Apr 2020 11:19:07 -0400
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200417151907.GA22948@msatwood-mobl>
References: <20200416164610.15422-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416164610.15422-1-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Update forcewake firmware
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 16, 2020 at 09:46:10AM -0700, Radhakrishna Sripada wrote:
> Some workarounds are not sticking across suspend resume cycles. The
> forcewake ranges table has been updated and would reflect the hardware
> appropriately.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222
> 
> v2: Simplify the table and use 0 for some unused ranges(Matt)
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 31 ++++++++++++++++-------------
>  1 file changed, 17 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index fa86b7ab2d99..078f5b2eb8a4 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1092,8 +1092,7 @@ static const struct intel_forcewake_range __gen9_fw_ranges[] = {
>  
>  /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
>  static const struct intel_forcewake_range __gen11_fw_ranges[] = {
> -	GEN_FW_RANGE(0x0, 0xaff, FORCEWAKE_BLITTER),
> -	GEN_FW_RANGE(0xb00, 0x1fff, 0), /* uncore range */
> +	GEN_FW_RANGE(0x0, 0x1fff, 0), /* uncore range */
>  	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
> @@ -1103,27 +1102,31 @@ static const struct intel_forcewake_range __gen11_fw_ranges[] = {
>  	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
>  	GEN_FW_RANGE(0x8160, 0x82ff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
> -	GEN_FW_RANGE(0x8500, 0x8bff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x8500, 0x87ff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x8800, 0x8bff, 0),
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
> +	GEN_FW_RANGE(0x24400, 0x24fff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x25000, 0x3ffff, FORCEWAKE_BLITTER),
>  	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
>  	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
> -	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
> -	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
> -	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_BLITTER),
> +	GEN_FW_RANGE(0x1c4000, 0x1c7fff, 0),
> +	GEN_FW_RANGE(0x1c8000, 0x1cffff, FORCEWAKE_MEDIA_VEBOX0),
>  	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
> -	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
> -	GEN_FW_RANGE(0x1d8000, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
> +	GEN_FW_RANGE(0x1d4000, 0x1dbfff, 0)
>  };
>  
>  /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
