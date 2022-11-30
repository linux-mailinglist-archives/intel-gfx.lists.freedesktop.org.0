Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C7A63E287
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 22:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8844810E0DD;
	Wed, 30 Nov 2022 21:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A404110E0DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669842593; x=1701378593;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=GHHbEbb+mp0YlYK/As3RZ//VBY4fY842nUXT2wDfuwQ=;
 b=YM4u5HPuiWo7Ro3GZQMADAd1T7Qj5erbzjFjll4hrzP7QFv713ra6HoG
 XNYSt0za9u8IIENPQYKZwhYrfIHrOiNEuNork9RvUh7fz5VjOuCMxnh9O
 VznlJTHSNSEWfl8V8ZNvpUVY7kblyyTPNaBzA/o2aBPu96m2zGYAzz5ss
 9QCSxMBHvGID/lNi3MSjSq7ipGNunZtGoBJh1BSKdIIEjSJhhYvPbhlAE
 nGQOunNSb95rHwxuL3texlBImZsoM1C7X477U4LJF27Y13H4yVhZXmlGa
 8o6opc0HZkm1QJv4lM458Mvgz0uF0fCEqguqh1RKJ17yR7aYHidYDxAP4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="401787195"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; 
 d="scan'208,217";a="401787195"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 13:09:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="594809304"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; 
 d="scan'208,217";a="594809304"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 30 Nov 2022 13:09:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 13:09:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 13:09:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 13:09:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4KtBupMVeAhVpfZ+IEscNtRFXcG55LHIVVDzIaF4ZmqA1hDOpnrC1c1nWuAD1fooRSooM26o4qpuPUtH1WoIPbNJ3SLmCf4jYnx8vjnLJ4izdnrze37gTPGdonBgfuhwYWHXGXt6+6JIGrTh228V6vcsAuHAmSr73qEhOuYYsRFTQZKohGu2tyVcnwqeNYz9Q3/UM1j/5bnuXFdiCrjBKVNyWARJjf9rWsL+89+BNPsgPUAUTj78lYGdBggB7lEF6LzRCxRW+XG5scgbKu78Jh8UqBFhHLkjfB6AfVBCxApTZaBQey6hYIPsPZQhgjx4qgL8jCTxYun3eTQciaMjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q0pgaGBB3yhRp8XkaWbK//XQvP+gwabfsIQ3Zd64Df8=;
 b=fN8BMtqhE5wBUqSRYR/2ojr8xMDqfcQC+1ehMh/ZM0DTtRndaESTYES6Dp79dn7EF1IgzyNFyHxYT5oH6qE/Iy38eidQzCHb5qUUSwhXFIsJXCnNm0NZ8/pcEkp7vQk8+hzywYUjF5C04STbPd+SdD4uekeIyWIO7Q79DQ6DTIUeSRE0sFZrgZj9zJ+npH9q/4nyPss0I2VIW0Lcp6YmwxIMGBzUGVbxr20YEM02qyh7htnLXoOlm/8QZWm/bCvNdKn2YS/OxxDvRwWNtHOlvwbXsEghItw2zZ8aGVpfBUM6QXBPT5nVRji2ezvaKmHnP0iSVDyap57nooKEgK/rGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 21:09:48 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::aaaa:56aa:988:ba00]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::aaaa:56aa:988:ba00%7]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 21:09:47 +0000
Content-Type: multipart/alternative;
 boundary="------------c2p3sphknPYN6gKFbLK0T0Sq"
Message-ID: <6d1295e4-0a78-9808-1959-cceddd88b5c1@intel.com>
Date: Wed, 30 Nov 2022 13:09:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20221129232031.3401386-1-John.C.Harrison@Intel.com>
 <166980164551.2863.12167321712277368204@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166980164551.2863.12167321712277368204@emeril.freedesktop.org>
X-ClientProxiedBy: BY3PR04CA0009.namprd04.prod.outlook.com
 (2603:10b6:a03:217::14) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: 103fde95-cc47-4624-68bf-08dad317365f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9HzvuqGebU3EYUAFdk9bZzFfSHwhPyQo8Y8gavS2E4h56hFYIVcrvPVRsHaU45FBubvSRRd/yxkrkMd3OT6Xo9MkrzkRJVQQTalza8aSXePYJZpAAGWKJE+1sOh89ZH0n4QdJMaBknH+UXg/47TkrhH9nI7WWmFDx8n1T7OXCR4/vLMNI1OaeMnqCg8MtDJQF7nX/CRTnIQXc7WLkW9EvamAwXuCKCn9+OQNxnpadlm1DfIguTBF5Kny8tMzyw0ruU8VFi8YSX0gfEbww1ptZmOJWYTDbUqjC1FpR7WOjF1WIwq+0OUiAiTbVLZEI9dHvvUznTSWENJGZErW1RdiLV8HP+2RWZB2RXLBE8dNVmRz7oyTVZla8kItbQAspsmQmGKCBiAz/6hV/gVtYjh3DKSNXtOHFUAGBnIRp/bEHwxVv9dpJaGVNwrXwhtzwgDHL6Vfj2i4MLZUdxjaQuVTK9dss889Uf2EskuPAKCzn4X9xBbf1GtXWodcPLLtTD9Czi9bCbONIWBWIrAOvkiLTDaTWGfxX51hhQn1DcNAy9Ts9fVMc/BzrrJXw74UwTBBSYgKroWoV3pqTKt/EtrWvYJ7nGWThJyCSoFD7D9DnQS1YdgOi9+vIm8x2uExvyFKSoT3gcZsGPdilRGUoE7MheagUxYLANiIcge95Ydl9njXRO0Iv11hRASwS2SWdtuF4ebrShux5IJmVb7WK0pRyT15wf3FWvIxbMamz/gOo0VGKsgUL0Q7viQzLpICRAFOZOzb6QHIhSLpicKf1eiKN12Es082cKJLVYUzBfPG3M4Wz7pY7GbZeFupb+ePhzRm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(136003)(396003)(376002)(451199015)(186003)(31696002)(166002)(86362001)(5660300002)(26005)(53546011)(66476007)(40265005)(6486002)(8936002)(41300700001)(6512007)(66946007)(31686004)(478600001)(2616005)(966005)(6506007)(33964004)(30864003)(316002)(82960400001)(38100700002)(21615005)(6916009)(2906002)(83380400001)(66556008)(36756003)(13750500001)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzI4RnBocEw3YzNpTjZRaWFSdTh5Q3lKMTlqVUszVjdzb0lCZWZ4Y0hpNk8x?=
 =?utf-8?B?YjNyM3pFSkFxNEV2N2RMbWdlWFBrNmRQZDRLUUpjTmF4aE1vcnJJKzk1Z2hr?=
 =?utf-8?B?a05lVUwzZnRkTEZhN0dqNThsQVJWc0hITGVZZlhrb1VkcHUvSDNzQ3hCUGZX?=
 =?utf-8?B?NVZ6SGR3YzEvTnhJdHFvTGV0QlIvbS9IVW9mb3BwZDFZWWZIN0xnTUk3L09X?=
 =?utf-8?B?dVBZdC9pbDk4UTQ0OXlheTg0b29CT3Zrc2w5NFlPWDlheXdxam5SL1ExYytv?=
 =?utf-8?B?QUVXQUk3YWhUd0YrM1p3c283bFJvZ0hQRnRtcHI5UFhld3RNRC96a3dJbm5S?=
 =?utf-8?B?ZXJVN3Q3LzNNdTJ5NzYwR0h4aXlwS21QZFIrVUM2ZjJxTUhnNmx1MUFnaEl0?=
 =?utf-8?B?RjdCR29OdmlyWlBMVmw5VGN3UWthTnlla29oaTBETnRkakhlYXY0Ynludmt1?=
 =?utf-8?B?cnlGZndRT3NVWVJlZUt2R3Q4a3g5QWJhUVJuN1ZrejJuQU9RZUVhQ09iWUpa?=
 =?utf-8?B?YmlNUWdHVkFla2xkeVlOS2NXRlVEcktkNlNoQ05kNzlXYzN6YmZITWJBaEpx?=
 =?utf-8?B?ZE5QR3REY2VBdGpVY0lvWElibGR5TXNKOG5TUnNHY2U2M3NIK3FzVjBKQ2wx?=
 =?utf-8?B?aHBhQ2hJcHhqUzFHcTlnalYzOHlXaDM3V3RGWkVxb0NtcUhGQnhYRDI0WW96?=
 =?utf-8?B?Zm9PV2FjeXpaVDkxSWNRU2YrbllKOVdwRkp1V29uSWcxT1pWemVMSFZ4VHk0?=
 =?utf-8?B?WXB5YnVwUHh4RlJYUkxFdnVlODNoTktaVUlLbzZqTjJkYlYwb1MyRW9QU0Jw?=
 =?utf-8?B?cjJWY0lQKys0RnpKeTU1d1htS1lDUTJ2U0lBYm8wZlFMK2lTV3V1RWNBekpO?=
 =?utf-8?B?NFJPQmJvc0pWRGgvc05uSTQ0NDhFSDRDelhBQS9Ld3RQT1liWjd4cjFiWWFu?=
 =?utf-8?B?YkhUZklBenRZSUZjN295RHVDOCtDa0QxVzQ5NHBIbkZSMmlpR0dkYzZVTURU?=
 =?utf-8?B?NG4rS3MzaWdwQ1A3WTh2UjY1ZGd6ckFaTFlUTnN1bWtkSmNpWG1BWDZPZ0o5?=
 =?utf-8?B?WkJBblMyN0luOWRjTStFVFViRmsxUUxHTWZuUnhhQ0tqMDFnTjI2MkdlSGYy?=
 =?utf-8?B?NjlNQnNJbDJ2aWxjNTN6K3FXblRjTkMzK01NQ0hvc0Y5Q2xZRzIvZEtLVGtW?=
 =?utf-8?B?ZlM2NTRXZzZUdk1hNWF5ZWs1NTBRR29GWk1hTDB1YnVpSi9GNnFKZFpOVitU?=
 =?utf-8?B?YzRWR1FKU0FWUzJuTXZZaWgvbnZKaEZvRkhnK1JXQlhoT0x3ZmFTYW92NVJD?=
 =?utf-8?B?MTZtMVpyWGlBekhnWkNKcmZMeWxZdVUyNXdtZTdFSkNwWmxoZDM2WXc0RFc5?=
 =?utf-8?B?SGttdzVJazlLTUNldk9jYlYrMVJhbVlNenVGSHdWRWkzTjFrWDNtM2ZBampD?=
 =?utf-8?B?bmZrODlpRWJ3cnlIK2UrdjFkSk05OVhsK2ZCQmNwWk8rU3habUVIc21YbUFq?=
 =?utf-8?B?TnE3a1ExK1c5U1haaEtaQkZFRXBzOUVJVWt0c1E2WTQwYlI5ZjRCSmxGNmxn?=
 =?utf-8?B?TnVqdlR1Mk15WjZBbFhVMkljRlFhQ1ZlRi9aN1Nrd3NHdzYwVDVLREJJam5x?=
 =?utf-8?B?K0hiaktCTEx6RlFEYnY3ZWpJaDk2NUNJU3FwaSs1dFVBN0lDL1JmYlhxNTB3?=
 =?utf-8?B?OE5TT3ZaM3BVckhSMmxVZHYySklYNU0vemF6TlNNRUo4UllUQlNHa0pCTWNT?=
 =?utf-8?B?VlkveXJTL1gwZ0xDS0FzY1U2OEI0QStwczZWNFBwVHh2YmJnbGc0WHdaV2JJ?=
 =?utf-8?B?ZDZIcTdtV29oNGRuRVlNMkpDc3BvdFBDNXpPd2ZNOTZUUkN5bjh3OHk4SHRk?=
 =?utf-8?B?M3ladnJmZWZMaUVIZFczbnVqMFo5ZDdWczAydzlHd0poL1ErYnd0Wk5NYXpS?=
 =?utf-8?B?c2tNaEYyY1ZwRzNSc0orOS8xbWFYUkt0YnpGUmJaaVFzMlJXVFBGcjlLRXlS?=
 =?utf-8?B?NCtvSm5FZlRwSFptUlZ6czA5RHFrUG84SmpQZlB5VldTTDQxRzBNTkxVd2FR?=
 =?utf-8?B?eTh0MFlOQlBrMmwrNXlIcnhmczRCeWlQQ0xGWnNMUEtpcS9nelRWTW1BS1B1?=
 =?utf-8?B?S1kvdTQ5cTk0VDkvWjdQWkxtSGdoUUNkMjk5amVNSE9PR3JZODJsek9MSTRU?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 103fde95-cc47-4624-68bf-08dad317365f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 21:09:47.8621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b3OkBTyDqgV7lNccvQZan/KbCNjHehgVKECVAdOueWEUqUXYPOxvE2j3T7WBAE0B8FeHch3WgPD9FCoBDRN8LqJjuWGepRSACO5zxDlGFWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_GuC_firmware_version_improvements_=28rev3=29?=
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

--------------c2p3sphknPYN6gKFbLK0T0Sq
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/30/2022 01:47, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	More GuC firmware version improvements (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/111218/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12449_full -> Patchwork_111218v3_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_111218v3_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111218v3_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 10)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_111218v3_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_busy@close-race:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl7/igt@gem_busy@close-race.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl10/igt@gem_busy@close-race.html>
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html>
>  *
>
>     igt@perf_pmu@module-unload:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl1/igt@perf_pmu@module-unload.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@perf_pmu@module-unload.html>
>
These issues are all on non-GuC platforms and these changes only affect 
GuC submission and firmware loading.

John.


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_111218v3_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         (i915#4793 <https://gitlab.freedesktop.org/drm/intel/issues/4793>)
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_exec_capture@pi@rcs0:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@gem_exec_capture@pi@rcs0.html>
>         (i915#3371 <https://gitlab.freedesktop.org/drm/intel/issues/3371>)
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_whisper@basic-queues-priority:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb8/igt@gem_exec_whisper@basic-queues-priority.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html>
>         (i915#6453 <https://gitlab.freedesktop.org/drm/intel/issues/6453>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@gem_lmem_swapping@parallel-random-verify.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gen7_exec_parse@basic-allocation:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@gen7_exec_parse@basic-allocation.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl8/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb6/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>         (i915#3989
>         <https://gitlab.freedesktop.org/drm/intel/issues/3989> /
>         i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>  *
>
>     igt@i915_suspend@fence-restore-untiled:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl2/igt@i915_suspend@fence-restore-untiled.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@i915_suspend@fence-restore-untiled.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html>
>         (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>)
>  *
>
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs.html>
>         (i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>  *
>
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html>
>         (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>  *
>
>     igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +14
>         similar issues
>  *
>
>     igt@kms_chamelium@dp-crc-single:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_chamelium@dp-crc-single.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@ctm-blue-to-red:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_color_chamelium@ctm-blue-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb3/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html>
>         (i915#2411
>         <https://gitlab.freedesktop.org/drm/intel/issues/2411> /
>         i915#2867 <https://gitlab.freedesktop.org/drm/intel/issues/2867>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +1
>         similar issue
>  *
>
>     igt@kms_dp_tiled_display@basic-test-pattern:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern.html>
>         (i915#426 <https://gitlab.freedesktop.org/drm/intel/issues/426>)
>  *
>
>     igt@kms_flip@2x-flip-vs-panning-vs-hang:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825> /
>         i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl10/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +4
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1
>         similar issue
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +3
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@kms_psr@psr2_primary_blt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb2/igt@kms_psr@psr2_primary_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_psr@psr2_primary_blt.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@perf@polling:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl7/igt@perf@polling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl10/igt@perf@polling.html>
>         (i915#1542 <https://gitlab.freedesktop.org/drm/intel/issues/1542>)
>
>
>         Possible fixes
>
>  *
>
>     igt@fbdev@unaligned-write:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-2/igt@fbdev@unaligned-write.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@fbdev@unaligned-write.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_balancer@fairslice:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-5/igt@gem_exec_balancer@fairslice.html>
>         (i915#6259
>         <https://gitlab.freedesktop.org/drm/intel/issues/6259>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/igt@gem_exec_balancer@fairslice.html>
>  *
>
>     igt@gem_exec_balancer@parallel:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb5/igt@gem_exec_balancer@parallel.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@gem_exec_balancer@parallel.html>
>  *
>
>     igt@gem_exec_reloc@basic-write-read-noreloc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html>
>         +7 similar issues
>  *
>
>     igt@gem_ppgtt@blt-vs-render-ctxn:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctxn.html>
>         (i915#3692
>         <https://gitlab.freedesktop.org/drm/intel/issues/3692> /
>         i915#4998
>         <https://gitlab.freedesktop.org/drm/intel/issues/4998>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/igt@gem_ppgtt@blt-vs-render-ctxn.html>
>  *
>
>     igt@gem_pread@bench:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@gem_pread@bench.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-5/igt@gem_pread@bench.html>
>         +6 similar issues
>  *
>
>     igt@gem_softpin@evict-single-offset:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-5/igt@gem_softpin@evict-single-offset.html>
>         (i915#4171
>         <https://gitlab.freedesktop.org/drm/intel/issues/4171>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/igt@gem_softpin@evict-single-offset.html>
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl3/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716
>         <https://gitlab.freedesktop.org/drm/intel/issues/716>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl2/igt@gen9_exec_parse@allowed-all.html>
>  *
>
>     igt@gen9_exec_parse@bb-chained:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html>
>         +1 similar issue
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o {shard-rkl}: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>  *
>
>     igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html>
>  *
>
>     igt@i915_pm_rps@engine-order:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl7/igt@i915_pm_rps@engine-order.html>
>         (i915#6537
>         <https://gitlab.freedesktop.org/drm/intel/issues/6537>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl2/igt@i915_pm_rps@engine-order.html>
>  *
>
>     igt@i915_suspend@forcewake:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-5/igt@i915_suspend@forcewake.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/igt@i915_suspend@forcewake.html>
>  *
>
>     igt@kms_cursor_edge_walk@top-bottom@pipe-b-edp-1-64x64:
>
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-tglb8/igt@kms_cursor_edge_walk@top-bottom@pipe-b-edp-1-64x64.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_cursor_edge_walk@top-bottom@pipe-b-edp-1-64x64.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend@c-edp1:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/intel/issues/4839>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html>
>         +13 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html>
>         (i915#2546
>         <https://gitlab.freedesktop.org/drm/intel/issues/2546>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html>
>  *
>
>     igt@kms_plane@plane-panning-top-left@pipe-a-planes:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-2/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@psr2_primary_mmap_cpu:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@sprite_blt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@kms_psr@sprite_blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_psr@sprite_blt.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>  *
>
>     igt@kms_rotation_crc@exhaust-fences:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@kms_rotation_crc@exhaust-fences.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html>
>         +25 similar issues
>  *
>
>     igt@sysfs_timeslice_duration@timeout@vcs1:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-dg1-18/igt@sysfs_timeslice_duration@timeout@vcs1.html>
>         (i915#1755
>         <https://gitlab.freedesktop.org/drm/intel/issues/1755>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-dg1-19/igt@sysfs_timeslice_duration@timeout@vcs1.html>
>  *
>
>     igt@testdisplay:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-rkl-4/igt@testdisplay.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@testdisplay.html>
>         +1 similar issue
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel-ordering:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117
>         <https://gitlab.freedesktop.org/drm/intel/issues/6117>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588
>         <https://gitlab.freedesktop.org/drm/intel/issues/588>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
>
>       o shard-apl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html>
>         (IGT#6
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6>)
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html>
>         (i915#4573
>         <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl2/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl1/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12449 -> Patchwork_111218v3
>
> CI-20190529: 20190529
> CI_DRM_12449: bd21d688743bbb6b97f7591203f388af4a018c6b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7075: ae0ad0ffa147445cdf9d33c96a018f5a8b21a5ee @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111218v3: bd21d688743bbb6b97f7591203f388af4a018c6b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------c2p3sphknPYN6gKFbLK0T0Sq
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 11/30/2022 01:47, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:166980164551.2863.121673217122773=
68204@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>More GuC firmware version improvements (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/111218/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/111218/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111218v3/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12449_full -&gt;
        Patchwork_111218v3_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_111218v3_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_111218v3_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 10)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_111218v3_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_busy@close-race:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl7/igt@gem_busy@close-race.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111218v3/shard-skl10/igt@gem_busy@close-race.html" moz-do-not-s=
end=3D"true">FAIL</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:=
</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-=
shrfb-pgflip-blt.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb8/igt@=
kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html" moz-do-not-=
send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@module-unload:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl1/igt@perf_pmu@module-unload.html" moz-do-not-sen=
d=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_111218v3/shard-apl6/igt@perf_pmu@module-unload.html" moz-do-no=
t-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    These issues are all on non-GuC platforms and these changes only
    affect GuC submission and firmware loading.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166980164551.2863.121673217122773=
68204@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_111218v3_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111218v3/shard-skl1/igt@gem_ctx_isolation@pres=
ervation-s3@bcs0.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4793" moz-do-not-send=3D"tr=
ue">i915#4793</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-iclb8/igt@gem_exec_balancer@para=
llel-contexts.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#=
4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@pi@rcs0:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@gem_exec_capture@pi@rcs0=
.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3371" moz-do-not-send=3D"true">i915#3371</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html" mo=
z-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111218v3/shard-apl3/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb1/igt@gem_exec_fair@basic-pa=
ce-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#=
2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-queues-priority:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb8/igt@gem_exec_whisper@basic-queues-priority.ht=
ml" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@gem_exec_whisper@ba=
sic-queues-priority.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6453" moz-do-not-send=
=3D"true">i915#6453</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@gem_lmem_swapping@parall=
el-random-verify.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4613" moz-do-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@basic-allocation:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@gen7_exec_parse@basic-=
allocation.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109289" moz-do-not-send=3D"true">fdo#109=
289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl8/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_111218v3/shard-apl6/igt@gen9_exec_parse@allowed-single=
.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-=
not-send=3D"true">i915#716</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb6/igt@i915_pm_dc@dc6-psr.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111218v3/shard-iclb3/igt@i915_pm_dc@dc6-psr.html" moz-do-not-se=
nd=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3989" moz-do-not-send=3D"true">i915#3989</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/454" moz-do-not-send=3D"true">i915#454=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@fence-restore-untiled:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl2/igt@i915_suspend@fence-restore-untiled.html" mo=
z-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_111218v3/shard-apl6/igt@i915_suspend@fence-restore=
-untiled.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#=
180</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_big_fb@yf-tiled-64=
bpp-rotate-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111615" moz-do-not-send=3D"true">fdo=
#111615</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</=
p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_ccs@pipe-a-bad-pixel=
-format-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-=
send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +1 similar iss=
ue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_ccs@pipe-b-bad-rot=
ation-90-4_tiled_dg2_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095" moz-do-not-send=
=3D"true">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_ccs@pipe-b-crc-spr=
ite-planes-basic-y_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send=
=3D"true">i915#3689</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-rotation-90-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_ccs@pipe-c-bad-rot=
ation-90-yf_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111615" moz-do-not-send=3D"tr=
ue">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3689" moz-do-not-send=3D"true">i915#3689</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_ccs@pipe-d-bad-pixel=
-format-4_tiled_dg2_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-se=
nd=3D"true">fdo#109271</a>) +14 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-crc-single:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_chamelium@dp-crc-s=
ingle.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109284" moz-do-not-send=3D"true">fdo#109284</=
a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-=
do-not-send=3D"true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@ctm-blue-to-red:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_color_chamelium@ctm-=
blue-to-red.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10=
9271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827=
" moz-do-not-send=3D"true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_cursor_crc@cursor-=
rapid-movement-32x32.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true=
">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-=
1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb3/igt@kms_cursor_crc@=
cursor-suspend@pipe-b-edp-1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2411" moz-do-not=
-send=3D"true">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2867" moz-do-not-send=3D"true">i915#2867</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@varying-=
size.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb7/igt@kms_cursor_l=
egacy@flip-vs-cursor@varying-size.html" moz-do-not-send=3D"true">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not=
-send=3D"true">i915#2346</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_dp_tiled_display@b=
asic-test-pattern.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/426" moz-do-not-send=3D"true">i9=
15#426</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_flip@2x-flip-vs-pa=
nning-vs-hang.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">fdo#=
109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25" moz-do-not-send=3D"true">fdo#111825</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3637" moz-do-not-send=3D"true">i915#3637</a>)=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-dp1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl7/igt@kms_flip@=
flip-vs-expired-vblank-interruptible@a-dp1.html" moz-do-not-send=3D"true">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79" moz=
-do-not-send=3D"true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_111218v3/shard-skl6/igt@kms_flip@flip-vs-expir=
ed-vblank@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915=
#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@b=
-edp1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl10/igt@kms_flip@wf=
_vblank-ts-check-interruptible@b-edp1.html" moz-do-not-send=3D"true">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122" moz-do=
-not-send=3D"true">i915#2122</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rccc=
s-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-iclb3/igt@kms_flip_scaled_crc@fl=
ip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +4 similar =
issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-6=
4bpp-ytile-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_111218v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-yti=
le-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-no=
t-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-down=
scaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_flip_scaled_crc@fl=
ip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2587" moz-do-not-send=3D"true">i915#2587</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i=
915#2672</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-re=
nder:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@kms_frontbuffer_tracki=
ng@fbc-2p-scndscrn-cur-indfb-draw-render.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109280" mo=
z-do-not-send=3D"true">fdo#109280</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825" moz-do-not-send=3D"true">fdo#111825</a>) +3 =
similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-bl=
t:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-sp=
r-indfb-draw-blt.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl4/igt@k=
ms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html" moz-do-not=
-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1982" moz-do-not-send=3D"true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_blt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb2/igt@kms_psr@psr2_primary_blt.html" moz-do-not=
-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_111218v3/shard-iclb1/igt@kms_psr@psr2_primary_blt.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl1/igt@kms_psr_stress_test@invalidate-primary-flip=
-overlay.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-skl7/igt@kms_psr_s=
tress_test@invalidate-primary-flip-overlay.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" =
moz-do-not-send=3D"true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl7/igt@perf@polling.html" moz-do-not-send=3D"true"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_111218v3/shard-skl10/igt@perf@polling.html" moz-do-not-send=3D"true">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542" moz=
-do-not-send=3D"true">i915#1542</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@fbdev@unaligned-write:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-2/igt@fbdev@unaligned-write.html" moz-do-not-s=
end=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2582" moz-do-not-send=3D"true">i915#2582</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@fbde=
v@unaligned-write.html" moz-do-not-send=3D"true">PASS</a> +1 similar issue<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@fairslice:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-5/igt@gem_exec_balancer@fairslice.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6259" moz-do-not-send=3D"true">i915#6259</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/ig=
t@gem_exec_balancer@fairslice.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb5/igt@gem_exec_balancer@parallel.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@=
gem_exec_balancer@parallel.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3281" moz-do-not-send=3D"true">i915#3281</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/sh=
ard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html" moz-do-not-send=
=3D"true">PASS</a> +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctxn.html" moz-d=
o-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3692" moz-do-not-send=3D"true">i915#3692</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4998" moz-do-not-send=3D"true"=
>i915#4998</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111218v3/shard-rkl-4/igt@gem_ppgtt@blt-vs-render-ctxn.html" moz-do=
-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@bench:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@gem_pread@bench.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3282" moz-do-not-send=3D"true">i915#3282</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-5/igt@gem_pread@=
bench.html" moz-do-not-send=3D"true">PASS</a> +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-single-offset:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-5/igt@gem_softpin@evict-single-offset.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4171" moz-do-not-send=3D"true">i915#4171</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-=
4/igt@gem_softpin@evict-single-offset.html" moz-do-not-send=3D"true">PASS</=
a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl3/igt@gen9_exec_parse@allowed-all.html" moz-do-no=
t-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-not-send=3D"true=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111218v3/shard-apl2/igt@gen9_exec_parse@allowed-all.html" moz-do-n=
ot-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-chained:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2527" moz-do-not-send=3D"true">i915#2527</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-5/igt=
@gen9_exec_parse@bb-chained.html" moz-do-not-send=3D"true">PASS</a> +1 simi=
lar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html=
" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2681" moz-do-not-send=3D"true">i915#2681</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-=
rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html" moz-do-not-send=3D"true=
">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl=
-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@engine-order:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl7/igt@i915_pm_rps@engine-order.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6537" moz-do-not-send=3D"true">i915#6537</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl2/igt@i915_=
pm_rps@engine-order.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@forcewake:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-5/igt@i915_suspend@forcewake.html" moz-do-not-=
send=3D"true">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D103375" moz-do-not-send=3D"true">fdo#103375</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-4/igt@i=
915_suspend@forcewake.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_edge_walk@top-bottom@pipe-b-edp-1-64x64:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-tglb8/igt@kms_cursor_edge_walk@top-bottom@pipe-b-ed=
p-1-64x64.html" moz-do-not-send=3D"true">INCOMPLETE</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-tglb5/igt@k=
ms_cursor_edge_walk@top-bottom@pipe-b-edp-1-64x64.html" moz-do-not-send=3D"=
true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html" moz-=
do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4839" moz-do-not-send=3D"true">i915#4839</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-=
skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html" moz-do-not-send=3D"true">PAS=
S</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptib=
le@c-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=3D"true">i915#2122=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11218v3/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1=
.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pw=
rite:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn=
-pri-indfb-draw-pwrite.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send=3D"tr=
ue">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098" moz-do-not-send=3D"true">i915#4098</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html" moz-do-not-se=
nd=3D"true">PASS</a> +13 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-b=
lt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primsc=
rn-indfb-pgflip-blt.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2546" moz-do-not-send=3D"true"=
>i915#2546</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_111218v3/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primsc=
rn-indfb-pgflip-blt.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-top-left@pipe-a-planes:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-2/igt@kms_plane@plane-panning-top-left@pipe-a-=
planes.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1849" moz-do-not-send=3D"true">i915#1849</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3558" moz-do=
-not-send=3D"true">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_plane@plane-panning=
-top-left@pipe-a-planes.html" moz-do-not-send=3D"true">PASS</a> +1 similar =
issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1=
:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor=
-0-5@pipe-a-edp-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send=3D"true">i=
915#5235</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_111218v3/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0=
-5@pipe-a-edp-1.html" moz-do-not-send=3D"true">PASS</a> +2 similar issues</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html" moz-d=
o-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb2=
/igt@kms_psr@psr2_primary_mmap_cpu.html" moz-do-not-send=3D"true">PASS</a> =
+2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_blt:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@kms_psr@sprite_blt.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1072" moz-do-not-send=3D"true">i915#1072</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@kms_psr=
@sprite_blt.html" moz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalida=
te-overlay.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5519" moz-do-not-send=3D"true">i915#551=
9</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111218v3/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-overla=
y.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@exhaust-fences:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@kms_rotation_crc@exhaust-fences.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1845" moz-do-not-send=3D"true">i915#1845</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send=3D"tr=
ue">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_111218v3/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html" =
moz-do-not-send=3D"true">PASS</a> +25 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_timeslice_duration@timeout@vcs1:</p>
          <ul>
            <li>{shard-dg1}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-dg1-18/igt@sysfs_timeslice_duration@timeout@vcs1.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1755" moz-do-not-send=3D"true">i915#1755</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/sha=
rd-dg1-19/igt@sysfs_timeslice_duration@timeout@vcs1.html" moz-do-not-send=
=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@testdisplay:</p>
          <ul>
            <li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12449/shard-rkl-4/igt@testdisplay.html" moz-do-not-send=3D"tru=
e">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8" moz-do-not-send=3D"true">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-rkl-6/igt@testdisplay.ht=
ml" moz-do-not-send=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-ordering:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6117" moz-do-not-send=3D"true">i915#6117</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-i=
clb8/igt@gem_exec_balancer@parallel-ordering.html" moz-do-not-send=3D"true"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
 moz-do-not-send=3D"true">i915#4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/588" moz-do-not-send=3D"true">i915#588</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-iclb1=
/igt@i915_pm_dc@dc3co-vpb-simulation.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-n=
ot-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12449/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp=
-1.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/igt-gpu-tools/issues/6" moz-do-not-send=3D"true">IGT#6=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
11218v3/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html" =
moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4573" moz-do-not-send=3D"true">i915#4573</a>) +1 similar=
 issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous=
-exceed-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#292=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111218v3/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-s=
f.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuo=
us-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11121=
8v3/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D=
"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg=
-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do=
-not-send=3D"true">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_111218v3/shard-iclb2/igt@kms_psr2_sf@overlay-prim=
ary-update-sf-dmg-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"tr=
ue">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12449/shard-apl3/igt@runner@aborted.html" moz-do-not-send=3D"tr=
ue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
449/shard-apl2/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12449/shard-apl2=
/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"tru=
e">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3002" moz-do-not-send=3D"true">i915#3002</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4312" moz-do-not-send=3D"true">i915#4312=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
111218v3/shard-apl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3=
/shard-apl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-a=
pl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl1/igt@=
runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl1/igt@runner@a=
borted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_111218v3/shard-apl1/igt@runner@aborted.h=
tml" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-s=
end=3D"true">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002" moz-do-not-send=3D"true">i915#3002</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send=3D"true">i=
915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12449 -&gt; Patchwork_111218v3</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12449: bd21d688743bbb6b97f7591203f388af4a018c6b @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7075: ae0ad0ffa147445cdf9d33c96a018f5a8b21a5ee @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_111218v3: bd21d688743bbb6b97f7591203f388af4a018c6b @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------c2p3sphknPYN6gKFbLK0T0Sq--
