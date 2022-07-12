Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22777571240
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 08:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3BA18A4D6;
	Tue, 12 Jul 2022 06:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1068A18A42B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 06:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657607377; x=1689143377;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MC2sx26wWIEhjA6yU12dNF8DYM2/Y1+iEH7c7QBEswc=;
 b=eWs9t1vzf1PFev8grYdjc2o+h/skNNMAkE5sEtH6RWZtgZ4bXY4Hu4od
 4yNFu+fSgyvoYdcXUPMuInH8elsw/mb62WA9V9GIS++41cgcsRepA14tD
 i5EUC02aBBFnRfPCuig2Rc5QOJi0kdfTp3zxMMSPYKI/uuNDIqqQHt47F
 KR5wceNz6BiJ3jP+UUc+reo3QHFNlxWXsC1JrvAidti10Pmlp/8xx94l0
 BiURXNIqPwARdsJbTF4tdvhP4nWRz4IUkS7ODEmoRevwG1s443+w/EKhP
 LsFvzJeloPHKn0fs4Ahz+FvtqZWkFAE3nW96hoBiPRWENU/6cGINMsKWM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="282403398"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="282403398"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 23:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="592523432"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2022 23:29:35 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 23:29:35 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 23:29:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 23:29:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 23:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArG/63dUMm/s7gZVwqyud0f4b8uahKYBoIeKt8Kcly29ZK9tX2NMx/R/K4NXMej+gbpIAlIeKdU375lVSOd2pM0hYWU/dfQ7BxR2xi4AuBV/ko4sSS3J0eF3xo6KyuwWkMv9B3ErwhRvpuX/EMWl6OoIknXkxq3YfsW7RBIiFmOUWZkqIvIcjMRvNIZOz7AMtEnva97HlO1z4egNphUD3s0URX4doSlNylg4FoEW7yDQF8PA8mPJyr6gBB+NSpC5rfNyqj6s/BObx6V4p0MhkHJXrGl1mUFHh75e88Q0Gr2J/yLDNQRX8dtmqWp574vf9b5JIDZqRIxT1/7yijfk/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZiHl0EG+IMO5XLg3/RBYcGl+yGszxpwXtr0qBnKq88=;
 b=ELtniKEzQx3qSfvNMWTp8gETGvYFw6df1r426cU+jSiKEDFsYmp2+2mQpq1dXQmGs1vbO2hw6rksp3KGpy9EMfIITSJ4WXU1DX4GQcHecmqDwmS40OL9lv06VseYMODijoWjvz7W1Y8oLEPJTwyYLlrY+owBSlw63ziL/irCP9UvxiKR8mWDSgBSQTKULgYkLiDpKhx4//PDAssk+MoH0OLtzM5MIGxYmP6rI0xB33iP06EdxKr24G8WPUoTCbk+SBDozTslrHBQxUk6yRkDBqlCz29peA+Z6kT6hh8rcVPg9e7pCc5Vm0r9MjMO8VDNvevi3wq2paxrDdc72nEB7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by DM6PR11MB4491.namprd11.prod.outlook.com (2603:10b6:5:204::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.23; Tue, 12 Jul
 2022 06:29:32 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 06:29:31 +0000
Message-ID: <2410b714-e1e5-1369-9e3b-0a20f5b3e6c8@intel.com>
Date: Tue, 12 Jul 2022 08:29:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <d7b953c7a4ba747c8196a164e2f8c5aef468d048.1657289332.git.karolina.drobnik@intel.com>
 <YshB2NJK2QF8WQkg@intel.com>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YshB2NJK2QF8WQkg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0079.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::7) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e66a73bf-474a-4cf4-584c-08da63cfe144
X-MS-TrafficTypeDiagnostic: DM6PR11MB4491:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i803go8Ojrzg8mAr9PIV4mSVcFh2EzjT7/kPsklqgJsFUf5e+OIrLrMRP8FoMCvjIxUkYVehA8DPfKADNM48U0m7kGVkfy70RZKrJvhZRL7Ev6DGjwbECB5FX5xXfPYS9/MQvHj7FaHdSKmCNFtyitIVQdno5seQ/ZDEj43U1/bbPZCi9m5isjxZ6co3FPC0QfWXLq0C0qsnZfaBGGFvafDy4zGyA6rV4/YXxtntluYuLb9S9kHHPLPYbAv8CJuJJBg5GBI5rmCTVGOsBOoJPWc52NmpswuDYH1O7NxXFeO0rNftdOzR816a2rZD9fFceVgaPOZzP7HUrLSj+Rr9TzmjZ0ll5ZaBYGnTbPQ24S/V3Uedw69Qrwp2H7RPZ8Th7XJBK1qfYn1DiUMGGhoNkfOmEvd53ArPe1x1/j9GlL90ArEomu9dzth0xN16usR3avMeqFV3QQJBjN32VYd4hloHiTj/IjvBzHRwIab27+kEI+6rXqwZq2e7LLPzR8v6pBTK+IArPJLomjPpwWMCxM+eGCi5ueAwt/Eym7di9Qu27VJor+OmfrjA7zc1G2vZnbbU+udAfJ4IVS9NMdw0eOIAmkXH9b9GVCdoXcE5WHu5FlwC70Hep4o8d8ybiFkLh0D5KSH5SgAG7RMtniZMn//A01+DjkHtTeQ0GXnKpVVTxUmHeg8QjOhZJo7eRPtSRKOCVNROIWZ32thLi94ZHBMt7a7OTbRhkTRde/39N6L1VooyiKFgHtd66bZo5tM5qUDkgOWbOHh7FD9pB1MVpm/w/+ziuYWFvoQyICoAALbfc9YBuXHrs7lfkp2LHjoNimdknTEZl/UAWh+RRhBRug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4243.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(396003)(366004)(39860400002)(316002)(5660300002)(37006003)(6486002)(53546011)(2906002)(6506007)(44832011)(478600001)(31686004)(26005)(6636002)(41300700001)(6512007)(36756003)(36916002)(31696002)(38100700002)(66556008)(4326008)(83380400001)(8676002)(86362001)(8936002)(2616005)(82960400001)(6862004)(186003)(66476007)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0FOQkpESm4rRXVzdEJ0cjhpaTFTVWJWdi84VUFTM2VpaFJNNWgyN2xkNWVn?=
 =?utf-8?B?MW4yTEdJSVQraU1SQ1FJV21qcDYwUWVGbm5mUE9BMWQ3K3RDaUlEUkNBbGRI?=
 =?utf-8?B?eWdoekp4bzYycjZ3aDNYZFV0SlMyQ3h5V1pBYndrYnVqYmlNdjYwd21sUVdp?=
 =?utf-8?B?SS9DcXNxQ2NHSXhmOFJkQld5SWM1RW85WGd1NUNUVzBBU2RuYWFWVzhBQUg4?=
 =?utf-8?B?VUdLbFZzYVpIckpmM29BeVAvaWFjclY3TENCUEhscy9VTWd0WmlDdGl4L1Y4?=
 =?utf-8?B?UjJGQm15dE8xRzErWmhOVW5weTFmM0xuL2pFdGgycENUSlNMQ0s5cUtXa2Ir?=
 =?utf-8?B?Z2NpZ0xFOTU0TmZpVWFqM1pNYXFhMjNPTTBMU3k4eTMxNVl6VTRWRktWQ1lu?=
 =?utf-8?B?a0hWTndFaHVudWZXQWFjdXhnaEtRUW1sSW90U0pYb3lWbDIzeHdoVGtKYnlJ?=
 =?utf-8?B?clQvMFp4UHFmb3FXNnZJYWZSL2R6Y0IvT1AxOW9RYlRMb2puUGxZUCtxaVRy?=
 =?utf-8?B?T3I5ZEx1c1VRZm9hc2J1aUQybktBZ3VidTRCd3F5SDFiZFJHTUN3bjRFTFFi?=
 =?utf-8?B?YjBwSnQwcFBLK2tJMWErYlJCaTYxZmF0anpqTEd2TnZEaVZGN2JGMGIzTnh5?=
 =?utf-8?B?cjhmRm1DL2ZTcGVvZHk3cHpWaE01SjlCMWJsT2Y0WWFra1h0c1ZYN2hycnBY?=
 =?utf-8?B?bk4vcXpZN1diK2huZDNZNzd1SDU4U0pWSFhsL0NVM2hNeGxRakRYbFBSZHdv?=
 =?utf-8?B?R0xUT2cxNWpHT1diZ0t5YzF4dzJLcGZVVUhsWWE5Qk0ydEc0cmdESU5mT3BP?=
 =?utf-8?B?eFNRSG9GZHJhWkZDZ2wyd3g1ZmFCQ3pvczlmNUJ1Ykw3eHJ6Q1JtM1VxUndU?=
 =?utf-8?B?YWNuQWRPQU5KS200VTAyYjVZcEtVV0NyaUpvUmNCajVUdFVFOHlRQi9oWStI?=
 =?utf-8?B?V21hcjFGNDNjUVJKSHZrbDFVQzErVDd0QmxFMzI3dVpuUElVc09laHQvSDdh?=
 =?utf-8?B?b2UyTDJ3bzhjbVhPR2taS2hycFBFMVN0bEdWcTFPY1lGQzBObVFYUUliZWNw?=
 =?utf-8?B?Rm94VDNqSUF4ejVCWWpnZFVEM0hrM0IzUzRCeWZSTndJbldVMll0YTVsTU9p?=
 =?utf-8?B?ZEx3dGpVa1BVSUFPQ3JyNXhaNzV6RFJkc2YvcmU2T2dWemcvbUtOMkFsdDlr?=
 =?utf-8?B?R09CWUsvZG8zMnhwMUkzeHIveXlTZjRZM0JGNWl0NThiOGVqem1Ia2hTUWFJ?=
 =?utf-8?B?Y2p1a2VsbEV1UjdJbXdYNjB2eGw5SG1acnFUS2ZxYWJwazN1eU9pVzdhTWNL?=
 =?utf-8?B?bnV2Qyt0SjZ6WEpIS2JSTS9RdjdJbGU0ejBsY0M3cXg3aTNOYU15RFlhRlVM?=
 =?utf-8?B?eFlRWVh3Nm9qOGY1WitWMldITUVoUDlacllza2NpdVlhd3Y1cWZvNDV3OGF4?=
 =?utf-8?B?T0FpcWgwemFwbTJTMDFmUFhFT3lnUzIzNTFxUzlxZDZUcVFkNFhrWlhPRTY4?=
 =?utf-8?B?aXRCci91WmpTL0ZlVVNIczVRNjdNVzc2d2RjZ1E2eWNOYXllTFVCSXlDYTBL?=
 =?utf-8?B?Ri9WNlYwSVNFczhjbEUwUllBRllGWnY0UEVXM2V0K25LN1RtTWhxdmt6dGpp?=
 =?utf-8?B?MHhleHBTM05NMXI5aWxRY2FSdzlxc2RNdVdwekVvdGpucVZQQnNWQ0dmVm1u?=
 =?utf-8?B?SVI4S2M1Njh1UjVTN3h4WEdFNWxtOTVnaEtDY0RaWmN4d1ZRVTFJSlNrMUtR?=
 =?utf-8?B?TlU1Q3UyTGMrOUUxU1B5UU9lYlQ0TGNLelB6OFFkUjlCQTRtMmxiUDN2Smh5?=
 =?utf-8?B?SnYrbThHMWtIajA2RzdUL2wySGJ2RUFIbnByMW53UlIwMUJOOUxKaW5MYitZ?=
 =?utf-8?B?SGQvaS9ORGNqRUpEL2pVS05iaEtJMEc3WTUvbzV0VjBTWFAwTHpXYWMxcTJN?=
 =?utf-8?B?SlVOYWJPWGNRZWdjMzd2b2htSDUvSWNUczlhalpKclFrY3JQYXR2dndjckFE?=
 =?utf-8?B?Z0xBRDlVUmwwSWxoek9JTUFLRkErZ1Q5MGwwSCtLakp1Z1JJdXJTc3oySi9J?=
 =?utf-8?B?REpLMTVGU05tMTlEWVFzMXkyUUxtQU9OTWJWTmhvNzJ4YnpTRlVVYWdWdEVz?=
 =?utf-8?B?aTFpNlFYc09UL0FJSTExUlpad1NoTkRvZzhrZTBVQit4ZUttRTVyL2xzSGRX?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e66a73bf-474a-4cf4-584c-08da63cfe144
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 06:29:31.7579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0qnVS9wkoAPX8eQHkwuR5wR336F3QFsgy0yT7pWhNO5ywm8lfoYsUXR6ObN3T4nHjpyNZPl1uZDR9RapTb8C7nP88U73QXeT7kgkc7Z7ADc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4491
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Only kick the signal
 worker if there's been an update
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

Many thanks for taking another look at the patches.

On 08.07.2022 16:40, Rodrigo Vivi wrote:
> On Fri, Jul 08, 2022 at 04:20:13PM +0200, Karolina Drobnik wrote:
>> From: Chris Wilson <chris@chris-wilson.co.uk>
>>
>> One impact of commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove
>> dma_resv workaround") is that it stores many, many more fences. Whereas
>> adding an exclusive fence used to remove the shared fence list, that
>> list is now preserved and the write fences included into the list. Not
>> just a single write fence, but now a write/read fence per context. That
>> causes us to have to track more fences than before (albeit half of those
>> are redundant), and we trigger more interrupts for multi-engine
>> workloads.
>>
>> As part of reducing the impact from handling more signaling, we observe
>> we only need to kick the signal worker after adding a fence iff we have
> 
> s/iff/if

This is fine, it means "if, and only if"

>> good cause to believe that there is work to be done in processing the
>> fence i.e. we either need to enable the interrupt or the request is
>> already complete but we don't know if we saw the interrupt and so need
>> to check signaling.
>>
>> References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> index 9dc9dccf7b09..ecc990ec1b95 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> @@ -399,7 +399,8 @@ static void insert_breadcrumb(struct i915_request *rq)
>>   	 * the request as it may have completed and raised the interrupt as
>>   	 * we were attaching it into the lists.
>>   	 */
>> -	irq_work_queue(&b->irq_work);
>> +	if (!b->irq_armed || __i915_request_is_complete(rq))
> 
> would we need the READ_ONCE(irq_armed) ?
> would we need to use the irq_lock?

I'll rephrase Chris' answer here:

No, it doesn't need either, the workqueuing is unrelated to the 
irq_lock. The worker enables the interrupt if there are any breadcrumbs 
at the end of its task. When queuing the work, we have to consider the 
race conditions:

   - If the worker is running and b->irq_armed at this point, we know the
     irq will remain armed
   - If the worker is running and !b->irq_armed at this point, we will
     kick the worker again -- it doesn't make any difference then if the
     worker is in the process of trying to arm the irq
   - If the worker is not running, b->irq_armed is constant, no race

Ergo, the only race condition is where the worker is trying to arm the 
irq, and we end up running the worker a second time.

The only danger to consider is _not_ running the worker when we need to. 
Once we put the breadcrumb on the signal, it has to be removed at some 
point. Normally this is only performed by the worker, so we have to 
confident that the worker will be run. We know that if the irq is armed 
(after we have attached this breadcrumb) there must be another run of 
the worker.

The other condition then, if the irq is armed, but the breadcrumb is 
already completed, we may not see an interrupt from the gpu as the 
breadcrumb may have completed as we attached it, keeping the worker 
alive, but not noticing the completed breadcrumb in that case, we have 
to simulate the interrupt ourselves and give the worker a kick.

The irq_lock is immaterial in both cases.

>> +		irq_work_queue(&b->irq_work);
>>   }
>>   
>>   bool i915_request_enable_breadcrumb(struct i915_request *rq)
>> -- 
>> 2.25.1
>>
