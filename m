Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 680037BBEFC
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 20:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB4010E556;
	Fri,  6 Oct 2023 18:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF1510E559
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 18:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696618223; x=1728154223;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tBzVtYpjzcVoSqgInmactjsvRxLwxG8JMEgwJ+AB6NA=;
 b=FcN7lGmvfzgEGu3Mr9aUzewOHPrTzcXsgFHwQa1vrjPXFy31Nl7XZOvQ
 iJMGTJVqxrwxQ4Ettm7yN1WS90X/ianfUqr01fNpPzsfWTANQzCtQ+SbJ
 ecSOR5EpOZq6WQNIxd8QeLws9h72EvRqSa76tUhxfkOVvws1HdhT239nX
 OzqqhcfWgIj192V9e5ms3hqGc8Qx7Y2Aaj5l2234GEeEXotFevaCxZpyf
 RZD1iNNu1I9SC6bKgqAZsnZP9WGUKz2/Q16FTNUVN8/F+cV3E/USkxOac
 GK9xx4k3NTAM8FNJYZ6hIvIjGpmxC6KmiFtK3ryqmEHd1gKSjHUwYxP8m Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="381090706"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="381090706"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 11:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="787478030"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="787478030"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 11:50:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 11:50:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 11:50:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 11:50:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cpSdXV+X8Z0gDst9rx4p8O5r0SXfieNULNAMnHzevu8Ckun73UyX+p/YVdqeXAlb2y/KHdGuJy3oX2zAZqB8eigCwDjfdX+/BwKq4yQfQKXV+U78BJSDljSPEW1mjcFYnRFBDH3RdkbGDabyGh4iBu0DY3MbwfPwA5BpiHkpWuzYMGgAc9PEkvhf8Dgoe8T4eJjxX9YmZ9IV6lz/AcO/1bXX+LHmdPwKaFVLwbEOYGiDkJ+/cTOHv8jIcLxqVJeKj1cMiHBdInewJC4wamcT5aPG1yykrcNvZJsW6TTWe4vgSvXMfBq/1frMzKmsWhelJupvUpr5WqQnF1t9JgES3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YHPxDcA8rdVqN9BIA8BXT13/DN8+MOxjboS25YxxS0c=;
 b=bAXWa1GTozyDGhgno1TEMfZli4/qcquX0zWqTJob2e0EYr5X+vDLqED0XbBRI/GnTQCHuYyLsadqcyAFErbq6tGcjQJ5CEtpQX72cp2wUADJFu1/XYTdD/PLnTTGHS0MXkNR7/hkM87KXVOmSsyywINC3liVz4AeNrWSzIxEzKkT97A9BC764aIQUy3CRuZKBLreyV2726jNB/IskHf9y3RveoJj6x+d7mnT1bfgi+X/nnWlmwiNxdRl6UI9q1XYWNL0IC3pmcuEUsLWM9yc1L8eiMFY+q5H/UKr0zBxV1kyyneR+R8UMcDD0gUVBWGTcjvRPcaWQAmRRbLLLoKF/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW4PR11MB6689.namprd11.prod.outlook.com (2603:10b6:303:1e9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Fri, 6 Oct
 2023 18:50:20 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 18:50:20 +0000
Message-ID: <48253c7a-09ef-d778-c036-9f75283d9751@intel.com>
Date: Fri, 6 Oct 2023 11:50:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Dan Carpenter <dan.carpenter@linaro.org>, <matthew.brost@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <c31cab01-344b-4117-b14f-1191c611358f@moroto.mountain>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <c31cab01-344b-4117-b14f-1191c611358f@moroto.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0289.namprd04.prod.outlook.com
 (2603:10b6:303:89::24) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW4PR11MB6689:EE_
X-MS-Office365-Filtering-Correlation-Id: 03688de3-9819-493b-4797-08dbc69d16ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0HB86t71M1cdUg+Ucg83anVr86LACemZWSWYIehBuoGhNi/0BYgLOvFc8hNHc8bjFQExCOmQimHu2jmhRUrytQvZzY+dEXGzUBNWyRwwBofShOsmCDnzVJjIxF+nLnHDG0i3qU2YyphVU1YUiiCJgpTh/GD/UVRuh/wM1MdSfoONOfnoh7r13ohf0fz7nq2kr2kA5vBOhVq9117F+fkstyJR1cJ8l4w94KQj2ns/ZV7kSbshv7hhqXxVtRK/xiQ5nSQ/JFKZsXSNRjvTL5FgkPap0ozW2PCv4zTEyTmJOPD62Wl1VxXP4AneOUOE3l5hqKgNaPfRPHNWataTIb66GN4GXUDxEwBPkf6XqFSrrai+4Cnhr3zIgUSYnjnvYjosDGWZr6cItejzCVl08wkkGPb4UaKLZOuFzCFbNz/UKYejdZWtR4zOeZadXrQjbuImw47SLB8pguthTLLw4vXm+rwdesLNB/LMoL6ziQ4cDz5pZ8poRQ0LpUuajqNBbujf3O9ZpXeBOLl7qqb+Def0/dwpkUZsG8Pjuopmc+u+pPj7jWPJAZT+RqbRx0mNwK+/MlNaVP/9FsQ7EN3mhAnWro+yC8iZx/KYVGw93jyyf74C/KAC4l4JbUi8l9RfUifHDNBfFV/FqMyoSrmw2VDM6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(136003)(376002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(6512007)(53546011)(478600001)(6486002)(6506007)(6666004)(26005)(83380400001)(2616005)(2906002)(41300700001)(5660300002)(8676002)(66476007)(4326008)(110136005)(66556008)(8936002)(316002)(66946007)(36756003)(86362001)(82960400001)(31696002)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGlBY1Q3eno2UzVyeDVHY0Ztbk0xSmgrL2c2WTNDZitTeERqVmZwMExBWWl6?=
 =?utf-8?B?WXpFWWw0ajU3TzZOU2hVbTl2S05DbTN2Y0JTeUo4dEV1WHkwRTlnVWU2OFdE?=
 =?utf-8?B?Y3E5ejlpVUY3VFVWV2dLbUQ0VTNXeWFET295N2VYdk5wNkp6WkZqV2x0YU1X?=
 =?utf-8?B?YUU1Z0hLK1JPVUZmZCtkKzZ0a1AvdTJLU3A4STNOTjI0NjNjcjhnMDlERG9n?=
 =?utf-8?B?ZDdQMFZNR2hOMFdJTERaOWI2WHhPdHM0QVBRcGFsWUxpN1REbFF6K2RwbGM3?=
 =?utf-8?B?ZXB1a0x3SjVhbEMxVWxCUVB6REFSMmR3Q0pXTDVTeGxTRGtGU2ZTMURNM3RU?=
 =?utf-8?B?QnBYZjcyOHNRUCtHOEpZdklsNExtUXMvNkV2VytORDM4bUNkS3l6aTZraFpB?=
 =?utf-8?B?MWxWdjhKSkxKMXc4VnV4TDdlZ2xnV2VHVnZOT2UrdzAxbHJRdmFxdUJNSFN6?=
 =?utf-8?B?LzRLNGJJQmxTRHg1UmhXUDVDeGZwa3JrWldWLy9wdkNERm1DT2pNQ2p6UjNr?=
 =?utf-8?B?elhiT2RPUVZmbW9XeVZ4bVZaS1RYTnFkbGYrWDFJZkNTMnVzVzBPVFNxdEJs?=
 =?utf-8?B?dHEzYVJBdDI0cGFnb1VHV1lIa3N3V1ZxVHpHRUR6c2FwcVZxNm5NYXkwWHhP?=
 =?utf-8?B?eWF1ZVFPWFR3WDhYV0grck5ldUhFNFVTS2w3OXdyMTI1SlgybFRENE5qY1lZ?=
 =?utf-8?B?NHJOTkV3L1Yyc1JsM1Y3S3lOQWcxWHJYYURleGlMcHJ0Z1lhV1BrM29MWjRW?=
 =?utf-8?B?S0xtY1lDcENyN2k3T3IzeHFVY2U1ck1ubG53bFFKVTNWMGp2SnJ0dERUNmg4?=
 =?utf-8?B?alc1c1NySkNDeEN2TXgyTFhUSTdxT3ZUM2lQTitZOStVWThMelpDVUZCYWIx?=
 =?utf-8?B?L1ZIQ3FGQ0hVWnNzZWZ6RjdXODZDQ1JOb3FSeXA0Q2pwWWlsa1RtY2tCQzAz?=
 =?utf-8?B?UTZTR1cxNWxGdWNzWm1pTzY0aUZRSDNoREpIbHlzYVl5MkdieFR0K0tLR2dk?=
 =?utf-8?B?UlhEbTMrbnFwZzBEU050c2hzRzFLL2hXMGtzUlRaNnplcEdSNnRzUWpxVnJ2?=
 =?utf-8?B?ZHVRc21aK1lNdysvaExsNnF2cUE1QlgzTHRYc3E0SjgvempCN3JjbXRoSVIr?=
 =?utf-8?B?RlNFOFppUmNhRDVVeXFGd2FuMXk2K2lKQmsrQVZzM3FSbUxWY2JhTTlaWXNv?=
 =?utf-8?B?aUxJd2MrUlJqb0FWdDBBL1V5U252TUlMNFJSdE82L2xEN2taYlY4RnZoRmRq?=
 =?utf-8?B?SXoxU3hob2ZWWEs1V2drTkFJQ2UxZlZOcXRwUTZoSC9vT016SXg5QmVIQW1D?=
 =?utf-8?B?VXFiWENORVcxeXNGMmJ3UjNwUVRhU25VK01KUm4zcjFnMHA1eDk5aVIxYUdW?=
 =?utf-8?B?ZFU4RHc3K3RyNDhEWjZkaHc4eDlML0Y5MEp3QmZZU2NhNUlsem5PUGp3TWNC?=
 =?utf-8?B?YU5tNGhqL09nNWc5UEVKSzNJRjhhQnZFb1ptRndPenNEUE1kZjM3NnRJTDZS?=
 =?utf-8?B?ODJ5dDFNd3FSd3lkcnJBaGNoKzRJeVFZQzhUN0xndGpobm5VVHB4OWg2K2dM?=
 =?utf-8?B?NXd5Rkt4cG5SWnpxNzlRV0FSL0IzcHkra1A2aVd2MVRZVUZIY1U2YXd4aTRZ?=
 =?utf-8?B?TC9ISllURmEwQlg0bkEvT0h0OWlEZmlaMElBZHkwcWlzOXBjS2lvb3UwK1Vo?=
 =?utf-8?B?a1cwMjFXcUZodUllNnVybzNrd29VUjFUMU1uc3g0TGFqNGw3dEpqdWZvMktT?=
 =?utf-8?B?MHZmZ2pMMnFleWVZWFpsT3B5c2dMYjJWSldUU1RBQlNHRGt5SU9qMW5USy9D?=
 =?utf-8?B?OTRVMklJZCtuSjJZSzJUQmF3Vk9EZlBSdW9ZUVphbkdmVlVnVkthWXQyUlg4?=
 =?utf-8?B?clRiby8rclNReC9PYXdTeGJkcTFWcHd0YUZFMG5UQjF1UFNBcERZTjJ0bHBv?=
 =?utf-8?B?NWpqUjBmT0VmRDRZdllHRG9YcDIwc2FsbnNLcWdHLzZkdG8xajdtUlhITGE4?=
 =?utf-8?B?cnRPdThlK0VRaXpxVEJqeHMraFJSRHg0ajdtWjBKUXIwU3oxUEFSL0dxRHV1?=
 =?utf-8?B?WUxXMUZGQ0gvS0YwRVA5eGt2RjdrK0oxc3VmQXN6UTJvMm1VaCtSNlo1M3JF?=
 =?utf-8?B?bUNzaEgyVEdsQlo3VTFLbXdTRzRwZUdGV1JEYkhUaHlCcEVEZjVWUnRSU2Vr?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03688de3-9819-493b-4797-08dbc69d16ea
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 18:50:20.1103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uiwoyKKYfFHqeotfygZuBUY0zP/IJvt3KiFmDDj/CdwjKmGNdCVRg/mHTBVl0tg+G+12YRZ2Y4VRNvBatOrxfKXWJHtZDXS0T50T0+27SrA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [bug report] drm/i915: Move submission tasklet to
 i915_sched_engine
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

Tvrtko, would you have any thoughts on this one?

John.


On 10/4/2023 02:57, Dan Carpenter wrote:
> Hello Matthew Brost,
>
> This is a semi-automatic email about new static checker warnings.
>
> The patch 22916bad07a5: "drm/i915: Move submission tasklet to
> i915_sched_engine" from Jun 17, 2021, leads to the following Smatch
> complaint:
>
>      drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3659 rcu_virtual_context_destroy()
>      warn: variable dereferenced before check 've->base.sched_engine' (see line 3633)
>
> drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>    3632		 */
>    3633		tasklet_kill(&ve->base.sched_engine->tasklet);
>                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> The patch introduced a new dereference here
>
>    3634	
>    3635		/* Decouple ourselves from the siblings, no more access allowed. */
>    3636		for (n = 0; n < ve->num_siblings; n++) {
>    3637			struct intel_engine_cs *sibling = ve->siblings[n];
>    3638			struct rb_node *node = &ve->nodes[sibling->id].rb;
>    3639	
>    3640			if (RB_EMPTY_NODE(node))
>    3641				continue;
>    3642	
>    3643			spin_lock_irq(&sibling->sched_engine->lock);
>    3644	
>    3645			/* Detachment is lazily performed in the sched_engine->tasklet */
>    3646			if (!RB_EMPTY_NODE(node))
>    3647				rb_erase_cached(node, &sibling->execlists.virtual);
>    3648	
>    3649			spin_unlock_irq(&sibling->sched_engine->lock);
>    3650		}
>    3651		GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.sched_engine->tasklet));
>    3652		GEM_BUG_ON(!list_empty(virtual_queue(ve)));
>    3653	
>    3654		lrc_fini(&ve->context);
>    3655		intel_context_fini(&ve->context);
>    3656	
>    3657		if (ve->base.breadcrumbs)
>    3658			intel_breadcrumbs_put(ve->base.breadcrumbs);
>    3659		if (ve->base.sched_engine)
>                      ^^^^^^^^^^^^^^^^^^^^^
> But previous code had assumed the sched_engine could be NULL.
>
>    3660			i915_sched_engine_put(ve->base.sched_engine);
>    3661		intel_engine_free_request_pool(&ve->base);
>
> regards,
> dan carpenter

