Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E19D961526E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 20:39:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9543910E419;
	Tue,  1 Nov 2022 19:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EF010E417
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 19:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667331565; x=1698867565;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZWajunaEkW57ZM+6DoE1MMqLumojAVUAoYj8t2Lkqb0=;
 b=N9beN/ZetKq5MX904B3CLPmmAbv+Lv36AL/43d6av7pUVMyZKaHzt96T
 eVkWGf8JwfwlBECPc6zHaVG8LgUkjtemMyILwWYQiElDHBwrLZN0NJIS9
 LJHuJ5Au7J/U50WE2htQdAlF6rZyU0A8njvEq8kbjH9wskBb6bqbmsfhP
 wzNixVLBqi2gYPAl16v4xErg8pXGsbgJyF0j6B/cwD+GlZllzW8mCq63c
 rgReVRrhVMumZvglCBBwueeAaOntFcap3lXeLxbIX2ojwpAxMD9VgzrGG
 Qm3f3OZuM5Bc8cUXzoVY6litRwaDJpRxRq3KtFonhYVHvjtK/iCggN/pa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296661704"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="296661704"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 12:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="759284966"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="759284966"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 01 Nov 2022 12:39:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 12:39:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 12:39:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 12:39:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PN7aaLg4eRa0g/YwfnVhni/3KYa48kGXsQZnktWeDj3AXq31hjWU2pIREKfHOexQZvAtAEC29gOFq793iwC1kdT2ovxe8y6zhDSrCcoFtaS9RLHJmFi8WvcUH+tsFF5w1hNaa4ueeqBA94DdIdJSSb2eQXdBy94QV7wN5A7XjNGXcfjMRH25b6pOR425JA+TeRv5oV0KddcM1yIrKLg7V7ILzzH0nSbaIZY7lrEB6saLtqzQ4BfnaEUc9jM9JJ4GWnPXVyFjPfJPM3htB/GdvpojzWyD7KBXoSmA4lkDFD2LwFzFxge0lSWTicgfUP+uGo/wDNow43qc/+9UeE4y5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBIiUxnRR+2QdV3vCS9pFol6hxtgqNVSBIpVslUD0oI=;
 b=kB3wFoQEnOSoTotC8RcRk2fR+Q0HiaoQyXugXY9FMST74Vt9EheE8lwcsF0ApTEm5MQs4jJnZR76cHTwMDFs2IQCxrVf4fKqgmnG3sicIVNPURSW+wgYYUfhiqWOhAkA+ZoYo+chJkMYjP+2uZJapQOonhVofSU3h4SpsOvJFQXdcNOa50BDRFdqKdAiV0x4T1Q6v+8aicA4Ebt1IxNjxYTp+8IMc4GLyq1i16G57r0lpE3iExBoBN8gU7o75qHdZmGog6pg1f/tZVel4QFwJOpOqMpBhgAC1DE/H8LcZCEd9eTtRW20eRvx0e9vyf2Aso8OOayaOrJ+qxwwyJKomg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9)
 by DS7PR11MB6013.namprd11.prod.outlook.com (2603:10b6:8:70::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Tue, 1 Nov
 2022 19:39:19 +0000
Received: from CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::3ec:511c:4b6f:89ed]) by CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::3ec:511c:4b6f:89ed%7]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 19:39:19 +0000
Message-ID: <14067074-4e06-f2f2-2a17-b32b59af9ecc@intel.com>
Date: Tue, 1 Nov 2022 12:39:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
To: <intel-gfx@lists.freedesktop.org>
References: <20221031131509.3411195-1-wayne.boyer@intel.com>
 <166725625362.2020.8865792762938168040@emeril.freedesktop.org>
Content-Language: en-US
From: Wayne Boyer <wayne.boyer@intel.com>
In-Reply-To: <166725625362.2020.8865792762938168040@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR03CA0389.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::34) To CO1PR11MB5108.namprd11.prod.outlook.com
 (2603:10b6:303:92::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5108:EE_|DS7PR11MB6013:EE_
X-MS-Office365-Filtering-Correlation-Id: daaa9853-cca4-4563-d95f-08dabc40c48b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0c83GlQoSeBOJovxb0E75nTkXA32GMOa0364Q4T4yN6411SyWgq7zR0aTb5arzsIFieAE4YXH4UN65xK3SI9bZkKsJiEc1UnTwWBacYsnH3KQJCsRALMTkpyhY9dV2wanHaY29BqSB+AhA9iFWhJ4Z9eHwcdFgROhTDxY3I/hfEwej97Rk3BqwrRzAe9wQlYJ7CZp6HH41lnC0jZI1pBw52Tjl1SMhaCX01SdSI1RSqqIDBrBSSAKNHpHB5clNxvUSkLth6J0aXGoDi1q8iFpdYTPa3/Wd7kIeT2IrWDicK7yn7mf2g3gZIjpgzgqWiGmZWK52MnvubzPqmJ6hyO/LO4+UR5SO2d1//waqGsBmFAVp42peNaNwXW+reWqjyNApNV7glyT8XDIbLlv/6rncetiAk8706AyGG3/isrFpc7wOtJD0cJciOY+e55or0fUdc7jNp2LJVokrLgsLofjz7z+k8+eyfcVyTAcSep9Nm/01xE6I4bOCeijmfaXeEkQjgofyaektwud/q+GGWV2xW4xvYDmWscZ6awyLPzsFyQlvKiJb6LTFFoo404OYEkHtVolHa0qdlauHvyiOZO8PYB1oE7PETHpfKsLqfm7M8GIz2LuocH4ymEe6zcfdapaJ78lwtm+26N8H1n5altEBWufTi8BwRA/OahOYN/xKiP4tyVJ4Nz//rOv1gz6q3BdeS6M7/yHV6MLjYY0gwS91S33Za5UC2ohaLgpRwUSK1PprE6P2f8hZZ/6F95qgg+q9o1VgHUroSdcCxexWtgNfeEh/vRKriFXtYwa/SuRIiFfhRzp86M2GDOBeSNffGgD3ob/IvwAqbTm1xrwqteRWuUIbGRst29KRFydmG0hCs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5108.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(366004)(136003)(396003)(451199015)(316002)(6666004)(107886003)(86362001)(83380400001)(478600001)(6916009)(38100700002)(66476007)(82960400001)(53546011)(4326008)(66946007)(6506007)(31696002)(36756003)(66556008)(966005)(6486002)(8936002)(31686004)(5660300002)(6512007)(26005)(41300700001)(186003)(44832011)(2616005)(2906002)(30864003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVFnUmc5WmdzTU40RG9RRDhTbDVHTnEwamJnQXNLWGpkbm5USlI0aEI5K1Ji?=
 =?utf-8?B?WldxUURqU3pLalFPekR5ZWc3ZlNuY2p4VkswUlk0UkN5ZkRRTXBnZVRNck4z?=
 =?utf-8?B?OGJpUHQ1Q3hlQVlpWHdMbGsyeFRVcGgyNkFJaFdHNis0NElvR3lMd3NaSjBS?=
 =?utf-8?B?VFRBS1RuWTV1djQyandwREwwN04vcEdVMXMwS1FIUE1NOU9TbXlUbThjcEQw?=
 =?utf-8?B?K3A1am9JcGJuMit6QXhqdFdRN3pJS3BzNGhMMG1XR1ZrMEFNRUFvY1daK3hl?=
 =?utf-8?B?NzM1YVdvbWxnQ1JtbnRpbG1ZaTllQ05tb2l6S3BmZGNCcEduekVTbVpFdDJE?=
 =?utf-8?B?S01VS0NiWjVKT05rLzVOTjVVbk80RTZNZmxvMlN1SVBraFJkVjJzTDg0ckVO?=
 =?utf-8?B?RGRKSXRTaTNndXhMNmhJZG4rUVRSVEQzZm5oSXA5WWwza0NLYkVYYnVYYUVR?=
 =?utf-8?B?N1RDNDVpdjZJMy8vLzFpcFJnM3NWVDJnaU1OalpqSjM0VU9TUHU4dXNQdm5x?=
 =?utf-8?B?NmpvdnNrY0NYa0tnZER1SE9wWmVPaUUvSEhiTkhUV0NVZ1ROQUxvUXN5VzZ1?=
 =?utf-8?B?VHZ5VlA2RHp1NXVXNktkVnpKeEhUakhHOExBNFMzejVGdDJIWk9UTDB5VnYy?=
 =?utf-8?B?M280b2wrdm10TUxFMlgrYXpVNGxSUE4yaFdTN2pQZHRVRFBQaWhrVE8xWFFq?=
 =?utf-8?B?UEdOSTlmS0xaSWZYM3NXN05vbjNsc1RTbDNEZEJLSmRCMWtVeFZuWGxlZ0F6?=
 =?utf-8?B?eEJFMld6V2Rtb2tibHk4Q1Q4b3V1SDhEU21uZjlzTUUxWVM4VkgxOGVmVTht?=
 =?utf-8?B?RXYyRWJpQ21hdlNJYXIrcStRcVRQbEd2MVVidHZxSEUzVUhxajlQY0F0blI0?=
 =?utf-8?B?bU5UWnVxeWhUTEhBYVdnS1NkaGVlRTdxeFNDY3dCUHc4WDJJNnZBem5jZkRz?=
 =?utf-8?B?OWROZ2h6TmE0K3Z3cWJMQXRRZk9SMk9BaGZDVytxTTZPZHNaeFJKL2ZIZmtP?=
 =?utf-8?B?YWYwUnpHSWxrUDBoTHNtQitvanpQemhLelY0U0VTaXljOGJHam5sK0l2a1dU?=
 =?utf-8?B?NUR4aE9yeENsUXhiRG9QN3FoMExyNWZHTXViT2loOUgyYVN3RjR6MXFrT3lk?=
 =?utf-8?B?OW9JOFdZc0dqSUpUb3pPRW5qWnMrUUYzdXlZZnUvV2VlaXVZaVdYcTA1ZmNZ?=
 =?utf-8?B?d00vajBYbzkrK0p2ZWhCaUJnQlY2L0k3K2xTNVNyZ2pVaXBxRWRNdEUxTlFz?=
 =?utf-8?B?Mmc0R0gvR2NEVllmRzRkVEpHMEY3WVFHMVF0YzhKQnE1OFBrQVN0M0FMdko1?=
 =?utf-8?B?dDRNRE9CamJrQ3JoVUZYREVncStlWEpzbEJjVGJ5Vm5Ba3I0ZTZSK0VzRVpI?=
 =?utf-8?B?dkNjdWJDUGFWTkNVZHJWdXliMmtqTmgxZXZ5NUJjSHJMUzArREJiNlo4VEo5?=
 =?utf-8?B?dGFNamxGN2NBTlJrV3FMbGh5d0M5ejU5S0dRRnRMZWxDM1laKzg5SVJTMmVs?=
 =?utf-8?B?bXB6ZWc4SWxBWlJlV0NoajREdy9yTXZCVmtiSGhocEt5RGhWV0JoaGVuS0Uy?=
 =?utf-8?B?K3JxcSthQXZ4RjRncyt1bXNZUzZkZVUybEg1ZlBMcFdaa3l6TzV5aFgxWHh0?=
 =?utf-8?B?RTVuQTMyb0FPZ2tZOFcvTUx4bC9UTFROS0J1UHRtT0taV0dsTENDaHA3N3VI?=
 =?utf-8?B?cW4zUEJhN1NranlDQ1V5Z3R3clZONXJIbUZBMlNpK0UrYzZvWHVTdjVhUGNO?=
 =?utf-8?B?d2tLY3h3UFhzSmhBV0xKcGtZZ21yZnpGVG4vNXdsV20xL1NRRlRzeXpZMWVw?=
 =?utf-8?B?QjBDN1pocDg0NTVLcVNxRFNWTVhmejB0cFJhT0VZN1F6WkFlN0lxZlVHZncy?=
 =?utf-8?B?MHBseEt3dDRMbk51Z3NPdFV5a1VLRVB0djN4azJIMjlPVG9VR2JMNFZSTGJ2?=
 =?utf-8?B?UHM0MlZ5MzJMb08zOURGVmNub05PZTlReFh3RjFWcEJXVGlsYk1mYjJHZVZO?=
 =?utf-8?B?RXZ5Y3RRVW1tZWVGRm9pc2g2bWZzc1I4c2pBa1JSSy93SkZKUTNSdGNkLy9l?=
 =?utf-8?B?ODZxRHdPTXRZTkt3dFN4UzErRk5ZY1pDb2k0RkRMWXhMVnFuS0NjTWc2TlZz?=
 =?utf-8?Q?cnRXMdpR0DGBgXKlXXZu/jfyk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: daaa9853-cca4-4563-d95f-08dabc40c48b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5108.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2022 19:39:18.9961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /QSIuBGE5JFUIXjJSNVtoBjQLQTJPlRAAfovWeCFz7WYyt8thuWB4lC2GNhy/aUDRZgPQnl8SADHD1vhn7hrLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Introduce_Wa=5F18017747507?=
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



On 10/31/22 3:44 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/dg2: Introduce Wa_18017747507
> *URL:*	https://patchwork.freedesktop.org/series/110323/
> <https://patchwork.freedesktop.org/series/110323/>
> *State:*	failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/index.html
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/index.html>
>=20
>=20
>   CI Bug Log - changes from CI_DRM_12325_full -> Patchwork_110323v1_full
>=20
>=20
>     Summary
>=20
> *FAILURE*
>=20
> Serious unknown changes coming with Patchwork_110323v1_full absolutely
> need to be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110323v1_full, please notify your bug team to
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
> Patchwork_110323v1_full:
>=20
>=20
>       IGT changes
>=20
>=20
>         Possible regressions
>=20
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscalin=
g@pipe-a-valid-mode:
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pi=
pe-a-valid-mode.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110323v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-=
64bpp-ytile-downscaling@pipe-a-valid-mode.html> +1 similar issue
>=20

This failure is with a display test on an ICL shard.

The WA is specific to a GT issue on DG2 systems.

I don't see how the patch can be causing the failure.


>=20
>         Suppressed
>=20
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>=20
>   *
>=20
>     igt@gem_exec_gttfill@all:
>=20
>       o {shard-rkl}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-rkl-2/igt@gem_exec_gttfill@all.html> +1 similar issue
>   *
>=20
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3:
>=20
>       o {shard-dg1}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-dg1-19/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-3.html>
>   *
>=20
>     igt@perf_pmu@render-node-busy@vecs0:
>=20
>       o {shard-dg1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-dg1-=
13/igt@perf_pmu@render-node-busy@vecs0.html> -> FAIL <https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110323v1/shard-dg1-19/igt@perf_pmu@render-nod=
e-busy@vecs0.html> +1 similar issue
>=20
>=20
>     Known issues
>=20
> Here are the changes found in Patchwork_110323v1_full that come from
> known issues:
>=20
>=20
>       CI changes
>=20
>=20
>         Issues hit
>=20
>   * boot:
>       o shard-snb: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb4=
/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/sh=
ard-snb4/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12325/shard-snb4/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12325/shard-snb2/boot.html>, PASS <https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12325/shard-snb2/boot.html>, PASS <https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_12325/shard-snb2/boot.html>, PASS <https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb2/boot.html>, PASS <https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb7/boot.html>, PASS <=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb7/boot.html>=
, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb7/bo=
ot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard=
-snb7/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_123=
25/shard-snb7/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12325/shard-snb7/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12325/shard-snb6/boot.html>, PASS <https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12325/shard-snb6/boot.html>, PASS <https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12325/shard-snb6/boot.html>, PASS <https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb6/boot.html>, PASS <htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb6/boot.html>, P=
ASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb5/boot.=
html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-sn=
b5/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/=
shard-snb5/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12325/shard-snb5/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_12325/shard-snb5/boot.html>, PASS <https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_12325/shard-snb4/boot.html>, PASS <https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12325/shard-snb4/boot.html>) -> (PASS <https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb6/boot.html>, PA=
SS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb6/=
boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323=
v1/shard-snb6/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110323v1/shard-snb5/boot.html>, PASS <https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110323v1/shard-snb5/boot.html>, PASS <https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb5/boot.html>, PASS <h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb5/boot.=
html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/sh=
ard-snb5/boot.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110323v1/shard-snb5/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110323v1/shard-snb4/boot.html>, PASS <https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb4/boot.html>, PASS <https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb4/boot.html>=
, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-s=
nb4/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0323v1/shard-snb2/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110323v1/shard-snb2/boot.html>, PASS <https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110323v1/shard-snb2/boot.html>, PASS <https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb2/boot.html>, PAS=
S <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb2/b=
oot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v=
1/shard-snb7/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110323v1/shard-snb7/boot.html>, PASS <https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110323v1/shard-snb7/boot.html>, PASS <https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb7/boot.html>, PASS <ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-snb7/boot.h=
tml>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/sha=
rd-snb6/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110323v1/shard-snb6/boot.html>) (i915#4338 <https://gitlab.freedesktop.or=
g/drm/intel/issues/4338>)
>=20
>=20
>       IGT changes
>=20
>=20
>         Issues hit
>=20
>   *
>=20
>     igt@dmabuf@all@dma_fence_chain:
>=20
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl9/igt@dmabuf@all@dma_fence_chain.html> (i915#6949 <https://gitlab.free=
desktop.org/drm/intel/issues/6949>)
>   *
>=20
>     igt@gem_exec_balancer@parallel-bb-first:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
2/igt@gem_exec_balancer@parallel-bb-first.html> -> SKIP <https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-iclb3/igt@gem_exec_balancer=
@parallel-bb-first.html> (i915#4525 <https://gitlab.freedesktop.org/drm/int=
el/issues/4525>) +1 similar issue
>   *
>=20
>     igt@gem_exec_fair@basic-none@vcs1:
>=20
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb1/igt@gem_exec_fair@basic-none@vcs1.html> (i915#2842 <https://gitlab.=
freedesktop.org/drm/intel/issues/2842>)
>   *
>=20
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>=20
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk3=
/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_110323v1/shard-glk9/igt@gem_exec_fair@basic=
-pace-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel=
/issues/2842>)
>   *
>=20
>     igt@gem_lmem_swapping@massive:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl6/igt@gem_lmem_swapping@massive.html> (fdo#109271 <https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271> / i915#4613 <https://gitlab.freedesktop=
.org/drm/intel/issues/4613>)
>   *
>=20
>     igt@i915_pm_backlight@fade:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
7/igt@i915_pm_backlight@fade.html> -> DMESG-WARN <https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110323v1/shard-iclb1/igt@i915_pm_backlight@fade.h=
tml> (i915#402 <https://gitlab.freedesktop.org/drm/intel/issues/402>)
>   *
>=20
>     igt@i915_pm_dc@dc6-dpms:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
6/igt@i915_pm_dc@dc6-dpms.html> -> FAIL <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110323v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html> (i915#3=
989 <https://gitlab.freedesktop.org/drm/intel/issues/3989> / i915#454 <http=
s://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
>=20
>     igt@i915_selftest@live@gt_pm:
>=20
>       o shard-skl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl6/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freede=
sktop.org/drm/intel/issues/1886>)
>   *
>=20
>     igt@i915_suspend@sysfs-reader:
>=20
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1=
/igt@i915_suspend@sysfs-reader.html> -> INCOMPLETE <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110323v1/shard-skl10/igt@i915_suspend@sysfs-rea=
der.html> (i915#7233 <https://gitlab.freedesktop.org/drm/intel/issues/7233>=
)
>   *
>=20
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html> (=
i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
>=20
>     igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html> (fdo#110725 <https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110725> / fdo#111614 <https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111614>)
>   *
>=20
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html> (fdo#110723 <https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110723>)
>   *
>=20
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl6/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html> (fdo=
#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#3886=
 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
>=20
>     igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html> (f=
do#109278 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109278>) +1 simil=
ar issue
>   *
>=20
>     igt@kms_chamelium@hdmi-crc-multiple:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl6/igt@kms_chamelium@hdmi-crc-multiple.html> (fdo#109271 <https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271> / fdo#111827 <https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111827>) +2 similar issues
>   *
>=20
>     igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html> (fdo#109284 <htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109284> / fdo#111827 <https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111827>)
>   *
>=20
>     igt@kms_cursor_legacy@flip-vs-cursor@toggle:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html> -> FAIL <https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-iclb7/igt@kms_cursor_le=
gacy@flip-vs-cursor@toggle.html> (i915#2346 <https://gitlab.freedesktop.org=
/drm/intel/issues/2346>) +2 similar issues
>   *
>=20
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>=20
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk1=
/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html> -> FAIL =
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-glk3/igt=
@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html> (i915#79 <ht=
tps://gitlab.freedesktop.org/drm/intel/issues/79>) +1 similar issue
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pip=
e-a-default-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@p=
ipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/int=
el/issues/2672>) +3 similar issues
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@p=
ipe-a-default-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling=
@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555>)
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-ups=
caling@pipe-a-valid-mode:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-u=
pscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org=
/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/int=
el/issues/3555>)
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt=
.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>)=
 +61 similar issues
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>=20
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb5=
/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html> =
-> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-=
snb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.ht=
ml> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>) +1=
 similar issue
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cp=
u.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109280>=
) +5 similar issues
>   *
>=20
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html> ->=
 FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-ic=
lb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html> =
(i915#2546 <https://gitlab.freedesktop.org/drm/intel/issues/2546>)
>   *
>=20
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>=20
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-apl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html> (fdo#1=
09271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>) +22 similar =
issues
>   *
>=20
>     igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1:
>=20
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl6/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1.html> (i915#4=
573 <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +2 similar issu=
es
>   *
>=20
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>=20
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html> (fdo#109642 <https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109642> / fdo#111068 <https://bugs.free=
desktop.org/show_bug.cgi?id=3D111068> / i915#658 <https://gitlab.freedeskto=
p.org/drm/intel/issues/658>)
>   *
>=20
>     igt@kms_psr@psr2_sprite_plane_onoff:
>=20
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
2/igt@kms_psr@psr2_sprite_plane_onoff.html> -> SKIP <https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110323v1/shard-iclb3/igt@kms_psr@psr2_sprite_p=
lane_onoff.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441>) +2 similar issues
>   *
>=20
>     igt@kms_writeback@writeback-fb-id:
>=20
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shar=
d-skl9/igt@kms_writeback@writeback-fb-id.html> (fdo#109271 <https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271> / i915#2437 <https://gitlab.freedes=
ktop.org/drm/intel/issues/2437>) +1 similar issue
>   *
>=20
>     igt@perf@blocking:
>=20
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3=
/igt@perf@blocking.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110323v1/shard-skl4/igt@perf@blocking.html> (i915#1542 <https://g=
itlab.freedesktop.org/drm/intel/issues/1542>)
>=20
>=20
>         Possible fixes
>=20
>   *
>=20
>     igt@gem_ctx_persistence@many-contexts:
>=20
>       o shard-iclb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
5/igt@gem_ctx_persistence@many-contexts.html> -> PASS <https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110323v1/shard-iclb2/igt@gem_ctx_persistence=
@many-contexts.html>
>   *
>=20
>     igt@gem_exec_balancer@parallel-out-fence:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
7/igt@gem_exec_balancer@parallel-out-fence.html> (i915#4525 <https://gitlab=
.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110323v1/shard-iclb1/igt@gem_exec_balancer@parall=
el-out-fence.html>
>   *
>=20
>     igt@gem_exec_fair@basic-none-share@rcs0:
>=20
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-rkl-=
1/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitlab.=
freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110323v1/shard-rkl-5/igt@gem_exec_fair@basic-none-=
share@rcs0.html>
>   *
>=20
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>=20
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl8=
/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842 <https://gitlab.f=
reedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110323v1/shard-apl7/igt@gem_exec_fair@basic-pace-sh=
are@rcs0.html>
>   *
>=20
>     igt@gem_exec_reloc@basic-wc-cpu:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-rkl-=
1/igt@gem_exec_reloc@basic-wc-cpu.html> (i915#3281 <https://gitlab.freedesk=
top.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110323v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html>=
 +7 similar issues
>   *
>=20
>     igt@gem_mmap_offset@clear@smem0:
>=20
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-rkl-=
5/igt@gem_mmap_offset@clear@smem0.html> -> PASS <https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110323v1/shard-rkl-4/igt@gem_mmap_offset@clear@sme=
m0.html> +3 similar issues
>   *
>=20
>     igt@gen9_exec_parse@allowed-single:
>=20
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7=
/igt@gen9_exec_parse@allowed-single.html> (i915#5566 <https://gitlab.freede=
sktop.org/drm/intel/issues/5566> / i915#716 <https://gitlab.freedesktop.org=
/drm/intel/issues/716>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110323v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html>
>   *
>=20
>     igt@gen9_exec_parse@secure-batches:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-rkl-=
1/igt@gen9_exec_parse@secure-batches.html> (i915#2527 <https://gitlab.freed=
esktop.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110323v1/shard-rkl-5/igt@gen9_exec_parse@secure-batches=
.html>
>   *
>=20
>     igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>=20
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl3=
/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html> (i915#79 <https://gitlab.f=
reedesktop.org/drm/intel/issues/79>) -> PASS <https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110323v1/shard-apl2/igt@kms_flip@flip-vs-expired-vbla=
nk@c-dp1.html>
>   *
>=20
>     igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@p=
ipe-a-default-mode:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-=
a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0323v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-=
downscaling@pipe-a-default-mode.html>
>   *
>=20
>     igt@kms_psr@psr2_cursor_mmap_gtt:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
1/igt@kms_psr@psr2_cursor_mmap_gtt.html> (fdo#109441 <https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109441>) -> PASS <https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110323v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.h=
tml> +1 similar issue
>   *
>=20
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>=20
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb=
2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> (i915#5519 =
<https://gitlab.freedesktop.org/drm/intel/issues/5519>) -> PASS <https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-tglb5/igt@kms_psr_s=
tress_test@flip-primary-invalidate-overlay.html>
>   *
>=20
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>=20
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6=
/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> (i915#180 <https://git=
lab.freedesktop.org/drm/intel/issues/180>) -> PASS <https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110323v1/shard-apl2/igt@kms_vblank@pipe-a-ts-co=
ntinuation-suspend.html>
>   *
>=20
>     igt@perf@gen12-mi-rpc:
>=20
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-rkl-=
5/igt@perf@gen12-mi-rpc.html> (fdo#109289 <https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109289>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110323v1/shard-rkl-1/igt@perf@gen12-mi-rpc.html>
>   *
>=20
>     igt@perf_pmu@all-busy-idle-check-all:
>=20
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6=
/igt@perf_pmu@all-busy-idle-check-all.html> (i915#1982 <https://gitlab.free=
desktop.org/drm/intel/issues/1982>) -> PASS <https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110323v1/shard-skl1/igt@perf_pmu@all-busy-idle-check-a=
ll.html>
>   *
>=20
>     igt@perf_pmu@interrupts:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7=
/igt@perf_pmu@interrupts.html> (i915#7318 <https://gitlab.freedesktop.org/d=
rm/intel/issues/7318>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110323v1/shard-skl1/igt@perf_pmu@interrupts.html>
>=20
>=20
>         Warnings
>=20
>   *
>=20
>     igt@gem_pread@exhaustion:
>=20
>       o
>=20
>         shard-tglb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb=
7/igt@gem_pread@exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org=
/drm/intel/issues/2658>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110323v1/shard-tglb6/igt@gem_pread@exhaustion.html> (i915#7=
248 <https://gitlab.freedesktop.org/drm/intel/issues/7248>)
>=20
>       o
>=20
>         shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk3=
/igt@gem_pread@exhaustion.html> (i915#7248 <https://gitlab.freedesktop.org/=
drm/intel/issues/7248>) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110323v1/shard-glk9/igt@gem_pread@exhaustion.html> (i915#2658 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2658>)
>=20
>   *
>=20
>     igt@gem_pwrite@basic-exhaustion:
>=20
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb=
7/igt@gem_pwrite@basic-exhaustion.html> (i915#7248 <https://gitlab.freedesk=
top.org/drm/intel/issues/7248>) -> WARN <https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110323v1/shard-tglb2/igt@gem_pwrite@basic-exhaustion.html>=
 (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
>=20
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
5/igt@i915_pm_dc@dc3co-vpb-simulation.html> (i915#658 <https://gitlab.freed=
esktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110323v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation=
.html> (i915#588 <https://gitlab.freedesktop.org/drm/intel/issues/588>)
>   *
>=20
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>=20
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4=
/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html> (i915#79 <https://gitlab.=
freedesktop.org/drm/intel/issues/79>) -> FAIL <https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110323v1/shard-skl10/igt@kms_flip@flip-vs-expired-vb=
lank@c-edp1.html> (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issu=
es/2122>)
>   *
>=20
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html> (i915#2920 <https:/=
/gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-iclb3/igt@kms_psr2_sf@curso=
r-plane-move-continuous-sf.html> (i915#658 <https://gitlab.freedesktop.org/=
drm/intel/issues/658>)
>   *
>=20
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>=20
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb=
1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> (i915#658 <=
https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-iclb2/igt@kms_psr2_sf=
@primary-plane-update-sf-dmg-area-big-fb.html> (i915#2920 <https://gitlab.f=
reedesktop.org/drm/intel/issues/2920>)
>   *
>=20
>     igt@runner@aborted:
>=20
>       o
>=20
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6=
/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12325/shard-apl6/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_12325/shard-apl2/igt@runner@aborted.html>, FAIL=
 <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7/igt@runn=
er@aborted.html>) (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271> / i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/300=
2> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>) -> (=
FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-apl=
8/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110323v1/shard-apl2/igt@runner@aborted.html>) (i915#3002 <https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4312 <https://gitlab.=
freedesktop.org/drm/intel/issues/4312>)
>=20
>       o
>=20
>         shard-skl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1=
0/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12325/shard-skl4/igt@runner@aborted.html>) (i915#3002 <https://gitla=
b.freedesktop.org/drm/intel/issues/3002> / i915#4312 <https://gitlab.freede=
sktop.org/drm/intel/issues/4312>) -> (FAIL <https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110323v1/shard-skl3/igt@runner@aborted.html>, FAIL <htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110323v1/shard-skl10/igt@ru=
nner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110323v1/shard-skl9/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110323v1/shard-skl5/igt@runner@aborted.html>)=
 (i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002> / i915#4=
312 <https://gitlab.freedesktop.org/drm/intel/issues/4312> / i915#6949 <htt=
ps://gitlab.freedesktop.org/drm/intel/issues/6949>)
>=20
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>=20
>=20
>     Build changes
>=20
>   * Linux: CI_DRM_12325 -> Patchwork_110323v1
>=20
> CI-20190529: 20190529
> CI_DRM_12325: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7032: 372c56225e12578a7a4a6bcc5b79eb40b643fcde @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110323v1: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
>=20

--=20
Wayne Boyer
Graphics Software Engineer
AXG SCSS Platform Enablement
