Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B01F47A91F2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 09:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5D010E573;
	Thu, 21 Sep 2023 07:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9D510E573
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 07:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695280502; x=1726816502;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uP8b2Lp1mvzEP18nQGHhwEVdnbE8Wu6oiHJa9BHVTJo=;
 b=k9EYinfIn4bIbw5MlJfq/pg8scID4JHpHkRH9v28mFIY6rgmpo1OGNM9
 SmJvJf6oo83cBYbQCf/ddVp+Y8SXuxyzm+aOfJed6TKfsuiMqwYnWFmLO
 UjY3cQS6CvxSskJSuhld2ySWmQhpQLthTlNXqDqCigV4u/QBbvzrxZF6v
 NQyDO/LRC7jQq8k3QPSjEQvh0Dmir7ZlNTyKlxgzcuajseyJsJ9v7c1Yo
 Gp5+zyrILQ6tQMPRErq9Zm34bWh1LTfbhjWQg+S852hs9H/tfEdd8Kln/
 lqMrPHUPRS9SgWZywyT1eLOajT7daBXgsGbXpEhDGHSCVVlYHoFaJhPfU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="365501218"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="365501218"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="993971232"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="993971232"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 00:14:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 00:14:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 00:14:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 00:14:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 23:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LOhsN3HGiW/ValVlwr/nQvGWG4OwkXt3b+VX4QGONtalg8DATpAK+jWU61kmT32Cz+t54ePAyD4rje4caZ5EqSE6QeImliy4eeSHKqQltEQYxhetk+BjcjpYcy2DHLE4IL0VZvIFAM4l/c6TW2WFXXa3zmAdnM8XN66cXCngo6/PsEoTMq7XU1+z84zS0J74oLcEdDYsVL1PTDOzORLW/q5LVTyCtMUR7G3t8tu+qQ3xG/8q8dtHTzaGopwG55SDxXoybeWbRwTKY9hnIP0PjWjTNxyyQEjvTI0XpjaksLVwyCaaDK1W2IOMPky7obnr5pquISKvtLucupBk7jrXmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r31WbeA1GlBnERCR3GXNedX5SAyZnJ3cqxTsTiyYHYQ=;
 b=SLwxGh3beZy8VeS6ZxA7f+dHMzKJrCKftM3ib16uDL0x6z3VkuJnYGaj/mQOuYhrAp7LvpR36jHd+kF2i8Sd65v/+Oqtbfvcr8bmgnnMwSzCBJ2wXdqFWFsQi12VRQzj1BMQQWjbRi+Sw4qZRsyrhz5Nl1goE10cmrFec0FaqU8H6DusNyBnUDfzOVGCbqpuCP0B2AbcUnfNoim4mmdBKnRqFUgEb8l63h9Ve0Q1zYXTKOALakIP46npL7RbVGj44NU0tTnVD91/hho45Dvr2HEMdXc0rYRi25xJP+2AihOWkqK4NzZdRpqrXOcmi2Q6z5uQrX6ydG6FLn0KLEvxmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by MW4PR11MB6910.namprd11.prod.outlook.com (2603:10b6:303:225::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 21 Sep
 2023 06:59:04 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::4c77:2b70:faca:4034]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::4c77:2b70:faca:4034%4]) with mapi id 15.20.6813.017; Thu, 21 Sep 2023
 06:59:04 +0000
Message-ID: <83d41b3c-cdeb-32ba-e03f-24470fb5ccc4@intel.com>
Date: Thu, 21 Sep 2023 12:28:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230919095659.10742-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Karthik B S <karthik.b.s@intel.com>
In-Reply-To: <20230919095659.10742-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0231.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::7) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5690:EE_|MW4PR11MB6910:EE_
X-MS-Office365-Filtering-Correlation-Id: ffb2d0ac-c1fc-4d38-ba81-08dbba703d66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XLE/tRmLjOKlWEFtn07q10OwDjeRwqbAxsW1gpLv+4im69IVBWLeqthLlPTwmHWqrdGUfcBoLMxSvuNjbmNAM/Q8YNexHe1aUsa9iIH7d/K5z4BQejrjp/lmWCBbcYMHOun0sfB2c/1540TdQ1sJzYtvcPkGzzsyLOzABid8TCuDnoGXR0unwhkmiMVdFmieFqG+2OuGD3ScaZKUPaBH4Tg/VTY/LIiuNmCDI55jsj/m9ido5lhjqJmpvuBZi+sfGk66/d5exHkMRKlFNwhHw2WxF5fy8gD1HsjdiIshH2CPWJNAZ6Qizu+WQQynjKNO4b1ldj7IVzKPRmlE60rKRDs0GqHa47G/ZhXsD3wBq1ISjro1vgJnxcXPIt6JaVRtv3XDb1D8LfdoEWKSMLR5LhCmgW64ShJW+379q3miOdvlyAMw4FUM32iyXsqY+t+8M6VHmUWEvijBrogtruYFt8i1rFIkJEVd23vQawUFHtRkvevYe0WtKSbFVakUnQoAB27MeqgLKVvkEaZ17krOqD7ISgeys+qK52qcOYdxBJNJKDuirO2nLw370smYxK/ZF+A5hVHPZYsS5bvaRI//ZLFnNXuyrVoOzH9VXjhBZQ/s2LLJutTUDwBNfRIyIMlH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(346002)(136003)(39860400002)(186009)(451199024)(1800799009)(31696002)(36756003)(86362001)(38100700002)(31686004)(66556008)(6666004)(66476007)(66574015)(8936002)(26005)(6506007)(53546011)(41300700001)(66946007)(316002)(2616005)(6486002)(55236004)(8676002)(6512007)(966005)(478600001)(82960400001)(5660300002)(2906002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3RnWkduVmxFSmpkbmNnamtzRFVSR0xXb2ovNnZzS0phZEVYZkl1VnRodHE3?=
 =?utf-8?B?aHFjYXdUc2V6QTlrSVFaYllkamxEMmxONDhPMUhVV3RPYVd3dkRYSE1RSjBX?=
 =?utf-8?B?MElFOW5xSk04TkZCVDRDamNwNXlEQUhYU0hXRkFnRU0zaTk4MnAySlFOSkM2?=
 =?utf-8?B?b3JTU0JUUjMvSzJjS2taVDFpWmo5NVJTeXFHSVM3UVhyZGdXS2h3cFZRVUgr?=
 =?utf-8?B?TERFd3hKUkdHSkJ4SGlKY1lIV241Q0NwQU5nRDFOc1FYcnllbThLeGVjeTl2?=
 =?utf-8?B?QXFaSlZXeFlUMEdONTYwYStjMDhoVnRBVUlydzNzbDhuVEJ2aVhIWDhZdWNp?=
 =?utf-8?B?Zm1iaTFsRWNZbTVMZE5vQXlybVcyVEc4QVYzTEpGM1JOVDRwbG9mcTF6aHda?=
 =?utf-8?B?YVI3cEl5bHR3MzNZeCtEZmdqR2lqVy9oOGRiTkUwMjBWOGpHQ2N3QkN1SXQ4?=
 =?utf-8?B?YVZPd0Z4NzhsNkVJb0FaM0RFZ2xJRkIvV0g4Wkk5Q01tSG1rdmgvQjRWbEs4?=
 =?utf-8?B?SXdIWThmZEdxQ3I4MzF5OXd2TjU0REo4eVpxTTBhcXZSWVVHTlJlU3ZPTlRY?=
 =?utf-8?B?RkQwcTVSamhpZGs2VUZ4YkdwamFrYWxmWmFKQktCQ2xySnd1NFhDRzNLN21E?=
 =?utf-8?B?akpVNU5uazZjWXlrT1oyMllZUmFXRU5oOVQxaS81c3QyQktoVGpBYXVwNGpC?=
 =?utf-8?B?TStJNFV6RUFUYk5hTkYzNGtRMGo5Q0pTQTdwNjZCUjRjYlhvWnU1ZnRJRVNj?=
 =?utf-8?B?Rmk4dHhuTHZtWk45TERaaUpNdU5SenR4Z0R5ZjBlVmhKRWdTNDhncjBnWk5C?=
 =?utf-8?B?Mksrc0NVTjM5bGtNZzZxN1hNWkd4b0l5dUFEMEpwTW95MXZIbGlmQnFPdEFr?=
 =?utf-8?B?Y1pvcWxPUEZmcHNzaWxSV3pQd1pJTlRvK0ZJeS9DU2FJSlUxZWVXamsrTGk0?=
 =?utf-8?B?TlBWcWVMeG1qckFTNnFsY2Q4T1dBdGZ3QXdEQzJmTjNoeGtmWHFkSzlJd1ZF?=
 =?utf-8?B?aXFjUFlNR2IzZEdSOFpqbDlqQkt2NlFXVGtrUWR3V2VjMXdaaXBxS2F6S2g5?=
 =?utf-8?B?NE1tRkVOSDd2a0lPT0pCci9kYlkwQmlOWHo0eG9NYkJhc0JXZHpZTTdDWmRQ?=
 =?utf-8?B?M3pBc3RXcmVld0IrazEvZG45WTF0eFVKakxZVGR5WVE5bFphY0E4RnhGUUlR?=
 =?utf-8?B?dU4xVndXQUs3aGFGVGVEcDJDZ0c4anJGeFg4bVQ2RW5FTVpCdjhNT0I4MjVW?=
 =?utf-8?B?dmdEc1g4a0l5OVZ1WEl4bFdoNkpzeFZqUWxrdFhXaWtRMjg0K25IWi9uLzd1?=
 =?utf-8?B?eUFndU5FWHJjOHViclEwci9pRWlMbTVRR3lmRlJ6TnFsSzVmR2hTS0RKOFZE?=
 =?utf-8?B?V054YTNuVjJPRFFBZDZ0MUd1ZmlSTzh1T1YxdXV0MjJaSjRMdGl4US9tNVg3?=
 =?utf-8?B?Wmwyd25CTzRUNlIxZTRma2E4WDF6WWRaUlpSdWV1QnlSbVVERjJ3dnRYM1ZP?=
 =?utf-8?B?TGsybUtuQkhRNll6YW5CaWNxM1NnWWZMZ0FoYkYxV2toaG5jRjNONEpZRm1k?=
 =?utf-8?B?aGNuVVhLVUlacHhSYlRES29meVh2dUE2bUxCTTVtbE5RSzErdWlScUZOb2k4?=
 =?utf-8?B?S3lTeGsxWmNqZnpGeUtoZXA3dGNLYjArYkd5dVEzcSt2NVRFWE42UzU5aCtQ?=
 =?utf-8?B?UWcwQ082K2FTWEI5LzhpcU5wSHJzR3A4NmpXY0pZUHhvLzZkUk9yMVhNaUJh?=
 =?utf-8?B?WXFCV296cVFHZnNubTRrK0wyMkxJVmRuT1RxclRKN1VPTmJKWlU5V3NRdHBo?=
 =?utf-8?B?VFh3bnZQa2NsNFBmZGRUVUtyb1VxdmNudzNna1R5a1pwaXQ0aS95MG1HS0Yr?=
 =?utf-8?B?MTN1a2FlN3hXcHZ2L2VmdVB1QkxMTUU2Y1hYZEIrcUJVZzArZ2lGMEhkVmtB?=
 =?utf-8?B?cnlRdE5GWlk5T1N2Ykk4RGFBVTI0aEFENmxVRVJTdCt5SXFwdG16QTlGT3Bt?=
 =?utf-8?B?aVFPelRTcEtmcjlzNWdZUUxHZ3ROeS8xNElOMnhpYXRKTEdLSmZXMzRjZzFu?=
 =?utf-8?B?WTBYaUkwZitFRTFGbGVyRVNzL2k0MnMwUE9DcWp2NU5ISUZacTdrcXRJOWNS?=
 =?utf-8?Q?KyXy90dJ1cTXD6ZV7iIxQy77g?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb2d0ac-c1fc-4d38-ba81-08dbba703d66
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 06:59:04.1668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oV06Y9d5AlejMZ/tBnYEENwUg+uIvA3SetPFxsoMkR3nAes8IohnhT8BPasj8xNg/2OhuANiaVzs9yKkrDgOIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6910
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/mst: Populate
 connector->ddc"
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


On 9/19/2023 3:26 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> This reverts commit 959fb1a686528df1b8fb0cc7bec8ff851b1594a5.
>
> Looks like the core MST code might not call i2c_adapter() for us
> in time, and thus creating the ddc symlink will fail. This will
> in fact fail the entire connector registration, but the MST code
> doesn't really seem to care about that and blindly plows ahead.
> All we may get in the logs is a nearly back to back
> register+unregister debug messages:
>   [drm:drm_dp_mst_connector_late_register [drm_display_helper]] registering DPMST remote bus for card0-DP-7
>   [drm:intel_dp_hpd_pulse [i915]] DPRX ESI: 42 00 00 02
>   [drm:drm_dp_mst_connector_early_unregister [drm_display_helper]] unregistering DPMST remote bus for card0-DP-7
>
> Untangling the initialization order may take some real work,
> so let's just revert the ddc symlink addition for now...
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9357
> Fixes: 959fb1a68652 ("drm/i915/mst: Populate connector->ddc")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Tested-by: Karthik B S <karthik.b.s@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 80411ce85fc0..ff3accebf0a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1110,10 +1110,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>   	drm_dp_mst_get_port_malloc(port);
>   
>   	connector = &intel_connector->base;
> -	ret = drm_connector_init_with_ddc(dev, connector,
> -					  &intel_dp_mst_connector_funcs,
> -					  DRM_MODE_CONNECTOR_DisplayPort,
> -					  &port->aux.ddc);
> +	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
> +				 DRM_MODE_CONNECTOR_DisplayPort);
>   	if (ret) {
>   		drm_dp_mst_put_port_malloc(port);
>   		intel_connector_free(intel_connector);
