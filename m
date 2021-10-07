Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4DA425022
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 11:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601D66F3F3;
	Thu,  7 Oct 2021 09:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA916F3F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 09:31:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="226519237"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="226519237"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 02:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="624181840"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2021 02:31:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 7 Oct 2021 02:31:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 7 Oct 2021 02:31:21 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 7 Oct 2021 02:31:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jbBKLrfmH9Y6eKAkzJeTmWWXAKonu51APmy5MCdTmC1AKcrdC/lFp6b2iHHL/mwp2grgVOyf3CJEaUoqP4dh27x+sNq2K76QwB5kv+Bwbv30GngFyeK73nsw+shwXRrn8B5Ie/6exZXZ5Uj6ZIkAgMjkQNK26ZrvpsQ+qb0JGqP9NX0Ay7nRXfRSMPLgxeLYdS7rd/lUW0aSX1r7D8q5ehUmDswqGzbNB/VHTyyPL6iFfDEBXS6YFF1FI1MCHEVvn//nDUNQ1Kx/yhEcBgI8eHxMf9jpduEKIE46OdkIWtbWFWOZn1lTegCLGJqdNyAwGmqqiLtOrw+ieL1L11FlYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LweMutG3//x8HiBZ1J+Vq9ClWv1S5yrUpLwsP7ZJklI=;
 b=PQeAGYQ7x0Z2m6ZDkI0FQbF/LHFOvOFe3b8U2utA32hPudI82ijfBgqHFdlawZZgaNULS4Yngf3d5cb+cFUdFHnN/KKV7EoNWEka4bmhAC59ItrUs4lw85pX4sSBiwx0M9An+7akIc+n2ntfqZzm8UFh4Wb7wUfce4cQMUyQWo/xy35YRhP/Bi+g6dkr2oFk9fqMWLrCMfeAtySiWmjiQO46SJ24W6a718qx4Mio+ZaryJnkhD+MJalotccgRypXnKVnbLp9Xj0XaJYSt9CE+sHonMWpo9wuRF9mEVfSAyztP4e7/8KKt5fM6gzuzXDz7fiiGeq02hEXRYbgzYXq9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LweMutG3//x8HiBZ1J+Vq9ClWv1S5yrUpLwsP7ZJklI=;
 b=InsUE6eMqWqFlKhBK7Yn9ksUI5EX2WAxqVtyfy/7Z7p0zsf52ucG5ZDm7cnKYG9nKN7nNn9znlBEbH+LnM1GJWJITx1hWFpzkozpV6JbodY2AaFbS5EYb+PzMzfy4UtsOOb5G36En3lwgxOxhlH1GCX3YbFsz/GllliYfOqJqiU=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5410.namprd11.prod.outlook.com (2603:10b6:610:d1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Thu, 7 Oct
 2021 09:31:20 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%5]) with mapi id 15.20.4587.020; Thu, 7 Oct 2021
 09:31:20 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20211001011218.276557-1-jose.souza@intel.com>
 <20211005231851.67698-1-jose.souza@intel.com>
 <41dfbcd5-736e-49fa-c870-64d1ad7d4464@intel.com>
 <9f3c65b36ef8a6709a7225302f7446658f794061.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <06a95df1-d37f-f6e9-81cd-1af1f256c9f2@intel.com>
Date: Thu, 7 Oct 2021 12:31:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <9f3c65b36ef8a6709a7225302f7446658f794061.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0201CA0022.eurprd02.prod.outlook.com
 (2603:10a6:4:3f::32) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.195] (134.134.137.81) by
 DB6PR0201CA0022.eurprd02.prod.outlook.com (2603:10a6:4:3f::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.16 via Frontend Transport; Thu, 7 Oct 2021 09:31:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0f1b7436-1822-413d-8074-08d989753834
X-MS-TrafficTypeDiagnostic: CH0PR11MB5410:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB54102A16611D5E0F00D81FC0B8B19@CH0PR11MB5410.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xMaCeclsJ4NCn30MV0SfDwRaJmMWB33HozeDcNOx5f/+hX6zhgWuoZaB9r4oV+07i14DnWttaN6+BZhRMOmExg1VSewzjbf5Fq+9ORLc1ZfFaMii4ew2iUPx0A43J0nGXYYpKqF/5pwOZPeBw+qVwSkJK3VRaLiKOBWP71I9g33sXxZExGQZ3Erd6jxwOvCZ44XMTIYsetytnOWhCbXcvEp/8DKY/QNIxdMeqz3by5zAxybKjl9O5lWDmjwYvoV7Gd6XYkxq6p7wjaqrlLaDj9NotZflE8eVbAuNdbQNtQt1W7SrkbwuC28tvsSLzX7bwnC2ehYk/fMWNd4WHuDJ2tnknn6oaCeqXBO1ZtLu//pJYQIO4NW6uncUCYt5jN42RZo6OGUf3ZnUCA+dqiRq84rYuMeZKSKoNKfG4yBhz9X+wLO5qnpSXTNGrM446M9x5hzbzQXreCF+72tY9jHSznMrHghbIx4u7kCGZGrQRHunbkXuebWDccAqj8ymUhYlC/ABnw6snqEHeEV96xnI+X6aAnYQOtD53N/yebScLSbteRnKSOPUeNY8+OWggF5MmgGU60EXdaTpHaPjIpEXvgBwscaoJdtz+G3wo6jYlCY5wAcekHnIXFLfJ38uYOhN0HVPyKbAVM1pPXoZtr5uIvPv4X/h62jOzg5iGdjDoPeGxmtWiOY+NEtzQ7lIsWvKXVD+WpOBUdkU07lUQzi/6cQhlru4x7gARu7wyj0/zsA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(15650500001)(6486002)(31696002)(6666004)(2906002)(26005)(186003)(16576012)(316002)(5660300002)(8676002)(31686004)(66574015)(53546011)(83380400001)(66556008)(66476007)(66946007)(8936002)(110136005)(956004)(2616005)(36756003)(86362001)(508600001)(38100700002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXdVSy9iWnBZUDFKV2ZlOWpaWGlSN1BocEFRaFJyWUlaWWZHK3VJTmc0Ulcz?=
 =?utf-8?B?dG9sbHczQ25BNkNjYVg4cllzSThyVzFmangrOU41UVhacWNtYmV4S0V1NFNO?=
 =?utf-8?B?cnZla0Exd2pPdDI0QmZqWUZqbFRucUEyRFVZWk1RdGxxKzV2SHhPNjBDaDZ4?=
 =?utf-8?B?SXFCVkxaYkNrNlpZOU5Fak9RaFFHY2FpdkUyWVE3WHNVb2tMbU1LSXJCUVI2?=
 =?utf-8?B?bk11eGJtZ0ZvZU9JT3cyeW1zaWJPbHdUaEh0WjBRckFib0ZQdkJ5SWVDS1ZS?=
 =?utf-8?B?VlZNbEcvZUxNbTZ1Tmo2STlUdWk4bjFMM3VVSkNrMWtSNC9Na0hkc0FJTlN0?=
 =?utf-8?B?OWR3VVhNeldnQkVMaHZacUR0TmFhU3NMN0ZxQk52c2RJYzdoY2U3UWZTRW1X?=
 =?utf-8?B?MUtob3JadWxNWnR1Y09jbE9Qajh3NjRTUFpwT292SkV1K055bWlhZkhUSjV0?=
 =?utf-8?B?T1lOdEFRTEg2bnJ6NS94dEJtRFVNWVkvZlo0NWVxV3JHalVwMmtBeFVSVTRt?=
 =?utf-8?B?NkNrUWZIVVFjZVc3M1N0bThwVzNCbVQ4NVVVZ0tuaktlbDlaL2U4WTJxeGNK?=
 =?utf-8?B?RmlJUnJCWEdwSThpcWtOQTNUZjMycXVISjBwU09PUmpZazNCLytMOFU5UDVK?=
 =?utf-8?B?MHF4UFBBWGhJWjRNVHl4bUwrTWwwQU9TNUxGZnlMeHBIdFZFOGtORFJXc25n?=
 =?utf-8?B?NDdEMXBWQjYxTndIUVdnaVV6Q0JkTVdKSDJZZUJNM3FIb200OUt2SDJ3Z0Y5?=
 =?utf-8?B?YnN2VmkxS1c3TlEvQVNreG5ySTluTE9QVkYwNHY2cFFGOWdUMTE1ZWZZR1hQ?=
 =?utf-8?B?a3FWaWxUVlJLSVN1SmhtMmcvdFpITk16cTBwMEVlOXlXQzVEN0NvR1Fva1pH?=
 =?utf-8?B?bis1Q25hQ1Z0cjdIZDE1RUpiWUE3cXVSdlR0OU9veGg0c1dqQU45Z3V3OFpq?=
 =?utf-8?B?Zng5SVlPOHByVXlRTzdmZTJLdkludEtPQzRLcGFWc1QzSHlSTGJGVDBkazlN?=
 =?utf-8?B?cVBKTSt0QlIwbU9CR2xyVmVGRTlSQktYR3R1Qld2cHVpV3R1WiswQ2FlRDZD?=
 =?utf-8?B?QWQ4TU9UTy9VWXZJWTBJY0c3NmZxMi9KR0RGTERNRFo2Vi9PdC9ZNmNiWERW?=
 =?utf-8?B?WjY5N24xWnozZ2RTSWk0QjFmSTQ3ZUw1MjRET2d0MjZ3K2NjTHhZVHZLbTJU?=
 =?utf-8?B?RnR5RHRNeVZtTGZ1NDZBemw0U205WEVqL0U2eDBzMjZIWHZrMEVJQzFPVGRG?=
 =?utf-8?B?ZXkrd0hFcjU4U0pvd3VOTTZwNFlPcXk1NWhvSGd6MjRTbTBHRlp3NmNPZ1Fm?=
 =?utf-8?B?NDZxT1hBL1dMZ1FldGhOeEVJU0pUQVgxQ3ltT3UrR3d3MHp5c0lxcWpKTUNQ?=
 =?utf-8?B?dXpBRzRrS25ZWG9MNGxsb3Nja2VtNW9iUzNST0dIV25IcWcvRlU0bFEvUHBC?=
 =?utf-8?B?Zk92M1ZIV3p5cHp0Qkg1UkJWWktvYVg0U0txUHMwMXZLVmkrelVkZngzcmgr?=
 =?utf-8?B?Q0Y0NUxSSkticjdwdVkwaUtVSGZuZituVHRadi82eDQ1SWJsbTFpOEFEaWtW?=
 =?utf-8?B?cUhoS2FZV3B3TlBCWTNmSWwyQmt5d1MrUzgwZC94cHE0MW9JcGZ6SHdBL1B2?=
 =?utf-8?B?REhsUUp3V0sycU5pd3ZkZ1FDdm8ydnlORkx4SVpBNWkvRHVFcjVCaTllY3B1?=
 =?utf-8?B?dm9nLytQbjd1Wm80ckdnbllFV1lMRXp5L29Qci9HbFIwZG9wSjQyRllyMHVy?=
 =?utf-8?Q?mZSABYOiyBrgk+5nWDWhIsyd+qZk+bxVaE61GGP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1b7436-1822-413d-8074-08d989753834
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2021 09:31:20.0692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z1CU7+XnRAm5La+BS8PwqVlsG4jqoOshHUh+uO6lyzxMqa0JZxQwsoe1sM5HWJaapgEjdi2dTsJRKFbZF89YM5vP/FIyH0CGzwZHo0MJEp8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5410
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Wait PSR2 get out of
 deep sleep to update pipe
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



On 10/6/21 11:04 PM, Souza, Jose wrote:
> On Wed, 2021-10-06 at 11:50 +0300, Gwan-gyeong Mun wrote:
>>
>> On 10/6/21 2:18 AM, José Roberto de Souza wrote:
>>> Alderlake-P was getting 'max time under evasion' messages when PSR2
>>> is enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
>>> period of time longer than VBLANK_EVASION_TIME_US.
>>>
>>> For PSR1 we had the same issue so intel_psr_wait_for_idle() was
>>> implemented to wait for PSR1 to get into idle state but nothing was
>>> done for PSR2.
>>>
>>> For PSR2 we can't only wait for idle state as PSR2 tends to keep
>>> into sleep state(ready to send selective updates).
>>> Waiting for any state below deep sleep proved to be effective in
>>> avoiding the evasion messages and also not wasted a lot of time.
>>>
>>> v2:
>>> - dropping the additional wait_for loops, only the _wait_for_atomic()
>>> is necessary
>>> - waiting for states below EDP_PSR2_STATUS_STATE_DEEP_SLEEP
>>>
>>> v3:
>>> - dropping intel_wait_for_condition_atomic() function
>>>
>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    .../drm/i915/display/intel_display_debugfs.c  |  3 +-
>>>    drivers/gpu/drm/i915/display/intel_psr.c      | 52 +++++++++++--------
>>>    drivers/gpu/drm/i915/i915_reg.h               | 10 ++--
>>>    3 files changed, 36 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> index 309d74fd86ce1..d7dd3a57c6170 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> @@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>>>    };
>>>    val = intel_de_read(dev_priv,
>>>        EDP_PSR2_STATUS(intel_dp->psr.transcoder));
>>> -status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
>>> -      EDP_PSR2_STATUS_STATE_SHIFT;
>>> +status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
>>>    if (status_val < ARRAY_SIZE(live_status))
>>>    status = live_status[status_val];
>>>    } else {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 7a205fd5023bb..ade514fc0a24d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -1809,15 +1809,21 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
>>>    _intel_psr_post_plane_update(state, crtc_state);
>>>    }
>>>
>>> -/**
>>> - * psr_wait_for_idle - wait for PSR1 to idle
>>> - * @intel_dp: Intel DP
>>> - * @out_value: PSR status in case of failure
>>> - *
>>> - * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
>>> - *
>>> - */
>>> -static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>>> +static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>>> +{
>>> +struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>> +
>>> +/*
>>> + * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
>>> + * As all higher states has bit 4 of PSR2 state set we can just wait for
>>> + * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
>>> + */
>>> +return intel_de_wait_for_clear(dev_priv,
>>> +       EDP_PSR2_STATUS(intel_dp->psr.transcoder),
>>> +       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
>> Under the DEEP_SLEEP state, there are IDLE, CAPTURE, CPTURE_FS, SLEEP,
>> BUFON_FW, ML_UP, SU_STANDBY, etc. In this case, whether the evasion
>> messages are completely tested in the state that changes quickly I think
>> the test period is a little insufficient.
> 
> What is your suggestion of test for this?
> 
> I left my Alderlake-P running overnight(more than 12 hours) with a News website open.
> This website reloads the page at every 5 minutes, so it entered and exited DC5/6 states several times without any evasion messages.
> 
>> I think it may be necessary to test a little more or to have
>> confirmation from the HW person in charge.
> 
> I can file an issue for this but it will probably several weeks to get an answer.
> 
Yes, I am not disparaging what you tested.
However, since the current code confirms that only the 31st bit of the 
PSR2_STATUS register is changed to 0 operationally,
it does not guarantee that the tested use cases have been tested for 
IDLE, CAPTURE, CPTURE_FS, SLEEP, BUFON_FW, ML_UP, SU_STANDBY, and 
FAST_SLEEP states.

I can't think of a way to test each of the above states right now, but 
what I can suggest is that "intel_de_wait_for_clear(dev_priv, 
EDP_PSR2_STATUS(intel_dp->psr.transcoder), 
EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50)" works normally. After that, can 
you put a code that prints the current PSR2 status?

If so, I think it will be easy to analyze the problem in case evasion 
messages occur again after this code is applied later.
If additional confirmation from the responsible HW developer is received 
at a later time, it is thought that future work such as deleting the 
code that outputs the newly added current PSR Status at that time will 
be possible.

Br,
G.G.
>>
>> [PSR2_STATUS]
>> +-------+------------+-------------------------------------------------+
>>> Value |    Name    | Description                                     |
>> +-------+------------+-------------------------------------------------+
>>> 0000b|    IDLE    | Reset state                                     |
>> +-------+------------+-------------------------------------------------+
>>> 0001b|   CAPTURE  | Send capture frame                              |
>> +-------+------------+-------------------------------------------------+
>>> 0010b|  CPTURE_FS | Fast sleep after capture frame is sent          |
>> +-------+------------+-------------------------------------------------+
>>> 0011b|    SLEEP   | Selective Update                                |
>> +-------+------------+-------------------------------------------------+
>>> 0100b|   BUFON_FW | Turn Buffer on and Send Fast wake               |
>> +-------+------------+-------------------------------------------------+
>>> 0101b|    ML_UP   | Turn Main link up and send SR                   |
>> +-------+------------+-------------------------------------------------+
>>> 0110b| SU_STANDBY | Selective update or Standby state               |
>> +-------+------------+-------------------------------------------------+
>>> 0111b| FAST_SLEEP | Send Fast sleep                                 |
>>
>> +-------+------------+-------------------------------------------------+
>>> 1000b| DEEP_SLEEP | Enter Deep sleep                                |
>> +-------+------------+-------------------------------------------------+
>>> 1001b|   BUF_ON   | Turn ON IO Buffer                               |
>> +-------+------------+-------------------------------------------------+
>>> 1010b|   TG_ON    | Turn ON Timing Generator                        |
>> +-------+------------+-------------------------------------------------+
>>> 1011b| BUFON_FW_2 |Turn Buffer on and Send Fast wake for 3 BlockCase|
>> +-------+------------+-------------------------------------------------+
>>> +}
>>> +
>>> +static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>>>    {
>>>    struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>>
>>> @@ -1827,15 +1833,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>>>     * exit training time + 1.5 ms of aux channel handshake. 50 ms is
>>>     * defensive enough to cover everything.
>>>     */
>>> -return __intel_wait_for_register(&dev_priv->uncore,
>>> - EDP_PSR_STATUS(intel_dp->psr.transcoder),
>>> - EDP_PSR_STATUS_STATE_MASK,
>>> - EDP_PSR_STATUS_STATE_IDLE, 2, 50,
>>> - out_value);
>>> +return intel_de_wait_for_clear(dev_priv,
>>> +       EDP_PSR_STATUS(intel_dp->psr.transcoder),
>>> +       EDP_PSR_STATUS_STATE_MASK, 50);
>>>    }
>>>
>>>    /**
>>> - * intel_psr_wait_for_idle - wait for PSR1 to idle
>>> + * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
>>>     * @new_crtc_state: new CRTC state
>>>     *
>>>     * This function is expected to be called from pipe_update_start() where it is
>>> @@ -1852,19 +1856,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
>>>    for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
>>>         new_crtc_state->uapi.encoder_mask) {
>>>    struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>> -u32 psr_status;
>>> +int ret;
>>>
>>>    mutex_lock(&intel_dp->psr.lock);
>>> -if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
>>> +
>>> +if (!intel_dp->psr.enabled) {
>>>    mutex_unlock(&intel_dp->psr.lock);
>>>    continue;
>>>    }
>>>
>>> -/* when the PSR1 is enabled */
>>> -if (psr_wait_for_idle(intel_dp, &psr_status))
>>> -drm_err(&dev_priv->drm,
>>> -"PSR idle timed out 0x%x, atomic update may fail\n",
>>> -psr_status);
>>> +if (intel_dp->psr.psr2_enabled)
>>> +ret = _psr2_ready_for_pipe_update_locked(intel_dp);
>>> +else
>>> +ret = _psr1_ready_for_pipe_update_locked(intel_dp);
>>> +
>>> +if (ret)
>>> +drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
>>> +
>>>    mutex_unlock(&intel_dp->psr.lock);
>>>    }
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index a897f4abea0c3..e101579d3a4d8 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -4700,11 +4700,11 @@ enum {
>>>    #define  PSR_EVENT_LPSP_MODE_EXIT(1 << 1)
>>>    #define  PSR_EVENT_PSR_DISABLE(1 << 0)
>>>
>>> -#define _PSR2_STATUS_A0x60940
>>> -#define _PSR2_STATUS_EDP0x6f940
>>> -#define EDP_PSR2_STATUS(tran)_MMIO_TRANS2(tran, _PSR2_STATUS_A)
>>> -#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
>>> -#define EDP_PSR2_STATUS_STATE_SHIFT    28
>>> +#define _PSR2_STATUS_A0x60940
>>> +#define _PSR2_STATUS_EDP0x6f940
>>> +#define EDP_PSR2_STATUS(tran)_MMIO_TRANS2(tran, _PSR2_STATUS_A)
>>> +#define EDP_PSR2_STATUS_STATE_MASKREG_GENMASK(31, 28)
>>> +#define EDP_PSR2_STATUS_STATE_DEEP_SLEEPREG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
>>>
>>>    #define _PSR2_SU_STATUS_A0x60914
>>>    #define _PSR2_SU_STATUS_EDP0x6f914
>>>
> 
