Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4907B7158
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 20:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B943110E07A;
	Tue,  3 Oct 2023 18:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D266610E07A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 18:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696359150; x=1727895150;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bfFmASVvch3sknMQFfyjYd4PBlT3It3qhusZS7w5p+Q=;
 b=R8lvvn6OvzvfJcqHpneab0t2slmXVstwui67RirAU3/Ejk5ol36MojS6
 PFDI18gpLalpZklDTzwaQH9IT8Yn7SO6Lo5GmZ4eMaBgZ3gPnrnfzWD3B
 iy/C2ijEGhnNBeUblNrXrZfNcKgy2Ql7ygag/Ac0db5LveA7bveA2OQDv
 CHyg9y2Vqr439wqK+Z38r7XYDkXnR+tz+hK5o0g2ZmKELcM9QlyP0Gu0/
 ULPXVoAFT4eMqM9dVzgScC0+dW6TSmnkJF49gqzqUzyS9kPcej4SqvryH
 qj2uSBKlrIx6Ej6kZ4aVRufCOtrvUb1mdumjpiCo54YqWqAILn9ZsLEAc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="362318242"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="362318242"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 11:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="998152505"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="998152505"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 11:52:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 11:52:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 11:52:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 11:52:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NiWSItAbCWQ4uEPtj1P5/cJEEQZslHJFkK/WUiZyNyba8Emv4BV/D015X++84r6QmXQZm7ltG8IeDk70/kXvzmJ7qbRq/JWlKJ3QnMsQykAOhs7z/or/m8/iEhChrg6WIZaX2LHQ8Q7mJ1c851FQe8tjLm83h1ig/tZqH+rZaBCQx8yGMTCI1VJ2aPHX8rbJ8NC1Uk82WwcdjUCe0NgUetarWaBVjjqQxku1bpoFEOqFjUYD3lPJfl62QkGporCn/3REgHWuJORbXHBkNMq6B+nPg1iZdjyXgWvmgKNlXzF82Q9dgx8Sp6Ne1Qd49395Kco8vpKXrOu6ZlgAi2vquA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhdl/vO3uysPMedSEyAp6zov6dviDQIC74smY+uO4As=;
 b=Ir3rvcqWZLKurbTZ4SFygDBkBBP53SYc1IsY0k2acUxjJchWGKABWka4Kv6+FfhuJS7iauqNQp3YBp7g1bu5IH7XLpMs+q4YfwDEBnJiqTzPTVMJtNwbsKrnvddqyrU05GXSCCO0Phuy8mfpA1OdHntkm8Q0bo6DL5dBYlUFGFLru3O1zHiUvCmZw0if4jRyKvxGcPVzfsm0JNDraFvK4iU85UIxZVzjpyH4ghuw3kLf6QGpakYRJz7IIMnStFV6DiVeel6JAPbwVjNtxXlAm5KFboTxnVP3voRQpYrxwXQ3IP4ofes55W763/SHKoR8yOH13D6j73w215Bmmf67vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.34; Tue, 3 Oct
 2023 18:52:27 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b015:c622:edaf:8c86]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b015:c622:edaf:8c86%6]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 18:52:27 +0000
Message-ID: <fabf3fc6-526a-2896-d9b3-1b54f184f82c@intel.com>
Date: Tue, 3 Oct 2023 11:52:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Andi Shyti <andi.shyti@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <20231002172419.1017044-3-jonathan.cavitt@intel.com>
 <8734ysgc5c.fsf@intel.com> <ZRw6UNs8IeFN+/tD@ashyti-mobl2.lan>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <ZRw6UNs8IeFN+/tD@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P220CA0023.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::28) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: 76450c0f-8fda-4094-7535-08dbc441e34e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L0uPTPTbEv2swuU0kb1+5QFF/ki7LwmBW0YwIGCxpgAnFZkukxANZSenphZHk4aKFwP+WyzDiuGUCMgASF+qTHR0IIup10cn1QBJuWEmHs0E6t6SSu+006Ld/ebwyQhqptYS6lnHTgVpF0qBsG7ZLgv2COdXGj5SouvX06+0kwrB7O9ct3qxGjgIf+VhT+mih4c1qlzZE8IH417nxrsY1zURzAnHkFwNnVnsDuzwNyJ/oIUnfoq/dfy74HuJEuytA9/0n0rlUttLCDPVDPTAhvZYRtEWL4egTLyoTjn2856nfUhD2WtID380fvlUgSGEU7RKzeFERYjdJt/AOH8eGDnPhcufkzX3f9t27z3yaesQQke92nXzXl+j7rQ5yv+mYsxDddIr+yJJKCb/GGXbrZCPLBAEo6CgYu1cz4h9iq6nQ0b8wrQKh3jPRKN0gTvDXFjELSr58lQqtm2g2Zg4Xgv/K9j6hj+hmwuA+On8fXwDIqG4yPCGTSMFueeZ0zhTCxVkqllLQFO43NgsdsKvIYXVFl/+iS69Kh7oGzgGXkMP0hEUuN6BywtzWokK/LKXr0U0knMonzbhKpJTDl/6GlUTz3Mo0DdIXs8F0DC7BxbDCDqCC4xZKQVIUYUqYKptlA6v6yZGvwmA5zKI6RJ+Gg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(31686004)(6486002)(6506007)(53546011)(6666004)(478600001)(38100700002)(31696002)(86362001)(82960400001)(15650500001)(2906002)(26005)(316002)(83380400001)(6512007)(2616005)(36756003)(66476007)(5660300002)(8676002)(41300700001)(110136005)(66556008)(66946007)(8936002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWNGVTRWYitXVmRNRlNpRE80a29MSDUxMnVRa1htbGVVeXE4aVZyMU1sU2lW?=
 =?utf-8?B?UlAvektTeERFWmVmTk9mYk9rbTd0SHhnZjNqcXRXWDhVaXRNL28ydUNkbXRT?=
 =?utf-8?B?bVd4ZjBFbis4SStKSGJhN2h3ZkppTVh4Qm94ZmZtMzlidVNKaHhXekRnYU1W?=
 =?utf-8?B?WTNmbEltd2toVzYxL2trNVRBcjl3VGh6T2tNSzVXS3M0RnFaallhNG9aWWE1?=
 =?utf-8?B?TTdPc21XUGlFdVV0R1NTdllzcVoyTURLT2c2R2JBTHhobVRIaU10UHZWVnA4?=
 =?utf-8?B?MzJpK1BIcnZQbXI4aXZMRk1SeXk1OFR2S2paK3ZQZUNOTm5HcXBjWUtkMkFr?=
 =?utf-8?B?Um9ERXhKUDRiUk1BMk5HcFFBL0Z2ODl2V0VwRlhhSzB2cVFRYjZKTWc3Um5F?=
 =?utf-8?B?Y3VRR2x3Y2x6czY0L1gzQy9ZNTMvZEtDVDhacGRVVm5NZk9iWWpKbDhUWjhV?=
 =?utf-8?B?WU9yaHR3RGFWTVB4Yi91czkwZEdicGt1bGlZc3ZzWXlQMlEwbUFTQkNiVkhq?=
 =?utf-8?B?bTQ2b2dva3lNWFNhcEFjUWJEVkNTeEFndlZwNFJTWmRnTkJ1dWlHRkp2d1Na?=
 =?utf-8?B?MCtjS2ZqVDJlaTkwOGt6OFVPc1RyS3k2NURXV0NzbDNuRW9EdVlzbWVwK1RZ?=
 =?utf-8?B?QWd4MXp1c2NSaDcyWkxxTFN5eWJ1NFlyanhEdjlBbFBJVkxEZUdtcnllQUE2?=
 =?utf-8?B?RmRjREhjM0lhQi9BMGVLRkpTb3YvMnZCTW9VdUtoOGt2ME0vblFNY2JKY1pj?=
 =?utf-8?B?TkU3c2RVR2VHUUJiQWNmWnNNbEpQUkdrR1ZCMUhnUWdqZk9SV1c1ZmZIMUNo?=
 =?utf-8?B?cDl6T2gxSVhKTFp0eVE3N1U4S1ZIellUOHdibzhqSldUdzBScS9BWjFQeGwr?=
 =?utf-8?B?UDBaRkhnVy8zb292a2c3UjJiU1ZJRlNML3BHajU0RjdtYWIwbjRiMEdNSHJT?=
 =?utf-8?B?WlVwU3JaeXBuTzE2cmdiYzFTdlVvSzhXMGtKYjlCaTlnR0RYZEZkRjVoTkgy?=
 =?utf-8?B?aXczMHhVTXVFTVNCRVFOSGQwQi9yYnRhajZzTmNIc3kvZFEvYTQxWk1DbHpo?=
 =?utf-8?B?TEw1WlJNZWdBdmxyZG1ZQ3ZBMGg1VE9mYjVxR1FIc1NsOEhvak56NHRWOXl4?=
 =?utf-8?B?MWoxZ1RTaUtLeVlBQmdnZHlKT0VVVnlHMjdRcTJPUDMra2kySG9zYWtBR3ZN?=
 =?utf-8?B?T2pDQlBrL3dKcmdBWGEwTi85MHJXWEJPTW5yUUNHMjJ0OE9HdEZvakVINEho?=
 =?utf-8?B?SVhjb0gxWGthd28yWkpFZGpzUmdKMHY4RWg3RWxOSWR4Um16WFpybnZyWGtP?=
 =?utf-8?B?RFNOZmgzUHdDalZQVGs5eUNPa0dYZGlocHkrUTVyQ2ZpaHRJVUh2S0h5ZGE2?=
 =?utf-8?B?VFdkclJBV1A4RjVVUW84VTlYbkxRcHFsOVd4T1JHbHBhNFlqSkJzRVlnSDZL?=
 =?utf-8?B?d00wY1hnVmNCMHJzKzZmanJoM1R5NTkyaDh3U1FzL1QzbGZxMXREUGhKcDgz?=
 =?utf-8?B?K09hTHhxU2NkUmpURFRIRk1VMXNYVkNOMklHSjBxUzIxejZLOEZTQS9ORmd1?=
 =?utf-8?B?Y0FLN0podGZEZWxjZ0RsOHpTR0VxL1V0YU94V0dmR054UUt1bW94cmxKbTly?=
 =?utf-8?B?Y0RNeW1xMnJQSS95L1VCaDh0a1pJN3J3RjU5R3k2dmxZLzNnb25reGxPcXNz?=
 =?utf-8?B?YWJwMXZBZVhkbVFaZDIrNi9ZaHZFOEVhUldqcUYwZmZ1N2ZOZnQzMFdrS2Ro?=
 =?utf-8?B?Tk00UkZMYjg4T2czRWFzYnBMeEJvRVNpbHd6TGlaaUE5S21BcXZwcWxVdjhp?=
 =?utf-8?B?WTFMSndFTkUwaEpsbHY0TzVqeVhoS1dpNGg0ZFkxeUZodzFGdGsyNUJlN3J1?=
 =?utf-8?B?WnIxUi9aQUwyU25jUHZ5Rit3dkF2UkNHNTRyak95SnBPNGlTNnhqMnBHRkVI?=
 =?utf-8?B?SnpJbUdiOC9HUDRVMFhXZm5nYVdadEt0a0RhczNnWCs4aisrKzAzQzR4dnEr?=
 =?utf-8?B?TWMxZHYyRlFWYkI1S3lmMjhRZVdvcVlGUlpMeDFxYnZIR1BKTTR0a2RaOWw5?=
 =?utf-8?B?WldLS002ZmJ1dUR4MEE0YUpYVjdmV1A3RGZoLzNkVHljQ1Q4bTlCamVESUpU?=
 =?utf-8?B?VTk1S0N1SFdreUQzaURHTXBBYS9ocVJZWDFqWWxtQnlXZ3lsVmsxUDYwUXFn?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76450c0f-8fda-4094-7535-08dbc441e34e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 18:52:27.0375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fIqR3Ats5yRKyHhMLvv6rIc2C+3KlRScUBgCMzWnVjkEU8hlmRZoiK5jp+TyftGRH2zTTJUDQ/sYb+t8v2Zi9n6llh4MUzXItKEsuo5qpI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915: Perform TLB invalidation
 on all GTs during suspend/resume
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
Cc: janusz.krzysztofik@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/3/2023 08:59, Andi Shyti wrote:
> Hi Jani,
>
>>> Consider multi-gt support when cancelling all tlb invalidations on
>>> suspend, and when submitting tlb invalidations on resume.
>>>
>>> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> CC: John Harrison <John.C.Harrison@Intel.com>
>> I guess I'm wondering why the top level suspend hook needs to iterate
>> gts instead of some lower level thing. We should aim to reduce
>> gem/gt/display details from the top level.
> I'm not sure I am understanding the question.
>
> The TLB invalidation details are kept under the GT. But when
> suspend is called, then the GT invalidation has to be triggered
> by the top levels for each GT. Right?
I think Jani's point is that the top level should be:
i915_drm_suspend(...) {
    ...
    intel_tlb_suspend(dev_priv);
}

Then the TLB suspend helper function calls into the GT / UC layers as 
appropriate. But none of that internal only detail is exposed at the top 
level.

John.

>
> Thanks,
> Andi

