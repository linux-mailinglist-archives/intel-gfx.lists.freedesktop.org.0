Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0148B619AC0
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 15:59:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C33D10E856;
	Fri,  4 Nov 2022 14:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D39010E856
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 14:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667573959; x=1699109959;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=lHWcjiDzNU+ywe3gn731kj80CixpJKo12XUUPq3+A44=;
 b=cXVhrFXW1t6dl2LeyRw0JGR2/mYdjh+FS8IrsqG0bLJkHwSlmpKE3j8/
 JNot8WtjH6dQUQOWz9UwHBAarQ9DYHiAptmmV/b42OoPJN+P5lNVNVHJp
 TjpXPgYqhgjZu2QkWUI/2pJQ7nQJlEDsIG9XsFcGvHdmsKbEBXPObmUuT
 NRZxFLnHqDQIEvZ5Id1OoDJJNYJCFdiht8tv7ozV09BPfZZFTIi3NvYxM
 PyrVsgq63GWN0J03pJQnyux7JEkmBqXE22hS3btdZq0KDNIzyZyMnD52+
 x1fsKIbZQ6Lwjz2kfK9n7Bn42LajWBZ7e3jIUZZfGGbT+kjehND1+3451 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="293310971"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="293310971"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 07:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="964370591"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="964370591"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 04 Nov 2022 07:59:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 07:59:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 07:59:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 07:59:16 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 07:59:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOvwDc0z9vvjiEXcuJt2mCdGAhlVCvqXIq0pG1ecj6AuFefL7B8O5HfREg8V9Upv26hnuTo+1+d3L4Z7YSylLeEQHzHqPy4rdvIaEM7ovKJnBM6aSjN3RY8xEJq+V0aThkd117EZbKhQesmu9a7dLUBKOblJkzlWoiSaCBARcAcRlk6L3JY45ReVj/ztxD0w8PXKRF8HP+pgiqpQQwReXqC/JjY1inimDD2ahHpkAS1CyeIym5sWJXd61xJ12ZZB3jIdXn9eeb9CNOqo7OXBy+xslCqWa6QAd8s94ixQRY09HVOjf8BTfn8hgrjNP+apBytdn1O7cTcrLDC07MyMiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KOGkhMf7inz2CY4tPXWQcO8pWEYhKdpF6REq2fOEHyc=;
 b=TT7e1YWyMBeK/1JsbMKqbPtWKJwg3vc/tXNzv6Pu9wJqSJ/k+B2XFHL/FBoNHZlp3Y7NgsaEZtuXlT+PQyCERFfTtpZ7Sn0m53SZQGiAyjQYV+hIgSxbJKabb540aGKcuRfRfKQVtsi5vQZLSgG2i2cIc/MEof5/JUQfJkf56FkFj5TgEUIZeSEZ0mU2/vEPYwYyMNaT648EUXk68cWZAAvzCPn3Es2KxGqHm67NMdGDKXuWflz3vWc9Yx/2vT7hAHb698kqE0BHx8hWcflrVO9Pb3d1fDklPcCfxDr25fSYcVWAB6lOnPAod01ERxYt7ZepOd1PINP90/gVMODMfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.22; Fri, 4 Nov 2022 14:59:14 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 14:59:14 +0000
Date: Fri, 4 Nov 2022 07:58:43 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y2UoozJ4zxoQxNKC@unerlige-ril>
References: <20221103001149.1203285-1-umesh.nerlige.ramappa@intel.com>
 <0a0f1b3e-eddf-9b7d-fc09-f6f097592bed@linux.intel.com>
 <Y2QDsHVX9phoVfC3@unerlige-ril>
 <2cec4092-efe0-5291-b14c-6e618e334b8c@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2cec4092-efe0-5291-b14c-6e618e334b8c@linux.intel.com>
X-ClientProxiedBy: BY3PR10CA0012.namprd10.prod.outlook.com
 (2603:10b6:a03:255::17) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4531:EE_
X-MS-Office365-Filtering-Correlation-Id: c5cc8d2b-8504-4621-a5d8-08dabe75237f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hYQHwsGW4yhgRzc1Ed8szqW3ZpzhlNBlfmajWhY+mZSN8H0nOb7WBxa8FT+/oChsmZ3a10W5soyxqGXDz7cQVRLNHLJSymrTj63rea/GNGhLIVMLtk+WV9V39aYdEJEqtysBrUMnPaVuyS2mkEWf7xUFR9jj3EeWHpq4VFv29R+kj6GYY1+56to4yn+z5mxn+30V0/bjhztsaG7DoNEe5T34FtOpwkwzDn0QuNDaTEB0Qma5vIw8fSYwGEm7fx4YCDik6pXVuHCNOuF5OOSMEMsKAO6wV7nkHEt9+LVJGoKQQ1VDgOQoXtmHkfiX5FjEnbOCrbvBP6woyXUVM7smxpRQeGaoYWQ0W0T780U33l1XEtwqHUcsm47FNtNP9YZRJKqa80aAb3CSPLoNlX0of9QeonXA6QRfsB1EL/qZlBsKl8w3jicw4DJg5+GsQ4aWccYyVjIC6OfAxM6gGfQ76NVnIsDW80yuWG2Rzgggv+UxnLfJsv5t5HBwYL0ct0UN3jSniY3rqImqdFXAy45WL83CyLXJlwqkGeaOdrI9z8WZa/JjDEnpRyL+Etp+ALKSYN9ugjKYLfaYRg2WCfC2pdw76BjOyPRTHGXHVziE+Cy6vs4eaP04Ky7dw4dqv74DZg0G3LXXb0x4DPGuMmPSI79kkfTa5yEwOpdUcpPbUrg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(136003)(396003)(366004)(346002)(39860400002)(451199015)(5660300002)(186003)(478600001)(6486002)(316002)(86362001)(6666004)(38100700002)(6916009)(66476007)(66946007)(8676002)(66556008)(26005)(6512007)(4326008)(9686003)(8936002)(41300700001)(6506007)(2906002)(33716001)(83380400001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUZhbjBYdWtVOUFPYlNQUG1hd25mZzBadittRWNjU2xpakJxZlBPSnkxdFJG?=
 =?utf-8?B?c3FJcDBkT1lsaUtPL2oycVRVZDEycFMxd0pkdDRUU283YWhKSVQyZGhmMVZI?=
 =?utf-8?B?Y25wcGxsZVUraHhZSmxIbXc0eXJwMlV6bytYdzhlNVd1bUNleXJpMExodVNo?=
 =?utf-8?B?elRFRElPbk9TNDAwSTZrNnVWb3dnUXk2NFNJNDhhQysvSVM4RVkrSEVEYWJX?=
 =?utf-8?B?T2V3ajZad2lVZDRnRHliZHVLN25pSlFINlhCMFNBZzUraU5JSFRqcHpobzVp?=
 =?utf-8?B?K2x5ZCtuRFM5eUw1bTRFNzJ4c09aTkZNUU5EelRDaW5kdEZYNEtpbW5ldVp2?=
 =?utf-8?B?ZzJVV0lISFZCejNNWkZXdDhWdngyMVVDOThrOVlGaXc4MmhQRW1tbCt5SWN4?=
 =?utf-8?B?b2EyNVA5alBBQ2dPNnEza0luc0VaUmdJNmlIc0xmb3FFU0R0UFFQZXI0SUFZ?=
 =?utf-8?B?RzhGT0loY0ZQY2p0Q3Q3Q00yUC9nZ2NxcldtcXFXOUJFc2dUL1BNeGxJLytK?=
 =?utf-8?B?VFB4WFhxMm5zem02bTBTN0ZHY1BGMmxpaEhtcTJKeDh5RFJIanE1bllwN3lv?=
 =?utf-8?B?SFdoaUk2Vzl4c3lhMmc3ZnFyWHIvVTgvSWtUeFJBYWtUOXRzUjlvNHFOczRt?=
 =?utf-8?B?K0VRWEZLNXpscnpUcGZUU2VXMG14dWZ6NTFpMU1SWHFqZXBGMGNxUjFHdWcz?=
 =?utf-8?B?dUtoQWUyMDc5SmJYN0hNWGhYRVJNaGhVQnQveFB2UXFnV3FaUDV2ODRUOUov?=
 =?utf-8?B?Z0REMmhEZDZjNWtmUEwrZ2lKZEk5RS95bWRpcHlRL1AxeWlCYmI5RGFjL1Mw?=
 =?utf-8?B?dEZzeFhwWFd1enhPTlZTdVFwZjJ6eStlbG44MlNBRGhDb2t1K1FtYm00RDNm?=
 =?utf-8?B?Zk50WUthbVg5MlZWRTBtamtMdXRCZlpreUJQM0p2ZXZRTm8waVEvMnVkYzBD?=
 =?utf-8?B?YzVTRWo3R0dEaXdjTER6b2duQ2FVSXR1b3hNWDFNUDhiTzE2ajlJcVhBa2tw?=
 =?utf-8?B?QUZnS004ODhCRGFrYzUwWFB5WlR0aFFLVUtiMmlsOXdIdXdtSDNpL2dTVWtE?=
 =?utf-8?B?dis2VjMreTd5bGR2TUZPYzBXM243RTBxaXRWNHNWQ3hXOTA3S2JWbDA0TG9a?=
 =?utf-8?B?SkZkbmJyVUdzRklnUnN5RjFqYWxrdEh6K3NmWmFBMVBHYXNYYm5UdzZJN0tI?=
 =?utf-8?B?eFZYTVR4Q1gvdDVBSXF5MzFHbGtEMStkYTNnVWVMTFRWQkVXTU1mQytjTiti?=
 =?utf-8?B?eFVmZzZBSTlrbnZIRytYYS9hYXdhcEg1T1JQa1JRTjhPZ0kyKzBaTEJlUjFs?=
 =?utf-8?B?bk5hR2llcCtScDUwdFRIR2IxTzNZUThTditrcTlSTUJaaGd1cUhSa2tUeS9I?=
 =?utf-8?B?eHg1Q1pwcGFRVnowOGRPRXdvbkd0UC80TWg3dGVIY0h5SGgyR1orTjV0RnFu?=
 =?utf-8?B?UzhjdmZzSENWTlU5eVlqc1BKTnllTnNYc0MyN0JNR1gxYmt4NUtUSXRxQ3hh?=
 =?utf-8?B?VFlmc2xDU3ByaktlVjlQL0pzVUVGTmRBUUV3OWxKRVlmeHRhUnAveC9PcEdm?=
 =?utf-8?B?TWZKMkNlbndDejdJU292QkFxQmU4cmNLVzNlWU5kYXllbmJ6bEVhV29wVFM3?=
 =?utf-8?B?bW84VUQ1TDdPdVB3d2pKdVpyK2txZFdkOURCRDhaOGJHTGZIb3loQnV3cHJ4?=
 =?utf-8?B?cnp6akhGRm5UT3NEK21yQXBtUlAyMzNQSnpIckVtV1I2NmNHMnBHY09xRGZI?=
 =?utf-8?B?NHFJeWJDYzJaYTIrS253cEh4eEZSR2FWNURyR3Z1VzVCTVpPNHdoYllhb0o1?=
 =?utf-8?B?TmRpR1pOcS9mejB5K3UzMjhxaFFvSG1YejFJb3VCdlUrYkhXQXg0RUNVdXMz?=
 =?utf-8?B?V0VhbThzT0ZQbjVhTXp4cUx5ZzcveHpiem5jVUNkdWtBZTIvVXZ1SHJVeXRs?=
 =?utf-8?B?bkUzNkV6bmdnUFdlUzVjMEFQdzlrb1Uxc1QrUVc4VjVBOEtVZ1JESlFCTUVB?=
 =?utf-8?B?Wm83UlUvM2lOc0VuaWh2OG5uOUtKQWpXcmxxbzRDYXUyUXpqWXk2L3h1Ujgz?=
 =?utf-8?B?M2FFLzBmRUFaS1d6cFE5QVZieUpUbXU0UGx1U1Y5bmU3ZkpjbVBsbkovVzNH?=
 =?utf-8?B?bDJGb3B5U1MzdlRQd1NCK3M1WWU1VjExUGlkK000aVRyZ1c5QnN2RGUwNzQ0?=
 =?utf-8?Q?ySkaE2tyYfwR9AKMNsHOru0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5cc8d2b-8504-4621-a5d8-08dabe75237f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 14:59:14.3146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Xa1EPaccSnavhT7OjAGznHZp3mpLCwacp0+naSYNeiwt2F11+AHsaozu4tZrWps27s/f2o1KExiQy/3EgX7Gt1QZXNpMxW7tZER1x6iW7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Bump up sample period
 for busy stats selftest
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

On Fri, Nov 04, 2022 at 08:29:38AM +0000, Tvrtko Ursulin wrote:
>
>On 03/11/2022 18:08, Umesh Nerlige Ramappa wrote:
>>On Thu, Nov 03, 2022 at 12:28:46PM +0000, Tvrtko Ursulin wrote:
>>>
>>>On 03/11/2022 00:11, Umesh Nerlige Ramappa wrote:
>>>>Engine busyness samples around a 10ms period is failing with busyness
>>>>ranging approx. from 87% to 115%. The expected range is +/- 5% of the
>>>>sample period.
>>>>
>>>>When determining busyness of active engine, the GuC based engine
>>>>busyness implementation relies on a 64 bit timestamp register read. The
>>>>latency incurred by this register read causes the failure.
>>>>
>>>>On DG1, when the test fails, the observed latencies range from 900us -
>>>>1.5ms.
>>>
>>>Do I read this right - that the latency of a 64 bit timestamp 
>>>register read is 0.9 - 1.5ms? That would be the read in 
>>>guc_update_pm_timestamp?
>>
>>Correct. That is total time taken by intel_uncore_read64_2x32() 
>>measured with local_clock().
>>
>>One other thing I missed out in the comments is that enable_dc=0 
>>also resolves the issue, but display team confirmed there is no 
>>relation to display in this case other than that it somehow 
>>introduces a latency in the reg read.
>
>Could it be the DMC wreaking havoc something similar to b68763741aa2 
>("drm/i915: Restore GT performance in headless mode with DMC loaded")?
>

__gt_unpark is already doing a 

gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);

I would assume that __gt_unpark was called prior to running the 
selftest, need to confirm that though.

>>>>One solution tried was to reduce the latency between reg read and
>>>>CPU timestamp capture, but such optimization does not add value to user
>>>>since the CPU timestamp obtained here is only used for (1) selftest and
>>>>(2) i915 rps implementation specific to execlist scheduler. Also, this
>>>>solution only reduces the frequency of failure and does not eliminate
>>>>it.
>>
>>Note that this solution is here - 
>>https://patchwork.freedesktop.org/patch/509991/?series=110497&rev=1
>>
>>but I am not intending to use it since it just reduces the frequency 
>>of failues, but the inherent issue still exists.
>
>Right, I'd just go with that as well if it makes a significant 
>improvement. Or even just refactor intel_uncore_read64_2x32 to be 
>under one spinlock/fw. I don't see that it can have an excuse to be 
>less efficient since there's a loop in there.

The patch did reduce the failure to once in 200 runs vs once in 10 runs.  

I will refactor the helper in that case.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
>
>>Regards,
>>Umesh
>>
>>>>
>>>>In order to make the selftest more robust and account for such
>>>>latencies, increase the sample period to 100 ms.
>>>>
>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
>>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c 
>>>>b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>>>index 0dcb3ed44a73..87c94314cf67 100644
>>>>--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>>>+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
>>>>@@ -317,7 +317,7 @@ static int live_engine_busy_stats(void *arg)
>>>>         ENGINE_TRACE(engine, "measuring busy time\n");
>>>>         preempt_disable();
>>>>         de = intel_engine_get_busy_time(engine, &t[0]);
>>>>-        mdelay(10);
>>>>+        mdelay(100);
>>>>         de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
>>>>         preempt_enable();
>>>>         dt = ktime_sub(t[1], t[0]);
