Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC62760D2A5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 19:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FC9510E252;
	Tue, 25 Oct 2022 17:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4820110E252
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 17:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666719704; x=1698255704;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=yE+bpsP4xHHZR6G+GWeQEyrQClg2pgojSKaZdaamFRM=;
 b=lCs3ky3bqDJBeebuNyDeec/WLfmeSKs1v8yDmQ9X7n3G1ttBDI7lQ+oJ
 zvDcXR+VAkIx9geNJ8gRjUqEqgyfRbbOFRr4KeRX5EAjcZxZMLMQknaeB
 rn6QO4ZVZ7MucZ/Mhsnr0DOSnAkRV8+hLTbm6d7NEbEV0s4V/QfI0JGIn
 BRxZOlpIfffNd5lhoBFq/wfcnpeL30+dK6iLRKQgFp395e5AlLCVaMinn
 RNXydEdw+ILtajUk0Ew9XcB+dFV+TGHa7pkmpZHDCJ3MYbaOK26vGfjdM
 gZ6P8Vz9FaBeOtLWCYsrTL79+7+haudfbeU1Hi2FdnDproOMpBkF2mDrx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309434605"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="309434605"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="664995779"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="664995779"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2022 10:41:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:41:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 25 Oct 2022 10:41:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 25 Oct 2022 10:41:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ru+0S6Sr7yGItYOhzD0PNaark7agsoc3wmzy4018EU9Cr7dX7bANlMlzT6DSJ0QnQfVEbZly3nq40mCJgaqsjQxDKKHZI6szfdCzJrQn4qym2RMhA1nAvKA/Xhe9UhKIbwQQnIwBCF5SM8NArzGcNYbs0CUBLaeHTvMo7bEl5nCFFngyZC5g1G03R8w3BtQ+orX2mOC01FR18aKVqBpXTwt79+tb7MHPqCyj7xv5QQ5KoBmm9JF/adIgoIHm0/7ZUc5cD1K61FR+qAtZH03u90nhILkTlSj3Y7mSnR9vEqeGJDu0OGMYjQtiIkqavarL99EVMK6BAv455b9sldXM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utXWgkEZNJ86YfoJh36c6LxBFSUxr/U70jA8hFrB5LQ=;
 b=H5A7Oo2YtruwO+tqqvoPNOGw1NlrPQHVnG9QXnW/zRQyD8eqW6Auty0QXiMkfXOZQiy0kmG7E/Uxa9hzJ19WIOd8M4NL2+j/CIFuXfJrAqLCpCBefRnkhwC5+wjJ2J9QorTPThZRqTjoz58Iw9Bxmo+6OmeCJCxZAwHo8EYDWUztjvhHl0FERmDhqrPMoXq5iGJ0p5fCn41VXh1GkwQqLvR+mkniO7Xy0Jx3dd2G/DmqSgAz89+lZKVlTTSrVwDwsqAlKpAprw4Xyh31lcl8UwtdSC+HdA4Gzdr6BVW9yosrOvaqoHLGPysWWuxWX+YCSn1/XFlKo+en8/cKDb0KnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB5913.namprd11.prod.outlook.com (2603:10b6:510:137::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Tue, 25 Oct
 2022 17:41:29 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5746.021; Tue, 25 Oct 2022
 17:41:29 +0000
Date: Tue, 25 Oct 2022 23:11:21 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1gfwSUEsnJl41py@bala-ubuntu>
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
 <20221021213948.516041-2-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021213948.516041-2-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN2PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::6) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB5913:EE_
X-MS-Office365-Filtering-Correlation-Id: 972464e4-2ff6-4bc1-4eeb-08dab6b025d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d4qdxBYNy6CsjH4wUelTbfsCbM+eXrvulk3MsxxUn/5nW6hVC6EMc8deX6jY/zZtlyZT9mQ1xL/uV1RoHBRGIRlh2LsUUq8IAgUfXzZg/hnPogrWm3HlglVBW5O2gA6RnjRjQ+3FAMTMxMeIUTkt5GY4XTy26N4jyXziLPvWvOnBXJegV3mW7+XLWs6flmp6cjl1YKgHFpGLqKRERqu2cWkxurC3XNG9heR8eNxVOVEcpqZ7ChwcTMPZ/hM7/YQtFB6NCQWgRf2+0WGLOJaB40l0q9Xr7rBHZzY1bUhu9xsR1RopuEE2KQJga0afvG78LrY5qr0xkx/UgUAbC3L5jx8+IpRQF2z5e1c5seILv6S72FXsgkTSFqoBuCSmdIZ6EtOugAI0EIE4zmBRFMUsaXYo6ytY6HHJon5F5RAOj0w+d6c/czkz4iBiy3K4WI/sPsxNRWT2NeXwPp1UNIddb8OriPoKwxd3B81FPXYZH4TdLVqVdUxwmuJUrE/7DYaS/NtYQTjSIAI3hKiqISFABHBwLfpHpDqTcsOHWE5Lz0DBqGsIpu6x0BOc2G+1g22wrdqkIA0V2OrOTY8FVmSWzgHQc04UQ3X0Pf96PgnWWGWPO/aY4r+38rki43GjePx3BruTP0oGLM00plyylEtbKH4U3BQ6VuKA/h9BXW8TE9zE5p6cM/my/9Fs0SSvrKV7VAZlSD+EFnKg10MkaEFhAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(346002)(39860400002)(376002)(396003)(366004)(451199015)(8676002)(5660300002)(8936002)(44832011)(316002)(4326008)(478600001)(26005)(53546011)(6486002)(41300700001)(6512007)(9686003)(2906002)(186003)(6506007)(66476007)(66574015)(33716001)(82960400001)(86362001)(66946007)(83380400001)(66556008)(38100700002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEs5QUFQcVRVa2p6clphcHh4dVRxbkNIc3FUall4L2QxMXJPcDRacG8zaERX?=
 =?utf-8?B?aVQ0b21Wd29ReXYzTDgzZFFjMHZCNGdOOVlxR3c2WXpXSTd0WlZqdk5zSzVv?=
 =?utf-8?B?bWtIa2pQUFR1UVJwWUhGTzFQY2VHOGUwd01EdjFDajJKR2xGcGNpSWwxOFd0?=
 =?utf-8?B?SG1DVVFwQkNxL25oVllCMHNYVVMzQW9ja2Q1SkdoK0wwRmJEZjNtTFVzaysx?=
 =?utf-8?B?ZU56dEx1RmppQVlnZWVBL3NQSDJlelAzdzl4QWl5cUhsdVAwbjJsMGl2Q3Uy?=
 =?utf-8?B?Sm1tT014NEpYSU9TekI4OUpXRGs5aFZqQkdhV0ZjU1M2TEJnc09GSW91N1U5?=
 =?utf-8?B?NEhOdUJNQWhOenhXaW1oT29QVStvcm9LekorU3hBTWQ5OVdMdGc4NlYyUDVh?=
 =?utf-8?B?MVpXbmJ1bWJqU0FDbE5kQ0pPYStQS2d0M2c4NWZyWFRSVVVHb211RFJvdFFt?=
 =?utf-8?B?UFlPamxtM3JzT2F5YWhRQ2JHQ212ZGlyTUpJaWJZTmFrdktzNkdDeE9GNkVK?=
 =?utf-8?B?ZktxWWtRaXM4Q2lickJsSCtFNEl1Z2VZV0ptRDU5SisranBCN1ZmSUU3dFZs?=
 =?utf-8?B?b0FzNG5WSHBBaENLamFSNGZsS3F0QVVwdWVER29JVks4Vit5bmc3TUxaMDA2?=
 =?utf-8?B?ZVNlTkhLcVdyVkZOTWJFWUVMWWprdmlMNHpYVEFFS05HWmNaTG9pT093QU1Y?=
 =?utf-8?B?MXNTZzVIQ1JVWFFadzlGeHo5T3ZZZGVFbkNWYmtEWmdzSmgyL0JaaEExWGZw?=
 =?utf-8?B?WHJzZHlNMEFLQzRLcktHaS8yNmViTnUyZzJWSXREcGdsODhUQ2NpaGR1ZDBX?=
 =?utf-8?B?aGNzYjRSa2ZaTGdaMS9IVHhBbjJlTkw4ZjNyamlGSmppL3dCQ2tON291TkhL?=
 =?utf-8?B?eVhqZHgwTnp2Z1dZSzMwd1MxQTBZVkdqM2J5WXZraVBnV05CRHFnVGdMYVJE?=
 =?utf-8?B?dEFiRmdWeUtYRVBqamRpMmhBUzJ0YnljVisvaUVTcXp2MExSb1BFOUNMTlJo?=
 =?utf-8?B?aDBSRTB3S0JPUVZRRzEvWTkrdnNmYUM3NXRnMjNCV25OOTd6ek9NN0dxR3Jr?=
 =?utf-8?B?eWQwY3FaK0xrR1E0Nyt4TVlJQWlUcFRZbUFZeWt3VXNjSkxCRzJTMGpRNmlo?=
 =?utf-8?B?U3EzOVAvU0hHVXBpUlNhT2dOcXJlRzJNeExxS3MrSE16UGlUc3Rzc1JHVzR6?=
 =?utf-8?B?eWpSbi9ZZ1p5VVBnZmRlNGNPSUtVdTkrckZ0aHYrTWliOHVkNWJEL2xNMkhu?=
 =?utf-8?B?cm02all2VXU2Rnkrb2ppYnRNdE0vWTlDM1FZRjZGd0ZPWmcwYUdwNEdiQWZL?=
 =?utf-8?B?K3dvYlN1ZThHQURLMDl2SGVSNGY4VFdMZnkxekZVa2xRWEhtV0lEQnlJekVW?=
 =?utf-8?B?bVRrTU9qK3daeHBEcjVEY2tiNUc4WHYrU3JudEtiY3RweFRwbXJuZHdQcGZi?=
 =?utf-8?B?ZU9vYWZabkZ4VjJPUEZjTjM3QVVpMW50eDRma2hIdjA1ZTNocjN2WHdZWUVX?=
 =?utf-8?B?R1Z0SndsWnozZjNobTZ0elJHblhLcHVzVThRK0FIMFBRUE8zSVNhOWlZUGsw?=
 =?utf-8?B?bXp0QW1vMzNBK3MxdFJ0NmFOSUVmdmJDKzI5SDJQNEt6VWdLTzBFdjR4SXk0?=
 =?utf-8?B?bVliWlE1YWdkZjhKTGZlVlA2ek5LQjBkclNSMzBqaVc1ZEtFL2JkSDN6WmpG?=
 =?utf-8?B?Ri9MbWFuaUJrTi9YaXdhVWcveDlQTkVmYWtkbEVqandyS1Y1WlZoQ2NuOWFI?=
 =?utf-8?B?Um5qYUZPRFo4NHlFUm1ZdENjV0FCblFNbWJ5cW9xaEVsWWJlUzhvRnl2bmxK?=
 =?utf-8?B?MDJPQ3I1NlJvbHZoNGxRMFdMM2lReVhQbHpEc0UzRXo4SW5YR1Y4RndCdWdJ?=
 =?utf-8?B?UHBSUUJ2dDloSVRraWlGcE8xOThSakRQelFVei9SV3NCUzMzZEJkM2ZxTW1q?=
 =?utf-8?B?NUMwOVlBdUFsUDlMSkdHSnVBVllsS3Yvd0xQc3pPYzBOc25mSjhTMlpMMlFo?=
 =?utf-8?B?YUNPaGFieVloK1J0L3duOWU5Z0tSNDFiZ3Bpd3hXQllFZ1gvQ3JGcVRHajlB?=
 =?utf-8?B?KzRLVyswdDI5S3pkT1pRbW9JQ2Z4NjdCRUtpbDNCRDUyTVZWclJZRmZLMnB4?=
 =?utf-8?B?d3NVK0liZDFZYUo3akJiRVNsd3N4aG12UDZSMEJLbmF2eGwrWGxCVVh1VTRB?=
 =?utf-8?Q?jsc1keV+INkdL8QZ00ugm6Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 972464e4-2ff6-4bc1-4eeb-08dab6b025d9
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 17:41:29.3875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R1OUstXa7lMf2DqwY7jTOF/w6Q4I0HzaFLI5HmpfheY6XKzc16VNt1RhjfnKTXYtDPV/KzxT67E3VsNOp9PDo77r/aHbET8e8QysSDFYBCH2t3YFBjIgMNcJ+y1LoOZE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Change terminology
 for cdclk actions
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

On 21.10.2022 14:39, Anusha Srivatsa wrote:
> No functional changes. Changing terminolgy in some
> print statements. s/has_cdclk_squasher/has_cdclk_squash,
> s/crawler/crawl and s/squasher/squash.
> 
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ad401357ab66..0f5add2fc51b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1220,7 +1220,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>  
> -static bool has_cdclk_squasher(struct drm_i915_private *i915)
> +static bool has_cdclk_squash(struct drm_i915_private *i915)
>  {
>  	return IS_DG2(i915);
>  }
> @@ -1520,7 +1520,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	if (has_cdclk_squasher(dev_priv))
> +	if (has_cdclk_squash(dev_priv))
>  		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
>  
>  	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
> @@ -1747,7 +1747,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (has_cdclk_squasher(dev_priv)) {
> +	if (has_cdclk_squash(dev_priv)) {
>  		u32 squash_ctl = 0;
>  
>  		if (waveform)
> @@ -1845,7 +1845,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	expected = skl_cdclk_decimal(cdclk);
>  
>  	/* Figure out what CD2X divider we should be using for this cdclk */
> -	if (has_cdclk_squasher(dev_priv))
> +	if (has_cdclk_squash(dev_priv))
>  		clock = dev_priv->display.cdclk.hw.vco / 2;
>  	else
>  		clock = dev_priv->display.cdclk.hw.cdclk;
> @@ -1976,7 +1976,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (!has_cdclk_squasher(dev_priv))
> +	if (!has_cdclk_squash(dev_priv))
>  		return false;
>  
>  	return a->cdclk != b->cdclk &&
> @@ -2028,7 +2028,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (has_cdclk_squasher(dev_priv))
> +	if (has_cdclk_squash(dev_priv))
>  		return false;
>  
>  	return a->cdclk != b->cdclk &&
> @@ -2754,12 +2754,12 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  				   &old_cdclk_state->actual,
>  				   &new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Can change cdclk via squasher\n");
> +			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
>  					 &old_cdclk_state->actual,
>  					 &new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Can change cdclk via crawl\n");
> +			    "Can change cdclk via crawling\n");
>  	} else if (pipe != INVALID_PIPE) {
>  		new_cdclk_state->pipe = pipe;
>  
> -- 
> 2.25.1
> 
