Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00282832212
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 00:02:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C76D510E1B8;
	Thu, 18 Jan 2024 23:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287C810E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 23:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705618922; x=1737154922;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XRu/pByNI6kY8uoz6b2xB1jj4ASk8rv56pz+GECBkPo=;
 b=biZcvJa4Nlk+2bN7wqW1Nknk4bS4r0dK3Do53pSaZUWciIfpByavnVHV
 iHEi6LXW0BeOrBlmurMCfuhcdXhy8R52F6NuQCn0MgWBittrYu1G7ZL4n
 H0lwHpd+7XiZ3VHyDtiFk827MGqPGOoHr6TwrZ6EZgckMG+KQPprjpNWd
 2lh+8neVijWvXONVo9fvuShJ7Hh4X2aphxSzrjXAFip6qlY/iuuE9Cn+A
 RIWX3SJ4SuWx8xAPRLheKtD0IaAC0cyXTkJcTkTsjwicZewXaKhdWV3tq
 HdB84d69A2fONc1TN4IbQTJUQVuRi7aihlo5+d1NofMBuNrIcYS2+n6pA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="19189765"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="19189765"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 15:02:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="19235428"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 15:02:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 15:02:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 15:02:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 15:01:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kd6gdQhcVZh2bK/UKeVZpqwHLUNFJ2LD5lCEeF7XSHD93vegx1jQHLt/AGR00ySApCrCCxqOzBWSn5p1SfNtsQ0HIyuOhxVTabNNZgFDl6Zo4GdVcEDsxs0wmF2tJdxRghLwB5/Q0OK/taGGPNpi7qG2/MRNz0ePcFivfruF+z0OiDpt6f0CohHSjs9e78GaKNlKxLhbsNmHKAZRCiaIxYCMbAoadgEEykyo+JMNmuIqOqSX5MN5FFiRoHw44uOo4JwDA3WWkjs1tQyTsBVlAkxfsslfbw8r5fn+EZudNvFGuH4wDVrqYk70jR4mfjEk5k2UamDy1tC0H9otzx/jgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PrSK797BT21PAlzm4POqfV6wAHpFJ0+Pb15CjJnwlHQ=;
 b=ErtTE25w9dFQ6ONMKTznY+4FrOApmmbGsWZhhCJiluNjsT9oQ51FVDyW/Pt6uro/IqVKCQN/PVeOuYv2wiVwaltPnRESWFovQZT89OkR/3eT9zoEd/kyKWVPk3aYdl5YSIX180MO46FFDnlkC9tTuK7Qk5trzucypUOGcs7D4rSYVhl0PouDuMJbBXtj42QlnWjOnzpU5j6MdVa8XRtW01somYgOgHYy6myKLjgsr+8w7eyLw7gQZJibAOxVfg6P/7oifxuMfnUURi3CgzX4tYyYVUtFu46Vpjgp52llT58QGjKGxXC3N7qernU2m865uEb54rwhDKa8x/yHGCGGzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB6728.namprd11.prod.outlook.com (2603:10b6:806:264::9)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 23:01:55 +0000
Received: from SN7PR11MB6728.namprd11.prod.outlook.com
 ([fe80::a3d4:fe63:413d:4e44]) by SN7PR11MB6728.namprd11.prod.outlook.com
 ([fe80::a3d4:fe63:413d:4e44%7]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 23:01:55 +0000
Date: Thu, 18 Jan 2024 15:01:12 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v1 1/3] drm/i915: Add additional ARL PCI IDs
Message-ID: <ZamtuL9VMkkTOB19@msatwood-mobl>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
 <20240108122738.14399-2-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20240108122738.14399-2-haridhar.kalvala@intel.com>
X-ClientProxiedBy: MW4PR02CA0007.namprd02.prod.outlook.com
 (2603:10b6:303:16d::33) To SN7PR11MB6728.namprd11.prod.outlook.com
 (2603:10b6:806:264::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB6728:EE_|SJ0PR11MB5215:EE_
X-MS-Office365-Filtering-Correlation-Id: 3350a25f-f4da-4cc0-2706-08dc1879770f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ptSEQ74ZYztuYT3p55nmndDDt0G0kpjVP0XvS/rMWeVc02Q8oAaXWS7ro+g+ChlxyHjP3PnDJDOgWvXBnZG78dfuUyr4U5UEZpYMiOVZ40ghgxyziiaBBMZUcEUrljW2+I1+Ab91Cc5Tcnysrwtarzaj4oWbNiKM6OCXRSKu5CZai5qs9gSMJ5PRHnpiDen6Q/3W+fnPLhxjN07KuwVvMwB2jyolDMgmL5O/mkdlU5/+5BbKnuJ2BER9a7sM5/dQgiqyTc+6c/3XFfp4jCFRNlFiD7qhVYtvjxKxhuTMyW3BQAzeAWXvo9z+siQihYHygMBfHpJVqeW985nResCYE9UvV3INklVGuocoGDUmehoBohQlzzF/kafLEQb/F5rgKe5F6IOIzjoRDQEvS99PfxdAkoPeVvot5NmZEWqss5DVVF6mdw9oooxtvWYowxCn6UOWICCND+M2/zf3i0AbCpXja2nKHsJA1YNG1rd2nkiLGr5FCNISmTEEyhGYGoJNEGmkpbDgensq35Ul1VPr0YwRe+6SmIZFDd9J9pvVAvE6xlHSwzQk3aQuM+j7V/Wg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6728.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(396003)(346002)(376002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(41300700001)(5660300002)(2906002)(33716001)(66556008)(66946007)(66476007)(316002)(86362001)(6512007)(9686003)(6506007)(107886003)(6486002)(8936002)(478600001)(8676002)(6666004)(4326008)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUVhTlBjRCtjaERSRmJlK081bm4vcXAvM2ZRbnk5ajdzbTNBNTgvdUpFektQ?=
 =?utf-8?B?dVJaOU5Nb3hPRXp6WVRZdnphRUphak1KVUd6MUlaMmNXRTU0aFpVaEZWcXBZ?=
 =?utf-8?B?TEhNZGxCTEMwMHAxZlBkdmpScGkvYlV0S3orN3VBV2dSb1lJRk1sek8xSjlW?=
 =?utf-8?B?c2RpRjl2Sm94QXJyeXNOTytPWXhsdXhYRFRFQURvZEFwNHVNbWg3by9Ic0s0?=
 =?utf-8?B?OEtqakhxUG9uWXUrai9xTVV2Qi80aGFNWVpLUTN0VnNiQWlzZU4rM21pZElO?=
 =?utf-8?B?djk1Q1NxL204WHppUVhzYjRuYnZSQTl5K09RejBjOWlEY3J1RCtzYjUrWHJS?=
 =?utf-8?B?T0Z0dGwvMDNBZ2hNRHh6MXRMZjZlVFFIZEdJMkVKRVFiQVE0bkVHOFN6NWty?=
 =?utf-8?B?OS9udGdCSGdEUUtmSStHMzlDeWp1U29GV0JDOStoVXpuOSsyZFRNb2NMbVgw?=
 =?utf-8?B?RXFsdnlUNUhGODJnZC9VLzVCRnhObGErTUtSaWt3UFp1U1dLYTA3ZVJ0RXVj?=
 =?utf-8?B?V2VXOWl5Nmc5amUzeGVVejBudXJ1YlRONkYvZWdqZGU0Wk1rTVplY1lmTndx?=
 =?utf-8?B?amp0WHJUUVlGc3BYUmkzTnFsOGY0dllVVi9HcFpCcEpsdno4VjdVc09wZjZs?=
 =?utf-8?B?OCtzYTNUeUhjaGE3bXRqbm9waGFnQnlGMXpTY3JLTnlvOE5uVVNjcVpSN3R2?=
 =?utf-8?B?TFF1Qml4eHVZblp4OUdqWGJaY0ltUWR2THBjOURYSVVhYkl4cHJJMnpNTHZH?=
 =?utf-8?B?YjFwbDBKTS9KcjB2K0ZuKzBTcVZGUTJxUFpBNXdJYUhXSXB5aXRVUzEzSW1N?=
 =?utf-8?B?MnpiRFpDYm1MWnZHSTNtNFBmVFA5V1UrRk9Ta2hzdkZjNnVhUWs1bmJxUlZs?=
 =?utf-8?B?L2I1QWF3S3hBbjlBMlB0RTJLSDBnTkhYZk14Q1JmdDZGNU5YekJOVUh4UlpT?=
 =?utf-8?B?MnhzQmg2NmVaMW91SjI3dlpVanlmcEFtczBrRXlCOFoxbWxWTmw4V0RXOU5D?=
 =?utf-8?B?TGhCK3R3T2RGQ1JXakU1SldybUs5ekhHK0d0OU8xbXk4Rm9zc2phYjF0KzNB?=
 =?utf-8?B?RVB6K3ZCUFo4bjBWNG8wM1NCb0FrNUZRU2wvQ3l3QnVtZWNhNW5CZEdtQ0xq?=
 =?utf-8?B?ajR6TGRod2ZqN0Z4TitzS2VzU3dFWTgxVlRXV0d3YWhDOVVINHppMTgwcmgv?=
 =?utf-8?B?RFBFbzNjblo2d0Z1TFZmWis0VHpXcHgvcjkrbi8zWlNsQk1rSi84R1hCdk9a?=
 =?utf-8?B?YjdkbTA4YzEzeHdNcVNvWnpHWnJRM0tEdDJhRUk3MXRpWWVOcHhGcDVWcWxp?=
 =?utf-8?B?SkJwMXA5bEpWSDJwbTljTGIyWlFnemVhYnZuUndQTzlUMksrVkY3T3ppM0JT?=
 =?utf-8?B?U1lTc2d5NUxoMVNCOUg2N09wU0M3M1k2b1RPR2lRTm1kejYvNWl1WE9YbjBX?=
 =?utf-8?B?YXFQWFBwMWZFWk12aEY4eDdVdDJwM3MydW1yMmxwMmtlSjJJSHozSUJrQnpn?=
 =?utf-8?B?UWp6cUxZSUQyKzZ5U1hXUDBCVUs0Z1pVRGlFTUZMT2Z2T2lWZWpJT2pGZkJS?=
 =?utf-8?B?VU82ZTd2UnZ1NE5YVEdjdmFtazl3a2JJdExic3dibFlSN2xNa3U0VHVzWEw4?=
 =?utf-8?B?YVkreDYveHNScUtVQW5aaWpSR0lKeGRIak5iVHIwRmFrcGczOEQ2T2V3Z2dH?=
 =?utf-8?B?ZnVQam1vMjQ5WWV0ZGlrSlJBalMyOFF2Q3lDcHM5TGVsMk1EYTFFWkEzWFhu?=
 =?utf-8?B?T2hYSmt0czZGY3VWb0hEUkZYbkg5UE1lc0RnSytCWVBMRUZsMXUvTVVHRGND?=
 =?utf-8?B?bkdFazQ4cS9xUCtzbFMyTHZYM3hnWVRFNzRPU0o5NVExUmV3OUlqbzFiRU9B?=
 =?utf-8?B?bHczaWEwbkt3MXJaQ2M2UklsK3lDV2Yrei9qZEJUeCs2aXdlT01tOVFWbGRW?=
 =?utf-8?B?dER3OGJqNStYOVBPZlhWT2ZLQ05ZaGZaczJpOFJDb1RxeEgzWUtkcjlyaHc0?=
 =?utf-8?B?d201Rlg3K1laMFNQdEcxNkl3M1ozakNIbDVzWHBFMkNZbXM3ZjFqY2R4SkQv?=
 =?utf-8?B?WHl2RHdWMUxmdXE3SitpYlJocFdpN2V5MDBDY1ZHMjdCelp5Y2syTy9kUmFJ?=
 =?utf-8?B?OTh2UTNNMmtsOUVyL3BTSEl5Q2I0REpkR0FMOXp1d2REelUvbFhIanhQRkpE?=
 =?utf-8?Q?sH7v8l+24GRVo/wz/4HejPA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3350a25f-f4da-4cc0-2706-08dc1879770f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6728.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 23:01:54.9347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v0S3B0UEbnlax/+DbFPwIobx1QiJzWF5SyVimyh2eIth9S5WtfWCQfq49E8ZMliklF4KWInIf08P7Vl4A/kYHV3zg7svWFTk5D2vNyenfn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 08, 2024 at 05:57:36PM +0530, Haridhar Kalvala wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Our existing MTL driver handling is also sufficient to handle ARL, so
> these IDs are simply added to the MTL ID list.
> 
> Bspec: 55420
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  include/drm/i915_pciids.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index fcf1849aa47c..07779a11758e 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -751,10 +751,13 @@
>  /* MTL */
>  #define INTEL_MTL_IDS(info) \
>  	INTEL_VGA_DEVICE(0x7D40, info), \
> +	INTEL_VGA_DEVICE(0x7D41, info), \
>  	INTEL_VGA_DEVICE(0x7D45, info), \
> +	INTEL_VGA_DEVICE(0x7D51, info), \
>  	INTEL_VGA_DEVICE(0x7D55, info), \
>  	INTEL_VGA_DEVICE(0x7D60, info), \
>  	INTEL_VGA_DEVICE(0x7D67, info), \
> +	INTEL_VGA_DEVICE(0x7DD1, info), \
>  	INTEL_VGA_DEVICE(0x7DD5, info)
>  
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.25.1
> 
