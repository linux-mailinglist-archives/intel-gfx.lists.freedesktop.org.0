Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E2E41E03F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 19:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3656EC39;
	Thu, 30 Sep 2021 17:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5292E6EC39
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 17:34:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="212504654"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="212504654"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 10:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="480026673"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 30 Sep 2021 10:34:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 10:34:15 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 10:34:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 10:34:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 10:34:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iT2gGIU9gFygLbqRy0lV4STJ4HBBN3ahVvcbAMJKDkLA6Pq4WwXJAsbQ7fnPBkkxQS93DBTcM1VazVR96Xndk9iM4txiSBwKQshOdrN9AY/x0F6SgjFRCy+FFIrDTz5LD9ulryaqsrxsdYtqtGxtETzV5pMC+O1f/OkJYNTdPc7lfACtEFhnigRpAxZGhpGP2HMCvgrbwOGt+dxxCvYxmw4pRBeoM+4/l4Q6Y5JecV/CNvAoPJUAX78+/TdvcA/wMrlChKI2nTwxP7FmCMIMfRPjpYkZ0E/evnqaxhCzy9IY13e8k3a1vbpURVt2xhfIjs8dbr1bmXqMHFx+EJuSgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=M3zfoQjw4ys3ba+JSRAyNTYgzSqsX20BgJEenb2mJ38=;
 b=VggcrnsN5oDjchPkthn76PJneP+qmVGhdsn3JpAesxymdIxBsrm2no784ddmgmQ8wULGv4GB8wAHK183rMbvIlna92GonCNvXZ4i/+ylkwhn52/VuRo9/XS8cL9U4ixcU4l8h8hCAaq5Gv3e3qSP6v63PKARUglaqZQ53U1vMiwV9ayKLS6BRXK6UkL4WDTRwVFpi7T1aP+BYeGCYNK/pJVap6z5HXa42eASCO6RV52Sno88IF1Hpo3tDVnZCgMiByBCxMZ+Uqa+VtRPIalSegZsIT9QKySEoLr7qi5KbVwQNLZbv6lrfPSfGQjXUSowOe4CBDILtm+tyy6AwiygKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M3zfoQjw4ys3ba+JSRAyNTYgzSqsX20BgJEenb2mJ38=;
 b=pHfleomJ1Jv77hVOIZ60mN4Hg/5XGxh7jGjMPaQeGyzCefx01//Dcl+IStanq+WPbNlq7FFdU4JiuA9Ct9ssTwUhR9u4uUhJUhDhEcacAMMz+mH328D7QiH+bRjB6mtKNLBPH9DRXwXR33gWWJLoHTvGQdw3Fcaq0DdV1SwvWPg=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5737.namprd11.prod.outlook.com (2603:10b6:610:112::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Thu, 30 Sep
 2021 17:34:14 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%4]) with mapi id 15.20.4566.017; Thu, 30 Sep 2021
 17:34:13 +0000
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-5-jose.souza@intel.com> <YVVtooS3RBJSTOc4@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <26b64b68-b7a4-a9f0-4d38-552acbe54007@intel.com>
Date: Thu, 30 Sep 2021 20:34:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <YVVtooS3RBJSTOc4@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DBBPR09CA0047.eurprd09.prod.outlook.com
 (2603:10a6:10:d4::35) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DBBPR09CA0047.eurprd09.prod.outlook.com (2603:10a6:10:d4::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Thu, 30 Sep 2021 17:34:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87ea94d1-686c-4791-ba13-08d98438850f
X-MS-TrafficTypeDiagnostic: CH0PR11MB5737:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5737B30183D4F5DBBDD327FDB8AA9@CH0PR11MB5737.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tf99vDHW33gONkYG8Zbqw2u3DnvE9PQmH5dVAf6uHSSX+gCus1/2/212OUNbjrW1bR1H5y+N/Ngln1r98/T08fhXCnAk86Xx8B9twJE3jcyjQUzgGfGcVgJAHFbl1c/CrDm65aPpPjvBqNxjupLsxFFdhAmRyAp6lTwAQopqjkTbPhvn2IE5aofMZT9bHbyk5zaay0yn3//kcS2e+z85mNgHqcJY0lfRCr0vPWt5q7uCXx8PLhPZvjgWK1j2UoKj/zeZwUsjc6nAX0j+ONY0kCa1QflsntwAsMzrs02ybWMQA71/EXsH6Fgs0gXNtlkOxAFy05C4akE7fZShKveeaisb37XLfnbzAGW5CRDAPDCwZN0e0QnciiHNgihYDTVyC4LlhWcsxj0LIm9nb05QaEPw4IknuqpDGQQLY1feXFyzdtfEaBxv5cmerDS+Oqu5Sq8seikWdpziaxgMPTu4Wc2HEsPeFWckIefP9BaFvEZr5BEzEtJFn84HyVIfh/NdI+NHb7ODxJ2gYP4VvUK/8s9sV5pYUtjPBxj2cMI6ywDgbnEEanDih3/hrdO763USwG4mgV5ZX7twyMZixfyqfoMmJUIUo5CyRIgITDWRcWYGkbP87Qeya5WeRqdGq+rb3C7TO/UmvuBeQFfGmNV16A9dyJXU7VVh2YwAfonMY5GNmvf5RqnUJNtxpQeglime5TW+ZzaSitEx42c72hk0j0HnD6WRkEkLKwPJNHlD5Wk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(508600001)(6486002)(66476007)(5660300002)(2906002)(16576012)(8676002)(316002)(38100700002)(6636002)(2616005)(956004)(66946007)(110136005)(66556008)(4326008)(53546011)(36756003)(31686004)(86362001)(186003)(83380400001)(26005)(66574015)(6666004)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDlpWlBzK050L3IrVGxDVk8zMG5yQUt2em9zMTB4SjByZkZMOC9uU1lnNko3?=
 =?utf-8?B?dDV3eDF3aFh0SVlqb2pNN21WdDNPSmN0c2YzVTJxQVhQcDdrZm95Q2l4NC9W?=
 =?utf-8?B?Q2p4V29YcDVVV3FHME1ZR3RsdzU4N1ZkbGRDMk1lSGpPZ25zMkhkZDYrU1lr?=
 =?utf-8?B?eURwTXoyaWZBL1RLdlBPWi9hbzcvbDROSXQzQmIxZzBqNnRZZzdCNzNzaWV3?=
 =?utf-8?B?bElDZCtZUzNqUTA2Y3BydGZScnROaFFXU1RNRXhwRlQrak1RMGNuanVDUlE1?=
 =?utf-8?B?QUhFSU5qaDlyM1FPRWRUVldsSytjRDlrMjNLVWxkT0ZvTjdTanRkRUJHZ0U1?=
 =?utf-8?B?SkV1azZqdTdjWmtRZ1lqWjhjS2pFbmI1NHRoOEhnTjlxRWlUYll3c0xPMWJu?=
 =?utf-8?B?RElwakhOczhQcXF3NWFQYWlwMWZPeUxNZW55ZHN1bzVZeW1LZHo2bVpiWGta?=
 =?utf-8?B?Z0tIY3E1OWVnRlBiMzZ4M3RINkF2Y0Zob0xzdUdnN3cvUllLS0FUZU9HR3ZK?=
 =?utf-8?B?bU83V3ZCMEpuS0NsNHJvYllnZ2p0bXRsTjdaZVo4Q1FXTzRXTjZKMk5XeG1y?=
 =?utf-8?B?U2E2cUVENmVxZW9uRlBsYldGWDVZSjBwZHRlZmRsbWkzWUVNRTBXSWs4b0lC?=
 =?utf-8?B?WjloMnViVjZnYVRUQTB0R1BKOTdMbGJad2F3VUxucitkUTBlUk5GcFo2NzBa?=
 =?utf-8?B?RjVoSmVYSGNOb0JRT3VKUzFQUTNaQ3A1SmNobTUwdmFjYnN4NVNybnF4MXQr?=
 =?utf-8?B?ZnV6Z1BiR0hxUTBNNzlCS2luWVFoWlpqd3RnRVpGbmZGYjkrWWd5NHpqQ0hm?=
 =?utf-8?B?WEpRWGg5YWdsNTVxVWRaQWNMWWFzSWhQNmFMcVJXUjlrbXZBWDNFZElwc2Ix?=
 =?utf-8?B?NktXNEpIL3hQcFUzYndRTWMvMWxtQUtUaHpUZzc3aFRSTnM0RjlqVUFlL1Y4?=
 =?utf-8?B?MTRHQklEdy90OVVQK1I4ZmxTTDcrNkMwUVBYTmZUcTd2bXpEUkN5OHYvRXov?=
 =?utf-8?B?UCtvTldvV1AwZE5STkJ1QzA0U0wzUDcxaThPNjVDSjM4UHMzUURnalBKVUpB?=
 =?utf-8?B?UHJQZFhFSWdMOS9GMmhrU3BJeXVEbHlDMHpCYmpHK1RpU3BLSDRlUkJOSEp2?=
 =?utf-8?B?VXNGcHVtUmloM3pDMS9iSFVsR1VVWVJpdmhLc3NCaGxlL0dvMHZBSkE1OVZp?=
 =?utf-8?B?Rjd5c3RxNDBiT3UvQVRYWnR6cU80aW5tVytvNU5XcUlUdXpvTnhCeVgvS25L?=
 =?utf-8?B?WDhORWxla3dFTHJHQWJNUnpna28vT2M3anBVaUJrem83SEh3NXVtcjVqdTFX?=
 =?utf-8?B?dmF1VUJ5MUV6bHFObEZBSHpmTktsc0NYQmVKNm1WRjhFaDc5ZzN4WjB5Vll5?=
 =?utf-8?B?TGNSTjBJcUk3Y3c4WGExU01GRmptVXlMamJ5NlBxUzF5QjVSWHRqZmxVRDl0?=
 =?utf-8?B?SmNCNndqczlCZGt0SEg2VC9PZVllM1Iwa3lXZW00QmhnNjlFaFpKdStaQWlw?=
 =?utf-8?B?WnVrdlNGdVlmK3FvQ01hMXJ4TjUxREl0VjJCa1J4NWhURm9UNXd6QzhkdHRX?=
 =?utf-8?B?WXBCUDJ0aGpsZUFjMUhQR0dzenJURTFabDJ1bzlJMU5nc3NZMEtscUJLUUsv?=
 =?utf-8?B?WjA4SnJCZ2U0UDNiQW1vdVJBYVRubXJBam1kVXE3ZFhhV2xFejhZeFFiU2Fn?=
 =?utf-8?B?cTlDM1R3K01zbm9ZMHZva2pCc0lBeG43VGRVZTlTbWxjdG1BSFNJMS9JWk1t?=
 =?utf-8?Q?I7uB/sUQPuKwI2sr3CIdfEQNOvegeMNdBo1NEil?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ea94d1-686c-4791-ba13-08d98438850f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 17:34:13.8018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ou5km4ISicc6bBGvNxKHrGhQBIStTf7IsfFnJil6gI+lsOvxpYkJOgPQVSAr2DMjhkyGeTwDgcSNihQ3focOmx2MozzAV2KpM11Wmq1yEfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5737
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915/display: Fix glitches when
 moving cursor with PSR2 selective fetch enabled
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>


On 9/30/21 10:56 AM, Ville Syrjälä wrote:
> On Wed, Sep 29, 2021 at 05:14:05PM -0700, José Roberto de Souza wrote:
>> Legacy cursor APIs are handled by intel_legacy_cursor_update(), that
>> calls drm_atomic_helper_update_plane() when going through the
>> slow/atomic path to update cursor, what was the case for PSR2
>> selective fetch.
>>
>> drm_atomic_helper_update_plane() sets
>> drm_atomic_state->legacy_cursor_update to true when updating the
>> cursor plane, to allow several cursor updates to happen within the
>> same frame, as userspace does that.
>> If drivers waited for a vblank increment at the end of every cursor
>> movement that would cause a visible lag in the cursor.
>>
>> But this optimization do not properly work with PSR2 selective fetch
>> dirt area calculation, for example if within a single frame the cursor
>> had 3 moves the final dirt area programmed to PSR2_MAN_TRK_CTL would
>> be based in the second movement as old state and third movement as new
>> state, not updating the area where cursor was in the first state.
>>
>> So here switching back to the fast path approach in
>> intel_legacy_cursor_update() and handling cursor movements as
>> frontbuffer rendering(psr_force_hw_tracking_exit()), that is not the
>> most optimal for power-savings but is the solution that we have until
>> mailbox style updates is implemented.
>>
>> Also removing the cursor workaround as not it is properly undestand
>> the issue and is know that it will never cover all the cases.
>>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> 
> Not really familiar with the PSR details to give a full review
> on those parts, but the approach looks OK to me.
> 
> Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
>> ---
>>   drivers/gpu/drm/i915/display/intel_cursor.c   |  5 +-
>>   drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
>>   .../gpu/drm/i915/display/intel_frontbuffer.h  |  1 +
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 59 +++++--------------
>>   4 files changed, 20 insertions(+), 49 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
>> index 901ad3a4c8c3b..f6dcb5aa63f64 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>> @@ -639,8 +639,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>>   	 * FIXME bigjoiner fastpath would be good
>>   	 */
>>   	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
>> -	    crtc_state->update_pipe || crtc_state->bigjoiner ||
>> -	    crtc_state->enable_psr2_sel_fetch)
>> +	    crtc_state->update_pipe || crtc_state->bigjoiner)
>>   		goto slow;
>>   
>>   	/*
>> @@ -698,7 +697,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>>   		goto out_free;
>>   
>>   	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
>> -				ORIGIN_FLIP);
>> +				ORIGIN_CURSOR_UPDATE);
>>   	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
>>   				to_intel_frontbuffer(new_plane_state->hw.fb),
>>   				plane->frontbuffer_bit);
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index 46f62fdf9eeeb..77b00e3a92c23 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -1199,7 +1199,7 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
>>   	if (!HAS_FBC(dev_priv))
>>   		return;
>>   
>> -	if (origin == ORIGIN_FLIP)
>> +	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
>>   		return;
>>   
>>   	mutex_lock(&fbc->lock);
>> @@ -1224,7 +1224,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
>>   
>>   	fbc->busy_bits &= ~frontbuffer_bits;
>>   
>> -	if (origin == ORIGIN_FLIP)
>> +	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
>>   		goto out;
>>   
>>   	if (!fbc->busy_bits && fbc->crtc &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
>> index 4b977c1e4d52b..a88441edc8f94 100644
>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
>> @@ -37,6 +37,7 @@ enum fb_op_origin {
>>   	ORIGIN_CS,
>>   	ORIGIN_FLIP,
>>   	ORIGIN_DIRTYFB,
>> +	ORIGIN_CURSOR_UPDATE,
>>   };
>>   
>>   struct intel_frontbuffer {
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 7185801d5deff..e8af39591dfea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1558,28 +1558,6 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
>>   		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
>>   }
>>   
>> -/*
>> - * FIXME: Not sure why but when moving the cursor fast it causes some artifacts
>> - * of the cursor to be left in the cursor path, adding some pixels above the
>> - * cursor to the damaged area fixes the issue.
>> - */
>> -static void cursor_area_workaround(const struct intel_plane_state *new_plane_state,
>> -				   struct drm_rect *damaged_area,
>> -				   struct drm_rect *pipe_clip)
>> -{
>> -	const struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
>> -	int height;
>> -
>> -	if (plane->id != PLANE_CURSOR)
>> -		return;
>> -
>> -	height = drm_rect_height(&new_plane_state->uapi.dst) / 2;
>> -	damaged_area->y1 -=  height;
>> -	damaged_area->y1 = max(damaged_area->y1, 0);
>> -
>> -	clip_area_update(pipe_clip, damaged_area);
>> -}
>> -
>>   /*
>>    * TODO: Not clear how to handle planes with negative position,
>>    * also planes are not updated if they have a negative X
>> @@ -1680,9 +1658,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>   				damaged_area.y2 = new_plane_state->uapi.dst.y2;
>>   				clip_area_update(&pipe_clip, &damaged_area);
>>   			}
>> -
>> -			cursor_area_workaround(new_plane_state, &damaged_area,
>> -					       &pipe_clip);
>>   			continue;
>>   		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
>>   			/* If alpha changed mark the whole plane area as damaged */
>> @@ -2116,20 +2091,16 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
>>   /*
>>    * When we will be completely rely on PSR2 S/W tracking in future,
>>    * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
>> - * event also therefore tgl_dc3co_flush() require to be changed
>> + * event also therefore tgl_dc3co_flush_locked() require to be changed
>>    * accordingly in future.
>>    */
>>   static void
>> -tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>> -		enum fb_op_origin origin)
>> +tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>> +		       enum fb_op_origin origin)
>>   {
>> -	mutex_lock(&intel_dp->psr.lock);
>> -
>> -	if (!intel_dp->psr.dc3co_exitline)
>> -		goto unlock;
>> -
>> -	if (!intel_dp->psr.psr2_enabled || !intel_dp->psr.active)
>> -		goto unlock;
>> +	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.psr2_enabled ||
>> +	    !intel_dp->psr.active)
>> +		return;
>>   
>>   	/*
>>   	 * At every frontbuffer flush flip event modified delay of delayed work,
>> @@ -2137,14 +2108,11 @@ tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>>   	 */
>>   	if (!(frontbuffer_bits &
>>   	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
>> -		goto unlock;
>> +		return;
>>   
>>   	tgl_psr2_enable_dc3co(intel_dp);
>>   	mod_delayed_work(system_wq, &intel_dp->psr.dc3co_work,
>>   			 intel_dp->psr.dc3co_exit_delay);
>> -
>> -unlock:
>> -	mutex_unlock(&intel_dp->psr.lock);
>>   }
>>   
>>   /**
>> @@ -2169,11 +2137,6 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
>>   		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
>>   		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>   
>> -		if (origin == ORIGIN_FLIP) {
>> -			tgl_dc3co_flush(intel_dp, frontbuffer_bits, origin);
>> -			continue;
>> -		}
>> -
>>   		mutex_lock(&intel_dp->psr.lock);
>>   		if (!intel_dp->psr.enabled) {
>>   			mutex_unlock(&intel_dp->psr.lock);
>> @@ -2194,6 +2157,14 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
>>   			continue;
>>   		}
>>   
>> +		if (origin == ORIGIN_FLIP ||
>> +		    (origin == ORIGIN_CURSOR_UPDATE &&
>> +		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
>> +			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
>> +			mutex_unlock(&intel_dp->psr.lock);
>> +			continue;
>> +		}
>> +
>>   		/* By definition flush = invalidate + flush */
>>   		if (pipe_frontbuffer_bits)
>>   			psr_force_hw_tracking_exit(intel_dp);
>> -- 
>> 2.33.0
> 
