Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D335636AB8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 21:18:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D859C10E606;
	Wed, 23 Nov 2022 20:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883A210E606
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 20:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669234682; x=1700770682;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OpB1WHiZhUZVZpnUXP+CsZjA6D+DsXWb9bTC8xGs9es=;
 b=cTOkBdvdITrI5eg81M717c6G+6Euj47+drbuM3aZIeGgBwCIrev6g33M
 ZMpQhp3Wau44O19spUSVCDxUtlFw+a1co10WTDSxMVESSlvqrFUZZuox1
 XLXSUUXHduwVTSgIHDQzEQG/s3JnUYhFCLTwNH1AWLlGMnmwkuqvXFeNn
 SnrY6GNeGbts+PQzRabOxEi0tegeNUQnzHUjp/+pY0udpM7i0rRJIk+Hf
 PlX6trTMiwSSL+2mWz/LQRdb2AgLc5tfdR4Y7Uit3XGLmzqeOgv1Ef7wT
 p0red7VFKJH/sFtrJ6cr6kQYRgDRrvlte2HLkpmNR8kVFrYhM/Tav3Ic7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="314187124"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="314187124"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 12:18:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636039346"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636039346"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 23 Nov 2022 12:18:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 12:18:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 12:18:00 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 12:18:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h8/5AHcJcSV1qklw+9/ac1iEH2XymQRgdXo+Jlx+wflJCDJlt8E6KluzGVXBJGTFsPCQnsjmJqKWT/OtwxF2DyKV/vla7M+UZYidLx4xc59x6xRbQh3BkmjIioplHlhcvWfa623ENqwXOewKaa+egIcQFcPha0wt7nx2bRZyj1gCWQJpY4YIUckhsvORPToRszEj1UT6yEVChH/mXITBEA52/Y4e/l42FoALCFauNmw9Lc3YqgLmpwqJuSo+q4GxH8P7joOWJpHVcu73BdADeoady7XwBmd9e8KuRVvG9mvORIPrtyPZ62r6jioll1TUq8s+MUdWJCy6FtMoaWaSrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U89wRuH/YkjsY0Bf6g/PGho5SKIyQMuqx4aYIU/LaMs=;
 b=nYK4M+KFCAfXZicchc3YfSMWY1xF2SKeXvZjUAfrATy0N3MgUf1jHPuYKq1zKzhpoSMeE8fU4quzcIsB+Sbcc2zdEp8alor9rQMmiO/7jVSTxhJgCiJRms8eLnnkQVcF6d28rNydCSIP9zo2ffLXjFdBGS7pVynH8AJ41DLVmTHMnYqqKS+OktRJAxN7zSjm8yclW8jfCGubZnJW+TDfK4LWrMmH5tWwKYt1e574UGpdWbkD8omDh2Xf5C5FQP1xhgoBLhGtPIMXgPQZ46xR7PFCypNRMCD1prDsQynXuY47lldGg+EReMTJEQTUwLdtrkJ+p2iZgF6u3Sc3xN5q0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB7087.namprd11.prod.outlook.com (2603:10b6:806:2b5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Wed, 23 Nov
 2022 20:17:58 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 20:17:58 +0000
Date: Wed, 23 Nov 2022 12:17:49 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y35/7Qc530jik3FH@unerlige-ril>
References: <20221123020700.603256-1-umesh.nerlige.ramappa@intel.com>
 <87sfiawdvz.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfiawdvz.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0340.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::15) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB7087:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e8f87b7-ed21-4a57-d4ae-08dacd8fd01b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AS3dGmwGYq44IKWr/gHy7vBh5oustVBPWlLGXZ6ILfLOGTsy8B4inoLody9A+rZ5f+tQy1sNn60EWarvDRnEsW9Kqd3HWrqkzcl0eNw3ybQT51hEeOGMRvGukhPw6c4sR0uu22/T73ivvg2QAsLbta9Z1evzuRsTUfIsVN5CztVMHen2X7BECGim4abogAkQ423CuVYDCoPGaXGuV5mE8gAtJgrNVKl/GcDqRgnMnB/zoFiYb5YrI9Pn+KrNKwMZx0QGaUgPY2yVJUbvjkseZdCBwwVqqWw5wW6rOx7YviRXKNcbDmwVb7m7BscfAqp0hmFVTMx6AE7dcoM8n5iZw5qm1iR86f59PLmMK0Zj1BM8BCSPz6IzCsZU6imRvq0OC3BbWR7KWxeq7nlrxvsukJJY+uP/fLnUOIiXkBuwOmUTXwx5Demh1u28kpMbygc/D0UY2SkyQgyZ9xYXtL1yVULljoaC294+7SGKRybg/c7YBRDz1XnmO6V3/nZegxxzGj5vbokUlt4LndcDAOlA/a8VkgqKPHQV9tgtYbLYmp3oplYIKkvLwEZD/THXt2OoM3S/QrG9xJBlxF5svFvKaQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(39860400002)(346002)(136003)(396003)(376002)(451199015)(5660300002)(33716001)(8936002)(6862004)(186003)(26005)(6636002)(4326008)(8676002)(316002)(41300700001)(6512007)(9686003)(66476007)(66946007)(66556008)(86362001)(82960400001)(38100700002)(2906002)(83380400001)(6506007)(478600001)(6666004)(6486002)(966005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YllsdFBMTEJueU9yY1pnS3l4RjRIZS9pS3hXK0YxZHV4b1JWT2VuM3orTjVB?=
 =?utf-8?B?RGlDOGN5aGIrNHJZMnA2U25nUmpveitCOWJiYWk4bmtxNVpBb2VLQStURHVY?=
 =?utf-8?B?RnVqVHhOZWZ4a0FCN2YzSlAxeWppZkM2SGFmdUhIdkd2c05nQThvU0YwVXRj?=
 =?utf-8?B?azgxK2dLUXZSUlBtSGdyMWtsV2RuQzRMenB2cEd5eEdGY24zOGdZSTFlcXh3?=
 =?utf-8?B?RzgvRU1RTlFwTVNqdXN2TVVBU0JoSUZ6bmI5R0VpYlNjRm41U2NPK2ZrMERa?=
 =?utf-8?B?UDcvc1QvM0dlbmZoMUIzMjNOOW1tbktPYUptTlB6RnozSlFyeWxwcG95a1hP?=
 =?utf-8?B?Uk0rSHFlRDZrcUNwRkl2UGtYZXRZSDl3aHR2dUlXZmRJSWhzdzBFTkdGUGd3?=
 =?utf-8?B?OWFIMDh0WFV5Z0ZKZkNXcUk2MHVpcWFzMFdGbWs4aEtKbkxPczZQa1E1NVI0?=
 =?utf-8?B?VkJPRE9KMWgzVERsRFM5SnE2dUFpT1NEd2Z4cm1WbWNyWUtUcmVoaUkyTlJn?=
 =?utf-8?B?N1BLd1dOYVJzMUdsd2UvMmVMbUF0NTJna3pleHMvVzlEd2JQOVNzOGdmNkhX?=
 =?utf-8?B?QkF3Ui9kdEhDU3pkdTNwOXNhS3dibXl0ZXhNb0dnZWJKUkM3T2o0aGt2SUxI?=
 =?utf-8?B?bzdsMmV5dWxGODhYV1VZSXIvUDFvUURmajAzWU1HOEloQnN6RGdKdVd5V3Nq?=
 =?utf-8?B?eDhYV3pGZkxSaGNJdGM4VjlyMTgwYzR4cWRjcW5lbnJwZWoxazNXcVF4TStF?=
 =?utf-8?B?N2hWSXhkbFQ4STlWVGNWTnozSlEwNXlaRXFrc3BxUTZ6TkJranVyd1ZHYWJI?=
 =?utf-8?B?Vko4bDQ4VnM0enB6OFljWnowdW5SSUtFZEhlQThvWjR3cjhvS2xVL3kycCtF?=
 =?utf-8?B?UCswSFVlM1dNZE5rN2Ywa2Y1Z0pVRGVoNkIxRXJtejZmdkVmQmliaWtNS0p1?=
 =?utf-8?B?dEtabmxJM0JubFFvb1FMaWl5YkVGMi94Z0lRNS9RT0RFVnczSGZLbWhLV2dn?=
 =?utf-8?B?NDVBQXFaY2E5T1QyYzF1clBvWG5uejZ5a0p0UzhnR2tCVFVrMlNoRUk2NGJi?=
 =?utf-8?B?TTk1QjBoTXVEK2hKSlUxejdIV0QvcWVVL0JLNE9PeFJITmdsemczZU1tK0Vz?=
 =?utf-8?B?T0N5YXFXL0JlbjBZWkRzeE5zMHpNbm45UExBVzFuRkFOcmNpVjB6a0o3TTlo?=
 =?utf-8?B?SHI1cUUrZnZGS0ZFajVhQkZUV2Y1dE5jYnJ5RFFSZlpKTEJtZnI5dDJwSFVZ?=
 =?utf-8?B?ZUdQd3h0YkQ0QURZekpISklNa2JDc01TeVRtOXJnOUEvbDcrWXZ5Qmt5YVlF?=
 =?utf-8?B?bm9iMDR0TjZBcGw5RGRXNzlpTm5idlVXSlVGelJnQ3ErdlNxS0lZMnRLdEt4?=
 =?utf-8?B?UGw5ME9zSi8wbVMrZTY5VnRTY0E1c2luN0VTREJoR1N3REU0VDM4eDQvOFZG?=
 =?utf-8?B?endqUGZFOEZPcUoxeFJ6eHhkMUtHYWtBUHZJektNV1NyU1dqV1VqRHRTbDBN?=
 =?utf-8?B?RmFEK3oyR09hNXNhV2dud2tNaTFVNW1SQ3puWldONU9RMEJ2QmNMa0FjZW0r?=
 =?utf-8?B?czlVaFhSQndoWFlmMWVZaE5RMWhsUzdvQ0NlYUtHUitVL2FreHVBRyt6TDVK?=
 =?utf-8?B?Vi9WV0NoVlpoc25HMld0b3JsRWhwOE12TDdOVmkwQ1F4a1ZLYUpxSHlhMDFL?=
 =?utf-8?B?R1d5S1ZkQlZFT0RMT0dkWi9nSVlkaXc4KzJ4Mi9xOTkrMXpva29zNlIycEdQ?=
 =?utf-8?B?dWRrNTJnVUovZ0t2aGh4VlJEcmZmQXdsWjM4TDArUFZQMXFWRFVHbkhGMTQ0?=
 =?utf-8?B?YnhURzBxT2hQZFgySHpjekF4UHBwZzFrWjNjTkZ5bG55WUJLYy8rV3R5Um5j?=
 =?utf-8?B?ZXZxYmplWHIzanUzYklrcEdIQ3JVWmRVTFNRN2NtdXBsaXJTNXRMeURMMU9p?=
 =?utf-8?B?VDFWbno2T25HWmlRdmNNckdidHRYOFk5dWxCdzAveDdQZXRZNUppQWd0ck5u?=
 =?utf-8?B?VGtLRndsaFFGTTNRQXNYcDlaUEZPWXZ2Um5hcnB5N2hxNFViaUFUQk1hM3l2?=
 =?utf-8?B?dGFqTzRnNWEwQ0hyd3VTaFZ1amxUZVh4YThLVnFmUlA0YlcrcGhDeTZRMGoz?=
 =?utf-8?B?MDRqSFAwQlhnRG4yNDFGbFVSemFKZ2paQmlEd3ZFZ0NlSE8veU4vQW56WGNR?=
 =?utf-8?Q?A6mfg4FKMIO+JbKjevTjWD4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8f87b7-ed21-4a57-d4ae-08dacd8fd01b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 20:17:58.3098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +S3DXrlyJUiupAk0p8JEu4p69vKwQC/7D525u+sDQ/1qdW0FEZBi0VWfYvLePbKJl6LRoiBfDrV/Vlcki5rOrFOdFmQnt2LXJdNEx195p7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/perf: Do not parse context
 image for HSW
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

On Tue, Nov 22, 2022 at 07:25:36PM -0800, Dixit, Ashutosh wrote:
>On Tue, 22 Nov 2022 18:07:00 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> An earlier commit introduced a mechanism to parse the context image to
>> find the OA context control offset. This resulted in an NPD on haswell
>> when gem_context was passed into i915_perf_open_ioctl params. Haswell
>> does not support logical ring contexts, so ensure that the context image
>> is parsed only for platforms with logical ring contexts and also
>> validate lrc_reg_state.
>>
>> v2: Fix build failure
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7432
>> Fixes: a5c3a3cbf029 ("drm/i915/perf: Determine gen12 oa ctx offset at runtime")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 00e09bb18b13..dbd785974f20 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1383,6 +1383,9 @@ static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
>>	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
>>	u32 *state = ce->lrc_reg_state;
>>
>> +	if (drm_WARN_ON(&ce->engine->i915->drm, state == NULL))
>> +		return U32_MAX;
>> +
>
>So if we didn't add the HAS_LOGICAL_RING_CONTEXTS check below state would
>be NULL correct? I couldn't figure out how it is NULL on HSW looking at the
>code (with the context image pin/unpin).

Ref: intel_engines_init()

Haswell is using ring submission. While it does have a context image or 
ce->state, there is no lrc state offset here. I think lrc is an execlist 
concept (used only for execlist and guc submission).


>>			/*
>> @@ -1447,7 +1450,8 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>	if (IS_ERR(ce))
>>		return PTR_ERR(ce);
>>
>> -	if (engine_supports_mi_query(stream->engine)) {
>> +	if (engine_supports_mi_query(stream->engine) &&
>> +	    HAS_LOGICAL_RING_CONTEXTS(stream->perf->i915)) {
>
>This check looks fine since we seem to be looking inside ce->lrc_reg_state
>for oactxctrl.

The earlier code also does not define perf->ctx_oactxctrl_offset for 
haswell. Ref: i915_perf_init().

>
>Overall looks fine so this is:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Thanks,
Umesh
>
>
>>		/*
>>		 * We are enabling perf query here. If we don't find the context
>>		 * offset here, just return an error.
>> --
>> 2.36.1
>>
