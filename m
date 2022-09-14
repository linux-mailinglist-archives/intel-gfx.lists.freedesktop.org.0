Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A8F5B8EC9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 20:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964A710E9BC;
	Wed, 14 Sep 2022 18:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB5810E9BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 18:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663179583; x=1694715583;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lsEqRGcnX2zYBckGu5TDNXoaa2MMgkcM3APTl7r7lnA=;
 b=LW0iVsIJztMXtKh4L5FVXUEpo7B5qtJmcgx67Ou00XSzFzNgSZPkn+Zy
 6kCMlPuhuZ4oeCzBKTiKIoXLctUcwImHGSKvsKiC6h8wt9GWvSiKac5aw
 Etn9nydlkyn5w/pvyQ+YJ9nIdEDLDHaVDpz1zZeZTW32F6Zb/4r1MwBzU
 DbI5zrHZVDGm8SDlDtdjd8lkg/IKWSMhowLOD75jYzrW2TRtH5/4m0n75
 bT2lYKR8/oy2nI9X6kQJdEhYyck4ATNtA93VBamgP8QyaivJzDNJdHdRE
 p5Jmc8bwqTUNMAm7UiL7fQq88kz/bZ9ENRFKZ7mkplf0HMxYgI2qPH5Ws A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299319474"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299319474"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 11:19:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="720679149"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2022 11:19:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 11:19:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 11:19:42 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 11:19:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aymzRrBXgFniUOI6Au5GS86Qk0K6VDB7+oVk7nubWu8T4np9B5z4XcfRktQT8x3gLn3Ttv7LJOje+e2AabBoORm97jlF3077wXkTde3XJNrfJOr+OmaSBoED1TfS84uwftDQL3aYUpg0uwR4NMpMZKVHEsKn5dCokDe/5XslFtQ0wx6bzSlvQtaOTa+FXk7RyLCZ3BILaJLulA2cebES7Hz+kbl4XhxQjOdiQu7N0oK0L/TQOOJmOPGtDXN+ZP/5qt2NyaN7uMoBRvf1jW3nXZnboM/TodFpjB5SfNBRhAKHy6L18umIHZ4Oy2RL3tu+WjTUIIc8Yi5M7xbFSr/ufg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npsOlo8XDzcJSaMFr7DyiFmyDNnzf/9Tm8CreI2WcRM=;
 b=JGsUI50f2amR1gGD728I3RmvNEWh+FLZ9WHyt7U9wOjk/gcRKYLamfetGZZ4j8wFHxCToLeuVKGpZn28t4pI8ehJIpJHdSDVqhjx4t+BRfMW2YtdyAg5eqWP9ZM2O4xtflQOhz/c+Qpm/pppE2ujGNCEkQ2+r4b+cI2S2y4VJQa6xwGW4oC7UG5jR1AEAzj/+LXFzYgM4pimHG6YfMiRG5xdTeg6HsVsuC/yByCnD/vbBtEQKwPP4mwt5g+fETAt1pqk/Kfbclt/BpVJhbvRVVTpogf5Wgpbv66BUJJfFhup/BD0/D0YIasskduAFl3PD+dCcR2ObSU/fSsRfCjgkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB6919.namprd11.prod.outlook.com (2603:10b6:806:2bc::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.19; Wed, 14 Sep 2022 18:19:40 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 18:19:40 +0000
Date: Wed, 14 Sep 2022 11:19:30 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyIbMqyKJaGlP+ws@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-7-umesh.nerlige.ramappa@intel.com>
 <87mtb2djt1.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87mtb2djt1.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB6919:EE_
X-MS-Office365-Filtering-Correlation-Id: 036db00a-d0e3-4a25-4105-08da967db064
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PsTU52kq+raHUPYyfMU1ThQ8GyPIy0Fgk6sObgx1BEA4yGnYHvxwEoIlJFelA5JLBl7yGWvbbQDYykqHWIiN/DVVCPZdiJ8u4yMsg+KvbcKk4ycfvacVSskClc042RVqv/uOciss8WTkVziqS7evWKClsUdpLZ2bzzelyrsNrCj9vA1H+IV4kU1P7LTWw+luFdIhS5KowIFKmsJI0IXnq/fdN5QxpEYuFnhfaHkJMNQgZcIyaOfFIvtmfsWzFlggZizXjR2KPHVzsaEjXk6Ok1I296vRs/77d+wNrNml3QMY9HIEEv46+4tvpg/67WoTndb+IBjyvPtFPu4a0a+bJ3rQ+WijSlZ6hs4SG9pZhC55gMmTdh2GWIhQCRG40SOkMo1+6CgVSJQwcm6SWhcWMuB6K0LlbvCAe10i1mt8CkDUN6lCRuBuM9GvMSajKP4KvxCwwZGhsKkO7ZQFyaO05S3fAtbE0RFv5+g2hkHKpbzpKnPKQROsaEgQRKXULI4SqFf/3DPrLta7665e7BI5g4N/y47R/7JEgQnwXk84BG5o4Lmsn5w9gkST2jgIYlHNTc1xwezTATdAL/I04xYWKoD4NSE3HsC/WYoiA9rToOLiLKIemo8DHXRNLGRP66DmCqjmTJqqB2PEEHZuJ2MebPwPawprGEqW55AnmYmeEVLubWvvSFRYQy93bGf9tU9ydb1VP0MQU5p9xWZi4dKhSOhIXl8hqsW/5PUgwRBmtbr+H0/uxaSxM6NL8Yw079zv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(396003)(346002)(136003)(366004)(376002)(451199015)(6862004)(33716001)(6666004)(82960400001)(86362001)(83380400001)(8676002)(4326008)(6636002)(26005)(38100700002)(9686003)(6512007)(8936002)(186003)(5660300002)(478600001)(66556008)(66946007)(107886003)(66476007)(6486002)(316002)(6506007)(41300700001)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFR4ZXB6TnB1QUlncy83Zm1abVFmNmpxcnlPcnBCbmhSSnhBcFo1aUx6dkQ4?=
 =?utf-8?B?a004MW5RMTM4MjhYcVF2dlZHdjBDcm4rL1hLWHhpSnJMREc5emtyKzBSb0lz?=
 =?utf-8?B?N01aVlAvYjRkclFXam1yR0pDRlA3NHhVNFA1VGpXUC9hQnVzZGhadDN4a3c3?=
 =?utf-8?B?aDNUS2h6b2p1RHQvRjdQRWVCMXg0NmJmZnhLTjZ5RFp6QmxvZW9KODR2N3BZ?=
 =?utf-8?B?c3FCWjlIUDNRTERhWm1ZTktWUzdIOXZvVnQxNTl5MjBBTjR6RWRGZmZUWTBM?=
 =?utf-8?B?Y2J2djFHdzE0T2U4U0psdUZSUGtCSkNvVW1NSWpZUTZaVVh0OFRCVHU5bVJX?=
 =?utf-8?B?b0hzbXZmOGdHM2RjekFGc3N0RUNla1ZHdlNQL0RmRDd4VE50S2VCN1IzK05j?=
 =?utf-8?B?VG9FWUZuZ0swSXRLdytJZzZmRmR2ZUNNcTA5bTV3Q1NHY042UnNXUWc0WWJw?=
 =?utf-8?B?dDQxdzNyakx3UVFNMEtHK1ZNblY2bzIvYmw1VFFWNWVYbTlnM0JHZE16Tk43?=
 =?utf-8?B?eGx5dnNhbG1BWjdWT2dnK1VxNC9rMm9Ndk5udjFqbVJZQUJrYkRoM01NQXNx?=
 =?utf-8?B?TTU2bEV3M1lGNmtoaHVRK0tNcWVINmhOSjlNSnF2d0paVWJDMElRZkI4LzBn?=
 =?utf-8?B?WnhtZDFUM2Q1d2UwV1JvdkQvVXl1T0k5UkFDS0h0ZjlNUDJzVG1OUUxMd2lt?=
 =?utf-8?B?MTk3MnlyWE5sUkVRTktndXVNOXFnZ2tYR21GNDNUSm9DTjBNaDJ3UWN3QUVP?=
 =?utf-8?B?WTZ6OHUvZmJnVGdtdG5CSlM4TXRRRkV1d2RmN1pxMnE4ZkNVQjFFZDZRY1Zo?=
 =?utf-8?B?c0pHeExEQnBQeHdXVW51RzU0NXVlaTMvYmZnckR0WTg5d1hXazhsTnJ5STg2?=
 =?utf-8?B?UkQ1SjJFTm1wY1NBb2dFQmxrWmM5K25MSlRzVHhDaks4VGRXcUF6ZTNWZlV2?=
 =?utf-8?B?OFZldGJISFMyVEUrVUhsNnp6Y2M5R2MrVkFFeGl4c1ZpaXQxTm5LSDZDc0Ry?=
 =?utf-8?B?V09KekwyNFRWWGRoYnROMzVVUE5GNjV5SVB4anFrNUFOMm01SEZBSUpRVTk2?=
 =?utf-8?B?K2pxMVI3cWpUbloxYjQxN3BxV1NUcVVlYjZJS01wd0NQT052MktVaUNRVVVB?=
 =?utf-8?B?UDhTMEdQYlZBZUJDSEFqSlk4UThtK3kvM1F6bHAyOWNxUS8wV1FNa3JWZTJN?=
 =?utf-8?B?clhtU3BsVjhhcDBacHUxSkJOSzBUZzhnRTNWdExNREJyQlRpbGxqcHZ5dVh1?=
 =?utf-8?B?UStIeElTa1p2ejJveWZQNzd4YThZSzlzVGUzRGVIcUNQUGJacTJYV1VyenBi?=
 =?utf-8?B?elgyanRLMjQ3eC9KdHM1OXp6U21BM1BLdXdPb1R2SzRIclMvbmhEamw1OHhw?=
 =?utf-8?B?TEwwaWtDMXNJYllnUm44aWZMQlNrTGYwMkw0bXloM3BIM0xnS2I2eWg2SWtj?=
 =?utf-8?B?Yk5zU1ZWTkhLUkhYOGRSdSt4SmZwd1orU3ovcExXSFlEd2MyVVZ0d1dKVmxu?=
 =?utf-8?B?b2ZNcVp2MW9pNkhsU3k0TmRzTTZsY0dhL1U2bm9WQnZiVEl5bVpmeENsaExY?=
 =?utf-8?B?L3hRNmxnb1hRWUJMa0JTNnk4WEl0b004UENvdkxoMHhra0FlQkhYSzh6WG1P?=
 =?utf-8?B?MytubXpTQXNoN1QrMEx5WUJKa3RDblZ4VXo1Tm5XeU1telBaZWVZcDJHTy9T?=
 =?utf-8?B?eDBMZ2lzUWtGNThCVld4VGg3T0c5YzMzT2hjMm9lazllMEhjeHl1dVI4S0RL?=
 =?utf-8?B?Mm9MVkFuOVJUY0tpZXFER01XVzBCZUxRdmNRUGxkb0YyVGQ2aE0rZXBwWVFs?=
 =?utf-8?B?dlpJbytSM2JOUXRUalZzUUdteFBFZUtGYklzQ2hLZ2ZjVXZTYlZCamVIeldX?=
 =?utf-8?B?bU1HckJqL2RibEI2ZjY4b2t4cTk3ZEIrUmZGa2JwVWtUWlNOTFJYcC9PWXZS?=
 =?utf-8?B?UWxHRk1DUzRnZitpUVNNd3lJYTFLZXkvV1NHUi9JNFN2bi9xdzNuOE5PakFQ?=
 =?utf-8?B?RU43dXJDL1AveFhKb1dsVnR1VTJ6ai95MUY0Nkg0VnAxTTVicENVOCtzRzVB?=
 =?utf-8?B?SVc5Vks1ZUg3QjBybVlKZWF6M1lKcnJ5S1I4eEdJdEhLaHRyaFNuMWVXVHJt?=
 =?utf-8?B?dWhDQ0JJRU4xQis0SGhGWGRuQ1F2WkhCeWx3clRFMnRSTUd4Z0tSS2NNd1li?=
 =?utf-8?Q?b8sk/zIU0f/BS7hBxGluukY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 036db00a-d0e3-4a25-4105-08da967db064
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 18:19:40.2972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3OigM8rB49vdb9koNVbtza6OFU3qXcXruffN8vDxtvcpR1lliaDLASc55nLTLluG4AoUP6tWJEX/poyEDC/I6kv7PULHvAhk/hE+chbZw8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6919
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/19] drm/i915/perf: Use helpers to process
 reports w.r.t. OA buffer size
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

On Wed, Sep 14, 2022 at 09:04:10AM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:42 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 6fc4f0d8fc5a..bbf1c574f393 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -385,6 +385,21 @@ static struct ctl_table_header *sysctl_header;
>>
>>  static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer);
>>
>> +static u32 _oa_taken(struct i915_perf_stream * stream, u32 tail, u32 head)
>
>nit: no space between * and stream.
>
>> +{
>> +	u32 size = stream->oa_buffer.vma->size;
>> +
>> +	return tail >= head ? tail - head : size - (head - tail);
>> +}
>
>If we are doing this we should probably eliminate references to OA_TAKEN
>which serves an identical purpose (I think there is one remaining
>reference) and also delete OA_TAKEN #define.
>
>> +
>> +static u32 _rewind_tail(struct i915_perf_stream * stream, u32 relative_hw_tail,
>> +			u32 rewind_delta)
>> +{
>> +	return rewind_delta > relative_hw_tail ?
>> +	       stream->oa_buffer.vma->size - (rewind_delta - relative_hw_tail) :
>> +	       relative_hw_tail - rewind_delta;
>> +}
>
>Also are we really saying here that we are supporting non-power-of-2 OA
>buffer sizes? Because if we stayed with power-of-2 sizes the expression
>above are nice and elegant and actually closer to the previous code being
>changed in this patch. For example:
>
>#include <linux/circ_buf.h>
>
>static u32 _oa_taken(struct i915_perf_stream *stream, u32 tail, u32 head)
>{
>	return CIRC_CNT(tail, head, stream->oa_buffer.vma->size);
>}
>
>static u32 _rewind_tail(struct i915_perf_stream *stream, u32 relative_hw_tail,
>       			u32 rewind_delta)
>{
>	return CIRC_CNT(relative_hw_tail, rewind_delta, stream->oa_buffer.vma->size);
>}
>
>Note that for power-of-2 sizes the two functions above are identical but we
>should keep them separate for clarity (as is done in the patch) since they
>are serving two different functions in the OA code.
>
>Also another assumption in the code seems to be:
>
>	stream->oa_buffer.vma->size == OA_BUFFER_SIZE
>
>which I am pretty sure will not hold for arbitrary non-power-of-2 OA buffer
>sizes? So we might as well stick with power-of-2 sizes and change later in
>a separate patch only if needed?

Most changes here are related to the OA buffer size issue and that is 
specific to xehpsdv where the size is not a power of 2. I am thinking of 
dropping these changes in the next revision since DG2 is fixed and OA 
buffer sizes are power of 2.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
