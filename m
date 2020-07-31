Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7607233FF1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 09:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09AF96E0BC;
	Fri, 31 Jul 2020 07:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B95186E0BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 07:24:15 +0000 (UTC)
IronPort-SDR: EeG92sS12kIqRf96nirm7BBagrl8mou4zpS/cXgNcz4pk6qwZK6wi3pICyONVkM86r4Nn7l+0d
 ycU1HMeRf03w==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="216196862"
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="216196862"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 00:24:13 -0700
IronPort-SDR: eEd33LBv0Ws5e/hUUE30fJ64AZNOCd04uZTTbC+6RU2Y0lSA4+csGZbsTcxX4Rn15DW9W367BC
 qrRdjmVhQgZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="435322603"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 31 Jul 2020 00:24:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 00:24:13 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 00:24:11 -0700
Received: from bgsmsx601.gar.corp.intel.com ([10.109.78.80]) by
 BGSMSX601.gar.corp.intel.com ([10.109.78.80]) with mapi id 15.01.1713.004;
 Fri, 31 Jul 2020 12:53:57 +0530
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 1/1] drm/i915/gt: Initialize reserved and unspecified
 MOCS indices
Thread-Index: AQHWZZMf1cfxNGVTdkGahCrQ0N32sakhSvbg
Date: Fri, 31 Jul 2020 07:23:57 +0000
Message-ID: <6464923397924b9ab6a9e0926d61a672@intel.com>
References: <20200729102539.134731-1-ayaz.siddiqui@intel.com>
 <20200729102539.134731-2-ayaz.siddiqui@intel.com>
In-Reply-To: <20200729102539.134731-2-ayaz.siddiqui@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
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
Cc: "Spruit, Neil R" <neil.r.spruit@intel.com>, "Mathew,
 Alwin" <alwin.mathew@intel.com>, "Zhou, Cheng" <cheng.zhou@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, "Benemelis,
 Mike G" <mike.g.benemelis@intel.com>, "Mcguire,
 Russell W" <russell.w.mcguire@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Sent: Wednesday, July 29, 2020 3:56 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>; Chris Wilson <chris@chris-
> wilson.co.uk>; De Marchi, Lucas <lucas.demarchi@intel.com>; Lis, Tomasz
> <tomasz.lis@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>;
> Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Francisco Jerez
> <currojerez@riseup.net>; Mathew, Alwin <alwin.mathew@intel.com>; Mcguire,
> Russell W <russell.w.mcguire@intel.com>; Spruit, Neil R
> <neil.r.spruit@intel.com>; Zhou, Cheng <cheng.zhou@intel.com>; Benemelis,
> Mike G <mike.g.benemelis@intel.com>
> Subject: [PATCH v4 1/1] drm/i915/gt: Initialize reserved and unspecified MOCS
> indices
> 
> In order to avoid functional breakage of mis-programmed applications that have
> grown to depend on unused MOCS entries, we are programming those entries to
> be equal to fully cached ("L3 + LLC") entry.
> 
> These reserved and unspecified entries should not be used as they may be
> changed to less performant variants with better coherency in the future if more
> entries are needed.
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
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> 

I'm getting a false failure with this patch , which I tested locally and its passing
with this patch. I think that this failure is blocking merge of this patch.
Can Someone please let me know how to proceed in this case for merging?

Regards
-Ayaz
  
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 632e08a4592b..f5dde723f612 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -234,11 +234,17 @@ static const struct drm_i915_mocs_entry
> broxton_mocs_table[] = {
>  		   L3_1_UC)
> 
>  static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
> -	/* Base - Error (Reserved for Non-Use) */
> -	MOCS_ENTRY(0, 0x0, 0x0),
> -	/* Base - Reserved */
> -	MOCS_ENTRY(1, 0x0, 0x0),
> 
> +	/* NOTE:
> +	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
> +	 * These reserved entries should never be used, they may be changed
> +	 * to low performant variants with better coherency in the future if
> +	 * more entries are needed. We are programming index
> I915_MOCS_PTE(1)
> +	 * only, __init_mocs_table() take care to program unused index with
> +	 * this entry.
> +	 */
> +	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
>  	GEN11_MOCS_ENTRIES,
> 
>  	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */ @@ -265,6 +271,7 @@
> static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
>  	MOCS_ENTRY(61,
>  		   LE_1_UC | LE_TC_1_LLC,
>  		   L3_3_WB),
> +
>  };
> 
>  static const struct drm_i915_mocs_entry icl_mocs_table[] = {
> --
> 2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
