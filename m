Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8443B62047C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 01:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5348310E320;
	Tue,  8 Nov 2022 00:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03A9E10E320
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 00:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667866302; x=1699402302;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VzLomWYmoABKPNTG0wY0n2y4WACReWc9grAwWJipSKE=;
 b=ZssB2AqqJwUbfXv4U4B2xJxicu8SPr4ED7hQ7uUbRwoWvRl0JxFFX+R7
 AJIqjwCiojmTdmIcOa2zPuxQthKTK4DSIAhLgPO10Bo2ZeNzgP9i88U2w
 86pczu8KuMXaFn++7YZn27Rqdty9Evc0UY+pWRsoh8zOdsXMXffOUEDL9
 iFws3khyko06K4oz3H50yV9uGkWANLS/SlBMXqdBArICWTVJEvCo7dPNi
 grywn+P16m8nWEH7C1LJt6tlrabPPREd1bHtp0cxs3F2Cy1yGyKnhxwQD
 0Un7UOLwAS/f0BUErZSVyqeg/G2ukFlI+dB2qKHMMop7+GUk8HUW0l10H A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="309266301"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="309266301"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 16:11:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="630675233"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="630675233"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 07 Nov 2022 16:11:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 16:11:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 16:11:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 16:11:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KXxfPv6L5rA+GB/2J4Sg1zj8DQhkid1BaaoioYWRCUUrUtoKGwpo5cLfVW5tfShMWh6yoIYMnTCaIrF88VeFF+rKcZflMYkdXNyKlerhgJcYFMWYW0X5an6zeMQ/fSSc5/rVU+g13sbF/ESLkI7OV5qpftGDTgv6FMv1NkwvjYgHwGvAKD+OU9eZ2tTfymyibgIzNLtrXtgiJbJkuJ6MuMzmBLbdM9DeURq40iX8vqGC6DVROsW2banYLsXpf5bTaIbpihBE5RnfgSMkQaqOsvOAL6jDafr9FniPKXKbdVFJgINvfsLaFrWXcNJWd/seZX+yw1dgQV1ZkpHEKFFDOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AouCljejCg2vq3yLoAYegqlc2OaISUJdFJXdhF+kge8=;
 b=Jlh/1BDk7EHHOYvp5Y6u65eL3kzsDRdI5SIpzPz4d4TxkZbWn00hw747gIWjavLCnOqWmQhMp9KhHe2U83/WSDygONMR3KQfeuo/t7RI5KdTvVQVI1cC9BfB/754W0w3oBhakVLHW0+vpuOub0FvurhaIJsD03CnXOCRcJ1OO+r0SfinF43NmkjEZizq3yBkO0FNsUV9xHDktr0IT3TGLGJSm2tw4JNJsWENOH1rJ4XGlM6aBCtP9ANiCYMPuFb/s2PfODjRU6XvLK7NhyknNN3GEzR2RJ4mqUNTsl9kbSjV7UZqULysnnqZrfvYHojQwivUUpYbY2Mah5sXuvXzmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB6608.namprd11.prod.outlook.com (2603:10b6:510:1b3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Tue, 8 Nov
 2022 00:11:38 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.026; Tue, 8 Nov 2022
 00:11:38 +0000
Date: Mon, 7 Nov 2022 16:11:27 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y2mer/algb78p4Fh@unerlige-ril>
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
 <20221105003235.1717908-2-umesh.nerlige.ramappa@intel.com>
 <a6daeb51-8552-9f26-94c0-425ae1e24077@linux.intel.com>
 <87pmdylarc.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87pmdylarc.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR06CA0009.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::22) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB6608:EE_
X-MS-Office365-Filtering-Correlation-Id: 25633ee4-9124-48bd-42cf-08dac11dcddf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YNCqkBdGimN5JICld8Bc5ES2xh7H0KnXdjCDbhCsK1H7rajZvYCE7zuoCXvTu9HTYDCeGL5J5hOo3FfiNajY+Jf0B9zlrKVJfYWL3nNPcfY+lyovFhhhU/Rmex5FJcs8mk8Ja9f+n3y3g8IQti26kNHm7y6C/pb8d3gmNtIqd0ybemg1QVBlN48d+AQgjDXOF5mur8UkyQNQ6sYSuWSzN0fax5tqGl6vEuJJQEIbv1t0ZLGRzohUmgG9sIIt/lNIyO07nLMT3H7eP1kxD/KKpirs3LJwMfwupA2tzkUigpgW6IBPBDgbH3eTl49k1lTzKz6KBi2M8LAlF2EeKVm8BoJlO04hbAiEUoGzU7XzYizJVllvf/xoZGl/wxvbrM19Xm1hEf5L/9dAFnTb2whGBGdSMOO5kl4TjIO/c6bRRf1hHsXkV0CbnbfhDCaZdliNlfBdKY69vDhVcdfhzhajWZSg4/UjnvnSs65H9PRvUSnUD2hAf9Hpp/sGKueXvPtZ4fy6ggCR3Xs5hMYDXOBXjdRZibFCyWC+CmAi9uDWXGED0yzcIjc9dLxNuFMrEhWm+G9U7sn0a9t50jvBX21sWp5vIN5FSx/LEXksP7cTioW56Rey91yZ6G4vSw1tWJNQHXdOq/WLB6+lvRscGU7/eW1QKVihTn/qFzHGfQPD9EvUdCn8K25M8GrZvOxL8WHsWR3Bppa2tJZdzSzgr8BJuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(39860400002)(136003)(376002)(396003)(366004)(451199015)(66476007)(6486002)(6666004)(6862004)(6636002)(6506007)(316002)(6512007)(53546011)(33716001)(8676002)(5660300002)(478600001)(26005)(8936002)(66556008)(66946007)(4326008)(38100700002)(9686003)(41300700001)(82960400001)(2906002)(186003)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE1qL2JxSkZSNHdra3ZhMFpDNDhEZmJQN0hvYUhRVEx5YXlYekp3SThRcURs?=
 =?utf-8?B?UWZCSlczYXl3cEJtK2JBOFhNNVcwM293MXljYjFJaTI4bXY0ekZSZTUxTTd2?=
 =?utf-8?B?ck8xblFRQ3pqZkljUkxWMjJObEc5VzU0ZjF0ZGNBbVBFemkvOEZvVGtTV3BY?=
 =?utf-8?B?cmgreVRJQ1hpeFJCVmN3QjhWLzE5VTBCU0FWNlo5dFFEd21pZ3grTHd2VUdV?=
 =?utf-8?B?MVA0L1JGRlRQSTlVUk1WUGtoSDhMWHNUQ0NGdVovUlRyM3dBOEZHUlpLOE1G?=
 =?utf-8?B?eUs1aFA5NmhtWGFwbWlwUmtqRXB2ZFRlYWR0eWFMc09DSDZSZVZTeGd6TlFk?=
 =?utf-8?B?MXE2QWZxcEh3UkRmZjdrM2dmV0h4cTFxNUl6UDNYdWljN01CRDFoREJzQnly?=
 =?utf-8?B?UXVkd2RzL1JlaHJ4R29ES2lFSXRRMTI5VmNqdzFHRSt6K1Zmc0lRbXFESTY1?=
 =?utf-8?B?TnZKUGlWN045UHA3L1VJTHA0OGNyNnN1czZMeUhwb21HVVJLd1h1R3loai9k?=
 =?utf-8?B?VzV4UEw3dnFGREVVWDVMYU13anpyV1M0TDVJUWxKSHkxVEYwOXdWRnBPK25a?=
 =?utf-8?B?SFo5c3VnY3AreExHZFEvcVBhSTlOTVdKRWViL0J2RTJUZXdJVFA2SStzUXJn?=
 =?utf-8?B?SGkxY0tUajNHRm9uNitWejhHTmtWK1NoQUNOTWJxSUZkbDB1K0sycHFoL09j?=
 =?utf-8?B?RDNXMkdzUnBreTFxNC9hS3JjQmFxL0hmTU5MUGhPZ3BVNEZRYW9GU0pXT1JK?=
 =?utf-8?B?Y0NkZU1MN0Zia1VCVXluM0NJak5xOVgrbEVpSlE5RTlwY29yelRqVVhxWEdh?=
 =?utf-8?B?c1A0WkVvQ1RNR2Iya29EbUZJdnU1YmxuR1pvMzNLQjlBcUo4YWQ5d1FmVEJj?=
 =?utf-8?B?aEJ4TU5NVGNHWE5FU2ZySU1RQnE0M2pLSTBiZ1I1WEtFYnRxZHE5Z1R3QWg4?=
 =?utf-8?B?emRqV2ZhRFQzYjJ0Mng2SEtjcEgzUWJyRTJqYmc5akkrRHlSa3J6SXR0ZGZI?=
 =?utf-8?B?VVdjeU9uNDVESzJwNklDMk84R2E3UmgrTm16cExxUHBCL3FMMzB1WnZRREhV?=
 =?utf-8?B?TGVoeXE3V2xFbm1vRmN1ZlRZelRLamREVHRvclhyYXdaRzVhU2dNK0tXbHVR?=
 =?utf-8?B?MGVKbmNWMFlmL0hFK2JVK2JrcUpkUGxXOEFKWkVjdmlnSitVTHMvRnFTalBX?=
 =?utf-8?B?Njhya090ZERTQ3RhbXVDWjVWUlBUbW1QeWpsZmxlenREaVMwdC9pcy9zRHg2?=
 =?utf-8?B?RmtKQTFIYUZnbmJ6UjBzT1M5L3lZdkM2dXF3VU1yU2tieG1nckZuWXFJZml6?=
 =?utf-8?B?ZUVKOGtpYU0zdFFzUncrMHdGWGNwaDlCWkt6WGtSV3ZGelBaaE5tRVBYRmdU?=
 =?utf-8?B?ODBPWTV5VU1PbEJlbjRqc1loV0hVamY2L2UyTUJsbXJHNEpwTklYcUtMd3g1?=
 =?utf-8?B?RGhTVGV3QXhQdWYxczRXNE1lTHAvRmJCSDZHdmdrQkp0ekZtRHFlMURYbUpW?=
 =?utf-8?B?TWRuSDFhNnRIbnRBaUNNaHRGS2wwTzZ2a0lNWmZUTkhPdjZuYW9tUHVlcHNl?=
 =?utf-8?B?a0VjbVNuTGgwSk9jQ3dSazdnM1AwcVdqaEFRbzY0VjUyMnREZmlhSWx3R2tN?=
 =?utf-8?B?TUloQWtMN084T1hIWkRuRFN0U0ZJM1dVZ2RSS05rellVbll1WmNYckpkTmhr?=
 =?utf-8?B?bWNnOGNlaTd5ZkpwdWVZVVRNUXFSWDgzYnNhMFp3ZUR3Z0V6ZXRrYy9FSzNo?=
 =?utf-8?B?Tm9xbnhrUWNxZUJlMFBHenJTblRPdlFUck5LTGxXekJrRWZSbGhOQUtPMk9x?=
 =?utf-8?B?RHVXZ2svZyt6ZW11aWRhMmp4c0ZWd3ZVQk5aMVBTMHlHRnhMUzJONDVxQ2pJ?=
 =?utf-8?B?bFNSYUY0SjJPTlVyakpGa09mdUg2WVh4YzFPS2dRSERZaW80OFFSTndtUTR1?=
 =?utf-8?B?cTlaTnZ6YnBDd3NFM0hLWEdxUFYxdTBxaitVSHdVVUhyZzdRM280Rk9wWVJ2?=
 =?utf-8?B?ckNtUGJFbDVDZThjT0pXeE9WMzBDZkxLSTg3VVhjQ3VXUVRPUE90bjB0Yktx?=
 =?utf-8?B?M25GSkZZU21YZzZNbXVoWXVnUUZpVXlEbGhsL2RhbWszTjhVUXdTb2JGdmhU?=
 =?utf-8?B?WHV0aCtJR0xZV2Q0YTYwN2ZYOTZLbTlNTVpRL3V2Y3JDNW5wMTlXU0FLT2ZT?=
 =?utf-8?Q?EiKD47bRtLix+rdAC5bMdkw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25633ee4-9124-48bd-42cf-08dac11dcddf
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 00:11:37.9769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LPvNr0MDbPTyieS+WWK1YGr0iMNhFTLUawnRzROZDa72tle7xdq86ReGvpzujOsdGI0ayGw4TYa78TwR1/sIqWeKk8Ja8910AeASuNG84EU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6608
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/uncore: Acquire fw before loop in
 intel_uncore_read64_2x32
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

On Mon, Nov 07, 2022 at 01:23:19PM -0800, Dixit, Ashutosh wrote:
>On Mon, 07 Nov 2022 02:13:46 -0800, Tvrtko Ursulin wrote:
>>
>> On 05/11/2022 00:32, Umesh Nerlige Ramappa wrote:
>> > PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
>> > 32 bit registers are read in a loop, there is a latency involved between
>> > getting the GT timestamp and the CPU timestamp. As part of the
>> > resolution, refactor intel_uncore_read64_2x32 to acquire forcewake and
>> > uncore lock prior to reading upper and lower regs.
>> >
>> > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > ---
>> >   drivers/gpu/drm/i915/intel_uncore.h | 44 ++++++++++++++++++++---------
>> >   1 file changed, 30 insertions(+), 14 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>> > index 5449146a0624..e9e38490815d 100644
>> > --- a/drivers/gpu/drm/i915/intel_uncore.h
>> > +++ b/drivers/gpu/drm/i915/intel_uncore.h
>> > @@ -382,20 +382,6 @@ __uncore_write(write_notrace, 32, l, false)
>> >    */
>> >   __uncore_read(read64, 64, q, true)
>> >   -static inline u64
>> > -intel_uncore_read64_2x32(struct intel_uncore *uncore,
>> > -			 i915_reg_t lower_reg, i915_reg_t upper_reg)
>> > -{
>> > -	u32 upper, lower, old_upper, loop = 0;
>> > -	upper = intel_uncore_read(uncore, upper_reg);
>> > -	do {
>> > -		old_upper = upper;
>> > -		lower = intel_uncore_read(uncore, lower_reg);
>> > -		upper = intel_uncore_read(uncore, upper_reg);
>> > -	} while (upper != old_upper && loop++ < 2);
>> > -	return (u64)upper << 32 | lower;
>> > -}
>> > -
>> >   #define intel_uncore_posting_read(...) ((void)intel_uncore_read_notrace(__VA_ARGS__))
>> >   #define intel_uncore_posting_read16(...) ((void)intel_uncore_read16_notrace(__VA_ARGS__))
>> >   @@ -455,6 +441,36 @@ static inline void intel_uncore_rmw_fw(struct
>> > intel_uncore *uncore,
>> >		intel_uncore_write_fw(uncore, reg, val);
>> >   }
>> >   +static inline u64
>> > +intel_uncore_read64_2x32(struct intel_uncore *uncore,
>> > +			 i915_reg_t lower_reg, i915_reg_t upper_reg)
>> > +{
>> > +	u32 upper, lower, old_upper, loop = 0;
>> > +	enum forcewake_domains fw_domains;
>> > +	unsigned long flags;
>> > +
>> > +	fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
>> > +						    FW_REG_READ);
>> > +
>> > +	fw_domains |= intel_uncore_forcewake_for_reg(uncore, upper_reg,
>> > +						    FW_REG_READ);
>> > +
>> > +	spin_lock_irqsave(&uncore->lock, flags);
>> > +	intel_uncore_forcewake_get__locked(uncore, fw_domains);
>> > +
>> > +	upper = intel_uncore_read_fw(uncore, upper_reg);
>> > +	do {
>> > +		old_upper = upper;
>> > +		lower = intel_uncore_read_fw(uncore, lower_reg);
>> > +		upper = intel_uncore_read_fw(uncore, upper_reg);
>> > +	} while (upper != old_upper && loop++ < 2);
>> > +
>> > +	intel_uncore_forcewake_put__locked(uncore, fw_domains);
>>
>> I mulled over the fact this no longer applies the put hysteresis, but then
>> I saw GuC busyness is essentially the only current caller so thought it
>> doesn't really warrant adding a super long named
>> intel_uncore_forcewake_put_delayed__locked helper.
>>
>> Perhaps it would make sense to move this out of static inline,

Are you saying - drop the inline OR drop static inline? I am assuming 
the former.

>> in which
>> case it would also be easier to have the hysteresis without needing to
>> export any new helpers,

I don't understand this part. Do you mean that it makes it easier to 
just call __intel_uncore_forcewake_put(uncore, fw_domains, true) then?  
Just wondering how 'static inline' has any effect on that.

>> but mostly because it does not feel the static
>> inline is justified.

Agree, just carried it over from the previous helper definition.

>> Sounds an attractive option but it is passable as is.
>
>Yup, copy that. Also see now how this reduces the read latency. And also it
>would increase the latency a bit for a different thread trying to do an
>uncore read/write since we hold uncore->lock longer but should be ok I
>think.

Didn't think about it from that perspective. Worst case is that 
gt_park/gt_unpark may happen very frequently (as seen on some use 
cases). In that case, the unpark would end up calling this helper each 
time.

>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Copy that too:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Thanks,
Umesh
>

>>
>> > +	spin_unlock_irqrestore(&uncore->lock, flags);
>> > +
>> > +	return (u64)upper << 32 | lower;
>> > +}
>> > +
>> >   static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
>> >						i915_reg_t reg, u32 val,
>> >						u32 mask, u32 expected_val)
