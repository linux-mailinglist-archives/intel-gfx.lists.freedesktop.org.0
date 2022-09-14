Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D67C5B8FCC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 22:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F122910E9F1;
	Wed, 14 Sep 2022 20:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B19F10E9F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 20:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663188881; x=1694724881;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Zix790WQ9BOBHci9W+K4fKwnqfBdgXVqsIqRKFgt4Rw=;
 b=QkZVzZJIogyWsJom3jMxzyBNhjtXFHGyjc4H6HaU5YhAP3MPBbBvsiLW
 XB2se7pQDW/YE/nZV7rCcMxmC8QIFkkJYyArHB1jVBtUKYSykMN4Gvd2A
 DIgL0K6iuVC/Ss8G63LnkKgGKrhZyNhQVIhCROt5pwY9Fuj2r1IppuBU+
 SNCk/oCn+E5ttn8b/jUlnbGYGBJl9WKtLrcFdfKuEE6uZGYUAWJBsjNYo
 o9rWpDY0b2CsjyKs0iFT2/WsOgxLsM6FbAzDLIse4YtThD1wINtn0/hSz
 5np35pXk0TJ6CEw1NZzUlF//0hfVhjO6dOB38czcxg4hmPq+DTHkKlYX0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="362500260"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="362500260"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 13:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="792449745"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 14 Sep 2022 13:54:39 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 13:54:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 13:54:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 13:54:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 13:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLpfRMZYXhPEtFyYpX31i2uFIU9xzHCbaeBbV6Q2NR/uhKRIUMJyUFMbyZ9cqTayTJgP10yYOYWSDx9pDRF7jvOeLmrebxzx11IZqJkqKvKk3X1BeQY3L17gMDgTUnqK1Q+e6FzGYpuCfJuR4BHatY990fZ9m2uV/Qww5PBp3Pdr5QJJEZJuBRAlETaOxLvEhYo2BZYFTYfPUvMDXUy0Rr9vwTyXrzoJqLJofXXn+Nv7/9fjnEQnfew7y8YCU0zvE5anJXmOkkxVqIg5Zfx02LBRPGn1BZZMy5q6OCsisA3ybkYkENI2pc1MZvhGPnInxMR9PCkalS9nkvc6osdOTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IgaL50RPNqw7A6nDxxgM9AK7FYdjwYIU18D53pvPx+o=;
 b=XDvYHVe90ACQGB6gr+CeZq3FBNiYGTPnjIZuQ58adCEqDYR3bLjSTE3Ua+w/yAMp5cM6MMhADkfxJevCP7KO5QGYi4I4jCig2+6U6R4F+cl6IPlwy+xGWqoWrnEd99mU5AwRrkqSzJTAxbXJFl/got4QQdkKfoMA2DIifwOBohEAXUHmGZe7pvScdFsdYY1yW43gqfSJtnw3FPkWJf9a7Of6LTWsElkpGk2Fw1OJ3W41xZtlm/VNHlk60rtT5nVpDVckTHslKWAQ7VBlos0lfPrFDFDmLNlxv/dpPwd+DgQ2QgdT3nsv5D3H5dGAwEXAZzkY3E1he3NW9iuIBWxwww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Wed, 14 Sep 2022 20:54:36 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 20:54:36 +0000
Date: Wed, 14 Sep 2022 13:54:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyI/irWz1oPK6vIh@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-3-umesh.nerlige.ramappa@intel.com>
 <875yhr5lll.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <875yhr5lll.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0359.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::34) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5979:EE_
X-MS-Office365-Filtering-Correlation-Id: fe9ec18c-427a-40e2-6381-08da96935572
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vkjyb5TqMdfPGFJ/QdOTLXDNdvblsHbdkvt8tlCLeOiXZ9eJcVEIDvvt8j0+kIXYGpBwhXkSO/PqIxo74t4mNM48WqqEGpL923CDpIUFZKBanfLRIJTqqyOrv4EEq75w/nsO8Eb1OciUYlqmetRyjp2Ha/iKiIbgoHLMmc9ZRvjGZStabxoE1v3Af/bhDPI0sX/OS37j6jOphnJYwk/UjgHBgjD3xDcXPe0ob/Gbg/aGZ8nMBxMiwz0SLkmNPrH/ixcsYIMuLOZxTJosCOnKORrRF6aYovyAwOyQAobiCQqB+0RHWGXiMVA6iyxSgGRk19VaPZgwi1H2anxyt5fKfklIGrbfk1ck2tw2bLLti+z/TJ9As4CeAfZAoWQxMfOUT9EoV8olwyIuxi7umNtdfCeZeySowe1q3CSRG54bWAwaf7u1dkI6l3uPAMX17V69X09PC7tDHLDG6MJBrq1QESi2BaxmEkrwZ83cqrCi4kjnqHWT49J7hLSyuO3HOEYbDlqIMcjzEZEhDIlOl2l2BLl+fHut4TZTUYA2CF+mZKIFa5JAtKhM5RixCTUnPrimsdwWuuKfAsPthS8LJVViCTCauWhaI8ofnsLPz5FsRAWS0sr/L2gmTOKKgxjw7XkPgrbmcV1wJNDWz+xpJR818OrI7WJLmvGg6yfkWDCnoTASfbIbApiMAbo4gT/W8b/CXz5yEBL/Lf1wZfuJL/smeSIk4BCPXzxa8wYEZb0GE2f/82kIzv88dPq1isavGAo1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199015)(33716001)(66946007)(5660300002)(6506007)(6636002)(107886003)(26005)(66556008)(8676002)(6862004)(83380400001)(38100700002)(6512007)(186003)(66476007)(6486002)(82960400001)(478600001)(2906002)(316002)(41300700001)(8936002)(4326008)(86362001)(9686003)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFJGM0djajZWSFlqS2p6N1MwK241ZCtQY3dqdG9keEJVdnkyRXVndk0wN1Ba?=
 =?utf-8?B?ZE5oeVo3SHFzbk1Gdk5MNm5oODExbWFxTWJJOHR4ZSs2ZTA4ZEVyUGdLVUdU?=
 =?utf-8?B?L3ZHYkJLUlFzenZvakRQYUlQc1Y2RmZzVkJyTHhybTEzbnBYME9zUlcrUDBj?=
 =?utf-8?B?ZGZ5bEdZVjI2emNFd3FHaVVLUjBoenR3ZFhlaDhzd3V4SWQzUVhUOXlUUk9z?=
 =?utf-8?B?Zjgxd1lDbmgvUThUZmNmV3BNYTMyZG8wSG5PVHhKcThlS0c0S1d1M3djenJX?=
 =?utf-8?B?WHRpSnU0V01ISlZkRENlb0xZcTB5MFpWTWV6UWV6Uk94MUpaLytqcXU1QkZI?=
 =?utf-8?B?YUc5dnFGemw3S0FlbFpjQ3FLOVprSEpOck1KQ1lhSm9nblZhSFZYdnEvWGY1?=
 =?utf-8?B?bkZqMGxjc0hsaUIxWm1EcFBySThrcVB4Sjhxc25NUjFiSXN0SEVIY1lwT3ov?=
 =?utf-8?B?TXN6TG4vdlVLOFJaYTVXbWtDUlhpY0dsNEhLNDNqdTVxMGFYS0JiS05zTWN2?=
 =?utf-8?B?Wk9HMUlPSUR1TU9rcjJab0F5WnJ4VUd1UDNzNjhhZTBuMEJ3RCtDeElIVHBT?=
 =?utf-8?B?T3BqeTNBd3RUWk5Yc3Fzc004Y0pHakQ1SnhlMHN1TUZ2TWVSNkpvWUdQRmp0?=
 =?utf-8?B?bm1OV2N3QkN6ZnUrWHV6QlNiMThvQTI3aGJQR3k4MWUvVXlBRDZQMVpNdHhn?=
 =?utf-8?B?VEl1QmZFVk15aHdYSWxiaFJOY3lSTlp4YjB6UHZnU21ZN2l6SG03eTNqdkN3?=
 =?utf-8?B?QTNRUG8rZ2hUd3BXem5scjhDNGpYOE1mMllndlkvYWpVMGRpeDcyQ2EvSVRW?=
 =?utf-8?B?S1dqaXlpMTMxQ1dxV0doamw0aHlUb0lEaWJycmhsTGcyTXVQQVo0T0Z5ZXA5?=
 =?utf-8?B?WDFBNURqSlpMVEN2RUtiQ0xGOXNqZnU2UnppaFN1OURUMzdZMytLMFEwNWtF?=
 =?utf-8?B?NkRaVG0zeFltaGJRVEcwWlFydGRLbVZzVTNRcHlVak1EbWJNWUpJMEFxMnNy?=
 =?utf-8?B?Rm50bmV1SlAwVzM3OWVWMWpOODZjbjg2N3EweitvZlU1dmRWUWpRYUhjcXBa?=
 =?utf-8?B?ZEN6L2xGRW5KT0s4Y3c1cU5XTTRoVUd2VGd2UmFyeXVTbUMzUXEzK0NjZG1J?=
 =?utf-8?B?dkF3bHllMU9UWTBUTGVOMTc3WCtoV2xvNHZLT2h4QmQvWEQzUHRzbTd0YmRS?=
 =?utf-8?B?THl4eEpJL2M3TGp0N3VBSS9qc0hwVDZSSWp2TEVySFhDdU1iWFRkZEcvN0RY?=
 =?utf-8?B?S1B1OGRkdExPeWdER1M5QmY0MFV3QzEvVnlvdDVac0JTOFliWkVQNkpzNW9Y?=
 =?utf-8?B?bHFKVEZBd0x6NHI3U0NzMGVhcDBGYW5jQUdYNU9JdmVnTlErMEIxenFRSERZ?=
 =?utf-8?B?TktZT2dNemdxTjNkdU5IM2E2dXlPOEJldld0NUJsRGVYVGNtcExFM2RwS2Ix?=
 =?utf-8?B?VWcwRGdkcjJIczh3ZTV4QTZhUkFETVpJYS9wbDZjVDNwa1ppc1AxbklLZ29r?=
 =?utf-8?B?YTZFTldjdC9FSGJvZjIwNThIdW5nYVZmT3h6SUh6c0RYdFVHay93SGdHK0NI?=
 =?utf-8?B?QlpQQlRLYzhtM21UYUdKNG5ydThIWHpxa1c1NFJyalpGVm13OUQzKzR2aHJs?=
 =?utf-8?B?RGR3UmZKWVZ4WFl2WlNaczVIZnZxT3U2QXlZNnVVTTJUVFo3blIrQkFOWEZJ?=
 =?utf-8?B?ZEQwQUhzQ0xpQkNJdnUzelAvUHZMMkxQdVF4SzlmRFR3Z2U3RjUvTlpXcC82?=
 =?utf-8?B?eFdwNXY3TlQ3SXNTOU16TnhENDNySUVLVVpITzFiaEpKaUF4cDd0bHd3aW8v?=
 =?utf-8?B?WmhMbEovKzQwazVHTjR6d0NrUG1UTHEyNmFCU3Y5dm5mdXlzTy9FWitjejBK?=
 =?utf-8?B?R25Ba082VXJGdTlyMEVxUTd1QkI2K1J2emxjMzVrS2ZIajl6R2htdk9Ubll4?=
 =?utf-8?B?UDFrYnM5SmVleVpXUHpxN0lLVDhEalNpdUFLWEJ4aFJPSVR0SGR6ZGpqS0Iw?=
 =?utf-8?B?bkQwcGJRbVhaM2hyYm14UjBJdThad2wwSEtBNFZWTkl4WlV0cElaUHVhRTVj?=
 =?utf-8?B?cjk3Rlk0aklQOFA1Y2cydTgvMmhhbjlSNFlBdThodVFjYnN1SUJlK2tUZzly?=
 =?utf-8?B?bWcyeEZnU0dPRmVYQjNqV3ZTNkNJaWlpcDZQVGRyM0JqSGdTTmwybzg4MFR2?=
 =?utf-8?Q?HDkwK/1Puc1DKFYu0wbrgGo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe9ec18c-427a-40e2-6381-08da96935572
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 20:54:36.6608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PX0shgzLF23RGLEXTmB/JUGNfTPQxuAATikvQ3KwpstpbABNXNy9xtfYGdxj/K1V5hOF9ZDjGxk/If56xLxGU2UQavQF5QSie+ukogYyT9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/19] drm/i915/perf: Add OA formats for DG2
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

On Tue, Sep 13, 2022 at 08:40:22AM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:38 -0700, Umesh Nerlige Ramappa wrote:
>>
>> Add new OA formats for DG2.
>
>Should we change the patch title and commit message a bit to 'Add OAR and
>OAG formats for DG2'?

Hmm, I assumed OAR was also part of TGL, but looks like it's not. I can 
change the title as suggested.

>
>> Some of the newer OA formats are not
>> multples of 64 bytes and are not powers of 2. For those formats, adjust
>> hw_tail accordingly when checking for new reports.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramampa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 63 ++++++++++++++++++++------------
>>  include/uapi/drm/i915_drm.h      |  6 +++
>>  2 files changed, 46 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 735244a3aedd..c8331b549d31 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -306,7 +306,8 @@ static u32 i915_oa_max_sample_rate = 100000;
>>
>>  /* XXX: beware if future OA HW adds new report formats that the current
>>   * code assumes all reports have a power-of-two size and ~(size - 1) can
>> - * be used as a mask to align the OA tail pointer.
>> + * be used as a mask to align the OA tail pointer. In some of the
>> + * formats, R is used to denote reserved field.
>>   */
>>  static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>	[I915_OA_FORMAT_A13]	    = { 0, 64 },
>> @@ -320,6 +321,10 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>	[I915_OA_FORMAT_A12]		    = { 0, 64 },
>>	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
>>	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
>> +	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
>> +	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
>> +	[I915_OAR_FORMAT_A36u64_B8_C8]		= { 1, 384 },
>> +	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	= { 1, 448 },
>
>Isn't the size for this last one 416 (or 400)? Bspec: 52198. Unless the
>size has to be a multiple of 64?

Format size is multiple of 64 bytes, so it is rounded up.

>
>Looks like Lionel's R-b is not showing up on Patchwork, might need to be
>manually added. For now this is:
>
>Acked-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Thanks,
Umesh
