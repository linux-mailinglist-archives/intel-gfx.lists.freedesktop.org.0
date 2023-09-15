Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B77787A23E7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602B210E64B;
	Fri, 15 Sep 2023 16:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B0C10E64B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694796561; x=1726332561;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=PO72Bbe3U0eKROIIc3a3Mx+yXv+yclcSpRIuWT2keYE=;
 b=OhA8vE1ustiE5znZj1zKjai5gvnx/sF7AeGqjljUKnLIhjt5CZ5hAvlF
 f7pWKZ+k9Wu22wO/vXsUlE/FWIGJv04152Jt4V2DmcZ8P4L/ggoiN4ZRH
 CoSvAF4v4xDqN0SmYqN3dS3hAL7hhgHFsftq9u8RwHUGnrX8PN8XcNcBk
 9Pu6SKint3um+PSxn7duDafVe6c9XQkRRNXTv8aTZqJkQaRzfVnwVJPVp
 Ae4C859i59FOvdakqyXYqoOc/Qsg8dIbAT/WVB5HQ07qiC90ug5EAjnTB
 FkzrGea9YnAE4nsgfhZHNgzvw7tXsDg+q3WiNVRvr/kde/LFZq3KjfXgN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="358713636"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="358713636"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="918713042"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="918713042"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 09:49:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:49:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:48:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 09:48:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 09:48:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PHDKxS/OvFBzVsHpaB0rvMHJfNWvGlcP5c32zFGyf8MuxUvyX+w/yoW7wS3aFqrgvo9s0Fmnt4qGIAcC/9a1jkaxgYjJK6JqQc/pDtIWykgFaPXoVSNy2N+8Fkqcp/wnRNCx3k0WJovPSBcplbUpuQ549g3ooqMLuv2LghHJN4R98+iDtAXtV27Epn5bv+6kBphhF8K5eYkb2HorNTtBG2DrrS9n9uByRH6uVOQG8VLHvc4WdUY/EQPRfaI9hO2Pd4IT1jXqQyYbSXv6gaJkcMJoK4gqPYBj/bYj0ruhJKCCAU9WV5yoIJLLl4qF7Ks5uC+VmvcaJgHgGFuk0IPmPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sF522bC/RIi4xTjfI0B+wwAnId9DZvcCES4JFyjX6pw=;
 b=etMNGmfifwhiSzSBbu03Uh3fvj4+EzYOTjp05/+EqrUAi3ZSUFUwCmXya4RbPQ90nsoM8ch3h2eHmqQkajHqIuTYY32vfxMgKAaLyZMeFtRWUNajn7set2edxOHAsBa0zI7vWL4xhx4+HpIZnbmtLNotjf0J15xDYZy42OfIgmU9ncMGD1Aonvv2pbJ9oTp0E0sjtwveNLBJ7QSXiPTSFwQMWyKMmOYfDsY2m39WQtX4PzddkPU9ExKfeFt16Bgi46SWJplhuMYKIK03XBC/cZkFNAmkwVrfDs9duRFuIF/1TFGXKVKwzQUDUcFECtbk4YmHROzmyPJpl2bA2NPesw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5261.namprd11.prod.outlook.com (2603:10b6:5:388::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.21; Fri, 15 Sep 2023 16:48:58 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 16:48:58 +0000
Date: Fri, 15 Sep 2023 09:48:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20230915164854.GA2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0103.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::18) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5261:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cc8ed3c-f4e0-4dde-c0be-08dbb60ba74a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gUPeFhAXj+Wr5sA9nqRemqAHpOqeJCXIFihXdpv9UMqvu2gtM1AshwehGSltoT+sqc+PHj4cb4Ksg7yBJ/xNJ8B3kmNO0rpRbNyzXJCL1eLxrq6NFescOVvQgGlPqLTpuapk0bwlIadCDUSLVurFWyo+Lq1VLIi9uiqRf2/ly2VyfmRwR0ZO0F4Hw7jIaQq8CR/LyDdNltlvPHLNd/xsvwiLvzHe3lsx2ZgCoTpNCfxRYTrOGhWPWur0wig9KjNpTirbp8GpfGjN+RTnnoBkEkoIv0Jk7JlxZFdVZi9Qhmip6t1W5/2yWTmzkrI2v1cV6TxiRXmHqnldztbnmNDnaoiHBTEJwepyKAgglwjx1pT5pOFztzr4OBXGqnDycw07ksrd5Uqi88vb17+SsngTmzYn4Cd+X3GItmxV3T12QuguJ4vm1I8FmUcAFlaEfHa+h6OgyCII8dFQuHfszjFsYrT8iUeRhJBvLNN6EmM12OHAr3OaSHRjn2gg5YOPGHq+Jg1S0BzdqctIV77PTcfo/L6D72ql13ElWnXl8eTciezw1l4UPDVAQXsajmqbJngL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(136003)(396003)(376002)(1800799009)(186009)(451199024)(86362001)(6666004)(478600001)(66574015)(83380400001)(2906002)(1076003)(26005)(6506007)(6512007)(33656002)(6486002)(4326008)(316002)(8676002)(8936002)(6916009)(41300700001)(66476007)(82960400001)(66946007)(66556008)(38100700002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?FDU7PHfxFqGl+vYsAxb04bRCk5Lft3nWS2L5UMR1e2JKlkv4YK4U4aw5Zv?=
 =?iso-8859-1?Q?orfKpmc75HZPJi6t4A1t+jf3ATyhyn/tJru1U6hOGdI7xxlhE8ajnKPxWZ?=
 =?iso-8859-1?Q?8Kua/UsyEvUbGawsclIaTkfSReNzmD1wekNiiXQKXxKJsPmJ7aaKuSAEcx?=
 =?iso-8859-1?Q?BsfnMUbGQ6CMydp3If4klN3zRVJJlBL9gOeV6vblOULbi3m/7OPj9SsuLL?=
 =?iso-8859-1?Q?UZaorDKEHdhRMJSWIa9Zl7/dvx0oe/+UEBzhcG14BMUC9pPXbPjOzv6NPI?=
 =?iso-8859-1?Q?K75M0OZlxCg8forwdkwmKTv4QvbuNggcKRpt8BGddPap53YHol9WcilPl0?=
 =?iso-8859-1?Q?FzvaLjz46EGn0fAOovDdJmmrMx3F7IQlQZrTIPRJfm/58ZQfaUtRAtaPJW?=
 =?iso-8859-1?Q?MRkE4M93gIuLY6OqWQShr9KXuaZTRzjJREo6v1o6X6f69pT8f7opD8MYgP?=
 =?iso-8859-1?Q?jXtvudEkZLJh3/MIvib5yPtPR2K9hZs4KhvF3lM2Pp7P6Lhhaw3vdrZbvp?=
 =?iso-8859-1?Q?xZnIC200bCn4ovVsgLRRR3ennueMR3b1yOdVPBOJgbM/DneIsmxmKnpjCe?=
 =?iso-8859-1?Q?T4dxixsvkd2jwtnIW3VE0E11Tzhofgav+Hnu1/rSwomP7DIV3z3TLYxOM5?=
 =?iso-8859-1?Q?YUxajrYCT/zuBR0DSxXIOclpgfSGMDQUtYfaQkViZYLL+B6yBmUsVrBM8h?=
 =?iso-8859-1?Q?04tJ0Bai+v+kXw32V3GT7cG2EkP6xYHPLeVOcAqvvNvbRj4DrMhkdNBfrV?=
 =?iso-8859-1?Q?rU2Wk4asS0KqfVOq9o6hHgagJzPT+/RgG7QcQ/RQiuV2RFRqoX2h0zveTI?=
 =?iso-8859-1?Q?1beg/d8QJ8JxagbhWFODGaZf/rqy4nKDr5SzHOT6KtfPNTPty7oaPHvCEP?=
 =?iso-8859-1?Q?dzPZlFubiQFuhykBfA21FdJZrOI/DlwtZjr4pMGAwCh26M0fY7kOAZLAZq?=
 =?iso-8859-1?Q?5HS9SrRgYU51FdZat2JsGYNqMlqGISYa3zESnD4on6OZnfiz49XXRG28Nx?=
 =?iso-8859-1?Q?MVzPZLKViWhMrGYj10DNX+FlLF5ZW1dH4+EJoGBPw1eBzLdisUxAsTL235?=
 =?iso-8859-1?Q?eCyRW0LlqlLgqdy/sb+rg3o9AHH4o3d7pUsf20xLbFyDJl0Dmyu4+FTj7t?=
 =?iso-8859-1?Q?gnP8P012P1sTbmOknAdwAqOXNEsF/rZJSDCMF5yUkCwsvN3SoRcuQYX27R?=
 =?iso-8859-1?Q?IvCvlbf7EsN6buWflZonnPD1GOR8cQhnq8XWi8zzjcYUi8Iid5/aRCAfGs?=
 =?iso-8859-1?Q?wrlEblnIOl7BYPWDqxHdRtuZVKVGNsotqDDH3iHny9N/YMFPhCsMr6u+mo?=
 =?iso-8859-1?Q?bpnI0LM+/MmnI6iL1bHFEvJvWn0Vsb3wFd9jvxFjlBBLhVRgeQf6SKvZY/?=
 =?iso-8859-1?Q?yw59L6Co8l31oGFrPXv1cGzgPpusAvD3yg6UW3vlLrHUVqQM6R8e+lSkhu?=
 =?iso-8859-1?Q?DJEuiPl5Ggd548K06zgqcJVFSDnX9h4NNqjHIs2yKZ844leWVcNQDHyFS0?=
 =?iso-8859-1?Q?QjUQhgCmCCKkjuE13y590rXWzJzZyO2UNhp+7wHoyFHivOADSYJg/7InfB?=
 =?iso-8859-1?Q?WVe/yPkDaKUh4II8m/wFWoP+LPnplmETR9tY9s1rl4/uE+T1HvsbxoPyk8?=
 =?iso-8859-1?Q?yTHFlsDPTJ219WuDdd6+WyDZKweqjJtnfBp1vtpBCu/b3Ex7Hecq2H9A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc8ed3c-f4e0-4dde-c0be-08dbb60ba74a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 16:48:57.6404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YSswNFw0rNg+NPLYiXR18x+Pwekd2GMwwFwuxAufyfZ1Mn4nLsEj/SdPptsAo82YsN+AskREuayxD4vqysibUAm4ltrKk3biQuHgnRynyQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5261
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/fbc: Remove ancient 16k plane
 stride limit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 14, 2023 at 02:38:50PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The 16k max plane stride limit seems to be originally from
> i965gm, and no limit explicit limit has been specified since (g4x+).

There are maximum limits specified on the PLANE_STRIDE register pages
(bspec 7667, 50416, 69877).

display version 9 - 10:   max 8k pixels and 32k bytes
display version 11 - 12:  max 8k pixels
display version 13 - 20:  max 128k bytes


Matt

> So let's assume the max plane stride itself is a suitable limit
> also for the more recent FBC hardware.
> 
> In fact even for i965gm the max X-tiled stride is also 16k so
> technically we don't need the check there either, but let's
> keep it there anyway since it's explicitly mentioned in the
> spec. Gen2/3 have more strict limits checked separately.
> 
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 817e5784660b..1b3358a0fbfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -866,7 +866,8 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>  	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
>  		return stride == 4096 || stride == 8192;
>  
> -	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
> +	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
> +	    (stride < 2048 || stride > 16384))
>  		return false;
>  
>  	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
> @@ -874,9 +875,6 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>  	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
>  		return false;
>  
> -	if (stride > 16384)
> -		return false;
> -
>  	return true;
>  }
>  
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
