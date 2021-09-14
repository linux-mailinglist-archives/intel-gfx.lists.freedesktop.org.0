Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450B140AE18
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 14:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9881C6E48C;
	Tue, 14 Sep 2021 12:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E3F6E48C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 12:43:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="244314620"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="244314620"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:43:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="507986437"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 14 Sep 2021 05:43:07 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 05:43:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 05:43:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 05:43:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fP6osnR0dsp+dzupFjmOACj09XD0K4z0+RfGEpmqBRWlbXcQvz5Ljt+IYHEAFKb3G7wK3+8U0C5ZnCjSzmbPPCoRowxKkAaayvNYGm55K4K/FYT7MhwR1MSA9d8RLVbNFe6XsHsHwdh74o/kmLmcCjEE2lsOAnny/AddCHinzAhSqmm8+Hce4tkq46ghlhWEBLzr5XK86Qcfv2tHqDsg/X+OWAkKkI2tOT9RuYeXWLIw2QEyQrtWFDXkzJ6WCgmC6jWDKuGtHu90/wx2VVXwuCZLyjdyV9TNzwRRs8a/mX+ojN1OK+qJgnTHF1xuhKpWMkAxp8L0Ksz/5QuSmTvtug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=RDPRmiqj3f9apUveCTLgNukoBwNszkRQXqNfzXUAyLY=;
 b=m23GY4c4/XxGPkaAt21e6PKqJC6HJrkvVNs3liLkje/Xl6wzJ01BkDBnFQPqgKY4WcPtSiHkNGE7HvfANpTKkcFY2/y2TKMrmYeZQQgCEdjbmw15aUq5hAnm+7jBYtXa4p+MlKugZsayk84HgMebOKcdSWlS1Rj7LJAR84fPNfXN5Qdr3ZRxY8OEV+A/HwIZQO4O3qnIhmuD9gRiZwzhx3m/QxZ6gws8u2ozIFzAsfSBXeuG1sYPniKSQEvK2AEzIpSesNTzX/67ci10BxCGrxA6gL3vM2/yaa8kqr8jpyiDmWZDKhazVorhCKroQsGTNLe/IpBcHg4Wilc50hFU4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RDPRmiqj3f9apUveCTLgNukoBwNszkRQXqNfzXUAyLY=;
 b=tyLYNpe6rqmMQvIqB9mj+fmEPny6Lg4LuGula1Y9z6FVxSxj9tmF7s8q5s8iSNxgbvTlSHTT70qxh7eQHVxUANs6M7P37K2PgTRGkGgIyDzjcJqo+ZF+4Wr8tu0f4pApn3q2y7OI0OtoMPw3tMCN8Z8cwsMtstmDhd7qPQFmX9s=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5707.namprd11.prod.outlook.com (2603:10b6:610:110::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Tue, 14 Sep
 2021 12:43:05 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4523.014; Tue, 14 Sep 2021
 12:43:05 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "daniel@ffwll.ch" <daniel@ffwll.ch>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-4-jose.souza@intel.com>
 <4fe68cb6-41cf-6ecc-2dd8-f5081fffcc00@intel.com>
 <154efb8de3e47e327e495b7e516a73a82a906674.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <299d6b42-ad57-9984-2741-08639048a1b3@intel.com>
Date: Tue, 14 Sep 2021 15:42:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <154efb8de3e47e327e495b7e516a73a82a906674.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6P192CA0015.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::25)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.85) by
 DB6P192CA0015.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 12:43:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f540f2f-c314-4f67-b229-08d9777d3264
X-MS-TrafficTypeDiagnostic: CH0PR11MB5707:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB570719F544696457EB6A5BEBB8DA9@CH0PR11MB5707.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YwMxvhft3fpY4uWrwN+E3on0luZ6b0JC0Tp8T+/AlVSMJ4eC3LewUAVbHNNK6xxMK7qewKpmXMlTCiCfOmJrOUh5551Rc3kMb/GEmi91DyIIv7mSjhSaQIRZ8M2yHywQ6uurayIy2jEvj96Z5uRah9bIdiaW5gK0pj/PeT9vAXNVCd+rzT6ZHlLJI2Tgjm7aE0JNtZbCEClghPdwcyxeMaO7RRI5DrzkO6y5Idty3c+djQWaX5ZGrenq8yv35AUpn7ub20q5ItbwQYe5sniqgethMAfHT2owYNqGH5Qo11NGmFbF4W4A3HbkJSM0n8W34O5JFUvaQE22QvLp8s9otmF8HlrVfEBCrMs/Nsgx+bWZoTgPqkkIpsgFRnfZ2Zk0lCxc/5utRKd7W2deiFAxFUczMg44+Kzvln/vlbK0zvyYw+CZdviF2g3MnnCKKt1ThXPkNLHDEcTiioUHU1nRbdmQLe05mR0YJG0VPJK/VgB1mLgqXPe1B/Y6hlE0Ak7MimHdsPltAyXqr1Im5Sm7udJfHycRhJXLaDwEjBsUKtOWGTLZS+xqGQSUQlab0ZOQJ8nuKfzbKrewZ51lsOp673x7JJ1n2BlNGOfsIaqYSnxrid5yRbBI2qQZLzwzq1RqK0nN5X39d62hqnePiQyvk6fMmDBZEuYbWTzRHzuPzIoqxlePYfWl5GiB/Q7xZgmHPEt4mMmI3WhAP+sdMoiQbwTylZSRF1HdPLjSDE0Vf2g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(39860400002)(136003)(346002)(4326008)(6486002)(38100700002)(6666004)(26005)(2906002)(8676002)(2616005)(110136005)(66556008)(478600001)(66476007)(956004)(66946007)(186003)(36756003)(31696002)(316002)(8936002)(86362001)(53546011)(31686004)(5660300002)(16576012)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1duZEFBUitYZlVKQXRVM1VDZGRoY3N0dUN4N1ZacnJ6UFNZYitYTUtKVjY1?=
 =?utf-8?B?ZTBKR0h3bk16bjdwWXhqRHZ4M0c4VUlEUnRnVzBYd2VKUElsTGdnZENySTNY?=
 =?utf-8?B?WmZWZUppdVF6SW9OdFROcGxueEhiRmhLM3NMemM5aDdpVHNUeVRwMlpNdFp5?=
 =?utf-8?B?VzBXVW5sa1l1SHQ2QUVGdG1yWndSelJyVmczMEVpdkFnalM0VEF5S0l5TlJk?=
 =?utf-8?B?S0xNbVBuSlplbVY1elhhOWNmMjl3QVJkK1RTV0xCcEl4eXo5eFoxUXlHRk9C?=
 =?utf-8?B?MzVwUW1RRnVpbEMxUkFRbWZrYWtXUDhOTytKVDZYcEpzQTRCdGhxVUFzd0JK?=
 =?utf-8?B?aS9BNXlnSE4yM2E1NFdKWEdJaWxLajBjTGYrSlhKdDlUb3FVK2RpdTlLcDBt?=
 =?utf-8?B?V3hFTE5qTHYzcG9ybVI4SGdIMVBPRjhyaC8xNUtyNnNndVEzNzZkdkE4OWpw?=
 =?utf-8?B?b05IRTF6cUlLc1ZCOElhSUJ1eHg1TndLT1EvWDFnTFF3R0pqRkRuOXlOT29L?=
 =?utf-8?B?aFplK015bUM3TnZVQ1FXUlZ0NExxL1ZkU1J3YVBZWi9mTTZFUVdWOGp5bENa?=
 =?utf-8?B?OTBESHBYdnhyVjlGRTl1NUlvbEdxT0h5b2RHUTNSMkM2MGliNE9Ia253MjZZ?=
 =?utf-8?B?THJjVHlyY2l0TjltT2pyMXNQVG1oQ2JjRk9Fbnl5QXdoWlF3R1BibUxCdDdy?=
 =?utf-8?B?THNSUTRIUytPcmQ2cE8yeHN0V2RYZ2ZzdlBEV1FFb2pNaENya1RkZThQZVF5?=
 =?utf-8?B?SWxmUGJ2SHNjdEY1REVLaks4UCtzQTQ4ZkhrS1grY2h6L3NCT0Q3c1JyMHJl?=
 =?utf-8?B?ekNFK1krRVY3bGkwSUxINWVzSVNnTVhLbU4zcDAveW9sV0ZqU2VBTXJSaEc3?=
 =?utf-8?B?WFBqN2VHVkJDeVE3T2hodE9jRmNHQXprbGpydFN2SUVVUnVlSkNRZ0dYbUsv?=
 =?utf-8?B?THFwRlBEd2FpOURZNnZGWUZGNWVHOUs4MlIxdVRNaThIWWt5S2haZEZMeWJ4?=
 =?utf-8?B?U3VMVTBwQmhOQ0svTDZzeks2Z2psTnYxQ2tnU1VWdGNJUFR5T3BkZ0VabGtD?=
 =?utf-8?B?YUlEUnpBVGRxU2ZXYmFjMUlYdkNpaEJyTGRRM2k0Rnl6Skg2eE5Mdk41RVdt?=
 =?utf-8?B?RFNSOGRqcEhqUnhDdTNWYitxZTliRk5KbHRzV2ZDWmxnWXVrY0JQZG8zNlVM?=
 =?utf-8?B?TWU5UVpqV0IyaGRhbkphYnJCMVBDRThSbW5GVDdTMlBRVU1UT0pKZ0Y2TXRq?=
 =?utf-8?B?eXdhN2NoYjkvMjVBeUZzMnV3bTlickY1a3lGbWNUVUZmUWRGa004NXBVai9C?=
 =?utf-8?B?ZzBjakR2N1BNYzBTZGxFeEtNMXJ2emFtTG5QaG9adGFjVDZ4N0dlSmtqQmZr?=
 =?utf-8?B?eDRWSkE2dnByRldHenRjRHhWbVlDL3NCblZYUjAzV3kxbzNWWGQ3T0lCVFlW?=
 =?utf-8?B?S0YzM3R4bXZ2bVBZOU5xWDRYdk83SUpFeG9keFdmak12bzFua2tIMFFaK0JI?=
 =?utf-8?B?L2tMc3l3Z2pNTzQxNUgzdzFSc3NsM2ZMOHFXYzVUNDdTMGYxMFl6Y2hmakFy?=
 =?utf-8?B?akZta1Qxb0dVTlpoUWJyQlAyaHlReStoTS9LMzNqVCsvNklDd0FWUldBZHRZ?=
 =?utf-8?B?cVJDV2J0RGlVblQzYVlDV1VpZWtFeko4TVdYTkhDOEpYaWMrSHFzK3N6em5p?=
 =?utf-8?B?cXZEUHFYMUNNdTZ1S2hmV21KOEtmblVZdyszT25KRGFMVjc3M2xiYlJLNE1n?=
 =?utf-8?Q?MQLqUwSHB2jzqshr+hvIiOaDCy4uh81U1OeckAH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f540f2f-c314-4f67-b229-08d9777d3264
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 12:43:05.1296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Km58wPxpbogBfuFBd+UEGZwWGYy1cL69+9WWDj8uujLks77dgxfN1CDckEQLEotcXKwrC0KBu+aNnLLA+UHwHBLVEuxw9pC/CM0UiFGQ6LM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5707
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/display/psr: Use drm damage
 helpers to calculate plane damaged area
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



On 9/13/21 7:45 PM, Souza, Jose wrote:
> On Mon, 2021-09-13 at 19:03 +0300, Gwan-gyeong Mun wrote:
>>
>> On 9/10/21 2:07 AM, José Roberto de Souza wrote:
>>> drm_atomic_helper_damage_iter_init() + drm_atomic_for_each_plane_damage()
>>> returns the full plane area in case no damaged area was set by
>>> userspace or it was discarted by driver.
>>>
>>> This is important to fix the rendering of userspace applications that
>>> does frontbuffer rendering and notify driver about dirty areas but do
>>> not set any dirty clips.
>>>
>>> With this we don't need to worry about to check and mark the whole
>>> area as damaged in page flips.
>>>
>>> Another important change here is the move of
>>> drm_atomic_add_affected_planes() call, it needs to called late
>>> otherwise the area of all the planes would be added to pipe_clip and
>>> not saving power.
>>>
>>> Cc: Daniel Vetter <daniel@ffwll.ch>
>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_psr.c | 37 +++++++++---------------
>>>    1 file changed, 13 insertions(+), 24 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 1a3effa3ce709..670b0ceba110f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -22,6 +22,7 @@
>>>     */
>>>
>>>    #include <drm/drm_atomic_helper.h>
>>> +#include <drm/drm_damage_helper.h>
>>>
>>>    #include "display/intel_dp.h"
>>>
>>> @@ -1577,10 +1578,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    if (!crtc_state->enable_psr2_sel_fetch)
>>>    return 0;
>>>
>>> -ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
>>> -if (ret)
>>> -return ret;
>>> -
>>>    /*
>>>     * Calculate minimal selective fetch area of each plane and calculate
>>>     * the pipe damaged area.
>>> @@ -1590,8 +1587,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
>>>         new_plane_state, i) {
>>>    struct drm_rect src, damaged_area = { .y1 = -1 };
>>> -struct drm_mode_rect *damaged_clips;
>>> -u32 num_clips, j;
>>> +struct drm_atomic_helper_damage_iter iter;
>>> +struct drm_rect clip;
>>>
>>>    if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
>>>    continue;
>>> @@ -1611,8 +1608,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    break;
>>>    }
>>>
>>> -num_clips = drm_plane_get_damage_clips_count(&new_plane_state->uapi);
>>> -
>>>    /*
>>>     * If visibility or plane moved, mark the whole plane area as
>>>     * damaged as it needs to be complete redraw in the new and old
>>> @@ -1633,14 +1628,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    clip_area_update(&pipe_clip, &damaged_area);
>>>    }
>>>    continue;
>>> -} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha ||
>>> -   (!num_clips &&
>>> -    new_plane_state->uapi.fb != old_plane_state->uapi.fb)) {
>>> -/*
>>> - * If the plane don't have damaged areas but the
>>> - * framebuffer changed or alpha changed, mark the whole
>>> - * plane area as damaged.
>>> - */
>>> +} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
>>> +/* If alpha changed mark the whole plane area as damaged */
>>>    damaged_area.y1 = new_plane_state->uapi.dst.y1;
>>>    damaged_area.y2 = new_plane_state->uapi.dst.y2;
>>>    clip_area_update(&pipe_clip, &damaged_area);
>>> @@ -1648,15 +1637,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    }
>>>
>>>    drm_rect_fp_to_int(&src, &new_plane_state->uapi.src);
>>> -damaged_clips = drm_plane_get_damage_clips(&new_plane_state->uapi);
>>>
>>> -for (j = 0; j < num_clips; j++) {
>>> -struct drm_rect clip;
>>> -
>>> -clip.x1 = damaged_clips[j].x1;
>>> -clip.y1 = damaged_clips[j].y1;
>>> -clip.x2 = damaged_clips[j].x2;
>>> -clip.y2 = damaged_clips[j].y2;
>>> +drm_atomic_helper_damage_iter_init(&iter,
>>> +   &old_plane_state->uapi,
>>> +   &new_plane_state->uapi);
>> In the description of the drm_atomic_helper_damage_iter_init() function
>> says, in order to use drm_atomic_helper_damage_iter_init(), the driver
>> requires that the drm_atomic_helper_check_plane_state() helper function
>> should be called in advance.
>> However, in i915, drm_atomic_helper_check_plane_state() helper is not
>> used, and intel_atomic_plane_check_clipping() handles src.
>> And i915 is not using the atomic_check callback of
>> drm_plane_helper_funcs. Is it fine to use
>> drm_atomic_helper_damage_iter_init() in this case as well?
> 
> intel_atomic_plane_check_clipping() does the src rect rotation, scale and clipping that drm_atomic_helper_check_plane_state() also do, so we are safe
> here.
> 
ok then, the other changes look good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> 
>>> +drm_atomic_for_each_plane_damage(&iter, &clip) {
>>>    if (drm_rect_intersect(&clip, &src))
>>>    clip_area_update(&damaged_area, &clip);
>>>    }
>>> @@ -1672,6 +1657,10 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    if (full_update)
>>>    goto skip_sel_fetch_set_loop;
>>>
>>> +ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
>>> +if (ret)
>>> +return ret;
>>> +
>>>    intel_psr2_sel_fetch_pipe_alignment(crtc_state, &pipe_clip);
>>>
>>>    /*
>>>
> 
