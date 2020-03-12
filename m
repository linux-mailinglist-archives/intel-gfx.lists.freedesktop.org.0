Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D3C183C40
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCF06E110;
	Thu, 12 Mar 2020 22:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A70F6E110
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:18:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:18:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="237003371"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2020 15:18:32 -0700
Date: Thu, 12 Mar 2020 15:19:55 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20200312221955.GA8846@intel.com>
References: <20200310153745.22814-1-animesh.manna@intel.com>
 <20200310153745.22814-2-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310153745.22814-2-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 1/7] drm/amd/display: Align macro name as
 per DP spec
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
Cc: Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 09:07:39PM +0530, Animesh Manna wrote:
> [Why]:
> Aligh with DP spec wanted to follow same naming convention.
> 
> [How]:
> Changed the macro name of the dpcd address used for getting requested
> test-pattern.
> 
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Reviewed-by: Harry Wentland <harry.wentland@amd.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c | 2 +-
>  include/drm/drm_dp_helper.h                      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
> index 93127bc90f3c..55181bd93c10 100644
> --- a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
> +++ b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
> @@ -2528,7 +2528,7 @@ static void dp_test_send_phy_test_pattern(struct dc_link *link)
>  	/* get phy test pattern and pattern parameters from DP receiver */
>  	core_link_read_dpcd(
>  			link,
> -			DP_TEST_PHY_PATTERN,
> +			DP_PHY_TEST_PATTERN,
>  			&dpcd_test_pattern.raw,
>  			sizeof(dpcd_test_pattern));
>  	core_link_read_dpcd(
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index c6119e4c169a..10ddb622a73e 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -701,7 +701,7 @@
>  # define DP_TEST_CRC_SUPPORTED		    (1 << 5)
>  # define DP_TEST_COUNT_MASK		    0xf
>  
> -#define DP_TEST_PHY_PATTERN                 0x248
> +#define DP_PHY_TEST_PATTERN                 0x248
>  #define DP_TEST_80BIT_CUSTOM_PATTERN_7_0    0x250
>  #define	DP_TEST_80BIT_CUSTOM_PATTERN_15_8   0x251
>  #define	DP_TEST_80BIT_CUSTOM_PATTERN_23_16  0x252
> -- 
> 2.24.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
