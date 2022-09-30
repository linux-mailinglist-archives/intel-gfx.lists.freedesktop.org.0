Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0775F151A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 23:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EB310EDB0;
	Fri, 30 Sep 2022 21:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E7A10EDB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 21:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664574140; x=1696110140;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2ujorVD9gvKXiaM/G+mm2rCEOagrtUcsUC6q+VKw+Ns=;
 b=EXjOn/g8PpmcW0XEZn1ZAiKgzgUYzkmdw5gk/FHeeRgwTrH2fD/kahyZ
 BnXthojNRQK/M7wtAOV2FoKi2z8srAeOz19liqvinfFUZ2sSA34gPBLHP
 eDp4yJRSg5OKjTErNvm3iCN8P/9bjTa/l4syGKu98W6Pta9ma/LZ/AmEy
 SBAOsY6U9QFSrwawKWfW8OhzNsZSMb8KD0ATW4PvI1MR2pGCA7/b+dV4d
 7O9qqixziP33zDB9qSWpAplCR+HYhprcctwsychZ32zHyY3Y+HceTS5RV
 7sKkvcbmFRl0Lhgc0f/WBVJwFh3no7TQJXrS3go7l6VFgq2Lf8R+2C3hv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="302275180"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="302275180"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 14:42:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="765271270"
X-IronPort-AV: E=Sophos;i="5.93,359,1654585200"; d="scan'208";a="765271270"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2022 14:42:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 14:42:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 14:42:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 14:42:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g6xxp7XQxr4l7m7UhlmgYh/yX1z5bu87d3o/7Iyh/ADeqap/sEAqjT6hL2o8jhhyzkJlEFnEEzc5Suy5fke7svYtLloQ4AM1Vs6f1exQ1e//L1KtFXfcbIO/9e6Y1I8VYBzXJXHMDxzt6XQYFpYF0QCpOkqWRWZB0qV/iGW4i/swaP4Z7QYr9h+BH3qxL4YfHJrUDIF/IAByLHnoLfeZ+axmg7to2cW0EchsfK29Um9jNm89+BSWIPpdZc51kHUf527nmIG1dpPuh2OgUr54jfr+duLJikrLyNkosWy5y0pTQrVdGOIdTZAS66oseJzfg49gR+QO5DfSTuK+chZsHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BH6JadVb4159yOYX9EU3PVZd1w7Fn0ELWFjt0MX8R/k=;
 b=PESLzOSnUbXOTwTUpPDMc9RCZ2jZHRUVLJO0tpGDXUBJSLplq/Q/6V4eew3aTE166roMp29FaYzakBOg5Tz/KKjoVUNo8cbNziWG4VKOSBw/CUklH2SCZEowXRp53gICIGF2AWLQDAhZcGw5XCrLdbR47odm575/ECjIxCja4A5ThzXq/ZVtQsUf09mq1GL2v2TkXso7YyG+fpL7JKS2KBJYCe3MEhbVEPOLES/lmSbliS2VWqZw8nOIZXnT1Ym5wu8LJ0I32ZzzyG7MHX87Z8cbYpKYIuCN3Vqm2XKObKcli6AYwAvbdNfI/sJmzGQEG8Ywavezg5qxFeI4fayNZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB5188.namprd11.prod.outlook.com (2603:10b6:303:95::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.17; Fri, 30 Sep 2022 21:42:17 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d%7]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 21:42:17 +0000
Date: Fri, 30 Sep 2022 14:42:07 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Yzdir5tLSvx/VKET@unerlige-ril>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
 <20220923201154.283784-5-umesh.nerlige.ramappa@intel.com>
 <87y1u45rla.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y1u45rla.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::19) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB5188:EE_
X-MS-Office365-Filtering-Correlation-Id: 2917c9f2-05e9-49c5-c5b3-08daa32ca511
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6dIaM+bYOvU6Clyqz8GUbmqOt6zCrRvE0Nqdl2Pd/C0MTUm7GrUzK8cSM/u9ib67ma2okRHqmaoSmpLsRlXV/KREyOexgswKVgkwCgI97y+KZHJ1PyRLag4nV27o7r3OltZ9EA4RFF7PqY+TKkFsJtRKcTHB1ihvmP7QdsnaUd3tuJYKCa9VcP1y8pFgjyQzTMHwxqGONRDS4CnhQ8Fy1C7ezEHcYF2jX+1OAgBCduyg8vO1ARDdopbHcNdi1dQkstm3RDoJfEBXAR1st0NcF0Z51mv1n5eAJu8OOMLh9tR3xOaZyPuslh0cpOxoAK3i1ymb6lOojAXl3uMhbSNROCQZycJ70OA4UILYyxljipmB5D+mjdgbmm3edWKpjNhUC+Rt04tgCvRGt0Y0ypLqVywFGwdN9CHOkg/7UqKp+/NbtBG2ljQua2oGG4uTjJ9TxNDJxxozo7eRo2f62ZcLHmTbe81ElSfeHSFOsTY+JIy2ldQ+Iim7EbB49sAJ7ffT9GAirsgSVkw8jsXO+OoyCr3ZmtJrVW8LSJH3lGEON5ZsUuaIRoydIAIDDUPpQehHLCJaG1vGNzryVUWlkzP32tpIiqePupCmrrfzo8FAZuotvgWLWIreHY7qzAW0O3cAVwIC2n2X9EWfpjaAcsf+n6eN26nyq2gz2A+pyNVRmW2uAa6E35sxIZkn8oMmz4fe7R7ckblCgh0p7N7ercIBaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(346002)(366004)(376002)(39860400002)(136003)(451199015)(5660300002)(83380400001)(82960400001)(6486002)(6666004)(2906002)(6506007)(478600001)(38100700002)(33716001)(316002)(66556008)(8676002)(4326008)(66946007)(86362001)(41300700001)(54906003)(6862004)(6636002)(8936002)(66476007)(9686003)(186003)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amdVeU1BQWNiTHh6dmE5M2J6TFNDMk9qY0hGMnFsZ2E2U3BvVGJ2d1JwNFlG?=
 =?utf-8?B?SElpNFNUUEhkZW04cUlYMjhDWmVEUzBqbGFlU1hoeFF6T2kveUJuRHRnWmts?=
 =?utf-8?B?alhsZkNjYVdXTVJPYjNlWDNiOWszOFU5OWJPbW5zTGgzRjlOSkRhWWFzS3cx?=
 =?utf-8?B?RnBFZWd0ajdJMUFuR2dMU2lEZlA0dll5TmMxa0c2bVV6OXpnM2JoQmpwbXIw?=
 =?utf-8?B?TENFcHRQdXJkOHFuQnlpRGJHMk40Y3psN3kzSmFoQ2ZQMUVDU25ydjFteWdm?=
 =?utf-8?B?dHQwSVdRcTltWFZRZjNKTGQrZW9hK2U5Z1l1ZnJocEc0K1ZzckVlR1NVbGhP?=
 =?utf-8?B?NXFQNmZON0pQTXk0ZXdvclIzMTNHOHVvVGo4NWFRMzJGQkc1TEwvUlQ3Qzl5?=
 =?utf-8?B?RWRNdHpqbjIrSlp3dmlIbEppMCtwTDB2OXBibW9xTTEvbkkybm0xbWZHaks2?=
 =?utf-8?B?bFF6Z29JajQ0UkNFSTZ5b2NUY0pWYWd0MElUVnozVWFmYVNWNWpzY1htS2lZ?=
 =?utf-8?B?Wk91VTV4M0dZeFNRcTZSNUhkekdibWt1bjhyUW1TYm02aWtBRy9peDN5UTdn?=
 =?utf-8?B?T2tSbjRDT2IyaklWNWR5WXFyRDQzSVlIM0QyNUZXRXpURHFpMTRaSUFkalor?=
 =?utf-8?B?ZlMxVGFBRGUxcnpRMWJyUm1wQUdDYW9seVA4QjBQR1ZCdFNycSt4UlpRRk9v?=
 =?utf-8?B?Ry9pOGUzcUJuOFJDUFE4OENZaVZkQkQvOG95eHk4NkZyWFBzZmt0VThQblV2?=
 =?utf-8?B?U1hmUFFvWC9KOTVNS3RLTWVXWEsvaDBWUm85NVZNcURYelMyaENBZ2Fqakgz?=
 =?utf-8?B?OWhWUlpvdjkybVNlNHVmTTV1Y1JSTjVUb3dwM2YyU0tIOGlyQ1NyL1h0a3U5?=
 =?utf-8?B?STV4UkVQbHJWd0tkQ1FYOW9NN2hybFQzaG5ndlpZZkJ4V2ZndGMyU0hSK0tm?=
 =?utf-8?B?V29sakZ3ZkxxUGxQaVdvQlBuODN3bnNycWZaZk5ibVFlWnljOFhRUEllMXZG?=
 =?utf-8?B?OFdBeS9PSVJTZDBNZVZaekE0YjA2S29PbkEvODVaS3hndWt6aFhUSEM1RW16?=
 =?utf-8?B?YVZ4Z0xCcUcwcW5WUTJFS3RTR1J4U0kvU2gxL3FRSzUvUmJxVmlYRkFJZ3lS?=
 =?utf-8?B?eko4TTRJSHdHcVh1cnZJQ0UzNlEycmxEV1JGQjdZb2U1RE9YWUxhRHdKZGtH?=
 =?utf-8?B?K2xzOTZ2UHhyMUpudWtjcTJObHhjYXg3NXYzTytRek9mK09xbkVGeUpzR1BW?=
 =?utf-8?B?aEF5dXA5c01DWnNyNDlpVGVCQitscWNPbVlwVjBvMWhHK0hLc0xJYmNtZHRS?=
 =?utf-8?B?Z1lmUm9RVVlTRlE5S1BtL2lLQTJFaUdUK2dYQjdnSVYwTHhwek9KdGYwUXR0?=
 =?utf-8?B?b2o5VXBscHArNWZacFkwWGFXOVVsSlIveTV3TzNxU1ZYMUE5OHpNTWQreUNE?=
 =?utf-8?B?YmFlVWdldDJCWFZVRUtLUThmSXAxL3FiOXREeGh4aUVZSllEQ3pLRmtGVDBi?=
 =?utf-8?B?cnJVWGxoQmhlc2p3RXBIWklkSEs4cDFDUHJ3dS9WSUJ5YVBqVDAzSG52ZG96?=
 =?utf-8?B?S3hOU09pMjFnRnFuRGdvbHJielRTT1Rka2YrUEZIWnNGdUV6cU00T0xVc2ti?=
 =?utf-8?B?Z1ZtcXQ1OHBrMzBwcHZtTmFGVGtsa2Jta1JFeHBaZEFLUStSWlVGUWlIY0Nh?=
 =?utf-8?B?NlBZM09lMFZWYzE1QkNSSCswdnpITVk4VFB1OUF3ejNHcHEyQjBmTmd2eW83?=
 =?utf-8?B?L1RIaVdNajFQYlRYQlhBb0pNNWtvbXpIMmZ0UmZybTl4Vk1Ebk5nOTRrMEJT?=
 =?utf-8?B?MUxwY0lVL1ZNUFg4THowdjI2cjlmRVVhV01acE9DSG1KUGNEdTZUUURFZldt?=
 =?utf-8?B?NzlVc2RZQ1NIT2tXeHVrNlQvV1pHT3VFU3NNa3k1NnNUd05NVHNtZGpZU0Ni?=
 =?utf-8?B?azM5Q0d4Mnl0bHV2SHpJRDJQeGw3TVhKZi9aNWtmNnlDUHBEa2RnTnBJUWh1?=
 =?utf-8?B?QXdSb1lUam5xbFVtUW5PUGNRcGtVMUgrbXErMkFCVmtEK3hjcytvc3djeEtv?=
 =?utf-8?B?YUE2aWQyVDlrUUx4YjhDRkRxKy9RYktrVDEwWUdQb1hyRnl3TmVrNkx5dG9Q?=
 =?utf-8?B?OXFWRmU4VlNWaGEzRVNuZ2lLN0YxQTVLcnk0VGhVSFFSaEFmb1AyTlE4MzhV?=
 =?utf-8?Q?UR0jUaJEYz7kzqLvvf/OhWo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2917c9f2-05e9-49c5-c5b3-08daa32ca511
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 21:42:17.1046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gMV49NhGtNH+MwTBYywut6Vap4ecEOS4ScO8q1EpqjyRkRyZh+b+uggXBuzaAFjRi8ORdd9gtq0zp+QCRhtdIa4utjLjOE6QYRSSp39s6QM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5188
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/i915/perf: Determine gen12 oa
 ctx offset at runtime
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

On Tue, Sep 27, 2022 at 04:24:01PM -0700, Dixit, Ashutosh wrote:
>On Fri, 23 Sep 2022 13:11:43 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> Some SKUs of same gen12 platform may have different oactxctrl
>> offsets. For gen12, determine oactxctrl offsets at runtime.
>
>So seems we are writing code to extract static information for products
>just because it is not documented?

Documented but never accurate. The only accurate values are obtained 
with real hardware. In addition DG2 has different offsets for different 
variants, so this patch.

>
>>
>> v2: (Lionel)
>> - Move MI definitions to intel_gpu_commands.h
>> - Ensure __find_reg_in_lri does read past context image size
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |   4 +
>>  drivers/gpu/drm/i915/i915_perf.c             | 146 +++++++++++++++----
>>  drivers/gpu/drm/i915/i915_perf_oa_regs.h     |   2 +-
>>  3 files changed, 121 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> index d4e9702d3c8e..f50ea92910d9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> @@ -187,6 +187,10 @@
>>  #define   MI_BATCH_RESOURCE_STREAMER REG_BIT(10)
>>  #define   MI_BATCH_PREDICATE         REG_BIT(15) /* HSW+ on RCS only*/
>>
>> +#define MI_OPCODE(x)		(((x) >> 23) & 0x3f)
>> +#define IS_MI_LRI_CMD(x)	(MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
>> +#define MI_LRI_LEN(x)		(((x) & 0xff) + 1)
>> +
>>  /*
>>   * 3D instructions used by the kernel
>>   */
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index cd57b5836386..fb705f24705b 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1358,6 +1358,64 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>>	return 0;
>>  }
>>
>> +#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
>> +static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
>> +{
>> +	u32 idx = *offset;
>> +	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);
>
>The code below works only if MI_LRI_LEN() is an even number (because of
>'idx += 2', which I think should always be the case but not sure if we it
>makes sense to add an assert etc.
>
>> +
>> +	idx++;
>> +	for (; idx < len; idx += 2)
>> +		if (state[idx] == reg)
>> +			break;
>> +
>> +	*offset = idx;
>> +	return state[idx] == reg;
>
>I think this can be a bug if 'idx > len' but 'state[idx] == reg'. So we
>need to do something like:
>
>static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
>{
>	u32 idx = *offset;
>	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);
>	bool found = false;
>
>	idx++;
>	for (; idx < len; idx += 2)
>		if (state[idx] == reg)
>			found = true;
>
>	*offset = idx;
>	return found;
>

Agree, will add found.

>> +}
>> +
>> +static u32 __context_image_offset(struct intel_context *ce, u32 reg)
>> +{
>> +	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>> +	u32 *state = ce->lrc_reg_state;
>> +
>> +	for (offset = 0; offset < len; ) {
>> +		if (IS_MI_LRI_CMD(state[offset])) {
>> +			if (__find_reg_in_lri(state, reg, &offset, len))
>> +				break;
>> +		} else {
>> +			offset++;
>> +		}
>> +	}
>> +
>> +	return offset < len ? offset : U32_MAX;
>> +}
>> +
>> +static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)
>
>I have seen people complain about unnecessary double underscores in front
>of function names ;-)

will remove/change to oa_*.

>
>> +{
>> +	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
>> +	struct i915_perf *perf = &ce->engine->i915->perf;
>> +	u32 saved_offset = perf->ctx_oactxctrl_offset;
>> +	u32 offset;
>> +
>> +	/* Do this only once. Failure is stored as offset of U32_MAX */
>> +	if (saved_offset)
>> +		return 0;
>
>But if saved_offset is U32_MAX we should be returning -ENODEV?

correct, the above if block should be:

if (__valid_oactxctrl_offset(offset))
	return 0;

if (saved_offset == U32_MAX)
	return -ENODEV;

>
>> +
>> +	offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
>> +	perf->ctx_oactxctrl_offset = offset;
>> +
>> +	drm_dbg(&ce->engine->i915->drm,
>> +		"%s oa ctx control at 0x%08x dword offset\n",
>> +		ce->engine->name, offset);
>> +
>> +	return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>> +}
>> +
>> +static bool engine_supports_mi_query(struct intel_engine_cs *engine)
>> +{
>> +	return engine->class == RENDER_CLASS;
>> +}
>> +
>>  /**
>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>   * @stream: An i915-perf stream opened for OA metrics
>> @@ -1377,6 +1435,17 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>	if (IS_ERR(ce))
>>		return PTR_ERR(ce);
>>
>> +	if (engine_supports_mi_query(stream->engine)) {
>> +		ret = __set_oa_ctx_ctrl_offset(ce);
>> +		if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {
>
>This is not a problem in SAMPLE_OA_REPORT case?

SAMPLE_OA_REPORT is OAG use case.

Actually, I did not know how to treat this condition. The current 
interface will configure both OAR and OAG. If we have an error 
configuring OAR, should we fail or let the OAG use case work?

I am now leaning towards failing this unconditionally. Thoughts?

>
>> +			intel_context_unpin(ce);
>> +			drm_err(&stream->perf->i915->drm,
>> +				"Enabling perf query failed for %s\n",
>> +				stream->engine->name);
>> +			return ret;
>> +		}
>> +	}
>> +
>>	switch (GRAPHICS_VER(ce->engine->i915)) {
>>	case 7: {
>>		/*
>> @@ -2408,10 +2477,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>	int err;
>>	struct intel_context *ce = stream->pinned_ctx;
>>	u32 format = stream->oa_buffer.format;
>> +	u32 offset = stream->perf->ctx_oactxctrl_offset;
>>	struct flex regs_context[] = {
>>		{
>>			GEN8_OACTXCONTROL,
>> -			stream->perf->ctx_oactxctrl_offset + 1,
>> +			offset + 1,
>>			active ? GEN8_OA_COUNTER_RESUME : 0,
>>		},
>>	};
>> @@ -2436,15 +2506,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>>		},
>>	};
>>
>> -	/* Modify the context image of pinned context with regs_context*/
>> -	err = intel_context_lock_pinned(ce);
>> -	if (err)
>> -		return err;
>> +	/* Modify the context image of pinned context with regs_context */
>> +	if (__valid_oactxctrl_offset(offset)) {
>
>This check is not needed, if we didn't have valid a offset we should return
>error from oa_get_render_ctx_id.

Hmm, I guess so.

>
>> +		err = intel_context_lock_pinned(ce);
>> +		if (err)
>> +			return err;
>>
>> -	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
>> -	intel_context_unlock_pinned(ce);
>> -	if (err)
>> -		return err;
>> +		err = gen8_modify_context(ce, regs_context,
>> +					  ARRAY_SIZE(regs_context));
>> +		intel_context_unlock_pinned(ce);
>> +		if (err)
>> +			return err;
>> +	}
>
>>
>>	/* Apply regs_lri using LRI with pinned context */
>>	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
>> @@ -2566,6 +2639,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>>			   const struct i915_oa_config *oa_config,
>>			   struct i915_active *active)
>>  {
>> +	u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>>	/* The MMIO offsets for Flex EU registers aren't contiguous */
>>	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>>  #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
>> @@ -2576,7 +2650,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>>		},
>>		{
>>			GEN8_OACTXCONTROL,
>> -			stream->perf->ctx_oactxctrl_offset + 1,
>> +			ctx_oactxctrl + 1,
>>		},
>>		{ EU_PERF_CNTL0, ctx_flexeuN(0) },
>>		{ EU_PERF_CNTL1, ctx_flexeuN(1) },
>> @@ -4545,6 +4619,37 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>>	}
>>  }
>>
>> +static void i915_perf_init_info(struct drm_i915_private *i915)
>> +{
>> +	struct i915_perf *perf = &i915->perf;
>> +
>> +	switch (GRAPHICS_VER(i915)) {
>> +	case 8:
>> +		perf->ctx_oactxctrl_offset = 0x120;
>> +		perf->ctx_flexeu0_offset = 0x2ce;
>> +		perf->gen8_valid_ctx_bit = BIT(25);
>> +		break;
>> +	case 9:
>> +		perf->ctx_oactxctrl_offset = 0x128;
>> +		perf->ctx_flexeu0_offset = 0x3de;
>> +		perf->gen8_valid_ctx_bit = BIT(16);
>> +		break;
>> +	case 11:
>> +		perf->ctx_oactxctrl_offset = 0x124;
>> +		perf->ctx_flexeu0_offset = 0x78e;
>> +		perf->gen8_valid_ctx_bit = BIT(16);
>> +		break;
>> +	case 12:
>> +		/*
>> +		 * Calculate offset at runtime in oa_pin_context for gen12 and
>> +		 * cache the value in perf->ctx_oactxctrl_offset.
>> +		 */
>
>What about ctx_flexeu0_offset and gen8_valid_ctx_bit for Gen12+?

For gen12 ctx_flexeu0_offset are no longer part of the context image, so 
not present.

gen8_valid_ctx_bit is also not defined for gen12.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
