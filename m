Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9776E629128
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:19:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AE589CF6;
	Tue, 15 Nov 2022 04:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8BD89CF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668485985; x=1700021985;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=coWYwYzng0Ujk6iPdRnDLdapxDrD6GokqHPvJofho1w=;
 b=YmnDy8yot0Fh46nc6YG8MbMqrerB31hUk8ITSHC1Z+OjoOy7VoGCS18G
 pvB0Z68XZQOx0rOoZ0MjUylDADf9wuHySZ1/mZsod7cdxm9Y/S1TPxw3V
 5EF0Yp7xBeyfSjHBb8Oqu0cEAReNY5xD237rs8+KFPGwheaFF5++q24Ep
 p/vFwOcf79/wHesKbtMKjlz+nq/7O+7GPCHi5G83B2T6CxdUfBkAk54Lk
 lE4bFBfNvqsWUaMnDZCYhTlDTxDu8P1fDBd/Xe0oAuIK2V8sLhQEJihYH
 0Hp2VUKVMjAp5ZqDDGb8vPhgK9nWgHrb0GUzXkzNstlhfpR9+AUZi1ixI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="376423281"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="376423281"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:19:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="671847903"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="671847903"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 14 Nov 2022 20:19:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:19:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:19:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:19:44 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:19:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LmuzhUyWmZvhc3IHt2ig3fpyTr/NiGe0+UhFRKKNFSqUKCeT88lj+SrG8aUkiS/z5Mnm4YMWhdHqs8aapvfHvn9Sm2PQL8iY3YIzms/OYidyI9KUGEHaMPXLYD2Ga36nBodn3alW9RRyXilMG/WjIxsXPxfqkDh+eq9owDYXxGmTkaW9eFiZ4APEblukPjCpGLdayM56Sz9evy67VGAjZ8Iyji7UT6ctLDh8vl7zQv1SPANzjzx1IY0TQWculBR0ulEZC0TwAzq3hSJDycYG81MtaIcRWVSy5ECBzI8O9esADBX9/mOOh5HIsfWSJ54PTleOnKakNW+CDf/lJJloOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9N/tv/CNVrqy+dB4HfTV8hPp4RjI6M0w2VYQiD6Htw8=;
 b=gsh0tXetCjmKNMH7LdGeBgqQnE3w6R9NzacXx0Js4hm9OJoYPWUnLG0cIjBg5MQV368xG8kWoQtxZKp5aDUNeU5JmfhpfI0m/6ogUPd68HBgfAZK6WEjVUpnhSacn+aV+axwwiO4TTKFdZCkxb8U4jUbovzBSuvEsGTg/r0BHCUosZFWmCqTydeziXBGqsFymnK5khzUKa6dVQ1QQCucfmi1gcpkmLcrYD5rqKYI0FeRz5LMECyRajeChIhtIAharPOtECYHHqM2ksN9FSNOhJ8vvkYPvLUOI5ijMgnKuWxWSQzg1oxLRnFd0Gn0vDFPK7ZdaTCmM/9bJ4rwJTs0dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL1PR11MB5493.namprd11.prod.outlook.com (2603:10b6:208:31f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.17; Tue, 15 Nov 2022 04:19:42 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 04:19:42 +0000
Message-ID: <096eeab3-e778-ff8a-ebfc-f457853c8c1b@intel.com>
Date: Mon, 14 Nov 2022 20:19:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-5-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221021173946.366210-5-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0387.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::32) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|BL1PR11MB5493:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d285854-0de1-4788-2909-08dac6c09e61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xs94Zue5TzmImL1hk1F6yGDhiSwqFB+1odP2DEbIybECgqBCZ70UnIXUevxgOmjG8ZgLTel/tfPsRx1Ge5e5n8FtdtHO9pWWK6R/jZtO8AZCduZD6f83f1rppgrW25lBvV3A/6bUn54T8J1MapW2/biOamKpmtNVBzxREEz3TKOIdBoOh05TQNvXYoMh8MiIFazA7/zIl1+bIl50WZS1LNIodSVz/IVxDFfgMheayFCiMwovhBvU8YoPPBjuTfbG1d0wL6GRlWIk55w0rD0ZYVlTsL6P16fnhdFXIrpVl9cfvILzwBjZNBBtlbktVkj25KJSGUwPl7sopx1LdSq+VJJFTRZnLyiZ3dcbGctqUalYqXw4/cpHqk25R27jCG//oobSavg+XYqRMTJ/Di5UYxQIcHsnwlQobXXX98eZPXYBTSQixy9r17XdiMtgHOSAfrhk+uGqfeg5Y1+or7xTU7IWECWMy6J9YqxBI9bgWalIxXQTv9OaMxBR+yDBGRksMs51sRY3IDOb/iFHvj+jkiQp+J97I2Y7mkEyR5ckSDbuA0dUElwUXACcY2spe1dksIybXaPWjvXbzvgmxCKtnygZgpUEAxMHBGCjJAr8qMJBAf8S3ubThdv0MgHCCkR7JL74RXUppqmziWI+cWrmombhrg7FAOtFwXHKlGN3ViWTwfsdatFWox+Dsn1LKK1lVnPBtA5MV5bsJUYq6szBpPxnQodjnyKguhadrnaSVymXX20ls9QRQunGpBnW7T/9znQquQqqtAq1JIg4ifV07P9ZxB1giAxd7Ex+0Zqocm8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(31686004)(36756003)(86362001)(31696002)(6512007)(8936002)(83380400001)(38100700002)(186003)(6506007)(53546011)(2616005)(26005)(6486002)(82960400001)(41300700001)(316002)(66556008)(66946007)(8676002)(66476007)(478600001)(5660300002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFpXYWZQaFpJYmdjQ3ZrTHhxRTV0elZqQW9zc1hZYUJiS1J3d21PN0RkYWpx?=
 =?utf-8?B?YjhQeTFQZWRCaHBGcTBnNXJtbWs2bFBnWGxLbzJFQUlIdURKV0k0MXd1c0U0?=
 =?utf-8?B?OUh2OTVlUUpkVXpKQ284VTlFRnNYK3RINm9lZURBakR3eW1rTjJJUTRsSGdi?=
 =?utf-8?B?N3doZjBwWmpEZHpCSzdvMVBGV3lpc21weTBENkhacnhZU1RJa28vaDVEaXpT?=
 =?utf-8?B?enBpbkczd2YzMmRqV1JNS1N5bEV2MzhxMmUxRWlESlYzeU8wNnExSU84aHgr?=
 =?utf-8?B?dVdlNEdobTVycGF1a1g0TW5EbUQwUzdsSzFsbzdOaTc4TU9QY2haQ0JzNGEr?=
 =?utf-8?B?aEJzZFRYYkxmV3FSMzhmOVVUdTVPZ3pLcWdzd0dkQXpCdGpjNmdBNjBLYzc1?=
 =?utf-8?B?ZE1mSTErMjZxTmFsaEVBOGtKbmNXdEVvVTR0aDNJMEJsZkptTVhIR0NDUWpZ?=
 =?utf-8?B?SEtFNi9hV1RQV3JLWXpaYWJJMWtDbGQvYWtMQTBCY0xUZ1Zhd0dDTHhMY2JG?=
 =?utf-8?B?SHhKbW5xWkU0cURkSkg3V3BjWGwzYVR0QUR3dXQ1TVFEWXRRK2lLd3JqU1hy?=
 =?utf-8?B?cmgwcWVsaHFMYW1YVHhXaTlMYVdPQmk4RlBYc0pSVG05OHlQYTJYUWI1RHJD?=
 =?utf-8?B?UmRsODFUOFFRSDUyakFqb24zcS94K3puUWxacThsOEhtZkY5M3l6ZXAreW9n?=
 =?utf-8?B?TGhqYklwY0NoZVJjNi9aU1BERnNBTVJCcG9EMzQyb1FTK1lkb0hQL2ZDcDIw?=
 =?utf-8?B?bTA2NFZwZHZEZ1h5blB2WWdZOEdqbXd6aWUyUDR1TWhOazhvcmNSRVlqZmFs?=
 =?utf-8?B?Q0ZFdmRmamsxMTdUejQ2YVJIQzkvbWRubUxWNWpaRmtyZGEzSDhzK3JGNjly?=
 =?utf-8?B?Z3JmWlJtY3ZqdUN0S2JrS3FUamJHalpScDJOVDlRaU1lVFZFMEtEdkI2OW4x?=
 =?utf-8?B?TkFtNkxtQkdWclpTRWQ2NkNYdi9ZeUhVRTQwSG1iRExCM3BzS1hZbHRNTnVS?=
 =?utf-8?B?cVB3QytWNm5qNE15SVJ5QU9WL0wrcDM0WnZGSnYyQmhpSlVVaWs3WEIrdW1u?=
 =?utf-8?B?WE1rRzZQVElyeStFekpmVzY1SUsvTmRQYUxmODBKc2k2cktSemxIR0JpNDZ0?=
 =?utf-8?B?MTRpcGE0OWhubVRzWTdEUzVDaDFsWXduMnVxMFBUdkducldLYWYxZU44ZVpt?=
 =?utf-8?B?ZHluS3k5QWo1eFJMZE82YmpHVDBoV0J2aXZYdnM4bDFzYUtjZDZQQ2JZaGM0?=
 =?utf-8?B?UU8yNG9pdUcvWjVPcnZydDVaV0lWelZIT291QS9QbnB4TmxlVWczSk9xSXI5?=
 =?utf-8?B?Ym0zMWVTWEt1SHZFcTFJYzFUak1TZmtXaEZ6RVVZa0tEU2g4QkpvOHpscTRE?=
 =?utf-8?B?ano2K2lla0N1N2h5WWt0bHpibU1wSGRtWWNvTEhVdDJKbGY5YVJ0Sk43Z2ZB?=
 =?utf-8?B?RFIzVjlpNVFsd21idkRrM1FTTjhsTEdiSVpKK1o4Mzc2dTUxVXBsdFQ5WU9n?=
 =?utf-8?B?VGdBYUJ4aXdvUGxMeTNQZjRNZjh1UjdFRlU4THU3Qy94OWp6cVkrSGZadVRo?=
 =?utf-8?B?NFlKdmgxbWZmbER4eTNZelI2RXFpQldmaHRtK0dnRjY1UC9uWk82TWY4U1Jv?=
 =?utf-8?B?aGM0eEVqN250NVZOTkZzZ2tpaVAvWEdKaHkza3FFRFhDNlZzQUcyc2JrQjNJ?=
 =?utf-8?B?SG5kZjVvYUhyN1pSUGxJYVRRWWRGOTBTZnNyMGEwUUxacm9haFM1cFJySmJO?=
 =?utf-8?B?RzFWbWxPajk3blg4akdzeUZvbGlXeXpOdml6NXltblF1dHplby80WUxCd1Rs?=
 =?utf-8?B?SnEvcm9kSkwrQlIrVXM4MVJ4MjQwZWxlYWRuQmFJNThUc1hmeFpCMzFDT2VV?=
 =?utf-8?B?Nnp4NDlQQ0tCUzdoZTJjcFJFaWhuRmJGY08yZ012bDVvK2VSeURvTEhNYi80?=
 =?utf-8?B?Z0pDUGR0bGUwZnFhNUFtZjJHclRaL2Z6OWMvK3BkaXRFZ2dEUEw5ZXFkUXpu?=
 =?utf-8?B?VklqdUpGTG1laFNsbEtZSG1QcUJXKzRaV1YzMTFoK3M0ZDNHRklRY3JuYkJ0?=
 =?utf-8?B?UTlDSmFpUEh0NkJCOG5zTVhKbjdiZVRtWXhGSE1HeW9rTjRLZ1k1VGl4MzR2?=
 =?utf-8?B?enhOSUxnUUNvak5kRGc4SitKUVB4cTBhclRuVkJERHdHbzRKaitacnZJYVV5?=
 =?utf-8?Q?pAXXIOQyp3lKAlWsfAjtMdo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d285854-0de1-4788-2909-08dac6c09e61
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 04:19:42.0941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WLaaPLjCsC/6XtyPUeY2wDRboA3InasXRQGZQwXvxyVMvpGSWsqn5ywPkSE0z6pbMbmVxesfN5OMmWTnvQvpzsbWTYuZixzka51bLoq9YYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5493
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/6] drm/i915/pxp: Make PXP tee component
 bind/unbind aware of PXP-owning-GT
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



On 10/21/2022 10:39 AM, Alan Previn wrote:
> Ensure i915_pxp_tee_component_bind / unbind implicitly sorts out
> getting the correct per-GT PXP control-context from the PXP-owning-GT
> when establishing or ending connection. Thus, replace _i915_to_pxp_gt
> with intel_pxp_get_owning_gt (also takes in i915).
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp.c     |  6 +++---
>   drivers/gpu/drm/i915/pxp/intel_pxp.h     |  2 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 14 ++++++++++++--
>   3 files changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 15f7983f6da8..2c835c38c527 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -74,7 +74,7 @@ bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp)
>   	return pxp->ce;
>   }
>   
> -static struct intel_gt *_i915_to_pxp_gt(struct drm_i915_private *i915)
> +struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915)
>   {
>   	struct intel_gt *gt = NULL;
>   	int i = 0;
> @@ -89,7 +89,7 @@ static struct intel_gt *_i915_to_pxp_gt(struct drm_i915_private *i915)
>   
>   bool intel_pxp_is_enabled(struct drm_i915_private *i915)
>   {
> -	struct intel_gt *gt = _i915_to_pxp_gt(i915);
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
>   
>   	if (!gt)
>   		return false;
> @@ -104,7 +104,7 @@ bool intel_gtpxp_is_active(const struct intel_pxp *pxp)
>   
>   bool intel_pxp_is_active(struct drm_i915_private *i915)
>   {
> -	struct intel_gt *gt = _i915_to_pxp_gt(i915);
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
>   
>   	if (!gt)
>   		return false;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 70383394adb4..7d93055cdd6b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -13,6 +13,8 @@ struct intel_pxp;
>   struct drm_i915_gem_object;
>   struct drm_i915_private;
>   
> +struct intel_gt *intel_pxp_get_owning_gt(struct drm_i915_private *i915);
> +
>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>   bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
>   bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 1c6bc56391b7..eb7adb972610 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -20,8 +20,12 @@
>   static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
>   {
>   	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> +	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
>   
> -	return &to_gt(i915)->pxp;
> +	if (!gt)
> +		return NULL;
> +
> +	return &gt->pxp;
>   }
>   
>   static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
> @@ -128,10 +132,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>   {
>   	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
>   	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> -	struct intel_uc *uc = &pxp_to_gt(pxp)->uc;
> +	struct intel_uc *uc;
>   	intel_wakeref_t wakeref;
>   	int ret = 0;
>   
> +	if (!pxp) {
> +		drm_warn(&i915->drm, "tee comp binding without a PXP-owner GT\n");
> +		return -ENODEV;
> +	}
> +	uc = &pxp_to_gt(pxp)->uc;
> +
>   	mutex_lock(&pxp->tee_mutex);
>   	pxp->pxp_component = data;
>   	pxp->pxp_component->tee_dev = tee_kdev;

