Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6654239FE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 10:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BB66E575;
	Wed,  6 Oct 2021 08:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B546E575
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 08:50:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="226260139"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="226260139"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 01:50:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="568071955"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2021 01:50:15 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 01:50:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 6 Oct 2021 01:50:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 6 Oct 2021 01:50:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZjxgBpKBCaCigYuveLFy2WeqQh3n/YFNgdvKxaMZ8dd8RPihJF8QXFiR9nL1+FgxYha5MW7ht7iT13MDVUPo19Xjonpkr9RJO15eDy9F2Mr0DyobRT5Jox4GGMnHa5AmPr8GtJPH1pUw/NfzYlqI9biNqTLz+yRpSA/drf8wMhHExHS8mIG/Xsd7vztym2w5NKGS6UuIQJY3ac5AqNFRD0a+Iy3ITXEBhF7ob/pUyNXjHWZZVHg29mq5252TRxQbLYb6POwgBCydxIXos6v6g9ZGGx+gy46AEQgViW9zeimXXZPrqLiCfyzQjVZEY9urICMy5BajpnDxJCs7hg18zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHrYxaPeBlYYeD1Wlwm3GbSNyDsN8daBmlYuHgynD0o=;
 b=HkQKu8D3gItWD3kj0QzqOa7xbwG+iQiq7Ae3PheuZgVFG8nglG4m++g46XGA3uEz6Y5FRs7OPLH5IEhWPI94hfgQmowk7K86n92IW02HlevV2WumhnaYWj0nuIMkzyZFyAJrIzSBtF667W0AHdjU/rde9s6whEvdWR3VHxvB+p6mrOXKPbjF14VQVveyWqTYuyk12nCg+3J9NUD0jmetC+zPQiWpDYDMyTRMa0lEUkgTgjFVtTh89dJLmzF3m6sqAqKS3eUar4v9csD1+RUHtMGCn7ciu23B40CcOv5/ADLUP1SOX86wWd8oYnZDe0wL/D8/r7QJCrfSDDeu0+hdcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHrYxaPeBlYYeD1Wlwm3GbSNyDsN8daBmlYuHgynD0o=;
 b=lRkgPo5YX9P1LnBzOmd1bMEy1XUopN9j0kkD5Ni/gvzoddul6Qrwto7fHam2/bEf+U10P9UP+X/gP2CG+44YIALcz7Am1w1oCSgDd71PHNbh+P+7iHWva3XEe4/JN9clY2nrRfXwnEr6XOTo2Ssi2lGH7HQ8KfoLxim2Nfb9yEM=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4296.namprd11.prod.outlook.com (2603:10b6:610:3c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Wed, 6 Oct
 2021 08:50:13 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%5]) with mapi id 15.20.4587.019; Wed, 6 Oct 2021
 08:50:12 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20211001011218.276557-1-jose.souza@intel.com>
 <20211005231851.67698-1-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <41dfbcd5-736e-49fa-c870-64d1ad7d4464@intel.com>
Date: Wed, 6 Oct 2021 11:50:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20211005231851.67698-1-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6P192CA0009.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::19)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.195] (134.134.137.81) by
 DB6P192CA0009.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.15 via Frontend Transport; Wed, 6 Oct 2021 08:50:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 019d8a26-50c0-445a-92ca-08d988a64f18
X-MS-TrafficTypeDiagnostic: CH2PR11MB4296:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB42964FF2658C1319D9B54418B8B09@CH2PR11MB4296.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tZ2pTtd1FIRzO1r4EhIzy5bXdSxbIyds4S+m1Zxhsd5iO0NHEpckhE4UfKLqTlHT5yJPBLee3xouyWM76VUlvYXEi77/NS3g/pIiDJ9dPnGvMk0G/eg24rooGzwwWMMSBIbGXdF/TPuYjrwlpvE/0cUrjtx2CPd99/m1tYGQ/ktgQPW08a22zVZqu8VP99MWzcCBXRc2xqMij7gximylMWFr62xIca4/CAy6jEDiSU6EjVtdTe7MLkPVXUp+XRQIrtU05W40bP/V/PNVjdD11iVpBEjQ0YyqHHIAIYac1w422VnNmwuHUgkDmJdP6U6Gc0793beDdFzTKC6skVSDq7iRt/az7Jj5zD5wD26SqG7OOi1HLrnHhmOSwCu+c3utS27gnmdMl87JdpkbHfyPFslrXguy4W6z7IivcLbQoJXFacyhn7wxqN+es3n8f5I0nelZRIBfwL3CqPpHMQHbbXyPOlgmytMwfEA6hALcY+TiGU1GPOTW8k06wdOAbgl9UQBwYpZa9oe1BwyNygy5MLNCRoCKIQNNaEl/OXFuQefvemsP6/gOTsSFTWbjJkePrclBFtojiHL4IG68IPjjsCRuPXgv6Cp61vAWO0ohS7f0p1WyDhmJhIjN0VD9CuA5FLTSFbAe+ihJ1n38gzQkgYLEgNrkXGuGn/QVQJ1fuIYYQMrWaKP/0G4WTRtJT1Vgzqrk6/VF5gGB4zVm15f3FaM/fDKcjwqhyE/KeDSx2cA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(16576012)(2616005)(5660300002)(508600001)(38100700002)(31696002)(4326008)(86362001)(956004)(316002)(31686004)(36756003)(15650500001)(83380400001)(26005)(66946007)(66556008)(66476007)(53546011)(66574015)(6666004)(186003)(2906002)(6486002)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkRHbFlENGFlWjlEZFV3dndsdCtZZHkwd0dUdVh4ek9ZZTAwYWc1bDhGQVg0?=
 =?utf-8?B?NUdtUlFIbFJLV3l1STd4MDlmT1k0SEhiazJpMHRPM1NCb3NHdFJUVVdMbThS?=
 =?utf-8?B?Zld3UGc3SC80cVZiUWNhUUFJZDd4L2pmdExPN3F5MUdQa0hnNTFnckJBKy9F?=
 =?utf-8?B?SkRQWmdGTW5HYU1BL2dYSXdQRHJHWVk1SUxBS1lQTWZ2d0dSQkd4RkpwY2dR?=
 =?utf-8?B?WWdONVQ1L0dWbGs3bi94eXZZWjdSQ21odEtnMkdIWW96UTN4bnMzMG41WkZu?=
 =?utf-8?B?UVU4bW9PYzZZR1Vna2RyQ1ZPMU9QOG1lMkpwc3czMnpYcTRHZG9Kc2dHQVF2?=
 =?utf-8?B?NElldmh1R3ZvSjhoVjREbGJBT1BybERtV3hENWhhdG0vUXQrRlIyQUtaZ3R6?=
 =?utf-8?B?cnB2a0JBa1FWemlKV0tVM2pmcmk1VjhITUpDSTMwbWZkNWlKUURaNlh1ZUYv?=
 =?utf-8?B?UW9HTjNXY3FCUWtvTVNuY1BsYW5nTDcxS0FiTjFZV0xOeGg1QkxSd0tNT3Jk?=
 =?utf-8?B?MEo2TWptM09NRGNWRUZHRk1iMWVaQjZEYjkvUnhXVkM3SVprSWEyd0dDcURY?=
 =?utf-8?B?M0dLejIxUHJNbytQWXB1YkRNU1JjYnFUQi81cWdqanBUYk5KcWRuUHhheGty?=
 =?utf-8?B?STg0Z01DVllLVXJpT2hLbm5PUHlsbEFXa2syc090b0VRK2JSQU9MKzNmb0NX?=
 =?utf-8?B?bk1oWUkyMkxFVzNxQXFnK0lnOFJMU0MrcFpXSVVoMzVpa1hLMWFJZGtkb0w5?=
 =?utf-8?B?eFlhMlN3Smw5VTQ3aTlLaFV2UHZZdnliaytqR25TUy9RNjRTYm9MRDBNVkxQ?=
 =?utf-8?B?SVdCdE9oT0RhWEhyVmlXZlE5RWErVW1GYXFyK2w4QlY3UUQwSHErU1czM1ZN?=
 =?utf-8?B?SzMyRFNTOGthczRqWVlrVkViZXNmOFRBQ3FaVm40RkwrNzU3OGtJRnRxZkdD?=
 =?utf-8?B?VTB6TjZWNkdFNVc5b0tOb2tyMU1jRFBaNUpJcllVb1lnUVdicnExU1BiV0lX?=
 =?utf-8?B?U0MzOEkyVXlRdWw5SzlnZTNjdDgxL3JxNENnd1c0UVJlSGRVb0FkakxFanZG?=
 =?utf-8?B?SkFJdEszdjNESkJ3UVlHMWJpTjNxOVQ1MTFPTlZla0QzWnZVVmhJTFQ5eTJ0?=
 =?utf-8?B?c2RDR2tsaGtwWkgzUUpnN3k2amVYOWYwbEF3N0JPamtqNVRoZG5HdHNaa2sv?=
 =?utf-8?B?Q0pwSlA5K2lnd1QyNmZtS3UzUnRDTVllTTlQSFg2V3laaDMvZU5xWTZ2NWpF?=
 =?utf-8?B?eVhxNFd2bXdsdFVkZnVPVXhCUnN6djRoMk03eFBESWtuR2ZVUUQ2Rzd5SWFV?=
 =?utf-8?B?WFIrZEEzY01zV3pkRlNnWXpuUjhKR1U2T2JoQXptWlJ4MkxiNjN4UjNueVQ4?=
 =?utf-8?B?dnppK25rc0tuSGRsMk9HazJ3WHFLbUlEQkpSLytJM3J4QmJFN3oyekJzOEFl?=
 =?utf-8?B?bHNySmxXU0RjV0UxdVVSdnVoNTJUZDMzSFYycHhsQzJJSE1Hd2VBc2RrcUNz?=
 =?utf-8?B?Z3Exd2FGRVQ0MDBGN2pmS3ltNnh0N3pqcmREYVhIako2d1J2YVNYZVpWWm9n?=
 =?utf-8?B?MksyYU1PVnBjMkY1NGlyYWErZlhETVJpMHV1cExGL2NjTW1MYWJESzBqN3Zq?=
 =?utf-8?B?QVNyZkFFZy9xOU01eENmUG9TeFNnbTlVQ1dKaU9hNVduaXVxaEx2RzY1N1l1?=
 =?utf-8?B?TmxtOVBjYXZ2NmVSMGZ1YlY4MkdFc21TaHJTVFVKam5ORW81elIra1lBKzAy?=
 =?utf-8?Q?sPXP814/NBKq0Ykpj0DQ2CarwVOdhHX1vxJwUrg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 019d8a26-50c0-445a-92ca-08d988a64f18
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2021 08:50:12.5930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exeA+CdIp/64+3isXWGzbTMe7sl+OfxffV8AsSokLmxpt9kj2MYbV/DknDOQNSSmMVN5Fhzbk+h93Yqnc2Z3AGVdGZnVHbaAj71SVlqgv2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4296
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



On 10/6/21 2:18 AM, José Roberto de Souza wrote:
> Alderlake-P was getting 'max time under evasion' messages when PSR2
> is enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
> period of time longer than VBLANK_EVASION_TIME_US.
> 
> For PSR1 we had the same issue so intel_psr_wait_for_idle() was
> implemented to wait for PSR1 to get into idle state but nothing was
> done for PSR2.
> 
> For PSR2 we can't only wait for idle state as PSR2 tends to keep
> into sleep state(ready to send selective updates).
> Waiting for any state below deep sleep proved to be effective in
> avoiding the evasion messages and also not wasted a lot of time.
> 
> v2:
> - dropping the additional wait_for loops, only the _wait_for_atomic()
> is necessary
> - waiting for states below EDP_PSR2_STATUS_STATE_DEEP_SLEEP
> 
> v3:
> - dropping intel_wait_for_condition_atomic() function
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |  3 +-
>   drivers/gpu/drm/i915/display/intel_psr.c      | 52 +++++++++++--------
>   drivers/gpu/drm/i915/i915_reg.h               | 10 ++--
>   3 files changed, 36 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 309d74fd86ce1..d7dd3a57c6170 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>   		};
>   		val = intel_de_read(dev_priv,
>   				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
> -		status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
> -			      EDP_PSR2_STATUS_STATE_SHIFT;
> +		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
>   		if (status_val < ARRAY_SIZE(live_status))
>   			status = live_status[status_val];
>   	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7a205fd5023bb..ade514fc0a24d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1809,15 +1809,21 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
>   		_intel_psr_post_plane_update(state, crtc_state);
>   }
>   
> -/**
> - * psr_wait_for_idle - wait for PSR1 to idle
> - * @intel_dp: Intel DP
> - * @out_value: PSR status in case of failure
> - *
> - * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
> - *
> - */
> -static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
> +static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +
> +	/*
> +	 * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
> +	 * As all higher states has bit 4 of PSR2 state set we can just wait for
> +	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
> +	 */
> +	return intel_de_wait_for_clear(dev_priv,
> +				       EDP_PSR2_STATUS(intel_dp->psr.transcoder),
> +				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
Under the DEEP_SLEEP state, there are IDLE, CAPTURE, CPTURE_FS, SLEEP, 
BUFON_FW, ML_UP, SU_STANDBY, etc. In this case, whether the evasion 
messages are completely tested in the state that changes quickly I think 
the test period is a little insufficient.
I think it may be necessary to test a little more or to have 
confirmation from the HW person in charge.

[PSR2_STATUS]
+-------+------------+-------------------------------------------------+
| Value |    Name    | Description                                     |
+-------+------------+-------------------------------------------------+
| 0000b	|    IDLE    | Reset state                                     |
+-------+------------+-------------------------------------------------+
| 0001b	|   CAPTURE  | Send capture frame                              |
+-------+------------+-------------------------------------------------+
| 0010b	|  CPTURE_FS | Fast sleep after capture frame is sent          |
+-------+------------+-------------------------------------------------+
| 0011b	|    SLEEP   | Selective Update                                |
+-------+------------+-------------------------------------------------+
| 0100b	|   BUFON_FW | Turn Buffer on and Send Fast wake               |
+-------+------------+-------------------------------------------------+
| 0101b	|    ML_UP   | Turn Main link up and send SR                   |
+-------+------------+-------------------------------------------------+
| 0110b	| SU_STANDBY | Selective update or Standby state               |
+-------+------------+-------------------------------------------------+
| 0111b	| FAST_SLEEP | Send Fast sleep                                 | 

+-------+------------+-------------------------------------------------+
| 1000b	| DEEP_SLEEP | Enter Deep sleep                                |
+-------+------------+-------------------------------------------------+
| 1001b	|   BUF_ON   | Turn ON IO Buffer                               |
+-------+------------+-------------------------------------------------+
| 1010b	|   TG_ON    | Turn ON Timing Generator                        |
+-------+------------+-------------------------------------------------+
| 1011b	| BUFON_FW_2 |Turn Buffer on and Send Fast wake for 3 BlockCase|
+-------+------------+-------------------------------------------------+
> +}
> +
> +static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> @@ -1827,15 +1833,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>   	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
>   	 * defensive enough to cover everything.
>   	 */
> -	return __intel_wait_for_register(&dev_priv->uncore,
> -					 EDP_PSR_STATUS(intel_dp->psr.transcoder),
> -					 EDP_PSR_STATUS_STATE_MASK,
> -					 EDP_PSR_STATUS_STATE_IDLE, 2, 50,
> -					 out_value);
> +	return intel_de_wait_for_clear(dev_priv,
> +				       EDP_PSR_STATUS(intel_dp->psr.transcoder),
> +				       EDP_PSR_STATUS_STATE_MASK, 50);
>   }
>   
>   /**
> - * intel_psr_wait_for_idle - wait for PSR1 to idle
> + * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
>    * @new_crtc_state: new CRTC state
>    *
>    * This function is expected to be called from pipe_update_start() where it is
> @@ -1852,19 +1856,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
>   	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
>   					     new_crtc_state->uapi.encoder_mask) {
>   		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -		u32 psr_status;
> +		int ret;
>   
>   		mutex_lock(&intel_dp->psr.lock);
> -		if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
> +
> +		if (!intel_dp->psr.enabled) {
>   			mutex_unlock(&intel_dp->psr.lock);
>   			continue;
>   		}
>   
> -		/* when the PSR1 is enabled */
> -		if (psr_wait_for_idle(intel_dp, &psr_status))
> -			drm_err(&dev_priv->drm,
> -				"PSR idle timed out 0x%x, atomic update may fail\n",
> -				psr_status);
> +		if (intel_dp->psr.psr2_enabled)
> +			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
> +		else
> +			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
> +
> +		if (ret)
> +			drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
> +
>   		mutex_unlock(&intel_dp->psr.lock);
>   	}
>   }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a897f4abea0c3..e101579d3a4d8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4700,11 +4700,11 @@ enum {
>   #define  PSR_EVENT_LPSP_MODE_EXIT		(1 << 1)
>   #define  PSR_EVENT_PSR_DISABLE			(1 << 0)
>   
> -#define _PSR2_STATUS_A			0x60940
> -#define _PSR2_STATUS_EDP		0x6f940
> -#define EDP_PSR2_STATUS(tran)		_MMIO_TRANS2(tran, _PSR2_STATUS_A)
> -#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
> -#define EDP_PSR2_STATUS_STATE_SHIFT    28
> +#define _PSR2_STATUS_A				0x60940
> +#define _PSR2_STATUS_EDP			0x6f940
> +#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(tran, _PSR2_STATUS_A)
> +#define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
> +#define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
>   
>   #define _PSR2_SU_STATUS_A		0x60914
>   #define _PSR2_SU_STATUS_EDP		0x6f914
> 
