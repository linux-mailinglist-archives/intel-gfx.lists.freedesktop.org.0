Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D177170E908
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 00:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5259A10E543;
	Tue, 23 May 2023 22:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4591210E53E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 22:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684880537; x=1716416537;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aZlaQSxBsAAzoBnl1nZ/XHHWAjGQsWsDBnhwVyfiOxc=;
 b=KPKaWxG7eQe2pJQRTlFnDouS7yCDDL9bdTok/LeFngrwR2t3FVBK0JcX
 iDRrRq7yViEbUsJTLDktoMohSY2YMrzCs4etjMgohRCSljANIs2wKPxJU
 z5f1OhcipdXQaGJ/gV38zWa2Pj2YkKhsZEpA10jZTMuhtaHc+ZGzxHkkg
 meS/Li8G56NGLifZdRggoq0XhSoIJKftIfRnFSfpFCIt8qor8zLzzO2Ow
 FR5oVFxgLRK+wUAMN7xIeGwr7bdxa1/UBzQRlCHGWw3Q6s9TMhZxDOGGh
 oG9FfdDRKrALKlVUE+5u8zsk2qi6PC6f3mz6O8EBjDDh+9T74RjmiUKPI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="416840040"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="416840040"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 15:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="878368709"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="878368709"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2023 15:22:16 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 15:22:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 15:22:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 15:22:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AR1o1W+3i25gTJucGVaJheHv5tUEBv8wvTS4D7yuud0huSSECC4thmZ/Fg1tbaX/XUAiCW/madKALsKTjpD3lJ+5mn/Dr3Xa7ZI8BW0TU2LJLRzZxHqsopoePkgpPTvXR6KlJNiC4sUVQsBrzkHxOCH5KHawd0QCvxq8xtdL0MLticBdItMp9s492+CT4K/hJ4HweBkMHqM9wm9zkgnxZScK9b7PVpdcSWQxZPMRcC4gtXVlMfI9b3BrV6WXWdZMvJom1wMulUfG3wa3WJ525LXveHWg3xWzYbda0qiJMoYIl5WYiqDGBLljiM5xSNwQDmd0AC0gUv9l49LcLMs9fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=22VejcwLCUNQN8Eyvs+ptRMrrYRJ9dfdr9ZM603lGKs=;
 b=CfWotbsOg+5nE3t0dJoGmSJgEk04l1MUIhcL5yShlF0nA9ooS0KGFUk1L+zkM49z/k080IEQ4mBTbDk1mlN3tnD2xXJuqYPEBKoWTqlkgL+G9u3MfNG/3v3Lrc+clLCVZU1a42txTHaQDO0RHnwPPPIMKtNzby3ByHrT0pQcypF5CI9Gx7a4nwzDS5d9q37KOtGwtlcBDG+Xavaks+AU2+NDcfSJ14kAb37DeSCwneuZiUE0/u05JhmRZ8xi30kYQA4m3WNGGcpakWxcvfqJLTqwwIZtbBaelT3pMS6RG3Q0xzfjcldIHAPdium2B+/i1Wxw+Xl9u2/hHS6fwOATpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 22:22:14 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 22:22:13 +0000
Date: Tue, 23 May 2023 15:22:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZG08iuog8PQeJ5/P@orsosgc001.jf.intel.com>
References: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
 <87mt1wqfsz.wl-ashutosh.dixit@intel.com>
 <ZGvn6vTwgEz7I5h/@orsosgc001.jf.intel.com>
 <87ilcirjsp.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87ilcirjsp.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY5PR17CA0034.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::47) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ0PR11MB5072:EE_
X-MS-Office365-Filtering-Correlation-Id: 9041b664-1b9a-4900-f464-08db5bdc2841
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZDL5J1WmU+LVSMBw2q7YCGWyEOboT8lbolrRW3TI6mB04n/b0pJ1ErougVB7XziK4Zf59vdulz/qG/k386vcOjoz7tJOHL6C5liVzBP5XdG0oloZ1e+oYlQXAH0Vwm4T2tlHtH2O2fmfVDmsCNE5SAn6e1MPjBE/aUkUatNZBbiAwDl/AWbM8cLfy2fUZ9B0rgjg12rvw4nlJFZeUh5xggUeAvxgl97fYuAKygEe3RxbmdTtq4z7j9PcXSPS2iw4phInoj/79NumzKgvitdODe/CrifQd8v8iOfe+ltOg0xPBKi89163gUZYG86GzB6vywE/1U36pRP8yGreIgqVe4YvIMSik/jWEUdXMonjrmtPryWrRib9YXhImnhU9fwwDjbUmR++nk3nTPgX+rW3qAKuNGgsfLBg5dRbopJeW2b+AfrGGfXsq6KbeTj3qt82G8CGBcW3pdSUlGCBYiNPZlU/KWYYNBWt7hG5vlmaoBAR/PAb+l1iM2NmRMCU302ThJDJjJ7fsOCA/HqplegQZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(376002)(136003)(346002)(451199021)(86362001)(6486002)(41300700001)(966005)(478600001)(316002)(6636002)(66556008)(6666004)(66476007)(4326008)(66946007)(5660300002)(66899021)(8676002)(6862004)(8936002)(38100700002)(26005)(6512007)(186003)(2906002)(6506007)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVNPNitIdU44TVIwbTBraC9LYmdGKzBLSXVNR2tKZytqbWlYMkhmaGJqaTRi?=
 =?utf-8?B?Y1phNUJQdWdlYm10Qmhad2tnMW8xeHp2RGNZNXNLdU5aZTVNQWdoYmVuMTY3?=
 =?utf-8?B?TjZSOUZ2ZVRwL0hFVEE2WXoxeSt3czE4NGZ5QXVRaXd6K3lYeXF2aW1YcERV?=
 =?utf-8?B?cWkvT1FJWUtUZE1TNW1TbEIrZEF2QTcyYmluQlJZRnQ3TzV5TjAyVkhjM0lu?=
 =?utf-8?B?MTg4bmVBdmUwZnlqK1V5cFYrQ2VVenNKeDJERUNjN1JtNndMNGM5WndHZEJY?=
 =?utf-8?B?MjJlam9ZVGNjSW14TDhCMnhOVU1JMnNLL2pVaEF4L01OcE9XbUhILzN2UnNV?=
 =?utf-8?B?MkxmWmphcVFab0pQenpmakx6VzJLdGp6TFdrNE9RRFJvN1ZlYm9XSFpEbVJC?=
 =?utf-8?B?alBQVWNGQjljMEJQOW52NyszQVByM3BtdEFmdG54aUZSdFFKVWNZd2czRDFV?=
 =?utf-8?B?NWM5UmtQS3p1ZzF2OWs1cTFHeDdRWVdVQnJkcmNYN29mdmFGTHRuY0xodCtQ?=
 =?utf-8?B?UmlVbWw4VTZYVTdBbExGOXBma2daUjJQTG53aU5lKzZDejZLNzBkZGdnVTQ1?=
 =?utf-8?B?OUhZOTlacENkemdXTXIvV0NRbllibVJkaWZRcHNqa0NMWlltQVpEbDY2VDZD?=
 =?utf-8?B?anh6bWRBaVFzaDJuanRubmh5b2JuY2JmVGFiL2VHenc0ZXplRG1EeHFnRzFz?=
 =?utf-8?B?aDA4RWoxUVRhUGZVclp2QnFHejBXaDM0cm11MmUvYjM1K2duSUlDdWxJMXJD?=
 =?utf-8?B?UGRnVG9EYWJGaUFZZ1Q3N0N6WXQ3ekJ3WGpQbGZzS0hQR0h1L2tpMEV6cGR3?=
 =?utf-8?B?NVdNTmptc29JbEkvbEdJZ2cvcmo4bkg5M0NLSWlVaDJoSUJDYTFwb2lOS3VP?=
 =?utf-8?B?aVJxR3FqV2I1c1B2V3dOd000UHVtem1XODB0RU9kaHg0eWZsUDRHS29tOExH?=
 =?utf-8?B?eVhzWUpHYWZTMWUySXN4d1Z4aERUZ3JhVG1PQURNL0RuS29wdDgwWSszVFA3?=
 =?utf-8?B?UnVmVWROSTdhelhKNHc1ZE1WdFV2L1BUcUsrN083dG96ZXZrYVVXWU5zUU5R?=
 =?utf-8?B?K3hWT25IK2tNNktYYVBWU251Ym5lRVVrd29razVLTXhGazZlYzNnMXRLb2U3?=
 =?utf-8?B?NmloczUyVUliVG1SMmNWTzUxVVREUG16UTIyV0FGK0RaUEJzMVNUZ3JCcGFp?=
 =?utf-8?B?NnpxVSsrcDZKSmxHSzJFczUxUkpvRkJVaWxXbURvLzhvNjlGQ1lsUlRTQjhz?=
 =?utf-8?B?cTlrcVVrRnZDaEZNTkI0NnV2cExEa0xwZTJHenpNOFRNWTFlMmF6UGo5Vy9i?=
 =?utf-8?B?Y1hiQWE3Mks5eXRmdWllamJtZitCemUxOUpSRmJvUFVKdjc0ZmpjS2YxeGpP?=
 =?utf-8?B?MjJWNjA0OXZEM2tGaG1XWWZ1a01EV05aaXpNNHpDYkJMUXhnVEVhVGlXSTZm?=
 =?utf-8?B?dUxVRnFzUU5zWmpvQWh0ckFOcVRIVEJiYmdkTnd0L2M5b2dMN3Nob0NaQVdM?=
 =?utf-8?B?R0JlU0lCcGNIZE9lbEV5T1NseDZUL1ZHSXZBdG1xVjAxdGRxaWwrdklvTjZT?=
 =?utf-8?B?ZUVGSXg2bjRUTmRxRTVQMng1dkNBSmd0MkJWUk5jYnF2aUtZMVFyRDY1Z1BK?=
 =?utf-8?B?aU94R2JmRWptWWw1NWhGRzMraVk1Mmc0VHE4eWR0R2dxMG5xU3FyMThRR2V6?=
 =?utf-8?B?cDhPZnhoYW15NjE3YzhtTDFuMXVUcFo1TDNrNVhoaTVSQjk4VDlNd2Z2VTZV?=
 =?utf-8?B?RzdLL1IzbTNZK2F3bmxOODVTV0dwTmpvUkEvL3VrY1BYYXZDc0tXTmNiYnU2?=
 =?utf-8?B?ck1DTkRtbDBQemJ1bnJoUURoNHdXalFGNkNxV1FaS0xoYW5OQVAyMnNLS0Iv?=
 =?utf-8?B?SU53elRBdWVMcGU3RXNoNVgyK1REalgyelcyTGJJb1JYMkIvWkx2OVRVYnNt?=
 =?utf-8?B?QXdrdkdKSzIrNXhHcXFEVUFjdXVKdVVqaEtuYnlXYzc2ZnY0UEE5SFZ4Unl6?=
 =?utf-8?B?RkJFY3JLS2N6bDFCLzF1VG84U056cm9DYzYzRmY5TkV6bWk0NG44K3NybUYr?=
 =?utf-8?B?QmpyT0RTSVFpODF4dTlXaGQzUDY0bkNFMkZJQVdBN2xlM2llb1lWK0poamxy?=
 =?utf-8?B?Z2dtbzV5aWRpY2podWszSGVZMytZamxKOEdXRXZwV05OOUJqdlAwZXdQWkxi?=
 =?utf-8?Q?Fhdwxwn6wvBImMd00+4yLLI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9041b664-1b9a-4900-f464-08db5bdc2841
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 22:22:13.5516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6bO+g0xA6kGjNODvedUMbirZe9pxZ9WhZDtYy7Zv+MEnrPtm/f5DG4Fhqb/pavWldDC3ze30PJNsjlK0SQ+hS08DMtvmrHq4w8bpGKMuKo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5072
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/perf: Avoid reading OA reports before
 they land
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 23, 2023 at 11:20:54AM -0700, Dixit, Ashutosh wrote:
>On Mon, 22 May 2023 15:08:42 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> On Mon, May 22, 2023 at 01:20:12PM -0700, Dixit, Ashutosh wrote:
>> > On Fri, 19 May 2023 15:56:42 -0700, Umesh Nerlige Ramappa wrote:
>> >>
>> >> On DG2, capturing OA reports while running heavy render workloads
>> >> sometimes results in invalid OA reports where 64-byte chunks inside
>> >> reports have stale values. Under memory pressure, high OA sampling rates
>> >> (13.3 us) and heavy render workload, occassionally, the OA HW TAIL
>> >> pointer does not progress as fast as the sampling rate. When these
>> >> glitches occur, the TAIL pointer takes approx. 200us to progress.  While
>> >> this is expected behavior from the HW perspective, invalid reports are
>> >> not expected.
>> >>
>> >> In oa_buffer_check_unlocked(), when we execute the if condition, we are
>> >> updating the oa_buffer.tail to the aging tail and then setting pollin
>> >> based on this tail value, however, we do not have a chance to rewind and
>> >> validate the reports prior to setting pollin. The validation happens
>> >> in a subsequent call to oa_buffer_check_unlocked(). If a read occurs
>> >> before this validation, then we end up reading reports up until this
>> >> oa_buffer.tail value which includes invalid reports. Though found on
>> >> DG2, this affects all platforms.
>> >>
>> >> Set the pollin only in the else condition in oa_buffer_check_unlocked.
>> >>
>> >> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484
>> >> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757
>> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/i915_perf.c | 8 ++++----
>> >>  1 file changed, 4 insertions(+), 4 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> >> index 19d5652300ee..61536e3c4ac9 100644
>> >> --- a/drivers/gpu/drm/i915/i915_perf.c
>> >> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> >> @@ -545,7 +545,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>> >>	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>> >>	int report_size = stream->oa_buffer.format->size;
>> >>	unsigned long flags;
>> >> -	bool pollin;
>> >> +	bool pollin = false;
>> >>	u32 hw_tail;
>> >>	u64 now;
>> >>	u32 partial_report_size;
>> >> @@ -620,10 +620,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>> >>		stream->oa_buffer.tail = gtt_offset + tail;
>> >>		stream->oa_buffer.aging_tail = gtt_offset + hw_tail;
>> >>		stream->oa_buffer.aging_timestamp = now;
>> >> -	}
>> >>
>> >> -	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
>> >> -			  stream->oa_buffer.head - gtt_offset) >= report_size;
>> >> +		pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
>> >> +				  stream->oa_buffer.head - gtt_offset) >= report_size;
>> >> +	}
>> >
>> > The issue has been correctly identified above. But seems that the real
>> > cause for the issue is not that pollin statement above is misplaced but
>> > that updating the tail via aging is unreliable (at least with the present
>> > timeout as you mention above). Also, it is not clear why we have tail aging
>> > at all, since it seems we can detect when reports land (by checking
>> > report_id and timestamp). So rather than move the pollin into the else, we
>> > should just eliminate the if () part. And if we are eliminating the if ()
>> > we can just eliminate the concept of tail aging from the code (and
>> > comments) and rely solely on explicit detection of reports landing.
>
>I missed this yesterday but the above patch is basically incorrect. We need
>to return pollin true when we have a "non-zero distance between head and
>tail", i.e. when there is data to be read. And we have violated this for
>the if () part with this patch (because we are unconditionally returning
>false from the if () even when there is data to be read). So there are only
>two ways to solve this:

Yikes, didn't see that. Ideally if the tail did progress the first time 
we entered this function, then let's say pollin is true since we find 
some valid reports. If the tail hasn't moved when the function is 
entered second time, then we return false (which is wrong) since there 
may still be data to be read.

>
>a. Increase OA_TAIL_MARGIN_NSEC (the aging time)
>b. Eliminate tail aging (i.e. eliminate the if ())
>
>We cannot move the pollin statement into the else.
>
>The preferred way is b. since it makes the overall code consistent
>again. And it seems easy enough to do.
>
>> I thought so too, it would be much simpler code. Looks like Lionel agrees
>> with removing this code as well.
>> I do have a couple concerns though.
>>
>> - In the blocking case, i915_perf_read() path waits on a queue with the
>> condition being oa_buffer_check_unlocked(). If sampling rate is high,
>> oa_buffer_check_unlocked will almost always return true. If we remove the
>> if block, we may run the rewind logic too often to detect reports that
>> landed. The aging logic is just giving a 100us buffer to avoid repeated
>> checks here if tail hasn't moved. (although tbh, 100 us is very small).
>
>I am pretty sure if we eliminate tail aging, we would fairly easily be able
>to solve the problem of rewind logic running too often (e.g. put an 'if
>(hw_tail != oa_buffer.tail) around the rewind logic etc).
>
>> - The other concern - by dropping all this aging logic, are we changing
>> underlying behavior?
>
>I don't think eliminating tail aging makes a significant change to
>underlying behavior from what we have today (and I doubt we worried about
>changing underlying behavior when we implemented explicit detection of
>reports landing in d1df41eb72ef).
>
>>
>> - Is there a significant ROI on current patch vs. dropping all the aging
>> logic?
>
>Yes, the biggest ROI for me is to have the code make sense again (the code
>is incomprehensible the moment you ask "why do we the concept of tail aging
>when we can explicitly detect reports landing?"). And anyway as I mentioned
>above the current patch is just incorrect so we need a different solution
>anyway.

okay, I agree more since this patch is still buggy :). Maybe it's time 
to rip out this logic. Will look into it.

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
>
>> > Separately, there seems to be another related bug in the code, I have sent
>> > a patch for that here:
>> >
>> > https://patchwork.freedesktop.org/series/118151/
>>
>> That's a valid new issue and different from this one, but related to the
>> rewind logic. lgtm.
>>
>> Thanks,
>> Umesh
>> >
>> > Thanks.
>> > --
>> > Ashutosh
