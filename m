Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C74728BB69
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 270916E520;
	Mon, 12 Oct 2020 14:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418FD6E520
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:53:12 +0000 (UTC)
IronPort-SDR: zN/BbGUsR3OKEdDzoZ4e90ww2X25o+vgqhLnOr6lydLumyJ5nXKs++QirtqaO7EvtYLdlmdrcg
 Ki5mEt/FElqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="145615480"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="145615480"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 07:53:11 -0700
IronPort-SDR: yfankY4tUXB/lTb2gwHqnqVkmPOdM22865YUZgSrLbhdkINwU3mPLCG+qosN9iDmYedX4hX90G
 GOVvOjJNMi0Q==
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="344910584"
Received: from hcollins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.34])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 07:53:08 -0700
MIME-Version: 1.0
In-Reply-To: <20200729102539.134731-2-ayaz.siddiqui@intel.com>
References: <20200729102539.134731-1-ayaz.siddiqui@intel.com>
 <20200729102539.134731-2-ayaz.siddiqui@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160251438500.18661.13885683248555284300@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 12 Oct 2020 17:53:05 +0300
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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
Cc: Spruit Neil R <neil.r.spruit@intel.com>,
 Mathew Alwin <alwin.mathew@intel.com>, Zhou Cheng <cheng.zhou@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Benemelis Mike G <mike.g.benemelis@intel.com>,
 Mcguire Russell W <russell.w.mcguire@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ayaz A Siddiqui (2020-07-29 13:25:39)
> In order to avoid functional breakage of mis-programmed applications that
> have grown to depend on unused MOCS entries, we are programming
> those entries to be equal to fully cached ("L3 + LLC") entry.
> 
> These reserved and unspecified entries should not be used as they may be
> changed to less performant variants with better coherency in the future
> if more entries are needed.
> 
> V2: As suggested by Lucas De Marchi to utilise __init_mocs_table for
> programming default value, setting I915_MOCS_PTE index of tgl_mocs_table
> with desired value.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Tomasz Lis <tomasz.lis@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Francisco Jerez <currojerez@riseup.net>
> Cc: Mathew Alwin <alwin.mathew@intel.com>
> Cc: Mcguire Russell W <russell.w.mcguire@intel.com>
> Cc: Spruit Neil R <neil.r.spruit@intel.com>
> Cc: Zhou Cheng <cheng.zhou@intel.com>
> Cc: Benemelis Mike G <mike.g.benemelis@intel.com>
> 
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 632e08a4592b..f5dde723f612 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -234,11 +234,17 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
>                    L3_1_UC)
>  
>  static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
> -       /* Base - Error (Reserved for Non-Use) */
> -       MOCS_ENTRY(0, 0x0, 0x0),
> -       /* Base - Reserved */
> -       MOCS_ENTRY(1, 0x0, 0x0),
>  
> +       /* NOTE:
> +        * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
> +        * These reserved entries should never be used, they may be changed
> +        * to low performant variants with better coherency in the future if
> +        * more entries are needed. We are programming index I915_MOCS_PTE(1)
> +        * only, __init_mocs_table() take care to program unused index with
> +        * this entry.
> +        */
> +       MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +                  L3_3_WB),
>         GEN11_MOCS_ENTRIES,
>  
>         /* Implicitly enable L1 - HDC:L1 + L3 + LLC */
> @@ -265,6 +271,7 @@ static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
>         MOCS_ENTRY(61,
>                    LE_1_UC | LE_TC_1_LLC,
>                    L3_3_WB),
> +
>  };
>  
>  static const struct drm_i915_mocs_entry icl_mocs_table[] = {
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
