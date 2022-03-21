Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D024E3470
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 00:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6A310E4D4;
	Mon, 21 Mar 2022 23:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035A410E4D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 23:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647905698; x=1679441698;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wx9EiqafKCHWPJc9BtCW1gL0kAcWHNWENGP+osg93oA=;
 b=n+Oi21kLLiiZmEXx7h2Jy1rw+Own9ol/FB+cLqKJonpGBdim0GJXq9cc
 YgbG1A1Ud1WwUwfZQBtpdRwuBy5c73cY7e3nwx7ldhkc+2qVhkwahhCU8
 s9vOlzbzoWUnwwUYPhmhNSaYbKdrWklh4zWDN9voCqbrpLJJVpOG91KKH
 5aqt2BUAesbDDpVcYTW2gYtb9UBDlu8ROI3ipKGlWm6mLbbJq4Hr1huZD
 gpd9bPevg3RB59Jvb3Lx3F5lmgNo20rgoVVaVLI3nAsqs+vaM+qQqCrr5
 qdIioft8wiFNZ/zyJ0odRpFA2MEPtajf2sc9hF5GmL7MR/qet/PT1VvhL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="282504953"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="282504953"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 16:34:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="600658964"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 21 Mar 2022 16:34:56 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 21 Mar 2022 16:34:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 21 Mar 2022 16:34:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 21 Mar 2022 16:34:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WgGM4XhNOUbqfhOQ0WapJVf9GRwKeMe1J9TQKKD6jT6OAvTf1Eikw0pZ8AZ8QRuf/RtJ9uwAQPe1XfGyVK+F5RXln8Lor7TGl7jox8sIqtvWaO6+orq8VkaQrFPk0dTcuNRxmvDgowg6XmNnTSdIUgV5ZPUPYocC6ghhTHRMuoJ6rKbtwc9QlkALf+OpvHQOwrH+YmiULskGSJ/c/8sJ/hYXMAjbU7rKEotrCIwyRZUDaivCW98FHK7H1a3KNlwrucl9bgyKj1IZZpX1kkIQugfGz9jpzC2A/JoLfz2H15wcMz4/9zDKANrlzIGZnSRxpXzhqF1ckseGVkaFIyWEMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qcb2+t+XUHEil4v61WDqAl5jkpvFd+g8pq9ZueHqho8=;
 b=d3Em9tFynytVRm42UtZGZmVRRkthHLXwPTuR3MLBrwyxW27cojp2wNAzq/dEx7YO/jQXOpOZv16UMT7xl1VN7X3RXWlKxqJkaNClVqZcjnTWUqPRvRWXrjcY2/twNa79Z90dN5eru073k3ZWw0YrWr+zMQaG1e24k3P90zckFjHxyb7doTT5sEIBB5u3MawsHSYJrI4Gjm/8W1DqrSj73QmhDAF54daoIxCbxaUab23J/YixG1hPyA3fiIU5TTzMBFu0DNt4Q9iDyKaZjCrIjBOc32aWUVNRn3+Fto7cSYgu+aK11DD8ZcjDV1zTlHLKEJSHynY6whzMrNAdMI3XlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by BN6PR11MB1505.namprd11.prod.outlook.com (2603:10b6:405:c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Mon, 21 Mar
 2022 23:34:53 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::ce:25a6:4ecf:adc3]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::ce:25a6:4ecf:adc3%5]) with mapi id 15.20.5081.022; Mon, 21 Mar 2022
 23:34:53 +0000
Message-ID: <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
Date: Mon, 21 Mar 2022 16:34:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Casey Bowman <casey.g.bowman@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
In-Reply-To: <20220215234146.304035-2-casey.g.bowman@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CO2PR05CA0108.namprd05.prod.outlook.com
 (2603:10b6:104:1::34) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 056f2da9-598d-48e1-cdc9-08da0b936674
X-MS-TrafficTypeDiagnostic: BN6PR11MB1505:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB1505A866B9BFB535AEC1066DDD169@BN6PR11MB1505.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DnNNhCdnKb2xzii0UYMHjOTrwtBb0re3/fGGyjbpb6whESVLY42Xw4xp/7sDtDdZL8Up4YCR8Qm2UnvdqEkVPFqS56FAfWus98YJsqEyZw22DfMRh/htO8H9TNHV/OnsN/j9rcpeZkMv95iJClmoqbiglrhMcq5ATN5bPwMYxQ247RUGO1SADkLZsSn9QNxtiCtNnhb3v6nuNc8g3DHaTrzAOFPfJgVuJDJ0g0eIShz7FNPDzzRAFUu0MNZ1nPnFrxTddDKLAL4XwS6UxRChFW/zFptDgn9pSgXJ0CbuUvHCXY53hVpVM/1XAzt/L1Md1PeKNyAhDNgVxE3nUtnLkAhz2VCgSsvoffOWBHguMPx9ETUd/nJx4ITwjPZ/o1STz7logqGczvzArVrknWTWd986YtiWi469jgkBHSiL0Z4XFB2bXBmP50wADM7+osDrTwu+Cm0YoGiajUEj9ZrHZ9SrsX3G8MhtG7DI/n6LiS6SZi2aHPw4gGHSbR+81Ns2LQ98gP65hRdugnqMMzxBAbrQCAahI62VvlqLvK0ryQdJ9ZEVXBgYUWoxGqfLiSrrNgi5H1IqgkKKQettVKGuhUP0NdZzuE99R3Ilsy+tisYh1HEQZhgZcAeWweh7vJgAWZtD2KagqRsNZw4bAbswx+6jMaTkRkmiKDpXTbRKAv510d/lePtPOsDFWo/73AycH7O8TVDzIhja0u407mnU5yE3os2bQ3HyVwxjew7qb/c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(6512007)(6486002)(53546011)(2616005)(4326008)(66476007)(66946007)(8676002)(66556008)(26005)(31686004)(82960400001)(31696002)(6916009)(186003)(86362001)(38100700002)(8936002)(36756003)(6506007)(316002)(5660300002)(6666004)(2906002)(107886003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDQ5WGdJajlFalhBdUFLWENwRnRRRm54THFZVlhJN051UVA0RHVEUU8yNkFh?=
 =?utf-8?B?NU05aGtuaUJzWGc5LzUyQitVc0U4c05qdTNTcU1SR1VwVGVFN1NZTFdRNTBI?=
 =?utf-8?B?VTJlSXZvQWQxSWZUN2JyUkdoZWNaekppaGVxNHo4enhKOVpZbDAzSXJXMXdJ?=
 =?utf-8?B?cjNKWWErRkprYVZndWtSNzlrQlM5UU5UcFFFOStUOTFlM285cUprcFlOek04?=
 =?utf-8?B?ZEkvMDgxWS83WUFYK2wrZTBURWtXcVh1UVdhNTdUU1Ywa1NZNzk2QWZvc2ZE?=
 =?utf-8?B?Tk9DeVB2akZKY25rc2NFakFmYlA4UzdESDFtRjErblhvQ0NUWmxyRFk1dlFm?=
 =?utf-8?B?TCtnU01OdVpBZ3FuZkI2MzRpdUJpVDJUUko4TEMvNzJMcmVPdWVjajViaERm?=
 =?utf-8?B?RkYwWlFHTHdTSW5mUHFibmxWZ1lVa0pQSG1hWVBJTHByZnhGNk1Ta2l5aUZp?=
 =?utf-8?B?QnRSRmQwUUFNcVFaRHVRQU9FMUpmRTBhSlllcDJBa3VDRlBzQVJwNHhwMFBM?=
 =?utf-8?B?V1dPNUxYaVkreUhNTGRsQkVPWlJHSnRCc1Nwd1FYV3NqY0s3Y0lxRDNSSHpi?=
 =?utf-8?B?UEI2cHBCMzgzenRCc1lWS1RZYWVnVXRoaXhLaEpYK1JPMktvMTI1V0NCT29r?=
 =?utf-8?B?TzBVeTA2MnBNRHJ1RkxCUis3R0N5THZzUjRIdmZ2Z21vN04vT2huSGRNczQz?=
 =?utf-8?B?NGd1OS9aREFBZjZkMXhaTy9YemFyV2hXZjB0UkRBOFN4TERNUzJBTjMrNllC?=
 =?utf-8?B?Vy9PVUY5YU9IZ3dJRXRqcWFCSGJBV21TYWE3Y0dTQWhTc25wNnlGMTFWYmg1?=
 =?utf-8?B?cnNIczdTSzcwM0Vad3k5VlZpYlhyUFBqT2VIWFJ5akpoZGM0TDhKazlkYlMr?=
 =?utf-8?B?NjcxV29lZTRkM3VMZmp1cEpEak0zcTcvNC9TRVo2S1BWeWF2eEdHSld5OUMv?=
 =?utf-8?B?aGF0MXZvcmFzRnNCMjcxNW9JZ0x2QUw0SHhmczFOTitQNURsR2xOZzloT2hM?=
 =?utf-8?B?YkpMR2QzRmU3YzduMXZPNS8zY1MwQWkwVlFFN0I4OC91TG5Fb0ZKRXZLODdn?=
 =?utf-8?B?VnJiMytIQXlaN2M2bEMvTjR2OXkxY1dXTmcxcTVBK3EyVlNOai9MdTJodVZw?=
 =?utf-8?B?RUpRNjEwMGt1ellIVGM5eUgvWGhHUFdISFNsSjVLQkpSYUxyVUp0NGZIbFJG?=
 =?utf-8?B?aGgyRVNIcWh0b2s2KzVzOUJKT2hmZFVNbkZJcFNkOVgrZUtLVkpRV0tMYVNQ?=
 =?utf-8?B?UWprQUZPaVFBZk9Fc3JsTVpQUDVyeCs3eXZqb0tuRnVTc0dMbVkyWHhXMktT?=
 =?utf-8?B?MitWMWRsQ2dBeW91UmEzT2lZaEpibHJlbHhUSE9ZMVpRRVQxMndYUzRDQ3hN?=
 =?utf-8?B?VW0zdmVBM0lYZ2FBSytWa2h2djMzTTBnQzBsd0ZKS1VJb2hEUEE2MHAzZ08w?=
 =?utf-8?B?UkpNeGJqZDJRY01EaHpObEdrcTljUG0veUVRR24zRWpCV1dERTQxZ014TTJO?=
 =?utf-8?B?eWhTaG1HQmVCYXVKcTI5bC9NSTZqejhId2RHeWpSeE5kRitLdG9oNDUxSmdF?=
 =?utf-8?B?cmNvelh1TjYrR1hIVDlnYnFkd1Zham5qblFXMWRaeFl6YjFUT1d4VnlKRitw?=
 =?utf-8?B?ODBPRjNoOWpOTk1oVGxvSnlXb1dYdkV0VkNCN2ZOTXE0MVVYOHE0Umwrclhq?=
 =?utf-8?B?TDFUSHR2Z3lYMG1ESUIyMjVLQkV2L1A4RTczMHc3TFFiZ0ZLRzR6NmkrWHA1?=
 =?utf-8?B?WHBGdW4xY0xjcTBKa2pqbXhVenVDMXNGVWZyWmd0UFVTQjlYaktaeHhxLys4?=
 =?utf-8?B?WXo2WnhMQjZCNnNqTjNCcnRsUE81UDJFNDRlcUx2NVViTlNmakFObEh0R1RD?=
 =?utf-8?B?WmNUdHN1dG1YbHdkNkdTSWZET1RBTm10NVJ6TXpBNXRERTR2RUxxbFVQQ01p?=
 =?utf-8?B?Z3FiTCt2bjVmZWFLU0N0UFIyekN5QWtNcGs5YnZLMlNHUXZMNnY0VU9heHFD?=
 =?utf-8?B?cmxPemliTWp3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 056f2da9-598d-48e1-cdc9-08da0b936674
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2022 23:34:53.6187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uKgTvmvGG86RS3RlgX/hKOhv/SeLJilBdfwr9LY2WOUnY32AjJ8S/TZO57Tzz66GsCTuSk6kn5HVRMZNJRVvi00FjsntXHD2Jps1E3AR5vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1505
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH v3 1/1] i915/drm: Split out x86/arm64
 for run_as_guest
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, michael.cheng@intel.com,
 daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wanted to ping this older thread to find out where we stand with this patch,
Are we OK with the current state of these changes?

With more recent information gathered from feedback on other patches, would
we prefer changing this to a more arch-neutral control flow?

e.g.
#if IS_ENABLED(CONFIG_X86)
...
#else
...
#endif

Would we also prefer this RFC series be merged or would it be preferred to
create a new series instead?

Regards,
Casey

On 2/15/22 15:41, Casey Bowman wrote:
> Splitting out run_as_guest into platform-specific functions
> as arm64 does not support this functionality.
>
> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 1bca510a946d..fdec2b025540 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1381,10 +1381,18 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define INTEL_DISPLAY_ENABLED(dev_priv) \
>   	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
>   
> +#if IS_ENABLED(CONFIG_X86)
>   static inline bool run_as_guest(void)
>   {
>   	return !hypervisor_is_type(X86_HYPER_NATIVE);
>   }
> +#elif IS_ENABLED(CONFIG_ARM64)
> +static inline bool run_as_guest(void)
> +{
> +	/* Not supported for arm64, so we return false  */
> +	return false;
> +}
> +#endif
>   
>   #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
>   					      IS_ALDERLAKE_S(dev_priv))

