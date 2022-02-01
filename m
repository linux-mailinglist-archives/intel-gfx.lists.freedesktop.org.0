Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DC94A6050
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 16:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35AD10E379;
	Tue,  1 Feb 2022 15:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF0910E379
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 15:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643730115; x=1675266115;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wuFoa/fj4RMUTss3VEuWmfuZtmLRD2LrS/3yGk9Cyvo=;
 b=PTdWi2I5v+teMB4NodvBAnSJi43/1JGfLgeeIhnllmcUIS7j6OxpKNGw
 mOuI2tSrOTDhIuGq1MeIwwBtZ3U36n7oK856haKVT6MX3QcYIaDTRcWQU
 MCE1bZWxayZ8FY5oQ8NimaeH87hQPVJOiiZlb06EvN5e/cIeKwEjsCpNS
 HQQcYhuzxUx822gsullpOR7f1ire6RivH1O1yuqpAOIn33TrRYiZMg9Xu
 tQ/2u6hejQ+mvrItA9E7+f78/e82jaQP0CyOwR/gwQGmJv6ZmfpiimWKa
 Qfe6aQJMbehDRZn3Eq3d5SthG/0wK2RlyXjiVXHaN2jDcbAyKV6ML1M0X w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247933266"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="247933266"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 07:41:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="482422085"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 01 Feb 2022 07:41:54 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 1 Feb 2022 07:41:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 1 Feb 2022 07:41:54 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 1 Feb 2022 07:41:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRqrdDz/K+zBYJtYIug+So9GcOqm7qYLe3RsnVvXHVU6NSVl6rxSaoByD2s63U/ctzsp4JpogJ9Q/XeeRRO42jkuM3Hrsh/rcr9g2o/SmuxdJBCxLUxqw0Lb0LfIPBqV9UHXixXzEbAZF0PvaVEVIOwONdnJhRZ6dhZCvpvqtGuj/4bWM340a/exfMjudJr6VtFcQgvfqu4hFe+NUNeGtHEQUvz9smlsNUWxIJDCLjB7S0VSgXXcYpe5TmcnMcKORQ+Y+L6S0Q6WgwsrXZQznM37HoAvysDSEaWSLmPOqoUdt3kpqhAPWCqOH96hdjj39tRhBC3ONLGPVp7WLcoEtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amfwiGEsonKMxWlvH+B5/2xnU/1HlrBbUQkWLm3aHfA=;
 b=kh8tWBSi2kqfzlBLbj19nlXXGQsWVibvBHeS4GJDngO0WJdmK6E5vpQXujIzGWubgNZBTZX2kwY6fR3BLZUArAlsO0tiq73A1kJN+/yG5vpgcZ65WaGiceC/v0B3CGVGBsdOe7uSW82cDMlrZiFB4UchVC05b3YStpNMXWaU5KGlQZpgE+CpMMHREitVfxIfJLaQVssVJbrmO94bYbg0qv7nz6KfUEI6JEwJZC8KLityXaVnfr+5EDFJrX+Q2j8Jz4D8y2wZsMVYCM7+QrUxRCE4RlhRlioY+2yM77Me1I+2nnCAtKjUDQZOb05n9a37XmJ45ov0ea99eRf2iNNQIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1645.namprd11.prod.outlook.com (2603:10b6:301:b::12)
 by BN6PR11MB1618.namprd11.prod.outlook.com (2603:10b6:405:d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Tue, 1 Feb
 2022 15:41:51 +0000
Received: from MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::c57f:45d4:4b3e:38a0]) by MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::c57f:45d4:4b3e:38a0%7]) with mapi id 15.20.4930.022; Tue, 1 Feb 2022
 15:41:51 +0000
Message-ID: <c097fde2-7b69-7d7c-ef06-ca81edc9046d@intel.com>
Date: Tue, 1 Feb 2022 07:41:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-5-michael.cheng@intel.com>
 <d1f41d2d-6b99-6d7d-d7ee-df789da077df@linux.intel.com>
 <cbf63d18-9443-d4ee-62b4-784079bdf28a@intel.com>
 <95cef15f-3464-aaff-c1cc-96e00b13f48c@linux.intel.com>
From: Michael Cheng <michael.cheng@intel.com>
In-Reply-To: <95cef15f-3464-aaff-c1cc-96e00b13f48c@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:300:4b::27) To MWHPR11MB1645.namprd11.prod.outlook.com
 (2603:10b6:301:b::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92ce97e4-ca3d-46f8-3eca-08d9e5995d95
X-MS-TrafficTypeDiagnostic: BN6PR11MB1618:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR11MB1618760F9E1366B874736CF3E1269@BN6PR11MB1618.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AnRVFwziBxrQ+gnRqxpH24NE2uLoNk4Wyec3AKaI+4K4j4MK8jfrJEKwviV5mQIk1wq2LtnPVwmZjpfYyMH7uUfrAqtXGhOgxN+mhIV0B8vrp75rzjVdN+OesBIOIb3FcR6yNuSv+Jbreb27DOIlQyHM8FmaSK0mLhJwcfkQ7+Ad0uWZEwiulus2G89YXlWvIkkZgaBtZzwEYi9qSxtOEUf+3yXlMS7MJSU1vJ2xWlKqicp1IrchIAk0HU6rQbuo7saaSbIseSFUUHfBxPsdnCmEK5EKkCgT2AT8KS54BgYtutCM5OpAItH/LyJh3QGHBo8KcLOrCeqmOB1Gfqs7C4SrzE8fXYqgX8SJjKqyO7Gh/NX0cGW9Ih9Hnrma1LtgpW4Iek6WU58pwiUmc2QV+Y7LDJq0VdiAKI/aJe0cd5PUK2F5q+Pijsa1qHTDc+0c3l5HKUjyHwtzj2/5zghNQX/qgaec8leqUc+WnczDz3yPeRKy6bJ3URJml4YwgxWNMBiYvaSJGJ+tPtDCR6QjiHaWEgJrpcXoZaHgjCSRqvoLwyuYZ/037VyassNhD8ulX8u25xRpjnqj+US06rxmvjpEO+Mc1zU9/QvshtVixqah066iUrW6cOkdtFbEohDlAcLDak2EHjBi/qjk5mKrlXcWI0VKfEBbgXGd6xv/Ntg839CR5bXoghfGekpmKo2FfAg2lRvvNy1Ab4vHdvJ5tRX1MTsGfV2Dxlpi0TM0Y5M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1645.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(6506007)(6512007)(8676002)(66556008)(186003)(8936002)(4326008)(66476007)(36756003)(31686004)(53546011)(38100700002)(6666004)(316002)(2616005)(508600001)(31696002)(86362001)(82960400001)(5660300002)(6486002)(2906002)(44832011)(83380400001)(43740500002)(45980500001)(20210929001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sk9UYnlDZXNuYWV6N0k2QjNtb0FwTnlodGpyVHV3dE9FeXp0bmFzVUpNOXpF?=
 =?utf-8?B?dERMMUhNaWxrNUx0a1l6SkFnblVBTnV4TlJiVWw2a21sR2dEdVJPN2JjQ2xj?=
 =?utf-8?B?a1FrMU1IbllJYWJVWnQvMGF6eURieCtVRi9pY0lXMHQxVVBON3E4citRR1ZY?=
 =?utf-8?B?aTIvamQ2OS9hb0xxUVdpN0pKMVM5dm1pU3d1eWJxRnNlcDFSbUQ0SW0rSTc5?=
 =?utf-8?B?Vk5KYnpWcDZ0L2lFMWN3QUc2WlE1RWxRYVRDUHV6bHRMWE9vWlR2N3k4MWZU?=
 =?utf-8?B?djJvb3ZkM1ZWSWVGYi9tT25lWDJVM0pjd241Y1RSZDhKdEVjYlJUZXl0emEw?=
 =?utf-8?B?eGVxK0Jkc0pTSFY1WWhDeTJyYU5sektEZk5VY2sxL0tMeEJ3M0I4dUhiRnZE?=
 =?utf-8?B?R09yM2czbmFERnJTRnBBR29jRWxVOHVrNFBYR1dyUnJyTWdpajVEWmdsRE5P?=
 =?utf-8?B?dnI2d2JMSVdySUg2WHU5NkNpQXdtdnRIb2VRc1FwQlRndFJzNjczVU5PbUpy?=
 =?utf-8?B?cDlKS1FvSGI1RndZd3ROOE5Lcy9tY2hNTnhmSjJrdE5FY1RVY1l1VGoxQjc1?=
 =?utf-8?B?c29FWWEyazJFK2MrakNXNytKS3hRc25TQ2tZeFhCWGMreDQ0RFJENmZWT2ZD?=
 =?utf-8?B?NThieWdWN00zWTBaTFJTT0RyQ0tRaUE1c092QU1CU3h0T3NTQWVrUmJvVnQx?=
 =?utf-8?B?S09mZWpuMEVnNXptUnlsOHIxQmc1a05wa2Fwdyt0bkg5M2xwdGlkWkRXazI3?=
 =?utf-8?B?ZXZvdGNJeHBENXd0ekhNeUJBRzJnRERhMmluMUJ3L2xmZ28rb043MUIrQWJj?=
 =?utf-8?B?L2RIdHovcUhHOXZETDNRUGdvQ2FJM2xwSTJ4RENPakNjeXhLeEFFTnR1aEVh?=
 =?utf-8?B?ek1VcGMzcjNodjYwdzBWSXZCTnV2OTZtdEpzV2tRSVlmOWsxSURNbmhjRW8v?=
 =?utf-8?B?UjBxbzN4Zmp6cmowN1FTc3JTNk9mVFZPbDlJRFIvMDVnZC9iczliaEpVL2hF?=
 =?utf-8?B?RVppVkllM0I5cUo4THp1L2pLSlF1NDNua0xzbUd4Ukppa1RMY2JCMkdacDJY?=
 =?utf-8?B?Y24yNUNDdklKdCtoR3h2RGthQzVuYnZOOXhqM1d5RWpycm93VlBqQmJndWFu?=
 =?utf-8?B?SU9JTk1yMjE0blh2Vm91cStjcFR2K29xUElqSnBhUnlmMmpwNEM4bGprN09K?=
 =?utf-8?B?NGFVTVB4clBudUFTemJtakZOZHVyb2NMam1XSCtQSkNadDdlbkdrekJRRzhn?=
 =?utf-8?B?blgwY1NTdklvMTJTVWtIbW4wQVhPZHVqeUlxUngrTVVRRk9SV09sUU5rOTNw?=
 =?utf-8?B?SHl6cnI5SUJGYmJGOU91b2txSUlzaXBCU1A4VlpOb2tDSkU5Nm1idlkxcUNS?=
 =?utf-8?B?aHI4ZitwQk1JV0JrUldrS09hbXNEQndONVFHK1ZqTlVRVm9Jb3c0R0wrWXM1?=
 =?utf-8?B?OWMzK3R2OW81aHJCSmh6S2tpeDFoRmxNK3lNanNNaUpxbFFCY1ZEQUlpNVVT?=
 =?utf-8?B?TUVmbVMvaWhiQjRVOTh4cEJYOEs2aFM2bkRYczRyZTZxcmtxZmRuWjVkWVB5?=
 =?utf-8?B?ZkczMjN5TXZIN2hOZ0tPMm9pU2xSb0I0SHBra25SUlV6Q1VZcGRRMDJBRjVE?=
 =?utf-8?B?UUxjYTZiRXllaDA5bEJvN0JkU2VZVnVLYnFmbzkyYkwvRVVEbEV3d2E0T05q?=
 =?utf-8?B?UVJLTHJCdEJzZ2N2SkpDa3hKTWZpY3FzRGp2ZHE2TUFHNC9lY1RLRXBZbVZk?=
 =?utf-8?B?NUhwUm0ySDRPTVZMaHpnQXlTUWpaWE5taUNQeUJpQ1RhblNoNmVnb3NBNnNU?=
 =?utf-8?B?TXpUOEU3U0JYVHN6Q29lODRVd2lrSi93ZVdZRU0vbElIKzBLcWI2Q2VHMlg0?=
 =?utf-8?B?M2E5eXBOczlWUEl5VXFUbmhkNFN3Q0tPOUMxOFdISjRhZlFmWkQyUmFJNGRm?=
 =?utf-8?B?V2lLb2IxM2JmMFVsdzk4WWtMbktwR0EzL3Z5V2Y5Z1BncDNCVFlLVmhtRVdZ?=
 =?utf-8?B?bHRUQktlWG5NaERLRnlYelVtNUFDcWtVZTZYd3BhUk9yczArSG1hc3ViSmNy?=
 =?utf-8?B?dVZuY0FEZmJ0a0hFendBZXlYVUQ0cTlFOWxOTEZlcTBIRmRXVk1sUW8yLzVS?=
 =?utf-8?B?cENPWWhnNm1kVURZR0ZPWlZ3dUh1UVF2TG0xeVhoVnR6cndEUU5ldDdrdXh4?=
 =?utf-8?B?RFh5SXYxV28wbFBEUGc5R2ZKejFUcW5UTVd2OFo5d2ZsbjUyb2cwcmp0aDl0?=
 =?utf-8?Q?eGI0d/7AUwmtoQ1h0TlAbcIVmBiuXpb1dlssUG75PM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92ce97e4-ca3d-46f8-3eca-08d9e5995d95
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1645.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2022 15:41:51.3704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2urWkQwtSPCcE+qPAeT/SAP433a+/UyZJcxrewQRmEQ7iIrFs1fORly8/oYWm0IiO6ptx1Bsbj6kVcXulY/ZCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1618
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ah, thanks for the clarification! While discussion goes on about the 
route you suggested, could we land these patches (after addressing the 
reviews) to unblock compiling i915 on arm?

On 2022-02-01 1:25 a.m., Tvrtko Ursulin wrote:
>
> On 31/01/2022 17:02, Michael Cheng wrote:
>> Hey Tvrtko,
>>
>> Are you saying when adding drm_clflush_virt_range(addr, sizeof(addr), 
>> this function forces an x86 code path only? If that is the case, 
>> drm_clflush_virt_range(addr, sizeof(addr) currently has ifdefs that 
>> seperate out x86 and powerpc, so we can add an ifdef for arm in the 
>> near future when needed.
>
> No, I was noticing that the change you are making in this patch, while 
> it indeed fixes a build failure, it is a code path which does not get 
> executed on Arm at all.
>
> So what effectively happens is a single assembly instruction gets 
> replaced with a function call on all integrated GPUs up to and 
> including Tigerlake.
>
> That was the slightly annoying part I was referring to and asking 
> whether it was discussed before.
>
> Sadly I don't think there is a super nice solution apart from 
> duplicating drm_clflush_virt_range as for example i915_clflush_range 
> and having it static inline. That would allow the integrated GPU code 
> path to remain of the same performance profile, while solving the Arm 
> problem. However it would be code duplication so might be frowned upon.
>
> I'd be tempted to go that route but it is something which needs a bit 
> of discussion if that hasn't happened already.
>
> Regards,
>
> Tvrtko
>
>> On 2022-01-31 6:55 a.m., Tvrtko Ursulin wrote:
>>> On 28/01/2022 22:10, Michael Cheng wrote:
>>>> Use drm_clflush_virt_range instead of clflushopt and remove the memory
>>>> barrier, since drm_clflush_virt_range takes care of that.
>>>>
>>>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
>>>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>>>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>> index 498b458fd784..0854276ff7ba 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>> @@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma *vma,
>>>>   static void clflush_write32(u32 *addr, u32 value, unsigned int 
>>>> flushes)
>>>>   {
>>>>       if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
>>>> -        if (flushes & CLFLUSH_BEFORE) {
>>>> -            clflushopt(addr);
>>>> -            mb();
>>>> -        }
>>>> +        if (flushes & CLFLUSH_BEFORE)
>>>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>>>             *addr = value;
>>>>   @@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, u32 
>>>> value, unsigned int flushes)
>>>>            * to ensure ordering of clflush wrt to the system.
>>>>            */
>>>>           if (flushes & CLFLUSH_AFTER)
>>>> -            clflushopt(addr);
>>>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>>>       } else
>>>>           *addr = value;
>>>>   }
>>>
>>> Slightly annoying thing here (maybe in some other patches from the 
>>> series as well) is that the change adds a function call to x86 only 
>>> code path, because relocations are not supported on discrete as per:
>>>
>>> static in
>>> eb_validate_vma(...)
>>>         /* Relocations are disallowed for all platforms after 
>>> TGL-LP. This
>>>          * also covers all platforms with local memory.
>>>          */
>>>
>>>         if (entry->relocation_count &&
>>>             GRAPHICS_VER(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
>>>                 return -EINVAL;
>>>
>>> How acceptable would be, for the whole series, to introduce a static 
>>> inline i915 cluflush wrapper and so be able to avoid functions calls 
>>> on x86? Is this something that has been discussed and discounted 
>>> already?
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>> P.S. Hmm I am now reminded of my really old per platform build 
>>> patches. With them you would be able to compile out large portions 
>>> of the driver when building for ARM. Probably like a 3rd if my 
>>> memory serves me right.
