Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8D06070B9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 09:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A60510E5CA;
	Fri, 21 Oct 2022 07:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD13D10E5CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 07:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666336315; x=1697872315;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tXyVvb8y9gziM/2cZY23CfC5ob9F/Oi2Y7Siwj5/0Lg=;
 b=JOtI5Ucl6AjTOQIEAgnOU2YBmD4yJbk3DL0dcwtcLjzzDDevUzOJWKIl
 NpuFKqJTelcCjba76GZjuTQNWH+mQSMKEPmf05tJsqbRLZ89XTJbkbFSX
 4cbkXshUsqCtzDb+n0gvPGT5SEJQu86Zejon0gGv+VdLFZ2vrArcZMNfs
 pYTqgfhjdw4xPzAOgUisn+FKynvVsv5fVQW5o6Jnd2gGknilNVg+y/iFO
 cZ0BYCQL/xH5grDg4YcG7m3HRcXcoqKAbzEvlTlW7zyArf8i699rydFQx
 1E20sy1DVx6h7qf4ZhLThc6+3CPzYnPSuXqWxVVp+5+9kNwD/aCUBNbwE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308032387"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308032387"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 00:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="581432539"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="581432539"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 21 Oct 2022 00:11:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:11:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:11:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 00:11:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 00:11:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ufxdxiew8M6ziu3X8c2VLA2fyS5lyiU27y9McWMyjB4ib/sNtfwHeZWyZos2P5m7gWWsl/mRgA26LXF21D49/yCdTmsd4dJ29MA4lqovjW+fkNsdVcGj6Ux2lsgIt1LTQkgYBd7joUqN3UKWoeGzfCP5N9/erRhNRjFcGCyaiItYXwhVGy6COnYuDPIe/G2BaFM2n4hz+stOqcfvaBErU+QH5bU/u3bup8JRgG20iv06XV/iTLOdld05RGXL9F8ax+r6/N/tybZNESIYuBm0O6sj6bg1pEs4UbyHsDY6Jq0ROnX51xixbbDmCu6mnnVo4jGIN5T7RiFi6UZDHh8ZJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Al3v1tjXiYsVa1uubTeviK0rfOCRq9lK1v89iPF65o=;
 b=hqWGMFDq/6afGwOoY1Luc0yq2BJmDmTlEc7rJ9osT1OaCrdbxZh9vsM2vbyphgX/JNutjDZ9baWFkAul5PS66Bhyy7i6CRwrdyblNttMBnwz60nk/qHDWeQZiJpiBA+5T70w2D/cL1YoEOT91ICwDTjIuhvWKu260wFXbvCgX21YjJNLgQj730Kj0Mjt6SPZXQAM0BIxenyoFb0NoaH3LNllOrbN2Dnfxceglxiom2xy0oJhufl/c05Ojr2RTJeeN2DConPdIQbknGyV/r0NXpGf0Jy1oAiyco4t/g58BQLcTDbypbESh4xxJgMg8/Ekk9MxcJE9Zfcb5GNH+i78sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 07:11:37 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 07:11:36 +0000
Date: Fri, 21 Oct 2022 12:41:27 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1JGHxF2PsEFeCNd@bala-ubuntu>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-3-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021002024.390052-3-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN3PR01CA0017.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::16) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SA2PR11MB5033:EE_
X-MS-Office365-Filtering-Correlation-Id: c8521f07-c9af-403f-74be-08dab3337e12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QVIhXkZvC4tOdVBFpASOGhLHdnCa6TaP5BHfT3YRiJDZbfLn15Hin9G+fv9DWWs0wApRDdqed9Hc4pbZRrm1mNlhOPaAooCGPVLhHcmH3sgCGutmx9R1Q6xpnLvfnc7Tp+P4dGY2a1fQhZFjKbr2UQvHCjrGNe41J9qUROIGEEZcmtNpEtsBS5A4dA257WCh1U8DJISTnUUGr7Bl/vmtoQQ1nKCIGldbk4OWATnIae6G9UP7pa/sbUHJFVGW8tCboK0R/TV91mb1bdMAfwW9qrTz51LEwXaNSe1JoBSTf0KgRhO0vEjKPNjfbgWGXACW8WfAKfyUnHOvwGnj/UpecmodN6FPc0dmEmC+Ft4Lk1Sd31sXSJrLsE9SSMyGvpkdI1ty6Dk81GKDkSYlEmfOer9ojCJE/LCYiedYtvDsK3dANCCsNaFc2KAobB8KGxQNG+Ut6QE7Lh9RGyvHyF4OijHnYViA51VoT3GkZibMtvItRtEuskdW+I1td7mga13O7YBiqWfPSN/fwMoKaCaPBtMFpsrgLAxiFcsbBljHBBGWv/muNe/F2xElsk4DF7z+ZK5rQkACLg5LMTlFQzGEoZXMTO7Hrv1ddX+2htaz01vqoYgzeHAMvo6Td4uAGlObCnHksg2wdQ8i+YDlTvXUR6f7RMwf4zaEUaix+STdc8UawASC4DzqKPq4EVfek/pzSfXNau0yCSJBFxJXhscZhA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(136003)(396003)(366004)(346002)(376002)(451199015)(82960400001)(38100700002)(33716001)(6486002)(478600001)(6512007)(9686003)(2906002)(186003)(316002)(8676002)(4326008)(53546011)(66476007)(66556008)(6666004)(6506007)(66946007)(44832011)(5660300002)(26005)(41300700001)(83380400001)(86362001)(8936002)(66574015);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlV2WmljaURTUllNYmNkYmFlTnpmakQ2V3pVU3pNS29tSEYza1JaZmlCZDY0?=
 =?utf-8?B?bm9QbFk1MVJweExySC9UQy81S1prQ253SE9nSkttSmMyaEVkSnovV1p0SXRw?=
 =?utf-8?B?ekloL0JkanZDdE1Lb3pXNkYzdlArTGQxTk1hdWc5allKMmYydnkxT3hMTjdP?=
 =?utf-8?B?OFNxT1gxSTlzWEpET0kvZXBFYUtSZC9WR21RekNjMDFzaHJML1paUUVnZ3lR?=
 =?utf-8?B?clUxZENGeWhaNHFqMlEyMGpDeGlsa1BMS1ZqUzVBUS9lcTN5TUFpQ1plVk1E?=
 =?utf-8?B?aElLVUdZSm5VSnNrZ2lQMXNIZXp1ck1SYnJrN1dFcTBQV0VOQTlQcU80MCt3?=
 =?utf-8?B?TVVsZzNoay9FZkt1R0NYeWEvM24xNVc0Z3RrcUdGOGd4K3NJOHNBMStTQmZm?=
 =?utf-8?B?UWhjM3NVQmRzT0VhRGlVOGtCdEJwQVB3dkxseFRaMkdYWm5qQmZSWmowMm83?=
 =?utf-8?B?TUMzQ29rOGJFTlZiQVhKU1VES1h1MElhc1h0SHY4Q2xoU3BoSXpDVTFVSGZt?=
 =?utf-8?B?dEpoaVd6c2U5bUZNTEhGZUk1Tm5KaTRoYXJ1ZjV1RmZaUXV3dzcyN1Zlelhz?=
 =?utf-8?B?ZFV5MTdRQlNiL2ZRdGFkWWY2VnllRFhwQ3B0S0RyVDBVUkNIRTR2cjlEc1BI?=
 =?utf-8?B?TEsrTHJwaWFSbmY2Z3MyMTYwVVMzeTBVaHIvZU1MSzE4WFRIRjkzQ1Qwbnlo?=
 =?utf-8?B?Y2VqbnFTWnBZU01vM3JVNjEvT2lQYzV3TFNyQm1aWFkycUVydTkyNGtuRktP?=
 =?utf-8?B?YmFaaHRSOXNQTDBOSGROZWVJVmRyR2pPTm5sTHFsT2MwNnpnUjB6UkpmK2VX?=
 =?utf-8?B?K1pNWGxaWUFEandoaEhTMFhCU2pzZlZDQkNKUExRZ2l5ZTlJVGtVRHJ0YkUz?=
 =?utf-8?B?WDdIZ2h5RmpPYm1oMC8rRDFldzZIU2ZJeHVEbG5YWFltV0RobWlzeUNIYXJS?=
 =?utf-8?B?ZGZjYy9HQm94V3VvRjdqK3BIbUZpVFNpdHlRR3ZiT1FDOVNsUll2dDROY0RG?=
 =?utf-8?B?L1czZUZMUmJYSTIwYm0rcEJwYUJkV1ZPK25wK2VNRmlzeTczMDFSbWRFOUNO?=
 =?utf-8?B?WGp0azRHa2JiZkRwMVFYbXg0Wk44eU0zUi9kenlZUUNveGdhSE9ZNHIwcVdr?=
 =?utf-8?B?VmlqOUduWUtnTjFDdDJsK1BWdFJCZ0ZHbnkwamh5R2dhNHBYNEZvZ0xVR0pS?=
 =?utf-8?B?MzFiVUpwM1ovYWZQbUFzRjVZTjBKM1hDRUtKOXZaMmxlT1ZDelNaL2VwNnd1?=
 =?utf-8?B?OFlyRG9WRjhtb3NEV1p4Z1lTeXZ4N2VMQlU4TWVOU2pIMnhiOXRBRDNmYTYr?=
 =?utf-8?B?bitYTmJqTHRzVFlEMllIblM5STlUY1lTZHVIZEZON2orQ2V3SWw0WHp2d0g0?=
 =?utf-8?B?WkRjeXNWeVpCLzA3VTN3eDh0elBHdS9JSCt6cW44WWNTczRnOWlWb0NSeTBT?=
 =?utf-8?B?dzh1KzErdGl5cjgzdHlCZ0JLell6OElEMTQ2K2tnOU8rRTRSeEhUQW5tdElo?=
 =?utf-8?B?YVhQL24vMkJxRXFzUFMvaXYvWEtSYjdIZ3VBYkQrUWtHckUxdlpwUmg0MkxF?=
 =?utf-8?B?UHlzdVRJQ2k0b00yZGc1ZHo3RjZFeVQ2ZEVKSXhmeXlrbkdtSTJzN1RMc1lx?=
 =?utf-8?B?bjcyc0JTb1lnbnNaekRGVUdlTzI0ZnJPWHJpUk9MMXo0d241WFV5MlV6VUh2?=
 =?utf-8?B?OHJTbXROR0d3YWdHektFbXFwT1h6K1hJb25GT0dTalN4SFI4cVdxeVJiVVhS?=
 =?utf-8?B?N3RjbjhxV1dhU3dDVXJRTWtyMm9oZjY5WXdGc1hkSks4eno4Y1NpM0h4UnI4?=
 =?utf-8?B?RnJtS0p5MnYvQmd3Q2x4U1VTWkJkZlcxbnlBZE1GOFNkemhrZXdidkRwb1Fu?=
 =?utf-8?B?Y29RSFBVWDdWUFNpZXhLSXRjNFNNNGVhVHpFNVl4Wk1QT3VHcmRUNkJOVkdw?=
 =?utf-8?B?aTFhdGFpRDRNSExDZjgweUpPMUFWd24wazhwZXoyYW1VdUpqNlNENkJ0UnFE?=
 =?utf-8?B?ZXQvODU2Z3V6UmF1QTJVT3B0RWNYTGpLQmIwSXhVOXovWCtBMW1uT1pQVFc3?=
 =?utf-8?B?VXFUVEczaEM4cUtCL3lFT1N5b0hUVWM5Wnh1V1g4TXBFbEZUNG9hM3lUaVBU?=
 =?utf-8?B?TWJrNUxQVm9lYXJkVjZQdEo0SE0yOTFqY3A4cHFzN3NvNmZQaEdhbllXSmpp?=
 =?utf-8?Q?ArQLLtOiy0rKpEiIEIe4CEXkfoxCPeyR6Fk59Qu4I1s5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8521f07-c9af-403f-74be-08dab3337e12
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 07:11:36.9001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w2zTP1UkbXqdZ65UGyO0I8V3iyqlG5rEt57kY3+18K7CKSa4kcv2NfmmPcbe1CC3w++++UTd6iThDbKRJhzzOZCe0z+eyPd9dzGjCPy3TuQM1whrwjf7KmrYvPayucNd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Introduce
 HAS_CDCLK_SQUASH macro
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

On 20.10.2022 17:20, Anusha Srivatsa wrote:
> Driver had discrepancy in how cdclk squash and crawl support
> were checked. Like crawl, add squash as a 1 bit feature flag
> to the display section of DG2.
> 
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++----------
>  drivers/gpu/drm/i915/i915_drv.h            |  1 +
>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>  4 files changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0f5add2fc51b..45babbc6290f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1220,11 +1220,6 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
>  
> -static bool has_cdclk_squash(struct drm_i915_private *i915)
> -{
> -	return IS_DG2(i915);
> -}
> -
>  struct intel_cdclk_vals {
>  	u32 cdclk;
>  	u16 refclk;
> @@ -1520,7 +1515,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>  
> -	if (has_cdclk_squash(dev_priv))
> +	if (HAS_CDCLK_SQUASH(dev_priv))
>  		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
>  
>  	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
> @@ -1747,7 +1742,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (has_cdclk_squash(dev_priv)) {
> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
>  		u32 squash_ctl = 0;
>  
>  		if (waveform)
> @@ -1845,7 +1840,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	expected = skl_cdclk_decimal(cdclk);
>  
>  	/* Figure out what CD2X divider we should be using for this cdclk */
> -	if (has_cdclk_squash(dev_priv))
> +	if (HAS_CDCLK_SQUASH(dev_priv))
>  		clock = dev_priv->display.cdclk.hw.vco / 2;
>  	else
>  		clock = dev_priv->display.cdclk.hw.cdclk;
> @@ -1976,7 +1971,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (!has_cdclk_squash(dev_priv))
> +	if (!HAS_CDCLK_SQUASH(dev_priv))
>  		return false;
>  
>  	return a->cdclk != b->cdclk &&
> @@ -2028,7 +2023,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
>  	 * the moment all platforms with squasher use a fixed cd2x
>  	 * divider.
>  	 */
> -	if (has_cdclk_squash(dev_priv))
> +	if (HAS_CDCLK_SQUASH(dev_priv))
>  		return false;
>  
>  	return a->cdclk != b->cdclk &&
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d7b8eb9d4117..db51050e3ba2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -869,6 +869,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  
>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
> +#define HAS_CDCLK_SQUASH(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_squash)
>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 19bf5ef6a20d..a88e1439a426 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1064,6 +1064,7 @@ static const struct intel_device_info xehpsdv_info = {
>  	.has_guc_deprivilege = 1, \
>  	.has_heci_pxp = 1, \
>  	.has_media_ratio_mode = 1, \
> +	.display.has_cdclk_squash = 1, \

Shouldn't this line be under dg2_info definition and not here?

Regards,
Bala

>  	.__runtime.platform_engine_mask = \
>  		BIT(RCS0) | BIT(BCS0) | \
>  		BIT(VECS0) | BIT(VECS1) | \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index cdf78728dcad..67d8759c802c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -180,6 +180,7 @@ enum intel_ppgtt_type {
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
>  	func(has_cdclk_crawl); \
> +	func(has_cdclk_squash); \
>  	func(has_ddi); \
>  	func(has_dp_mst); \
>  	func(has_dsb); \
> -- 
> 2.25.1
> 
