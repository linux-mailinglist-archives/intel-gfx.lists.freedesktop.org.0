Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5AF860543
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1E810E9F9;
	Thu, 22 Feb 2024 21:57:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ex7AMTsm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D3110EA9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708639048; x=1740175048;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=e+2PQ78UV8vW7NT51JfXAhgJ9bI19dLqgvnXCRYbg0I=;
 b=ex7AMTsmUa3QcWHDZ42psnyXzcLujukhrYs6KvDafMexiBq60C5rk/97
 lAi/u88DZYfHFzKF2BPXbUz1t4gGsQ6xOvd0HEkMGapiGEvPOszAZ25pD
 a6phTQ9k40YJhMXiBBj3yDw7Sx157C8Pe52owBbSRJFflOGdOLUO2sFKY
 kjqNO5LAo+8IUdqPTBkMGMKQ2wzutp3fkEdbe01OTlMjEnwPtbZewsRbT
 EwaWR4uZ8Z001RsH7/ZxbcuB5v/kHJ9GMyhENQ5bIz/D513g76kl6k7qD
 8pbHtX0r9eRfTHDNQ8RLYjmJAAQhXo/cwxZYZsDvkmhQIwuzJHqAGBWG4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="3060265"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="3060265"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:57:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="28775914"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:57:27 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:57:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:57:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:57:26 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:57:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPJKdeZo+3yA64f6vo6LTPIZ/W+/xy7WW9iPh7ITbcPOdLs9vaDBasinIbsj18tj4w9FQj320FS5fsmJMsvZCt3aBKAmkD8Ip7pyDjrFkq/tLsSrdXiOce9riv4q6uK0wsnSQ1+Ze8FRLz6z5ObsS81xZXcNG9t/YlOc6HnuVGGGyHIPa3++J0JRdE6ZOCG3J1nu9nBp4cYspfifutkvjJLKn4tQy/oWkWLbt8XmbqHmf4JBvQGkKFi3L6EAYTwvCTmvBTUiaOpKYOBEtsbj95sJk6LtMxjBLxt5iM5Krwu1gODeqe+Qi4qNpTVmkUcywSdBxP3YTvedLi1KaqTSqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCiJo0hy0LssBS3d0nGswfBF3b3uGVtqqZ6YUQfsyOY=;
 b=W2Y1+bIqTQC5xrWJY2cllu/rh0qNwACFb8Ood6c0sK2KvCI2ovR//IaWi8W0lr0zSIpHpfCI6S5y4SVIh2xQCA4YUqGRCad2x4/MdUY7se+X6yrm81No7R+z8YijsVMm3cdB2AJBE3RBPhh5rTV9PVUb5jeA702pCL0is1l+j0bCqw4+Nd0RmtBW3B5xKWUxz9GIucfoG5Zjiq1i3jwJkS9IDG42dVK9AghEAWb3xv7R4sACYCxsC6djJBxF/TDeTn+hV0yDovE3x8h+bG9eGYRn9RwSUmfrr+tSqvKgUB4hAMS5ZIS7N8V7eR1UYr3RvekJ9uN8EpwAeE44YEB/jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7969.namprd11.prod.outlook.com (2603:10b6:8:120::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 21:57:24 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:57:24 +0000
Date: Thu, 22 Feb 2024 16:57:21 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/12] drm/i915: Use drm_printer more extensively in
 intel_crtc_state_dump()
Message-ID: <ZdfDQaqmN39ZNft4@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-8-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7969:EE_
X-MS-Office365-Filtering-Correlation-Id: f1e482c7-f8a9-4cae-4569-08dc33f1406e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2m4BhjjmjPRjppncYLlQwzgQMBfERLE5kTQsd2A9ejIvUpF30Pxx7Z/9AkuMrucU974h+HJdqdHdiUacrw6UWvRqHQuFTEQBmvgf+i1XGDAvuLBG+ubFE1XXvQvOUaa9wRbUMst/twapEX9V0fK9QAi2+L6lB+qdJIvEuI0R5/OZiNvEYYZ6q8q3eCubiA94Zk/AhzZDggtZFPrDFJV3uLrKLjmJfZRMuA9sRODFBjzvO8Cm1M259T3dwRx7sdI71JorjPVCkhwtadTI1Rl7QGvw1ZCgtXnpuZeyruUtBtGH6Si75HKucTiWecjyOeip34IeLhdvWZt+8vTTjOyhCkrcunBnR+mCQuU+nwByqBuzyWbXXyRvpntCBAKgmK2xH4Q3tEkVQadXlbtm36ININewhelcN0HtbY/oDoVg2piUi2PNn2azOM6nbjqat2qUW726hr5gMdCEUlvWj4Qtfkuwi/P9wJXmOuYwmliMlevDY9EeIgBOZtM4BftD+yzP2oxrTBMYzLzHz+bEedMBUeVvtCjAdWx5PqquIJFdEZI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pa5fy9vJCtI/+aLa9q+MbsuN05S0TkfM6GJR3EA/3J6QtXwI7pa6gnQlBs?=
 =?iso-8859-1?Q?j8xB5yaLiAXRKKSjFOYS/Z4+3uA8d1Pj/4P6I99vOEnEfPRUsGGoqiEtY7?=
 =?iso-8859-1?Q?a/CTR5B+OLauLry2dCANLPQrF/BKNoIWgpxQxHjUaL2614af1p7icp3xLC?=
 =?iso-8859-1?Q?QUC9QRw0zqRrOQNjdQkaqqFkTMTcznmkEdDjieMr1fxrnNCFHhuQfBNXyv?=
 =?iso-8859-1?Q?DdxKbyMSY9VjgBvlV+poK2QkCp/I81lwzYbqRDvn0ZK+flrDMjTt8dXZcG?=
 =?iso-8859-1?Q?9aOPEhPax55JKQrbL5RJXwbLoBtr7C0RfkY6ntAomkthnHvojGhe6VMwNe?=
 =?iso-8859-1?Q?8+819u6F2x8rfwI9CupHcRDk8j5Qpk5Dg3IvvlgLxu1PZVZljLQbKq+eVw?=
 =?iso-8859-1?Q?qhz0z27c7vomhyyg4pZ+FZ4CYh29Po0kd6UR0XGK0NUcU3m7VG5MNJW7xW?=
 =?iso-8859-1?Q?DCm9xKfZVPdmTxbABSzpJi9cW6/qKgDFkmm87/dqmce1eI16G6exMQ3vHq?=
 =?iso-8859-1?Q?QBTakuqv1aeD/qdLqBCeFWEYaLWO6hFQF3rJlSAL2EZVs49iDMFGFwsvLk?=
 =?iso-8859-1?Q?vvpeqjoxMAxDvLG/c2O29MbhzTpF568en4EVqa/epnWeV2VFXwpTzrX2Ac?=
 =?iso-8859-1?Q?8DQOHozRoM/gSyYD1w8mDx4YhnKyaf5lSqMCcFt2ms0a+zG/PJEvDWpil8?=
 =?iso-8859-1?Q?ZpYiZOVTrvNYaY872F1cCEBplc4OYv506lxJ9Q8bg55y6+NiYRaCqKljmJ?=
 =?iso-8859-1?Q?Uwbx6zSANnOoBHUmilNocwZkB5UfHlkp8ibTvEZ7yRMPwsRzLRsctSbyok?=
 =?iso-8859-1?Q?9hKVzilCEBlmpwoukiRwqGkrDyYrqAR0jjt5J9Ezem59AODuvdXLFeOgZi?=
 =?iso-8859-1?Q?0WIXxdIGMc35SvBzLeXVtzo2Flpnjp2L4OPLgcVVBJ5MfzDAbKyQBu9G4s?=
 =?iso-8859-1?Q?xlAv/Xp03FxB+ti0dspiihDnNZL2KBlJs0Oc2LM6kZfeFawQpkOpJwgago?=
 =?iso-8859-1?Q?NdqeXK0xUAvO8OOC7kyViLsoBtdtGF1+pgDrbuOHOjJ9vA4QtupWlTx+eY?=
 =?iso-8859-1?Q?SLCdSd5BXJYf3yl3Sc7nKeP8W79V4lZdGYjBj6UpDUEDuN9FiXHnScBZ9t?=
 =?iso-8859-1?Q?rbByLc1VqOPNV9GoDC2bKNnPNhM025O/8x1BR8+TrP3mWGJaaIRY0+eo/2?=
 =?iso-8859-1?Q?or6gHWUa9IpaJYLgcf4WEHzbM8razchhM9rn96QdGN0vcqdYYW/YRKGJCe?=
 =?iso-8859-1?Q?dgiwc+Ori2Q9mixgxU96AUuwFMWfUjvp5kdJA91RvgL+p9SNR21j/m9XSO?=
 =?iso-8859-1?Q?jLREs/54XIjYbLfc4fW0my8m2Mf/ebCRaiQtStGITxVSg6XAiDWDUxu+gT?=
 =?iso-8859-1?Q?K990MxqdFLgSAdxhjehRtiKB9kBiSVXDSQTulhTyxdca8t304MPNrpL/DV?=
 =?iso-8859-1?Q?y4kkX7QmNLchtGMBW398IQ1O5c0imbdta2HS9MJRdMkTdybeMmL2UwjPCJ?=
 =?iso-8859-1?Q?Aq5iHZMhst7sFB0C13hJXiRFqm+YruayZEBmnRjeZV+m0PfbFX6n52Mq/Y?=
 =?iso-8859-1?Q?Oc0t2ULOKivRemz5I38OGkDjeUzz34ECzPW97/1wmbAuNYlEqwiA5xQBHS?=
 =?iso-8859-1?Q?trmkQzasTLR7zxAq5BR5kBh7CtXBYyfT8U6wskzp6Gpb3FoJp4THHoPw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1e482c7-f8a9-4cae-4569-08dc33f1406e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:57:24.3616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l3yfOU3dJVFKz8qiYBc8HoD2wr5q6PpJ+PxRPHWBkpSQ9cGtAiku02RVBuIrkfQhdgMoEzPPzBGh483F8JDtcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7969
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 15, 2024 at 06:40:50PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Convert all the direct drm_dbg_kms() stuff in intel_crtc_state_dump()
> over to drm_printf() since we now have the drm_printer around.

looking all this I ask myself if it is really a good idea
to move from the debug helpers to the printf... we need
to keep coming back to where the printer was defined to
know what level we are printing...

well, since the printer is already there, well, let's
use

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

but with some bad gut feeling about the whole change...


> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  | 185 ++++++++----------
>  1 file changed, 87 insertions(+), 98 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 59d2b3d39951..b34fb0e6e46d 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -211,43 +211,40 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  
>  	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>  
> -	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
> -		    crtc->base.base.id, crtc->base.name,
> -		    str_yes_no(pipe_config->hw.enable), context);
> +	drm_printf(&p, "[CRTC:%d:%s] enable: %s [%s]\n",
> +		   crtc->base.base.id, crtc->base.name,
> +		   str_yes_no(pipe_config->hw.enable), context);
>  
>  	if (!pipe_config->hw.enable)
>  		goto dump_planes;
>  
>  	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
> -	drm_dbg_kms(&i915->drm,
> -		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
> -		    str_yes_no(pipe_config->hw.active),
> -		    buf, pipe_config->output_types,
> -		    intel_output_format_name(pipe_config->output_format),
> -		    intel_output_format_name(pipe_config->sink_format));
> +	drm_printf(&p, "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
> +		   str_yes_no(pipe_config->hw.active),
> +		   buf, pipe_config->output_types,
> +		   intel_output_format_name(pipe_config->output_format),
> +		   intel_output_format_name(pipe_config->sink_format));
>  
> -	drm_dbg_kms(&i915->drm,
> -		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
> -		    transcoder_name(pipe_config->cpu_transcoder),
> -		    pipe_config->pipe_bpp, pipe_config->dither);
> +	drm_printf(&p, "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
> +		   transcoder_name(pipe_config->cpu_transcoder),
> +		   pipe_config->pipe_bpp, pipe_config->dither);
>  
> -	drm_dbg_kms(&i915->drm, "MST master transcoder: %s\n",
> -		    transcoder_name(pipe_config->mst_master_transcoder));
> +	drm_printf(&p, "MST master transcoder: %s\n",
> +		   transcoder_name(pipe_config->mst_master_transcoder));
>  
> -	drm_dbg_kms(&i915->drm,
> -		    "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
> -		    transcoder_name(pipe_config->master_transcoder),
> -		    pipe_config->sync_mode_slaves_mask);
> +	drm_printf(&p, "port sync: master transcoder: %s, slave transcoder bitmask = 0x%x\n",
> +		   transcoder_name(pipe_config->master_transcoder),
> +		   pipe_config->sync_mode_slaves_mask);
>  
> -	drm_dbg_kms(&i915->drm, "bigjoiner: %s, pipes: 0x%x\n",
> -		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
> -		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
> -		    pipe_config->bigjoiner_pipes);
> +	drm_printf(&p, "bigjoiner: %s, pipes: 0x%x\n",
> +		   intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
> +		   intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
> +		   pipe_config->bigjoiner_pipes);
>  
> -	drm_dbg_kms(&i915->drm, "splitter: %s, link count %d, overlap %d\n",
> -		    str_enabled_disabled(pipe_config->splitter.enable),
> -		    pipe_config->splitter.link_count,
> -		    pipe_config->splitter.pixel_overlap);
> +	drm_printf(&p, "splitter: %s, link count %d, overlap %d\n",
> +		   str_enabled_disabled(pipe_config->splitter.enable),
> +		   pipe_config->splitter.link_count,
> +		   pipe_config->splitter.pixel_overlap);
>  
>  	if (pipe_config->has_pch_encoder)
>  		intel_dump_m_n_config(pipe_config, "fdi",
> @@ -261,32 +258,30 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		intel_dump_m_n_config(pipe_config, "dp m2_n2",
>  				      pipe_config->lane_count,
>  				      &pipe_config->dp_m2_n2);
> -		drm_dbg_kms(&i915->drm, "fec: %s, enhanced framing: %s\n",
> -			    str_enabled_disabled(pipe_config->fec_enable),
> -			    str_enabled_disabled(pipe_config->enhanced_framing));
> +		drm_printf(&p, "fec: %s, enhanced framing: %s\n",
> +			   str_enabled_disabled(pipe_config->fec_enable),
> +			   str_enabled_disabled(pipe_config->enhanced_framing));
>  
> -		drm_dbg_kms(&i915->drm, "sdp split: %s\n",
> -			    str_enabled_disabled(pipe_config->sdp_split_enable));
> +		drm_printf(&p, "sdp split: %s\n",
> +			   str_enabled_disabled(pipe_config->sdp_split_enable));
>  
> -		drm_dbg_kms(&i915->drm, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
> -			    str_enabled_disabled(pipe_config->has_psr),
> -			    str_enabled_disabled(pipe_config->has_psr2),
> -			    str_enabled_disabled(pipe_config->has_panel_replay),
> -			    str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
> +		drm_printf(&p, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
> +			   str_enabled_disabled(pipe_config->has_psr),
> +			   str_enabled_disabled(pipe_config->has_psr2),
> +			   str_enabled_disabled(pipe_config->has_panel_replay),
> +			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "framestart delay: %d, MSA timing delay: %d\n",
> -		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
> +	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
> +		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
>  
> -	drm_dbg_kms(&i915->drm,
> -		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
> -		    pipe_config->has_audio, pipe_config->has_infoframe,
> -		    pipe_config->infoframes.enable);
> +	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
> +		   pipe_config->has_audio, pipe_config->has_infoframe,
> +		   pipe_config->infoframes.enable);
>  
>  	if (pipe_config->infoframes.enable &
>  	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL))
> -		drm_dbg_kms(&i915->drm, "GCP: 0x%x\n",
> -			    pipe_config->infoframes.gcp);
> +		drm_printf(&p, "GCP: 0x%x\n", pipe_config->infoframes.gcp);
>  	if (pipe_config->infoframes.enable &
>  	    intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI))
>  		intel_dump_infoframe(i915, &pipe_config->infoframes.avi);
> @@ -310,75 +305,69 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
>  				  drm_eld_size(pipe_config->eld));
>  
> -	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> -		    str_yes_no(pipe_config->vrr.enable),
> -		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> -		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
> -		    pipe_config->vrr.flipline,
> -		    intel_vrr_vmin_vblank_start(pipe_config),
> -		    intel_vrr_vmax_vblank_start(pipe_config));
> +	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +		   str_yes_no(pipe_config->vrr.enable),
> +		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> +		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
> +		   pipe_config->vrr.flipline,
> +		   intel_vrr_vmin_vblank_start(pipe_config),
> +		   intel_vrr_vmax_vblank_start(pipe_config));
>  
> -	drm_dbg_kms(&i915->drm, "requested mode: " DRM_MODE_FMT "\n",
> -		    DRM_MODE_ARG(&pipe_config->hw.mode));
> -	drm_dbg_kms(&i915->drm, "adjusted mode: " DRM_MODE_FMT "\n",
> -		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
> +	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
> +		   DRM_MODE_ARG(&pipe_config->hw.mode));
> +	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
> +		   DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
>  	intel_dump_crtc_timings(i915, &pipe_config->hw.adjusted_mode);
> -	drm_dbg_kms(&i915->drm, "pipe mode: " DRM_MODE_FMT "\n",
> -		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
> +	drm_printf(&p, "pipe mode: " DRM_MODE_FMT "\n",
> +		   DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
>  	intel_dump_crtc_timings(i915, &pipe_config->hw.pipe_mode);
> -	drm_dbg_kms(&i915->drm,
> -		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
> -		    pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
> -		    pipe_config->pixel_rate);
> +	drm_printf(&p, "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
> +		   pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
> +		   pipe_config->pixel_rate);
>  
> -	drm_dbg_kms(&i915->drm, "linetime: %d, ips linetime: %d\n",
> -		    pipe_config->linetime, pipe_config->ips_linetime);
> +	drm_printf(&p, "linetime: %d, ips linetime: %d\n",
> +		   pipe_config->linetime, pipe_config->ips_linetime);
>  
>  	if (DISPLAY_VER(i915) >= 9)
> -		drm_dbg_kms(&i915->drm,
> -			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
> -			    crtc->num_scalers,
> -			    pipe_config->scaler_state.scaler_users,
> -			    pipe_config->scaler_state.scaler_id,
> -			    pipe_config->hw.scaling_filter);
> +		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
> +			   crtc->num_scalers,
> +			   pipe_config->scaler_state.scaler_users,
> +			   pipe_config->scaler_state.scaler_id,
> +			   pipe_config->hw.scaling_filter);
>  
>  	if (HAS_GMCH(i915))
> -		drm_dbg_kms(&i915->drm,
> -			    "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
> -			    pipe_config->gmch_pfit.control,
> -			    pipe_config->gmch_pfit.pgm_ratios,
> -			    pipe_config->gmch_pfit.lvds_border_bits);
> +		drm_printf(&p, "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
> +			   pipe_config->gmch_pfit.control,
> +			   pipe_config->gmch_pfit.pgm_ratios,
> +			   pipe_config->gmch_pfit.lvds_border_bits);
>  	else
> -		drm_dbg_kms(&i915->drm,
> -			    "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
> -			    DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
> -			    str_enabled_disabled(pipe_config->pch_pfit.enabled),
> -			    str_yes_no(pipe_config->pch_pfit.force_thru));
> +		drm_printf(&p, "pch pfit: " DRM_RECT_FMT ", %s, force thru: %s\n",
> +			   DRM_RECT_ARG(&pipe_config->pch_pfit.dst),
> +			   str_enabled_disabled(pipe_config->pch_pfit.enabled),
> +			   str_yes_no(pipe_config->pch_pfit.force_thru));
>  
> -	drm_dbg_kms(&i915->drm, "ips: %i, double wide: %i, drrs: %i\n",
> -		    pipe_config->ips_enabled, pipe_config->double_wide,
> -		    pipe_config->has_drrs);
> +	drm_printf(&p, "ips: %i, double wide: %i, drrs: %i\n",
> +		   pipe_config->ips_enabled, pipe_config->double_wide,
> +		   pipe_config->has_drrs);
>  
>  	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
>  
>  	if (IS_CHERRYVIEW(i915))
> -		drm_dbg_kms(&i915->drm,
> -			    "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
> -			    pipe_config->cgm_mode, pipe_config->gamma_mode,
> -			    pipe_config->gamma_enable, pipe_config->csc_enable);
> +		drm_printf(&p, "cgm_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
> +			   pipe_config->cgm_mode, pipe_config->gamma_mode,
> +			   pipe_config->gamma_enable, pipe_config->csc_enable);
>  	else
> -		drm_dbg_kms(&i915->drm,
> -			    "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
> -			    pipe_config->csc_mode, pipe_config->gamma_mode,
> -			    pipe_config->gamma_enable, pipe_config->csc_enable);
> +		drm_printf(&p, "csc_mode: 0x%x gamma_mode: 0x%x gamma_enable: %d csc_enable: %d\n",
> +			   pipe_config->csc_mode, pipe_config->gamma_mode,
> +			   pipe_config->gamma_enable, pipe_config->csc_enable);
>  
> -	drm_dbg_kms(&i915->drm, "pre csc lut: %s%d entries, post csc lut: %d entries\n",
> -		    pipe_config->pre_csc_lut && pipe_config->pre_csc_lut ==
> -		    i915->display.color.glk_linear_degamma_lut ? "(linear) " : "",
> -		    pipe_config->pre_csc_lut ?
> -		    drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
> -		    pipe_config->post_csc_lut ?
> -		    drm_color_lut_size(pipe_config->post_csc_lut) : 0);
> +	drm_printf(&p, "pre csc lut: %s%d entries, post csc lut: %d entries\n",
> +		   pipe_config->pre_csc_lut && pipe_config->pre_csc_lut ==
> +		   i915->display.color.glk_linear_degamma_lut ? "(linear) " : "",
> +		   pipe_config->pre_csc_lut ?
> +		   drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
> +		   pipe_config->post_csc_lut ?
> +		   drm_color_lut_size(pipe_config->post_csc_lut) : 0);
>  
>  	if (DISPLAY_VER(i915) >= 11)
>  		ilk_dump_csc(i915, "output csc", &pipe_config->output_csc);
> -- 
> 2.43.0
> 
