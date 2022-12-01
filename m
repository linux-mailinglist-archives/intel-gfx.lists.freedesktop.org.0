Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E40F63F36C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 16:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC17710E17C;
	Thu,  1 Dec 2022 15:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FEF10E5FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 15:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669907697; x=1701443697;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zI0V/z/Yn1dpsYG1LAfq0RiW6F4cfwdYq+iPUyA0Q3A=;
 b=Ave38wPK+fk/ajidoBlDKCqdX/auIYak8uv/HpTZkkoo2HPomR5oiwkE
 Eq+S0bl8jpCUb7i6unaXaGmvcrGQMAcPXmVQ05gwD0XaAqaqUuEPQwbxB
 vsD51qINmSzCB4Gsp0SuAHnXljHVzRFtTt/n0eAA5vnN9UtmT9Riv4/Ie
 j8cdgiVaaLltnDvVUj2Bii8gkpaeIEdNcIiFZBH8x94PXfwO+4tHVUiZC
 RmcHWWuLVF0XEQpcib5V/XFB/I8s5H1TC1+lTlXB16QH2cO9tShbESTRm
 vGtcmFjm4jnT7EB0YiTd6yMzo5yx033+xcCbtlygteOepsMqTUJV5Rhxf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="295401963"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="295401963"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 07:13:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="638418324"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="638418324"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2022 07:13:43 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 07:13:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 07:13:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 07:13:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCTPgGWlXlTJ6INtSaYNLuRwmc/T63sHo5k7V3PExg8sEF+TszwvkXf4xaeKBpZKddcLiEOi/ON2m0FCs1zxYo8bptvdauq+tyJ5YEqqeYL8pdzNqDqFaBDFLMlM1Kt24eRgE5eC4ehx8/JddyDe/VizLN2NlJMaPCWmiENvvoQ+e6qhgm3Efgi4By5+egWbMJl6Pw1nCaGvD4H8NSeWrZ0huWMClmYFOxDFJwGa6yArFrIPq6AC6l4IS8I/0fpRLSHihS2+JZtgTeg48cXczVS6zKFN+uZgmxd3MI7SOLDl7PrAvmkvQwY51zbBPo2VQWcusmWOfVrTF0rDq2ei8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KckXmjHQXaSEV84/1qsyHRaWjLJbCX2rxpvLO6PVEJ0=;
 b=mngGmK9/3Q0NpsK9i/b7gPOuoQRaXVm09+1csn/E+M1V7tEnFYThpK1yFN0S6IuA1QsCvuBiAjY139ljnAUg8VLYsz/1/KVfJf7jp21h921J1zVTzrve+G+2SyKDJzSvTI4Wz2QGRWtq6QmGq/7Jc7ll+tHkIjD4C9oDXTflkAE+VsDolyWAv7efr15VTGrJCA5aceHcFDDrLfut8HBy1zXGUR4Xel2KsbaSp0ZHJSQV/W9+9sh4UXcS+BheBEbKF3Te2b6QN1cwEO+tsJ3NbrcD4rRu50YYQo+KTiv2ben9RGehwsFxkqsdAUqAAcn57IeVryB7b/EqUi8zHkI32A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9)
 by DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 15:13:39 +0000
Received: from CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::ab38:d40a:7f9a:3362]) by CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::ab38:d40a:7f9a:3362%7]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 15:13:39 +0000
Message-ID: <8f6538f8-9d40-2370-441b-9ff3cab1942f@intel.com>
Date: Thu, 1 Dec 2022 07:13:37 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20221130170723.2460014-1-wayne.boyer@intel.com>
 <166988517042.14635.14083833982972293303@emeril.freedesktop.org>
From: Wayne Boyer <wayne.boyer@intel.com>
In-Reply-To: <166988517042.14635.14083833982972293303@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR03CA0258.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::23) To CO1PR11MB5108.namprd11.prod.outlook.com
 (2603:10b6:303:92::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5108:EE_|DM4PR11MB5327:EE_
X-MS-Office365-Filtering-Correlation-Id: 9325f515-1c90-4d32-5153-08dad3ae9fc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FLfvjoUojqTqTBeNeScHXRNZAeUlz0DJXLZc+xGPfSCnZe489fxstTIPMkps/IvVmtHMMLwtZLieisLz6IiQx83dGEzKQsYN013KBrGGUGLMx/q0Q4RZxwQiBhnkTTSm8XVXjan4sQ7ae4WfQlLNmgxRdCIKXEwbMSNeL8FYb/e1923MZ7vpxuCctZ4CRgPGUMC/bU7l4u1jJkOTwj9AxSrHB+sbptcAozBBoBLRXNsvO6tnHY7M4i4Z+7LHrZgxh+9qoA0lthc0rQMFMWjKbiZgvXJIrX1rraacjgN0G5iije1v9lq6zPkY9JcwMWTHYjYZopU8Yc5x/cArl3pZ+Lnhra4CnrGApkIOB7E80XJm/u/9cFpqCE8xHV9ET5Lkj1eGOliiQXNU2fXw4ReQJ0OGFmsTKGO5mzZkSvyp8lNic0bV/adaQcvrSUDV5biikaRUFceNTLj1EeQVPi3+rNqi/YkQh5//p7K0bCiORPNux6qXCnREyTwu6hoyB0nqW1XiL2+XapijOaLRD9/NV5U8lNnM7jKrMntQjrAkptWfTq59NEPnCp98ONOUARp0xVfbwOxzKq0FFu56iZ3f9H4nNcEu04WAJeTYfgbvBRzBkzyFYZdwKuA/SY1+3SbmMzadojoGnVH8Z+qqlY0KX8eIzJLx8kQruMkMrvSY5SfNXMFY4PVgyy7V1jphEQdE77PD3Mw6qHya0EsQGE7W5D1C7eNTEVTW2YdIeqKxWHGtCbyfZ+McxA2O8zZSNacZWuwkXNvzKinZD7+YO83FAD7CjD8OdnW1/sGU0LlfdWI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5108.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199015)(2616005)(31686004)(6916009)(6486002)(316002)(966005)(2906002)(36756003)(31696002)(478600001)(86362001)(53546011)(82960400001)(83380400001)(107886003)(38100700002)(186003)(26005)(6506007)(6512007)(30864003)(44832011)(5660300002)(66476007)(66556008)(8936002)(66946007)(41300700001)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NC9QVkpmQzdSZ2pmMlFTc21GdXZwUG9OUmczU3lGTklKRy9oZ3BMSmttUHRp?=
 =?utf-8?B?V1dzRkhRSlQ4eGY3cjUweU9wYzU5SHVXSGFXbGYvSWM3L0p4KzQ0T0JHWXYr?=
 =?utf-8?B?ajVkbWs4S21ITng5VmpLZEYzUWVQamtiNlhFRVdiakV5Q29WYXgrRlE5c2Z4?=
 =?utf-8?B?SnBVRVFSb3lLTFdPejVXenY2aXgycEJndnZLQkJya0xCdHFuR1VkWTFxb0ZP?=
 =?utf-8?B?aHZwdmgyS2dMZFd3QjB2T2w2ai95R01wcGI5eTVFSjVRREkyaXA3bzNiVnZI?=
 =?utf-8?B?RE4xNEM0MGVaaFRuZWh4Y3hYMVk2b0x1bnNoV1VaQnQ4MGhqbCt2NUdRdmNr?=
 =?utf-8?B?bGJ4VFpUUDRBZE1pbXRFZUhuOVV5bUtTT2liYktUVFhjOWt0N2Z5U1VkSitT?=
 =?utf-8?B?MGg5bnJGaWQ0bS9HcStHZmtjeU4xakhwcU5LcUt0VGticTZXR2hyTTFNUksr?=
 =?utf-8?B?eGdEbTl6UUtJSG4vNnJjWG50MHdOekpxZzV2eXdZT1dCWXJDTHE1Nm8ybkJW?=
 =?utf-8?B?b3hsb1p4R2c5ODJLUnVYWGllNEhrTGk1WW91OVl1cEI1ZDF6VkJNcDlsK2ts?=
 =?utf-8?B?WGRad21OMlp3QUhYT3YzZzZtSllaenpBay9oN0UzbzcxTnFUcWExV1p6Y1lR?=
 =?utf-8?B?T1VhRUplaFBIekVvdGx0NGhIRDJqT0d6eFRsSERmQVBXbHN1TXdnbnR5NmtP?=
 =?utf-8?B?WVhXT3Fab0FsYTRVa1Yzay9qcmhnRmNFTmtCLzlmaDNMSkhHOWNNU3RvZHhN?=
 =?utf-8?B?REZrYVdRYWNyemhNNnhGemxheGx0aGhOd0t3NkJPVVpVZG5OUVlCcFpRKzYz?=
 =?utf-8?B?Q3FhRm5rQjVFRUlHOGNwb2IyLzVVTTZOS0c3dGRSTmN3dGdlWGRmSmlPWTNy?=
 =?utf-8?B?MHZYUW5xSURvQ3hUVXM1WGlVY25jR3JuNTFSRGpPK3Z6ZGNmaXF6NUNUMGFU?=
 =?utf-8?B?MkFqMGduWVcwL2Y2eWRKdTFaWmRvYjhsaVYzeWo5VlJoVnlSRTBHTEFrakVG?=
 =?utf-8?B?Q2pHa1BNOU41NnFCOXZiWGtkK3d1MzMwOWpQR1pPSXhWbWRVMjJFcnE0QzJX?=
 =?utf-8?B?V0tZVEZ2R3E3Mk1WVnpaWmxHUHRkaGJHcXhTMndjVXJsSDdlbys4a09OdW13?=
 =?utf-8?B?VUs1RDR1WWlEMzlBRVIxN1hOd0U4V2kvalJMb2hyTnB1Mjk1V1BVOVhDZ1dZ?=
 =?utf-8?B?aFFDY2w4YytnaDc4eDlFTFl3TjZhdi9nUmE2UWcwNGplSyszdWE4WEVkaXdS?=
 =?utf-8?B?Vlo5MUdtdG04Uk1oOThkUDU3aC9Nci9mRWk1eWM0M2d2QmN5SGZHT1dRei9G?=
 =?utf-8?B?Q1l5ZHk5Sk5PVTBSemFycUxzUUVLb1l5TFVrdWZtZy9IWkdYN2IvL3ArTDcy?=
 =?utf-8?B?ZW1ObU4yQm1Kc2dxZk81bGQxRUYzc2V6YmlidE42MWhYM1BJK0RLdXZOdUFH?=
 =?utf-8?B?WFp3SnZEOWhVMHRkWjFXaG5zcjh6S1U3YnEzU1huRExHbU1Gcmg0YzE5Zzh5?=
 =?utf-8?B?UjAxbFdobFNCR01JUkhEMGRkdllOQ2x2YXFnM0FJL0VJTGN3SW0wUWs3Ykgr?=
 =?utf-8?B?bTFYcEVUeCthdlIrUWR5QUNxQmZ4MjdmOHdYc2N2dXN1VTNpOVd4K3l0MWdz?=
 =?utf-8?B?NTNXQnByZGg2ZzFQWG5WY25pSllDUUlVbjRreDdOZ0xxWm4rWW9vZnp2WjVk?=
 =?utf-8?B?ckw3dVFndWYvdjZDalhhLy9oSGRJNksyWkcwM0FjbHQyRXhRUTdydEwxTVBw?=
 =?utf-8?B?S0VXZGtvY0hESENGKzY1UC93VS9IU2NmdWtzSWNHNEg2aFVVNzkwbng2OW5a?=
 =?utf-8?B?dUMvRk1JT28xL0JhaUNZU1puK2oyQ2VTTXk4Y2FuSnZBVFltb3ZqT0NSSmpL?=
 =?utf-8?B?Vk5xVndaemFIRnJrcUgzeGlyS3N6SGtXYWJYUlVMZmFKYTFoRFFVMUhGbmsw?=
 =?utf-8?B?UDhwbjlCc3NmLzlQQ2pSd1o4QUtXZXJTb0hrTXE5ZGV5cnpheWZIYlRVdDI1?=
 =?utf-8?B?RkxhR1paQ0ZUUFVkSnBDZDZlRU9ETi9iTzFwcDM0bEw5WEE0ZkRkckd6VHJC?=
 =?utf-8?B?L2xDYUl2dDBxa21ib2VvYy83aUU0N1JUQnN4cHUvOENKRU84dUM1Qi9UVklZ?=
 =?utf-8?Q?Vv3qQV11aUz3WxXdGSU3+JcUF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9325f515-1c90-4d32-5153-08dad3ae9fc2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5108.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 15:13:38.6459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F021mTMOuo0GUjVsVA1UAbhY82CU3V3vRxrcSq2A0u758JhNAFYuSdarpryEBawnfn/2K5OmBN6876ci+49Gmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5327
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Implement_recommended_caching_policy?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The failures below appear to be unrelated to my change which is
restricted to PVC.

On 12/1/22 12:59 AM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/pvc: Implement recommended caching policy
> *URL:*	https://patchwork.freedesktop.org/series/111491/
> <https://patchwork.freedesktop.org/series/111491/>
> *State:*	failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/index.html
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/index.html>
>=20
>=20
>   CI Bug Log - changes from CI_DRM_12456_full -> Patchwork_111491v1_full
>=20
>=20
>     Summary
>=20
> *FAILURE*
>=20
> Serious unknown changes coming with Patchwork_111491v1_full absolutely
> need to be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111491v1_full, please notify your bug team to
> allow them
> to document this new failure mode, which will reduce false positives in C=
I.
>=20
>=20
>     Participating hosts (11 -> 11)
>=20
> No changes in participating hosts
>=20
>=20
>     Possible new issues
>=20
> Here are the unknown changes that may have been introduced in
> Patchwork_111491v1_full:
>=20
>=20
>       IGT changes
>=20
>=20
>         Possible regressions
>=20
>   *
>=20
>     igt@gem_exec_fence@syncobj-invalid-wait:
>=20
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl4=
/igt@gem_exec_fence@syncobj-invalid-wait.html> -> WARN <https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl4/igt@gem_exec_fence@sync=
obj-invalid-wait.html>
>   *
>=20
>     igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a:
>=20
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tglb=
7/igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a.html> -> INCOMPL=
ETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-tglb=
3/igt@kms_atomic_interruptible@legacy-setmode@edp-1-pipe-a.html>
>=20
>=20
>     Known issues
>=20
> Here are the changes found in Patchwork_111491v1_full that come from
> known issues:
>=20
>=20
>       IGT changes
>=20
>=20
>         Issues hit
>=20
>   *
>=20
>     igt@gem_ctx_param@set-priority-not-supported:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@gem_ctx_param@set-priority-not-supported.html> (fdo#109314 <htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109314>)
>   *
>=20
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>=20
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl2=
/igt@gem_exec_fair@basic-none-solo@rcs0.html> -> FAIL <https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl6/igt@gem_exec_fair@basic-=
none-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/i=
ssues/2842>)
>   *
>=20
>     igt@gem_exec_fair@basic-pace@vcs0:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
7/igt@gem_exec_fair@basic-pace@vcs0.html> -> FAIL <https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@gem_exec_fair@basic-pac=
e@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/28=
42>)
>   *
>=20
>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#4613 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 similar issue
>   *
>=20
>     igt@gen3_render_mixed_blits:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@gen3_render_mixed_blits.html> (fdo#109289 <https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109289>)
>   *
>=20
>     igt@gen9_exec_parse@bb-oversize:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@gen9_exec_parse@bb-oversize.html> (i915#2527 <https://gitlab.fr=
eedesktop.org/drm/intel/issues/2527> / i915#2856 <https://gitlab.freedeskto=
p.org/drm/intel/issues/2856>)
>   *
>=20
>     igt@i915_selftest@live@gt_heartbeat:
>=20
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl9=
/igt@i915_selftest@live@gt_heartbeat.html> -> DMESG-FAIL <https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@i915_selftest@li=
ve@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel/=
issues/5334>)
>   *
>=20
>     igt@i915_selftest@live@hangcheck:
>=20
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tglb=
7/igt@i915_selftest@live@hangcheck.html> -> DMESG-WARN <https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_111491v1/shard-tglb3/igt@i915_selftest@live=
@hangcheck.html> (i915#5591 <https://gitlab.freedesktop.org/drm/intel/issue=
s/5591>)
>   *
>=20
>     igt@i915_suspend@debugfs-reader:
>=20
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-skl6/igt@i915_suspend@debugfs-reader.html> (i915#7233 <https://gitlab.fre=
edesktop.org/drm/intel/issues/7233>)
>   *
>=20
>     igt@kms_big_fb@4-tiled-addfb:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_big_fb@4-tiled-addfb.html> (i915#5286 <https://gitlab.freed=
esktop.org/drm/intel/issues/5286>)
>   *
>=20
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html> (fdo#111615 <https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111615>) +1 similar issue
>   *
>=20
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-skl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html> (fdo#1=
09271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#3886 <=
https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
>=20
>     igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html> (i915#=
3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>   *
>=20
>     igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html> (fdo#11161=
5 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111615> / i915#3689 <http=
s://gitlab.freedesktop.org/drm/intel/issues/3689>) +2 similar issues
>   *
>=20
>     igt@kms_chamelium@dp-edid-resolution-list:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_chamelium@dp-edid-resolution-list.html> (fdo#109284 <https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109284> / fdo#111827 <https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111827>) +1 similar issue
>   *
>=20
>     igt@kms_cursor_crc@cursor-random-512x512:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb5/igt@kms_cursor_crc@cursor-random-512x512.html> (i915#3359 <https://=
gitlab.freedesktop.org/drm/intel/issues/3359>)
>   *
>=20
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>=20
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size=
.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +=
1 similar issue
>   *
>=20
>     igt@kms_flip@2x-plain-flip-interruptible:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_flip@2x-plain-flip-interruptible.html> (fdo#109274 <https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109274> / fdo#111825 <https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825> / i915#3637 <https://gitlab.freed=
esktop.org/drm/intel/issues/3637>) +1 similar issue
>   *
>=20
>     igt@kms_flip@flip-vs-suspend@a-dp1:
>=20
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl3=
/igt@kms_flip@flip-vs-suspend@a-dp1.html> -> DMESG-WARN <https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl6/igt@kms_flip@flip-vs-s=
uspend@a-dp1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issu=
es/180> / i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscal=
ing@pipe-a-default-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsc=
aling@pipe-a-default-mode.html> (i915#6375 <https://gitlab.freedesktop.org/=
drm/intel/issues/6375>)
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling=
@pipe-a-default-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscali=
ng@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm=
/intel/issues/2672>) +1 similar issue
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling=
@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/int=
el/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issue=
s/2672>) +1 similar issue
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@p=
ipe-a-valid-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling=
@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/int=
el/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issue=
s/2672>) +4 similar issues
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-ups=
caling@pipe-a-default-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-u=
pscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.o=
rg/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555>) +1 similar issue
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-w=
c:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap=
-wc.html> (i915#6497 <https://gitlab.freedesktop.org/drm/intel/issues/6497>=
) +1 similar issue
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-c=
pu:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap=
-cpu.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
80> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111825>)
>   *
>=20
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>=20
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl7=
/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html> -> DMESG-WARN <=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl6/igt@=
kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html> (i915#1982 <https://=
gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
>=20
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
>=20
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-skl4/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html> (i915#4573 =
<https://gitlab.freedesktop.org/drm/intel/issues/4573>) +2 similar issues
>   *
>=20
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pi=
pe-b-edp-1:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b=
-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
1491v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-=
factor-0-5@pipe-b-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/dr=
m/intel/issues/5176>) +2 similar issues
>   *
>=20
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5=
@pipe-a-edp-1:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pip=
e-a-edp-1.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111491v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-down=
scale-factor-0-5@pipe-a-edp-1.html> (i915#5235 <https://gitlab.freedesktop.=
org/drm/intel/issues/5235>) +5 similar issues
>   *
>=20
>     igt@kms_psr@psr2_cursor_mmap_gtt:
>=20
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html> (i915#132 <https://gitlab.fr=
eedesktop.org/drm/intel/issues/132> / i915#3467 <https://gitlab.freedesktop=
.org/drm/intel/issues/3467>)
>   *
>=20
>     igt@kms_psr@psr2_sprite_plane_move:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
2/igt@kms_psr@psr2_sprite_plane_move.html> -> SKIP <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@kms_psr@psr2_sprite_pl=
ane_move.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109441>) +2 similar issues
>   *
>=20
>     igt@kms_vrr@flipline:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-skl4/igt@kms_vrr@flipline.html> (fdo#109271 <https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271>) +41 similar issues
>   *
>=20
>     igt@kms_writeback@writeback-check-output:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-skl6/igt@kms_writeback@writeback-check-output.html> (fdo#109271 <https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#2437 <https://gitlab.=
freedesktop.org/drm/intel/issues/2437>)
>   *
>=20
>     igt@sysfs_clients@recycle-many:
>=20
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-tglb6/igt@sysfs_clients@recycle-many.html> (i915#2994 <https://gitlab.fre=
edesktop.org/drm/intel/issues/2994>)
>=20
>=20
>         Possible fixes
>=20
>   *
>=20
>     igt@fbdev@unaligned-read:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
1/igt@fbdev@unaligned-read.html> (i915#2582 <https://gitlab.freedesktop.org=
/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_111491v1/shard-rkl-6/igt@fbdev@unaligned-read.html>
>   *
>=20
>     igt@gem_ctx_exec@basic-nohangcheck:
>=20
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tglb=
3/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freed=
esktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111491v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck=
.html>
>   *
>=20
>     igt@gem_eio@in-flight-contexts-10ms:
>=20
>       o {shard-rkl}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
3/igt@gem_eio@in-flight-contexts-10ms.html> (i915#3063 <https://gitlab.free=
desktop.org/drm/intel/issues/3063>) -> PASS <https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111491v1/shard-rkl-2/igt@gem_eio@in-flight-contexts-10=
ms.html>
>   *
>=20
>     igt@gem_eio@in-flight-suspend:
>=20
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
4/igt@gem_eio@in-flight-suspend.html> (fdo#103375 <https://bugs.freedesktop=
.org/show_bug.cgi?id=3D103375>) -> PASS <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111491v1/shard-rkl-6/igt@gem_eio@in-flight-suspend.html> +=
1 similar issue
>   *
>=20
>     igt@gem_eio@suspend:
>=20
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
3/igt@gem_eio@suspend.html> (i915#7052 <https://gitlab.freedesktop.org/drm/=
intel/issues/7052>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111491v1/shard-rkl-2/igt@gem_eio@suspend.html>
>   *
>=20
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
8/igt@gem_exec_balancer@parallel-keep-submit-fence.html> (i915#4525 <https:=
//gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb1/igt@gem_exec_balance=
r@parallel-keep-submit-fence.html>
>   *
>=20
>     igt@gem_exec_fair@basic-none-share@rcs0:
>=20
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
6/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitlab.=
freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gem_exec_fair@basic-none-=
share@rcs0.html>
>   *
>=20
>     igt@gem_exec_reloc@basic-wc-read-noreloc:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
1/igt@gem_exec_reloc@basic-wc-read-noreloc.html> (i915#3281 <https://gitlab=
.freedesktop.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111491v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-=
read-noreloc.html> +18 similar issues
>   *
>=20
>     igt@gem_pread@snoop:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
6/igt@gem_pread@snoop.html> (i915#3282 <https://gitlab.freedesktop.org/drm/=
intel/issues/3282>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_111491v1/shard-rkl-5/igt@gem_pread@snoop.html> +3 similar issues
>   *
>=20
>     igt@gen9_exec_parse@bb-chained:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
6/igt@gen9_exec_parse@bb-chained.html> (i915#2527 <https://gitlab.freedeskt=
op.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111491v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html> +=
4 similar issues
>   *
>=20
>     igt@i915_pm_dc@dc6-dpms:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
5/igt@i915_pm_dc@dc6-dpms.html> (i915#3361 <https://gitlab.freedesktop.org/=
drm/intel/issues/3361>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111491v1/shard-rkl-6/igt@i915_pm_dc@dc6-dpms.html>
>   *
>=20
>     igt@i915_pm_dc@dc6-psr:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
1/igt@i915_pm_dc@dc6-psr.html> (i915#658 <https://gitlab.freedesktop.org/dr=
m/intel/issues/658>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_111491v1/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html>
>   *
>=20
>     igt@i915_pm_sseu@full-enable:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
1/igt@i915_pm_sseu@full-enable.html> (i915#4387 <https://gitlab.freedesktop=
.org/drm/intel/issues/4387>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_111491v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html>
>   *
>=20
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl1=
/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html> (i915#252=
1 <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS <https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl9/igt@kms_asyn=
c_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>   *
>=20
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs.html> (i915#1845=
 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https:=
//gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_ccs@pipe-a-b=
ad-pixel-format-y_tiled_gen12_rc_ccs.html> +22 similar issues
>   *
>=20
>     igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1:
>=20
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl6=
/igt@kms_cursor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1.html> (i915#19=
82 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-skl1/igt@kms_cur=
sor_crc@cursor-rapid-movement-64x21@pipe-a-edp-1.html>
>   *
>=20
>     igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl9=
/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html> (i915#5072 <https://gitl=
ab.freedesktop.org/drm/intel/issues/5072>) -> PASS <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_cursor_legacy@curs=
or-vs-flip@toggle.html>
>   *
>=20
>     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
>=20
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html> (i915#2346 <https=
://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb8/igt@kms_cursor_lega=
cy@flip-vs-cursor@varying-size.html> +2 similar issues
>   *
>=20
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl9=
/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html> (i915#79 <https://gitlab.=
freedesktop.org/drm/intel/issues/79>) -> PASS <https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_flip@flip-vs-expired-vb=
lank@c-edp1.html>
>   *
>=20
>     igt@kms_flip@plain-flip-ts-check@b-edp1:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl9=
/igt@kms_flip@plain-flip-ts-check@b-edp1.html> (i915#2122 <https://gitlab.f=
reedesktop.org/drm/intel/issues/2122>) -> PASS <https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_111491v1/shard-skl10/igt@kms_flip@plain-flip-ts-che=
ck@b-edp1.html> +1 similar issue
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html> (i915#1849 <ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gi=
tlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_frontbuffer_trac=
king@fbc-shrfb-scaledprimary.html> +20 similar issues
>   *
>=20
>     igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
1/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html> (i915#3558 <=
https://gitlab.freedesktop.org/drm/intel/issues/3558>) -> PASS <https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_plane@=
plane-panning-bottom-right@pipe-a-planes.html> +1 similar issue
>   *
>=20
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-=
b-edp-1:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-ed=
p-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>=
) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shar=
d-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pip=
e-b-edp-1.html> +2 similar issues
>   *
>=20
>     igt@kms_psr@psr2_sprite_mmap_gtt:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
1/igt@kms_psr@psr2_sprite_mmap_gtt.html> (fdo#109441 <https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109441>) -> PASS <https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.h=
tml> +3 similar issues
>   *
>=20
>     igt@kms_psr@sprite_mmap_gtt:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
5/igt@kms_psr@sprite_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop.=
org/drm/intel/issues/1072>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111491v1/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html> +3 simi=
lar issues
>   *
>=20
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#5461 =
<https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS <https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-rkl-6/igt@kms_psr_s=
tress_test@invalidate-primary-flip-overlay.html>
>   *
>=20
>     igt@perf@blocking:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-skl6=
/igt@perf@blocking.html> (i915#1542 <https://gitlab.freedesktop.org/drm/int=
el/issues/1542>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111491v1/shard-skl6/igt@perf@blocking.html>
>   *
>=20
>     igt@perf@mi-rpc:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
6/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/inte=
l/issues/2434>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111491v1/shard-rkl-5/igt@perf@mi-rpc.html>
>   *
>=20
>     igt@perf_pmu@enable-race@rcs0:
>=20
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-tglb=
7/igt@perf_pmu@enable-race@rcs0.html> (i915#6453 <https://gitlab.freedeskto=
p.org/drm/intel/issues/6453>) -> PASS <https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_111491v1/shard-tglb6/igt@perf_pmu@enable-race@rcs0.html>
>   *
>=20
>     igt@prime_vgem@coherency-gtt:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-rkl-=
4/igt@prime_vgem@coherency-gtt.html> (fdo#109295 <https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109295> / fdo#111656 <https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111656> / i915#3708 <https://gitlab.freedesktop.org/drm/int=
el/issues/3708>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_111491v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
>   *
>=20
>     igt@sysfs_heartbeat_interval@precise@rcs0:
>=20
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-dg1-=
15/igt@sysfs_heartbeat_interval@precise@rcs0.html> (i915#1755 <https://gitl=
ab.freedesktop.org/drm/intel/issues/1755>) -> PASS <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111491v1/shard-dg1-19/igt@sysfs_heartbeat_inter=
val@precise@rcs0.html> +1 similar issue
>=20
>=20
>         Warnings
>=20
>   *
>=20
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i915=
#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb1/igt@kms=
_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html> (i915#658 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
>=20
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> (i915#2920 <http=
s://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb7/igt@kms_psr2_sf@ov=
erlay-primary-update-sf-dmg-area.html> (fdo#111068 <https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freedesktop.org/=
drm/intel/issues/658>)
>   *
>=20
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html> (fdo#111068 <https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freedesk=
top.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area=
.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
>=20
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-iclb=
1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> (i915#658 <=
https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-iclb2/igt@kms_psr2_sf=
@primary-plane-update-sf-dmg-area-big-fb.html> (i915#2920 <https://gitlab.f=
reedesktop.org/drm/intel/issues/2920>)
>   *
>=20
>     igt@runner@aborted:
>=20
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12456/shard-apl2=
/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12456/shard-apl3/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_12456/shard-apl1/igt@runner@aborted.html>) (fdo=
#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#3002=
 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4312 <https:=
//gitlab.freedesktop.org/drm/intel/issues/4312>) -> (FAIL <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl8/igt@runner@aborted.h=
tml>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/sha=
rd-apl6/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_111491v1/shard-apl6/igt@runner@aborted.html>, FAIL <https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111491v1/shard-apl1/igt@runner@=
aborted.html>) (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271> / i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180> / =
i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#431=
2 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>=20
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>=20
>=20
>     Build changes
>=20
>   * Linux: CI_DRM_12456 -> Patchwork_111491v1
>=20
> CI-20190529: 20190529
> CI_DRM_12456: 7a3c5315507ed0f4a9b0aa07ce6df1b3d28ebc35 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111491v1: 7a3c5315507ed0f4a9b0aa07ce6df1b3d28ebc35 @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
>=20

--=20
Wayne Boyer
Graphics Software Engineer
AXG SCSS Platform Enablement
