Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BF5739EF7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 12:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567C310E0C2;
	Thu, 22 Jun 2023 10:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD02C10E524
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687431305; x=1718967305;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EP3mDduyx5dyJ1fjKXV4piBDBKjd97OTpRILA82e9+8=;
 b=gQTSA0aA6NhU6tOoM6/q103iXUKYKUokUcPPZEFcs35Q5b4zDi7Wsr6Y
 AJYGa1bAXXyIP1Gq5tv8b4EVs7OFKUdTAL7EGF9/j0C4X7ZlR271T6JK7
 xRAiqMSNf7hfdBF2uqeD5FR4cp7mwam/FMU5iy5z0qgrEj8DhPqM9Az+x
 rm1Gv+F39Klz+LrGjOIjrBxICGLTLCUMV8ZHMEVFGMloRmMk8okjb0WcA
 Kj/7tbQupaf3R3RRCN8xAhSU2idODWFoniZ9+A5MVNK9kEGI7Jl54aZbT
 ZHbKGg3JhaP5kU1eAIFueIlw56MkTHznBorfROl6hRKINL8d3r+LlSzEB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="340791419"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="340791419"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 03:55:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="780182887"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="780182887"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jun 2023 03:55:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 03:55:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 03:55:02 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 03:55:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGXSoOuotGFj1a6EoTTL4FnOLTQaHgd0+7kjtQ65CGjbjoxgxdoFD8ofjke0SbMxjkWFHkLssPXjC6FFKrGQVY/KghYxIeKYGzPlak2GZSl7z1m1hwonSYuZfsxvHvs0Pwj0eCBJE6Qdvz4tIxYpX6k4bcYlxcBf08FpCbIhFOjDjMstbSp50g8qKazRaOXGqDB/cBsEdJGXmebK9eW52m8Us2ddEyRytM+fQEmB0QzyLLiCH/JCHaTd4Lw8oBrtW1KXfm5jJ3a8vmr0DfRR1574PWLyZ31BnxXi18IT1BmjtgyVCR3nQiQXm4nocut2iX4T64fQLlj9tux95atRnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LRvUaTGRKaGq/70mOzMof/nxf2ldr1uuVMM3ebziG4=;
 b=oHmo47TOIjB7T+HzcGWSPoysemNpYw7YpYOFKE8ik91J31s1p8FxM4H0tXsGIq/hdQgeXM6Ypd9K8ZHmB7b4UaL2F2aGYDa8fS6Z4U3KrR1Rxu88UV3CsSnHuBNqGVvMCWVgZY5hTaLFdXgDeHDVmeLKPuAqBjpU637edBxSR/RsO8q5n0xUJqT8PP3aoY1ueL57ULM/6kGeqdogVHAY2dCUZmOXXODHWoAko+e5k9aH/zenpxtXZArTaCUGmpjweErcwVqcUZEDErVKiWPi/ddfJyUcQU/LWDOfwMCCOFoi1EqAFWRPXIQ/B2swtsW7P6MXS+vW/Bd6EC3wbAkZXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 MW4PR11MB5798.namprd11.prod.outlook.com (2603:10b6:303:185::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Thu, 22 Jun
 2023 10:54:59 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::f6a:a1de:83ec:b111]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::f6a:a1de:83ec:b111%7]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 10:54:59 +0000
Message-ID: <238f3e22-6475-7c36-d63c-016194c192d9@intel.com>
Date: Thu, 22 Jun 2023 16:24:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230616225041.3922719-1-matthew.d.roper@intel.com>
Content-Language: en-US
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230616225041.3922719-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0107.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::17) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|MW4PR11MB5798:EE_
X-MS-Office365-Filtering-Correlation-Id: 9871146c-0fea-4aee-89b5-08db730f1f41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DWkzkOepCOtQ1A7wMP2DEqx7WqP7AGEDq8xm9Kfs3DnCow7F/nu6oQjppEy46J2kC0vxttJHJX9TDtz6OuQ8xuDi9z0THzkR8eIPdnWzmn257ikMLr+MNmu4zI6JurzdkVzWkq1EMcWVajad/On6MQw7j0mqwqcFUvB32D0sA4n6g5nx5fi7K1/GyHVSY2RzKL0uj7q1/34tvhlwEhBH67/3Do0KEY1ku0/5OScymOVgayPJnFbC8rX/QOpVQn0fAdj5457cqMHcAoJDDjLImENEoaAodXZFeXnVblu+RV0QfyPExLRFoAgFcK/GaPpt9Xo48wqkD5b9DWDq7m+tiWzkvBQTSbnTqd16N2emW2nz1WIWYNhijFOwdLIDhDD2gm+UtvHOjwTASvS5F5unIkNjc4h0UBflk749s+67RqHYjCboklCh0I4eqGMV9nujHiGH56YeRFal3Pm6ljNI9ae/h3Kxy91crtxZsIyohDWnVzd64g86X/Cnb/MIGOd/Kt2AW/ERNcE1mcyZ5daolacRv/k2x4LkMZRWyeBNlr78z8hQp79jyZXcqgFdQdgZYLIRKFub7rCBUMMdnIrwFNiXrGBmap7HMVS7BTiJAZQwWmxJIC+KfmAqU9fkCXsQL7rD9gA8lWT8iqNYOSVjdA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(366004)(136003)(39860400002)(451199021)(26005)(6486002)(6666004)(478600001)(6512007)(186003)(6506007)(53546011)(83380400001)(36756003)(31696002)(86362001)(82960400001)(38100700002)(2616005)(66556008)(66476007)(66946007)(316002)(8676002)(8936002)(5660300002)(31686004)(41300700001)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUxzWTdDTGpzODFrWSs2RjFqMnczOXpDMXJVSmwvckkyNmJ4eVc0UTZQblhp?=
 =?utf-8?B?T2NCSjNsMHVhTGNhYXU3UjdLZlNmQWtEY1FqRE5OYVZtVTBZZFllTG56akYx?=
 =?utf-8?B?K3k5ZW0xSGZBWkJtNjF2R0hqZk12U29MZFR1alhxY3h3REZKMG50OFVrN3d4?=
 =?utf-8?B?SEw3OW1GT0FHYmZlY0FuU3FjNlpldUJ5eDQvQXZCNDZTbXVRYVpHK04ycy9N?=
 =?utf-8?B?ZFdoeFJTdmF4MHcxVkhzU0dZdlJkaElMaGNERDFPYUs3ZnhPb0h0NmJERjdM?=
 =?utf-8?B?cE5CSnZpS3Zvd2NwaUVBNmFjU1N1TEhPNkFld2d3OU05ZG45QlpNOVU3Skpt?=
 =?utf-8?B?T1JXSmYvbDdKcmMxZ1JaOXJXM0ZDeGo4ZUVtUllsd2pkYnROQVFpc2JEQjZ3?=
 =?utf-8?B?dDVheWdlYmROSk0vWFhyYURaTnFoZEU0MThoYmNvWGhCVG1uaUxweEJzcVZa?=
 =?utf-8?B?UkI4R0s0QW0zclRrMGM5L0xZOWZzQndkNnhqMmpGNFlVNHVMeEJIRVRNSW1u?=
 =?utf-8?B?OCsyNGlXYTMvQ0dZUkZHT1hLTXRMbjB3RUtPTHpSSWwraGlRWVRHZlNxaWp3?=
 =?utf-8?B?dS9UUWl2QzVEMXg5MVhtU1dkZzdkYjYwY1IyOE5HQkhkdUMyTnlYTk9lODAr?=
 =?utf-8?B?bFZaRWhtT0g3Z1dtMHRRYXkrNndaUkVGRGNkY3ljNmxsRVdNVEk3UmVJdDlv?=
 =?utf-8?B?ZnNPTk95MHQvTHRGVGMrUEx5Y2d3OCtaMUlsN1JyK2J6MjQ2QzZkbUZsMnlW?=
 =?utf-8?B?aFRpc2dFb2tXa2UwaXZ1cC81elh1Z1p3cmR2ajIrRUo1R2dwWDJ4Qkc4SkhM?=
 =?utf-8?B?SVIzTG9Wdkg2NmM0L3dEa25jeVhERWFLb2hLTTNReDNHRmVxdW91eVBtRUJI?=
 =?utf-8?B?SVkyZGVhcU9KbjRZQnkxVzNHTGhDVi9Jc1dzYS91MXZJSktjRU5IeG1VdjNU?=
 =?utf-8?B?SlJnWGpIUWo2Mmhlb1pxTjF0cXdQWkZ5cnBkcEI1RFFOY3JtWDQwWjNzWloy?=
 =?utf-8?B?RUZiNDA2cjNKMmtzT0hBdC92RUx0VjZYcWhYL21OYnBUanNQMWhSdlFjTjNz?=
 =?utf-8?B?b0pJZGk2YU5XR3g1anBXcmFPdCtoeDVMQkFadUFaR2pnbXlPZ01RNTRVR09P?=
 =?utf-8?B?dUxHa2ZTZE9qSERURTBOWGlCZHg0aTJqTytOQWZRMVdoSUdSQWVIR2krbThK?=
 =?utf-8?B?T1ZtcWlHaTdNeTBub21nc0pNL2t0c2ZJaWR0SzNoamQweGpBK2NIODdtM3h2?=
 =?utf-8?B?alcxN0pjUWtLSlVuWU92YndhNFlndDF4V0Joa2g0dUVhazVzOUcwWG1VenR6?=
 =?utf-8?B?aFVTeXhmcGtjcnVIR0FoRjNjQ0ZBTlVxUkpvTGYzZGZPSElNZVRhZ25rQ1Ex?=
 =?utf-8?B?Ukh0U2lYQVlBUGxZMWdyS1kxVStJcitHTDNoVnBVYmEyalJ4U2hBZU8waFIr?=
 =?utf-8?B?MGg2anNhNENaeVl6bVpxRHYzcFlzd2FqYXhhKzZnbzRFOUczNTVmbUZJZ3hi?=
 =?utf-8?B?c2lya3NnUTZCd2ROQVkyOWdvUWZRSG41Vmo3OVZHSjFSVXF3SkFZd05QNFpu?=
 =?utf-8?B?eUxRL09lQ3Q1emw1b3ZtVXg0VnFwZk9GMGtiZVBMa245TXc3akxsbks1UllY?=
 =?utf-8?B?b2RpVnNLckNET1VWRWhIeXJ2S1QzbUNTWnA4WVNML05TdTZGZGdFVGpDSlJJ?=
 =?utf-8?B?Mm11SU1ZRThpc2l6dEg2RmRRY0ljWUlOVmsrbENUSFlYK1hWMExOR3Q5Qkx2?=
 =?utf-8?B?a2ZLTjBTMTJ1WnpMcFU0M1ZZMktCVUpaUnd1WXE3UmhkU3laVFE0M00xd2FN?=
 =?utf-8?B?NENXR0RMeEJuUndlVUlvcnpuZHBVVEVjcHdXdU03QU02ZEE4TklINnJvQjNC?=
 =?utf-8?B?eGxkSTdvZnNlajdZSit6d3o3c0psZ0lOdmVPdXBWMGRhYnM5elRKSUxBKy9G?=
 =?utf-8?B?MVhGeE1zc21CZVQvSW9ERndhWDIzNjlhaGhKU2RYUlB1K25jRm8rQ2EyMFNR?=
 =?utf-8?B?dG5RZWlndXBaSUtpTVRibnNrRWplOVR1L2FvVTE5U3pVTlBaTDJKcGkvb0h0?=
 =?utf-8?B?cXBRQ3pxT3ZDdC9yT1RORC9pb2UzRTYwZzlJY3cva01pbGFVVm0xM3dtd1Zz?=
 =?utf-8?B?QWYwYmZ3L2N6d3dPcUw5bkkxSWEzTmtPeE9yV3VRNS8yRDBkQ0VhczZWb0sz?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9871146c-0fea-4aee-89b5-08db730f1f41
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 10:54:59.3144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 11QoI48h2aflmcecVAwRn+MQ8UrA+8Z1h+UHrd8s6yIr7r1Hzc0EAL7252/KfnojByTBmo89kv1LTkQRCcU6SnSvJruTPR/SF/Z1rUci05A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5798
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Extend Wa_14015795083 platforms
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


On 6/17/2023 4:20 AM, Matt Roper wrote:
> This workaround was already implemented for DG2, PVC, and some steppings
> of MTL, but the workaround database has now been updated to extend this
> workaround to TGL, RKL, DG1, and ADL.
>
> v2:
>   - Skip readback verification for these extra gen12lp platforms.  On
>     some of the platforms, the firmware locks this register, preventing
>     the driver from making any modifications.  We should still try to
>     apply the workaround, but if the register is locked and the value
>     doesn't stick, that's semi-expected and not something we want to flag
>     as a driver error on debug builds.

Hi Matt,

Looks good to me.

Reviewed-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4d2dece96011..4bb83c435a70 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1485,6 +1485,18 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   
>   	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
>   	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
> +
> +	/*
> +	 * Wa_14015795083
> +	 *
> +	 * Firmware on some gen12 platforms locks the MISCCPCTL register,
> +	 * preventing i915 from modifying it for this workaround.  Skip the
> +	 * readback verification for this workaround on debug builds; if the
> +	 * workaround doesn't stick due to firmware behavior, it's not an error
> +	 * that we want CI to flag.
> +	 */
> +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
> +	       0, 0, false);
>   }
>   
>   static void

-- 
Regards,
Haridhar Kalvala

