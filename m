Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C6A7072D4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 22:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA72210E2A6;
	Wed, 17 May 2023 20:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C93510E2A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 20:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684354541; x=1715890541;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=sVfdrHnmZymDx3UuiBly8KOXGwx9ba1AjsD5k9oxicQ=;
 b=hqcIiySmqL5OVYvAG24x85d8hgMp1OmhiNue2/fO93xYN24MUQJ1HsJM
 NarzDX8Jh03xsrihjS5TiyVJkRQa1xRvaqH9vzNrWN/AG//g7DYUuq60N
 lLWlro62S4DuwmrBn8Oa1a0ISikkKl5FJHtTJqdthLBWhE4oxY3BY8rP1
 7lUPZHcSYcn4DpccqcnwtWVh+Ps5+NOkmPJ7zboj2IZczTbSgebUozK4g
 E0nuoB2I810+6qHU+V1WuHkIJjVkThr4DdoSxgqrY6v0XTPwEWRpY28Wx
 R2CgD+7QwFN/9iD4QioiAqVtacTHvvWaFdJTTb5xZjB4vujnwdEJSESx4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="417527181"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="417527181"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 13:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="652357260"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="652357260"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 17 May 2023 13:15:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 13:15:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 13:15:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 13:15:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LF6ECNspo6jtlqCHGc823ygeP1tKXlt3VCNVbbrN3bVe95yZbRGqXW0/hKzHu5QZ7RPWQNQhby87vUUzae11pAq3gjIJId53KwBNYtG03n1/cgs4dnmHhheRK7lgm0Kx5XTsf99CMFQeXpdDQwFUh1u5vALh4ncFty/uvoL85FzTEyNNE7voGEFyPjAViUINrwI3Ji+07AeVKUniBcMFzIssgSYTWCTKmBYr0aoi0IyQKBZqCXMT7XNTFyfrZaApPa+aPN/8TJNk6XZjGNutfTaO6dLGrJgyGVWkZpqXJzITDOaQ8DM8VwgrWrUKi50OSne4cq8pCtwRL0IrkNpBFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IGkw68wzxS1HBs/hA9/Sz+pOIn2r0TtLg2FJkbsX5g4=;
 b=goV81WDbXeXzGTTomNuuH2FMORQ4evHia7vEks2kxeWmlmdgY7l/XesVAw3beYAzSDYRrJUsgBTaqn+CxKdOlEuujAueda5/r9hZP0P6hqEPjANcFwl7OK08FL2twgDgp5ZbhNxUR8VfObrbrOijocpwwXf31TwaqK20SPO6iAGFNINujvWq6iM/5qk9eJwjrrZrJmL6kUJVwmNq2AiONg+2kg7+o3ue3W6fU5JUOdFTyDDj8jfeCpmhltgliIsWJtC2nLPsUVCiooAo+stleCSrNdvoYnYFABJiLC37sXrIq6S6tLP3BWQW9h7EH2Z+0pZWCpF3uOfKh2Iz7ddPCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SN7PR11MB7638.namprd11.prod.outlook.com (2603:10b6:806:34b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.35; Wed, 17 May
 2023 20:15:17 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%4]) with mapi id 15.20.6411.017; Wed, 17 May 2023
 20:15:16 +0000
Date: Wed, 17 May 2023 13:15:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZGU10svBTH5OB1Uk@orsosgc001.jf.intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
 <20230516233534.3610598-2-umesh.nerlige.ramappa@intel.com>
 <87cz2zpzw1.wl-ashutosh.dixit@intel.com>
 <ZGR6ZnjlUqerD+nY@orsosgc001.jf.intel.com>
 <0a1babb7-80cf-cfe7-4746-37b76934175a@linux.intel.com>
 <87ednf3oyo.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ednf3oyo.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::16) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SN7PR11MB7638:EE_
X-MS-Office365-Filtering-Correlation-Id: 7211fde9-02e5-49c0-444d-08db57136e12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SP7W7Fq3X1lvD1u3xRF771LVRzexnSttDecsAuNa7yHHMZ0K7MgS95osDXw2yA6K1jUNIxUHEnRC99PApUyH2vQx9XhE0h3YuQQFFlZ8zDrsKzvfAs13e1T6MmpjY0nsx66Bd4fvuAcS21YOfu70LjSynTB7fD4ymAV58KGpxc5EJ+hfUyVfhAvksDut3dU/2sEA0lsOZjx2AMZqqQTXBv26BqIT5xijFDMEJMFir03ICwx59docrSFRH/tPDNoPdcsJYsJnByqH/0fEKw8DLFui1KzdYVob1QNS1N3yONx7l2XBBX/AbJp0GgRzzzVnX5fNLewxla2+RrHSZUqO/EACTjLVl9pYW8cvPUX+z1Y2o4lnkcobd5yIIWSqzWkexwsETH8mMN7xWBM2vS5RQyTJf2jMZS89caOoyBGh4NKNeI9+5eotsdgitpE+1to5isQqIx2udyr1D5m6ZZQ0VCuiNQATUmv/H5FbfKkfCYiDz7k9fqA1fv+qFpSut0+UYQeBrVw5nz4yrWd3/o8Xhmp+0ZzD/PIX7o7/vduJXCVk+uwpoIsRryxQCv92aHX/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(39860400002)(346002)(376002)(451199021)(41300700001)(82960400001)(316002)(66946007)(66476007)(66556008)(6636002)(4326008)(6486002)(8676002)(8936002)(6862004)(5660300002)(478600001)(86362001)(53546011)(26005)(6506007)(6512007)(186003)(2906002)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXhYaHIxT3pyOGY3czdHd1pRNVMxdkZvQjIrUkFNS0w4ckhOdFB1QkVISlB1?=
 =?utf-8?B?bFdaME1sMldGbFp0ZC96Zy9xOW1ITG9XdzMyYjY5cXl4Tmd0TW1VNk5HMkV0?=
 =?utf-8?B?WmNGeGM4NUNxMFU2aGRJUlYySjJZRVJ1b05Pbkw4TFUxU3dYbFRCbWR6Z2tU?=
 =?utf-8?B?K0N2NW5GVDBTRTZpV0Yxa3hXZ2NFOHB3Y0xDN0ZpcmRkaWt6Q2kzMGQ2K0VX?=
 =?utf-8?B?Y050RUg2RFU5YjErbk9MVXg5K1R1SzRkTWh3a1RndFNUSkNNdkM1Q25jcFJP?=
 =?utf-8?B?NUg4a1pKQlBZRGtoelNoMVBYRllROEZ1Sk1mS3B4VDN6Vmo4T0VybVVzWnhX?=
 =?utf-8?B?SUF0ZkN4dUJvSHRndFVTZU1yRHZpUndrLzNHZkRHaS9NTVdsck52WEVQY0xQ?=
 =?utf-8?B?UkY0ekpoL3hydkxycXRaYTNwYVdXNDNLTlhQVDRLTWpjN2JGTzVJZ0pkSnlI?=
 =?utf-8?B?Y0d6aGdrMHJWRlNMdU1sMWFUTEFaZ2xqZzVxWmJTYld3NkJGYXo2NlhMMFJz?=
 =?utf-8?B?aWRxaUJQL3RGRkliazBERVlqcyt4MHNWNTF6MFU0eEwremtjbVFKYkdabCtI?=
 =?utf-8?B?R0N0WjFlUllmZXZSOFhKY01NZWk1NUFIWWVmaGJKVmpTQzU1UUJxVTdFd2JG?=
 =?utf-8?B?MnJ2YkhaSXJEZmVCSWx6M085V0lMbEJEa3FPVm5iNE9USWhXVWNNSVQyYlRV?=
 =?utf-8?B?YmhnZkZKNFF5TTlNWFNnYkFBR0oramowYURoT29aU0FSS3R5TXN2T214ZHVW?=
 =?utf-8?B?bGpuUU9BR0IrN2doM3lVU2hVekd6cngwT1VwSW5KdzdmLzBFMDRIYnZONFha?=
 =?utf-8?B?aDViSXVtVk1kWGk1YThCOGJsTVVkTTZJcmVZdlNWQmpHQytLR3FOV2JaaVYv?=
 =?utf-8?B?T3RmN1lFeFVuSEkvMzI2Vy8zWmIrRDJGbU9jVDVzeENlTFY1bGwycllrMmdz?=
 =?utf-8?B?NHlsd1JWYmFtVTFvL2ZUV0hTT0VPaEFYeEUyVVlPVy9LRkVyZmpHWVYybjh0?=
 =?utf-8?B?TzZOUCt6QWFlSDVxb2N3U1JOS3hKVHVoUVN5dUlQL0tSWitFN3RWQ0xiMnEz?=
 =?utf-8?B?ZHVlcHlVMGZWM0RWOUErY25ZdFluTkVBMmNKZTMyTG9FeUFwcmlGa2FRNFo1?=
 =?utf-8?B?Q3BhV09wREdZbGx2TWRNZklKVFpNUXRRdHlIVHhnZFFyMVB4ZnlYUUVhb2lE?=
 =?utf-8?B?SFFCVUcxZ0hHNkNzVGFSZ1hEc1FtUnB1U1BOV1QxblNQTUdwZHpMODBsYWJa?=
 =?utf-8?B?N0FEQTRBa01DbGVPZUlrWlI2T1pONVRGOWErVzhwbWFaaDRucjhMNTI2OXlK?=
 =?utf-8?B?RGtLVEFuVytNTTB5TWRsamhsaC9PWGFmUnZIcUd5d2ZEb0hPbjA5dTFoZVFH?=
 =?utf-8?B?RlhqTW5ycElia1NsaHdXVE9hR0lldThPQ0pCUExzY1BSR2VHaEZJU2xLUUFn?=
 =?utf-8?B?ZEowZWtjY0R1Q1VOZlhXaVdWOUV3dVN4NlBPNmNJVVh6VElLZVNjMXdZU2k1?=
 =?utf-8?B?UUdrcndqM2d3SkJwM0lsTDhRbmRmV1BKN0dNVHlWc3I0aVNuQjFsSFJQVTdy?=
 =?utf-8?B?YXVLTTNzeXlidkV0eTJaMjdyb2ZJUWoxNzhEcFZzS3F0dkREeGtHZS91WkJP?=
 =?utf-8?B?amxIM3psY2JySnkwWGYyQXU2WDVLdWZVeldDQTgwNUVYTUxRRDVvNlJORlNP?=
 =?utf-8?B?OWtrRHNkMHFxc01lc1lGYjM1QjRiUGJ6dVdEOENWM29sQnl1MkQ0eFo4K2RV?=
 =?utf-8?B?Mmd6QkhyVWdPMjJHUGtoWTBuV1FRSE1NNmVEZDdSUEJnT2dTME1qUnk1YkFi?=
 =?utf-8?B?Y294aER6OXZSckphR1g3WHF5L0NrRURVTmkwcW5ySTBEMGxmdkpIOTNGb21j?=
 =?utf-8?B?ZlJYSkZBNit2cTNWcm9BTm1Sa3BxNVBBSkZyY2R4U3E4OWIrdE9tYjlWT1Ns?=
 =?utf-8?B?TU5IT2JkMzlwYzBvR3QwekZzZUNxd1dBa3h0WER2MzJlYitSWU9CVUJuZmUz?=
 =?utf-8?B?UjZPc1h2UnB0N0tkQkl3RENiczJoN0ZvYTVqSVZiQW0yd3QzaEk5QzEwTm4x?=
 =?utf-8?B?ZFdjVVY3akVTOXVnbVlQQXdXUVRkc2JrSGhiNnlaRCtRVEZRcFRQRGFtTGNP?=
 =?utf-8?B?VGR0Z080Z1dGWXI3cG9waHlISVExSWpZbndUS0s3ck5VUm4zWU9QZjhsbUdv?=
 =?utf-8?Q?eC5oXxiVGddXU4GiB8YtFnI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7211fde9-02e5-49c0-444d-08db57136e12
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 20:15:16.8029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIGl8Sv5HnTOlpW8kIcTfMVjMagrveDYBAvdR2EZOHljakSw1Y1abzIUpwQK0HaTnRBcBFd2Yg/XIiyIyrYygmPVX5zqCq+hSoBVnt+R7T4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7638
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/7] drm/i915/pmu: Change bitmask of
 enabled events to u32
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

On Wed, May 17, 2023 at 09:25:03AM -0700, Dixit, Ashutosh wrote:
>On Wed, 17 May 2023 01:26:15 -0700, Tvrtko Ursulin wrote:
>>
>>
>> On 17/05/2023 07:55, Umesh Nerlige Ramappa wrote:
>> > On Tue, May 16, 2023 at 05:25:50PM -0700, Dixit, Ashutosh wrote:
>> >> On Tue, 16 May 2023 16:35:28 -0700, Umesh Nerlige Ramappa wrote:
>> >>>
>> >>
>> >> Hi Umesh/Tvrtko,
>> >>
>> >> Mostly repeating comments/questions made on the previous patch below.
>>
>> First of all thanks for improving this, my v1 obviously wasn't good enough.
>>
>> >>
>> >>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> >>>
>> >>> Having it as u64 was a confusing (but harmless) mistake.
>> >>>
>> >>> Also add some asserts to make sure the internal field does not overflow
>> >>> in the future.
>> >>>
>> >>> v2: Fix WARN_ON firing for INTERRUPT event (Umesh)
>> >>>
>> >>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> >>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> >>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> >>> ---
>> >>>  drivers/gpu/drm/i915/i915_pmu.c | 26 ++++++++++++++++++--------
>> >>>  1 file changed, 18 insertions(+), 8 deletions(-)
>> >>>
>> >>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c
>> >>> b/drivers/gpu/drm/i915/i915_pmu.c
>> >>> index 7ece883a7d95..96543dce2db1 100644
>> >>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> >>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> >>> @@ -50,7 +50,7 @@ static u8 engine_event_instance(struct perf_event
>> >>> *event)
>> >>>     return (event->attr.config >> I915_PMU_SAMPLE_BITS) & 0xff;
>> >>>  }
>> >>>
>> >>> -static bool is_engine_config(u64 config)
>> >>> +static bool is_engine_config(const u64 config)
>> >>>  {
>> >>>     return config < __I915_PMU_OTHER(0);
>> >>>  }
>> >>> @@ -88,9 +88,20 @@ static unsigned int config_bit(const u64 config)
>> >>>         return other_bit(config);
>> >>>  }
>> >>>
>> >>> -static u64 config_mask(u64 config)
>> >>> +static u32 config_mask(const u64 config)
>> >>>  {
>> >>> -    return BIT_ULL(config_bit(config));
>> >>> +    unsigned int bit = config_bit(config);
>> >>
>> >> Give that config_bit() can return -1 (I understand it is avoided in
>> >> moving
>> >> the code to config_mask from config_bit), maybe the code below should
>> >> also
>> >> have that check?
>> >
>> > config_mask is only called to check frequency related events in the code,
>> > so I don't see it returing -1 here.
>>
>> Yeah that should be fine since -1 would make the below asserts fire
>> anyway. (If it would get called from a different path in the future.)
>>
>> >>
>> >>     int bit = config_bit(config);
>> >>
>> >>     if (bit != -1)
>> >>     {
>> >>         ...
>> >>     }
>> >>
>> >> Though as mentioned below the 'if (__builtin_constant_p())' would have to
>> >> go. Maybe the code could even have stayed in config_bit with the check.
>> >>
>> >>> +
>> >>> +    if (__builtin_constant_p(config))
>> >>> +        BUILD_BUG_ON(bit >
>> >>> +                 BITS_PER_TYPE(typeof_member(struct i915_pmu,
>> >>> +                             enable)) - 1);
>> >>
>> >> Given that config comes from the event (it is event->attr.config), can
>> >> this
>> >> ever be a builtin constant?
>> >
>> > Not sure about earlier code where these checks were inside config_bit(),
>> > but with changes I made, I don't see this being a builtin
>> > constant. However, nothing prevents a caller from just passing a
>> > builtin_constant to this in future.
>>
>> Are you sure? I would have thought it would always be a compile time
>> constant now that the check is in config_mask. Aahhh.. with the multi-tile
>> changes maybe it can't unroll the loops and calculate the masks at compile
>> time. Maybe it is a bit too much and we should drop the
>> __builtin_constant_p branch? Probably..
>
>Ah yes, with the code move to config_mask, they really all are compile time
>constants (provided compiler can unroll the loops) so at least that is the
>justfication for leaving the __builtin_constant_p in. So I'd probably just
>leave it as is (though it is a bit too much).
>
>> But I guess it is safe to use GEM_WARN_ON_ONCE instead of WARN_ON_ONCE
>> since there are no external callers (nothing coming from event) now. That
>> way at least production builds don't have to have the check.
>
>Hmm, there's a GEM_WARN_ON but no GEM_WARN_ON_ONCE. So leave that as is too
>I guess.
>
>So I'm ok with the code staying as is. Enough bike-shed on this already.

Leaving it as is. @Ashutosh, okay to use your R-b without any changes to 
this patch?

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
>
>
>>
>> Regards,
>>
>> Tvrtko
>>
>> >
>> > Thanks,
>> > Umesh
>> >
>> >>
>> >>> +    else
>> >>> +        WARN_ON_ONCE(bit >
>> >>> +                 BITS_PER_TYPE(typeof_member(struct i915_pmu,
>> >>> +                             enable)) - 1);
>> >>
>> >> There is really an even stricter limit on what the bit can be, which is
>> >> the
>> >> total number of possible events but anyway this is good enough.
>> >>
>> >> After addressing the above, this patch is:
>> >>
>> >> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> >>
>> >>> +
>> >>> +    return BIT(config_bit(config));
>> >>>  }
>> >>>
>> >>>  static bool is_engine_event(struct perf_event *event)
>> >>> @@ -633,11 +644,10 @@ static void i915_pmu_enable(struct perf_event
>> >>> *event)
>> >>>  {
>> >>>     struct drm_i915_private *i915 =
>> >>>         container_of(event->pmu, typeof(*i915), pmu.base);
>> >>> +    const unsigned int bit = event_bit(event);
>> >>>     struct i915_pmu *pmu = &i915->pmu;
>> >>>     unsigned long flags;
>> >>> -    unsigned int bit;
>> >>>
>> >>> -    bit = event_bit(event);
>> >>>     if (bit == -1)
>> >>>         goto update;
>> >>>
>> >>> @@ -651,7 +661,7 @@ static void i915_pmu_enable(struct perf_event
>> >>> *event)
>> >>>     GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>> >>>     GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>> >>>
>> >>> -    pmu->enable |= BIT_ULL(bit);
>> >>> +    pmu->enable |= BIT(bit);
>> >>>     pmu->enable_count[bit]++;
>> >>>
>> >>>     /*
>> >>> @@ -698,7 +708,7 @@ static void i915_pmu_disable(struct perf_event
>> >>> *event)
>> >>>  {
>> >>>     struct drm_i915_private *i915 =
>> >>>         container_of(event->pmu, typeof(*i915), pmu.base);
>> >>> -    unsigned int bit = event_bit(event);
>> >>> +    const unsigned int bit = event_bit(event);
>> >>>     struct i915_pmu *pmu = &i915->pmu;
>> >>>     unsigned long flags;
>> >>>
>> >>> @@ -734,7 +744,7 @@ static void i915_pmu_disable(struct perf_event
>> >>> *event)
>> >>>      * bitmask when the last listener on an event goes away.
>> >>>      */
>> >>>     if (--pmu->enable_count[bit] == 0) {
>> >>> -        pmu->enable &= ~BIT_ULL(bit);
>> >>> +        pmu->enable &= ~BIT(bit);
>> >>>         pmu->timer_enabled &= pmu_needs_timer(pmu, true);
>> >>>     }
>> >>>
>> >>> --
>> >>> 2.36.1
>> >>>
