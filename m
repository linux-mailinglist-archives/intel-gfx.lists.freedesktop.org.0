Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E79477EA61
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 22:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF7510E3AD;
	Wed, 16 Aug 2023 20:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A5410E3AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 20:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692216436; x=1723752436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B4aZm3hCuPE2PWYGWvuTm5kVZelJTeXzv5lBdIHMiq0=;
 b=VQcPWhFiwE7kfgZpXEA49geLd5rLVr/ZaTNqnMBmS/aghFZy3Fq3kH+Z
 6y4SyuBPkvJ6xmUjOJ6aev3Upyqj8r2WzV2LgqPcFD/eLIWyN02i96q62
 Y6+nCYwb4M69ImFSh09xzJzhD+hq2IzhLBV29M7nfih7ZDh8D0XS9c0Qz
 QMc7Gkabmu/oAnND1SQus2xSWMppEEM/Z2dyKkI5ZNr9nVfc4wpJJKliM
 iOkuMmTVVMyqBeqjXAiyYoOrYxfvglcdV7MGXkF2+Z49XC3WP7NUKLVdn
 2niN0AVe9cu3iEe1kHB7gzwXyqU8LQUFGD2I9J5CyM9qSajTUYo062zOW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375392892"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="375392892"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 13:07:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824357484"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824357484"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 13:07:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 13:07:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 13:07:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 13:07:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W9V2lwNs8fQJosKY9JTh2aT4xgpEh1Np0omE+iVEBfRD0CMTkKNMxW5KgnEYRR01fUVOP1ilMy6OFTHHgrrzcxzxIgykOa7pkfu7eV5uT/nHJfz0AohmmJxqdGNI1Zz9KDjqBn6PgvBB6mRPGrRupPXxl8Jo6yLs4xgolvaPNO45MVVoF2seL4L1ASGIf3wFP1G7UH3+fhRDp6XMxpuDgJTjgz+MUfxm2zsp+LjUvYoWAD85mv0hnjU2BO1eMiKaBvav1iK1iEN+8jVMHMBXJzFa8PcjUmcItsjUUZWV5Zujo8VtLB78UZIPF15GkQUEaJLFdqpfju1AHyESFNqLWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a/+t1/D2n73oYwzwVMdO6TuP59gGPSgBAuV1+yk8okU=;
 b=j4i2aDnVFv1Oks74fwb9dKg5hJAbmgg5Cg/GNpuHE+j6RuuS7NDuZ5hDsd96j7+wz/HimyS+lWSnhAjvTNT5uDPlgPCKPw/l5kn3nAUu6uZQo0NAU35Bi3OeMlcKOSMNIigRYR3ucMUBOR1QikNUKz0hzIKLIlH3BwOzq1FjdSYnnZ2Mui23cwtf6X3l6rxzFBm8sAid11KOIe/mLKFLC1uTjLqJ5Fy96vcBRnxGlQzJOP/tmf6zdZgcaNQV77ZwYnx8m/nZc2DHwk9MT3WHxcFUwAJTcD28ZoPhaPVAE6EUet72aXDG5AGXdRl1Zg6pLlwNuybMyd85Xzr09TFIdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by BN9PR11MB5340.namprd11.prod.outlook.com (2603:10b6:408:119::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 20:07:13 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc%4]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 20:07:13 +0000
Date: Wed, 16 Aug 2023 13:07:08 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZN0sbKKvfkNMXqG/@msatwood-mobl>
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
 <20230815173611.142687-10-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230815173611.142687-10-matthew.d.roper@intel.com>
X-ClientProxiedBy: MW4PR03CA0095.namprd03.prod.outlook.com
 (2603:10b6:303:b7::10) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|BN9PR11MB5340:EE_
X-MS-Office365-Filtering-Correlation-Id: 550a73c6-8a91-4f77-9e48-08db9e946152
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RXBLuoxzKiLRG+Hk31BXr70iqKEmEnqIuWqVWGJx6MToI9JtJHeoh6f2Ogm0b77xgfJ98i/eGFnhTLB8mmosNA586BifFs++rzsLFhADr5+KdlyHDmmzYadvlevN/QWqiBRnXDW7iKXnoO+egIxDY0w3ZTWAz0PzH+zzBMfytYcbTcJMEn5K8WlWuFKybseXzuu9+Ha2Vf5FTzhX4JjIUAPyjRsFV9V/DF+E04mbL+RhtM4R08S36TEIFl7smu/QlG6y/PA51ytlNg4V2x05dKPH4URyDLoHllV95gwTWIiLSjVHIRPe7XvNWbHoR9ZmwPmm7RDpLOMM2TLrTeivSUD42ULJ09IbCOiLor9EJgt971mZzXCvfgexvGca2Xj84AMihfRWYiSOQ487IblsiUFwli9zzvnFCfDZQhA84jm1Z1vCvU+tspjg48P3YTQGcczO9MqP84/mNHa7oJLuwJdLtDTxmI5rVBQfdSaE2asxhAdEb1goBpQEGIE/zjaExp152iWX2s4k7Yc7czrg3d0Ofo/l19WruDq4UDKrQrFG3bwvvvAoDVsW1ovZNSYp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199024)(1800799009)(186009)(316002)(66946007)(66556008)(66476007)(5660300002)(41300700001)(38100700002)(8676002)(4326008)(8936002)(33716001)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(9686003)(6512007)(6506007)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1IvZWlISGsrblRGa3VlL0FNMVhvb2Y3Mm91bENtQ2xHWVlCWGZLVTQ1RFlo?=
 =?utf-8?B?K2tmdWF6OWs2dlhmMHoyZ3AvZTVlVFFERWx6Y1VQdVQ1K0NqY2pNWlBTSFFk?=
 =?utf-8?B?aFovYkVyRUtydlRjdW0weGRPSUs3N2oybXpZSHNsT2cyd3ora0c0c3Bmd3Bu?=
 =?utf-8?B?NXhjZndlN1ZaclVCVEcxTmZnUWVYVEJOU3RhQ0Y5NWl4QWhubDhhamtIYWho?=
 =?utf-8?B?TTB4OW90cFBpS0s3QXg1Nk82VFc2dnIvdDlWdXpWa0hGK3gzejR3enp3OVlt?=
 =?utf-8?B?elFxRHQ3SW1OeUNSU0lDelkrb2hlWXJHd2JhTXQ4S0p5ZWtRbjJjdjJWNTNX?=
 =?utf-8?B?RmhReXBrbFVjNSt5QVYvRmdCZ2JtdUpTVlAwZHQwTWNFSTNjaXJxTjIrZEtX?=
 =?utf-8?B?YXVRTXRucVFpeS92aHFQSXhXd1REV3ZqRTFycGw3NjFyUldPcmJqUUFyN1ly?=
 =?utf-8?B?M241NlB2dVEzZENDMnZ4UGs4QjlpY05tTy94SmJtWmFtZlZFcUt3QVVBQU9x?=
 =?utf-8?B?RUFiSHFUUUNFWnI5ZEhXN0hLbUk2c0FBaHBqeXhMUlRqWWp6bGRpZGNpODJ4?=
 =?utf-8?B?cHFGOXBrZlAyNjNJNEhTUlpZTlpFaDY3aXBiSUJTcHE0cFVSUXFoOVdFa3Vr?=
 =?utf-8?B?MHNZK1pvYTBMZ3NCeXJWcUI1RkdRK2U0bmg3dFBSR1hkUEdGUGNEVUNZUW15?=
 =?utf-8?B?K2crbHYyd3F0U2tkeXdQdmJyUkJLUTUxY1VOb0pkVHFqT3JONXRWMTFKZU9H?=
 =?utf-8?B?ZnFjalNzcm52RExYUFZJTUVRM2tyT3pmdStHaDRIN0hZUHB3ek5JeUtTbmt5?=
 =?utf-8?B?RDQyZzZ0ZEhaL0lQZDd2TXBLbjlBa1VFZkxQMFlRVGNxZzlHTVd5UDdxWWs5?=
 =?utf-8?B?WDJkZEgxK2w4czVpa2xOazJkbnV4ZUFQN0xob09ZTldwVWQ0UVBuRHNoVk44?=
 =?utf-8?B?cm8wMnMvVzNsZFF6OSsxWVVEYk8vT3YrOG5jMmdmUUg1Z1NqMERTOTkyMmFo?=
 =?utf-8?B?SkNTQzcycE5EcVpxVkZSRXFxdGVVWm5xWUo3ejdDcWFUWldDZHU3eE92dTVV?=
 =?utf-8?B?eG16cDgxOHJPYWJJTlk0a0p1SHMxZXQvMUYzOEFFdW12WG50TjhjNkVMbWEy?=
 =?utf-8?B?dU1RK21VRVMxUHBTUm1vZ25PZ2EyNFAwODdzTmljYkFMazlRVDlYbUhxK2VG?=
 =?utf-8?B?TU43NjdvUGpJUSs1RS9XK0RzeHJrNmhBK3JIZFRTVEV1cFZZTjFvbWpNdUxn?=
 =?utf-8?B?cWlXN2RlczlkVmFEMkd3SFZVZWJmSWQvR3JxRExyZnZoMlFES2Y1dllSc1FL?=
 =?utf-8?B?azk5eEkvSCtkQzZMT2NpYzRQOFlnQjRxMzJwejNvSEJsbENkd0dZYUEwUVEr?=
 =?utf-8?B?SlUvaEZ5dHNYTHRwYldpQ0xWejV3NFN2Q3NmTFRjYUkyaTFHRUtIQkZmUmMw?=
 =?utf-8?B?Q2VXcHR0Y1FBNFZWTGR1OVZVVXlSVW5vZWVyV3ByQmpFNTFEQlVqY3ZuTW9T?=
 =?utf-8?B?V3RzRWoyaW8xTGRjWkJlVTB4ejhMa25lZzhnTjFLVUF5SW11MnlDd3hoUkEy?=
 =?utf-8?B?RlZ6ZERMM204Q0F6OS85dFFlRVpYTlZnN2NrN2FueWx0akhCRTJMZDJ2OFk5?=
 =?utf-8?B?YlBpMVI4RjAxSHdRTHF0R1RPc0tnZkRqQ2xCQU1HbU80THJpYm02dVJSNHRw?=
 =?utf-8?B?QitOM0Rad3RFeW5Ma3BxVTBuRlBOTjArSXJDdTAwaDNWdy9oSDhDVWYvNWN0?=
 =?utf-8?B?QXlhNDUxWGVKa2h0dXZxUS9JNWVYSkllZHdFUElWNXAxUlJHVWpCZXN6cWE5?=
 =?utf-8?B?dTdNUURtM3duVzZJNzZTL3ZiVjZlaFhRaklyWG53OTg2cDhpU0tlN2R3RXdI?=
 =?utf-8?B?WU1YV0tZS3JwSnlnVFpmUlVPanF1bW1aZlFEY0hqSUVsZWphWlpYTXhNN2hT?=
 =?utf-8?B?elIxUEJVMUo1YTQ3bThXVXpMSWVES21Md3RuOW9JTzVRWWNvUXBRSFdPZXdy?=
 =?utf-8?B?dTlpNWpDRkRkN2E1ejFZT1gxckVFVWRkbXdsdmhMZFRIb0tSVmNpRnJ0enFW?=
 =?utf-8?B?bXJtWmx4WFpOSGZCVzlQR1AwUkdRMmltZXVlcDI5MGhUbkhQV2VNWFdEcU84?=
 =?utf-8?B?cVNhM2tabVVuUjRTT1ZBQlRkMi9YbitvdEZEZjU5T1VYb0xBZHBqOEx4cFk2?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 550a73c6-8a91-4f77-9e48-08db9e946152
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 20:07:13.1558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: APT2ap79LGK1aVUWwSzayVR5iQ3UBi5oBLHajuYI0E4dfxMQVy+K47VKRBztDYXQrmCDHnNZpMHcOyFdiksZte98xhiWEO1UV9Pg24/oCKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5340
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Tidy workaround definitions
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

On Tue, Aug 15, 2023 at 10:36:16AM -0700, Matt Roper wrote:
> Removal of the DG2 pre-production workarounds has left duplicate
> condition blocks in a couple places, as well as some inconsistent
> platform ordering.  Reshuffle and consolidate some of the workarounds to
> reduce the number of condition blocks and to more consistently follow
> the "newest platform first" convention.  Code movement only; no
> functional change.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 100 +++++++++-----------
>  1 file changed, 46 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 7b426f3015b3..69973dc51828 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2337,6 +2337,19 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			   true);
>  	}
>  
> +	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> +	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> +		/*
> +		 * Wa_1606700617:tgl,dg1,adl-p
> +		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
> +		 * Wa_14010826681:tgl,dg1,rkl,adl-p
> +		 * Wa_18019627453:dg2
> +		 */
> +		wa_masked_en(wal,
> +			     GEN9_CS_DEBUG_MODE1,
> +			     FF_DOP_CLOCK_GATE_DISABLE);
> +	}
> +
>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> @@ -2350,19 +2363,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 */
>  		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> -	}
>  
> -	if (IS_ALDERLAKE_P(i915) || IS_DG2(i915) || IS_ALDERLAKE_S(i915) ||
> -	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/*
> -		 * Wa_1606700617:tgl,dg1,adl-p
> -		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
> -		 * Wa_14010826681:tgl,dg1,rkl,adl-p
> -		 * Wa_18019627453:dg2
> -		 */
> -		wa_masked_en(wal,
> -			     GEN9_CS_DEBUG_MODE1,
> -			     FF_DOP_CLOCK_GATE_DISABLE);
> +		/* Wa_1406941453:tgl,rkl,dg1,adl-s,adl-p */
> +		wa_mcr_masked_en(wal,
> +				 GEN10_SAMPLER_MODE,
> +				 ENABLE_SMALLPL);
>  	}
>  
>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> @@ -2389,14 +2394,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>  	}
>  
> -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
> -	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
> -		/* Wa_1406941453:tgl,rkl,dg1,adl-s,adl-p */
> -		wa_mcr_masked_en(wal,
> -				 GEN10_SAMPLER_MODE,
> -				 ENABLE_SMALLPL);
> -	}
> -
>  	if (GRAPHICS_VER(i915) == 11) {
>  		/* This is not an Wa. Enable for better image quality */
>  		wa_masked_en(wal,
> @@ -2877,6 +2874,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		/* Wa_22013037850 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>  				DISABLE_128B_EVICTION_COMMAND_UDW);
> +
> +		/* Wa_18017747507 */
> +		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>  	}
>  
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> @@ -2887,11 +2887,20 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>  	}
>  
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> -	    IS_DG2(i915)) {
> -		/* Wa_18017747507 */
> -		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> +	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915)) {
> +		/* Wa_14015227452:dg2,pvc */
> +		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> +
> +		/* Wa_16015675438:dg2,pvc */
> +		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> +	}
> +
> +	if (IS_DG2(i915)) {
> +		/*
> +		 * Wa_16011620976:dg2_g11
> +		 * Wa_22015475538:dg2
> +		 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
>  	}
>  
>  	if (IS_DG2_G11(i915)) {
> @@ -2906,6 +2915,18 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		/* Wa_22013059131:dg2 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
>  				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> +
> +		/*
> +		 * Wa_22012654132
> +		 *
> +		 * Note that register 0xE420 is write-only and cannot be read
> +		 * back for verification on DG2 (due to Wa_14012342262), so
> +		 * we need to explicitly skip the readback.
> +		 */
> +		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
> +			   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
> +			   0 /* write-only, so skip validation */,
> +			   true);
>  	}
>  
>  	if (IS_XEHPSDV(i915)) {
> @@ -2923,35 +2944,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
>  				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
>  	}
> -
> -	if (IS_DG2(i915) || IS_PONTEVECCHIO(i915)) {
> -		/* Wa_14015227452:dg2,pvc */
> -		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> -
> -		/* Wa_16015675438:dg2,pvc */
> -		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> -	}
> -
> -	if (IS_DG2(i915)) {
> -		/*
> -		 * Wa_16011620976:dg2_g11
> -		 * Wa_22015475538:dg2
> -		 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
> -	}
> -
> -	if (IS_DG2_G11(i915))
> -		/*
> -		 * Wa_22012654132
> -		 *
> -		 * Note that register 0xE420 is write-only and cannot be read
> -		 * back for verification on DG2 (due to Wa_14012342262), so
> -		 * we need to explicitly skip the readback.
> -		 */
> -		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
> -			   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
> -			   0 /* write-only, so skip validation */,
> -			   true);
>  }
>  
>  static void
> -- 
> 2.41.0
> 
