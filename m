Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E767963E59C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 00:39:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE41910E134;
	Wed, 30 Nov 2022 23:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7409010E134
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 23:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669851574; x=1701387574;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=b5FCTStCoqyVPPXWevBhbN7OnARKJFwMxFbtmJDFnug=;
 b=fBKQgNqYdbaznkCe6s74qBIhr6++XponDJiCK4O4wlbKt//9Tw6ne81m
 pe4H09YRvIhrZWRbp7rHATvo81ihdLHRBH6Z1UVMsz4BA6CvGQoMRBxX3
 8mN6iVMBxMSbuvA+y4qcYTL0H2Tx9gGQs08yGlvEiFJT3+zdE+eCFEF65
 IRDODOTxCY8L2pftSTrCj2VfRhnqCAjUW5BoLPbU99kz+ziNuNwf8/fBz
 9bDHNFB8QwbvJSoStYvMJzzNVAfZz9QYv/XQmGkH/369AcTYTPJ2HW4s4
 g0SNXNvRQz+ngyGc4lJQdSyWGiFYqphjsUVoXj8SWrxcwTZfwB4RHb2hr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295232426"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295232426"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 15:39:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="707844717"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="707844717"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2022 15:39:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 15:39:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 15:39:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 15:39:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 15:39:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccyOn8vxLwtyxs7SvHostj41S3faX1Np5svv3cRJar/8x/Jk6CXlJahomgxLh5ET1PsSeuSuK9tfnqzXoVMEvtbe5e4EWRav3O873jZyOzLN2s+aNgC2B5goS+AtUwyvZ5FDznFEr1gtDWzXr+86fEtjEZ7iU56CMq/gFjwtMTaGgZEnTWtulr4gOmrs9AQ5t+P8oGwDEHS13H0WLWyPbvIWVvRXr+58/rvRb48GnuFgy0zjMjMuBSgxbZXzIYhMnSRjyxtDKpuxoJWANNnfE2JYJo7PfZ3NZ1G/FUMLgBCYdzzVEyMnZdLwNkwhwjLga6sSjl5UrRbD9GPtLou4XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WtJMZ0/k/yfGpyrByXe6bHeY9OG2GB/rfvSrYzH2HBc=;
 b=RKcQnA1sKCWELorIoAsqliKkXefn+JkQyVgpUF11Ec3UabcreKvxqq0MzkPtg+CrWdcViGHunYdO31Ws3mfYOKBHYjOryNDDYHEC6ZX9sSTqH4cjXduMz3+0tc/qxiSnlgsT5IsKEcJY93oBFyThOhzyyCKEu0X15/tEZ1KvqbiOUcMfe1W6dgXhkusTeFAjpyPxKIsV0/c1BbfSjtRgPcEvrb92h4pMm1EqPx4Xrj7ySG2SlMgSZzUy0ZgJdcLyFKK+POG6fV5YWZ7Ti1Ylf+X025MCa16o6dr50XRi/i8R2p5A51J5Do2HkxjvMhBUIVXYoIlC+kvnhQhSiEw6QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ0PR11MB5937.namprd11.prod.outlook.com (2603:10b6:a03:42c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 23:39:30 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 23:39:30 +0000
Date: Wed, 30 Nov 2022 15:39:14 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y4fpomJ1Q3mkCOGc@unerlige-ril>
References: <20221129012146.995006-1-umesh.nerlige.ramappa@intel.com>
 <874juh43ce.wl-ashutosh.dixit@intel.com>
 <Y4e2eRI3Ds3sLyDg@unerlige-ril>
 <8735a042ub.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <8735a042ub.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0188.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::13) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ0PR11MB5937:EE_
X-MS-Office365-Filtering-Correlation-Id: c1fa1f72-eb60-4d0c-2c92-08dad32c2044
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ajLeEiEiPlg4fx8eyw3AEUpZoHPo3x6plGBZQPXxW0tMYBYZX0Z86DrKTD1QSC4u5I7SWm13rYcXvB34j1pEPF9wyhkBKVa0fYgsLrzyDlsIM3/Na5dDoDgPZ2s3O0EFo6L0KcG8aCEsAs1HTfQPqrMdqcWFXPp+cCN/jjgS6FpziA0apGeTD6aC17OTCUimyYKsxrT0+smpfIPIhv1ul60LBeSi+jtyXLxcPL8fIByg4SyGvgfFlNy6EtfRhvGg8d/WoJhwVIVWOefWwhU7Vw0kyCzdNMNTRb2Posi/3qpoJle595RXJeZykKw1T1tTCaJE2MKi34/HokaTyvAerW5WHUrpbXLO9OhcH55tawKAKW17FyrqWiwD2YMtYLH2QySWaRvTl8cBCoHM3tz2AxTURp1WuviDEiWyZ2UXLUefhdwYgq8Pc1vGadHVdAZUMDZlwBYgmaI7D2zR/KU5gP+yjoLNe/SZNLI5NGqI1s8CRe2VIsH9T1Tpc7HZTwRSik3qtp8zHo4TScjlA6grvj4V36HBfRciWJtzPCPjsV17PvdiPCFk5v6ilqxJOqfad4YdelAEIBQpdwKPkF5hwPYH7AwqeCcTwmcWQcYWjGiT+hy5GLABJaYvyPa7i2IJvZ8clMmuURPSmQoHezexcQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(366004)(396003)(39860400002)(346002)(136003)(451199015)(4326008)(66476007)(316002)(107886003)(6506007)(6636002)(6666004)(8676002)(5660300002)(6862004)(186003)(86362001)(41300700001)(82960400001)(8936002)(9686003)(26005)(38100700002)(6512007)(83380400001)(33716001)(2906002)(6486002)(478600001)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXYzZGloV1NLVGRWa3ZhK21WRENKRUUxSUxkWUVvQ095aWdEM3cyQ2tyWXdp?=
 =?utf-8?B?WlJUVDNseERkZy9uY3F0dFBPT2QyWWx5OUNpOVZJUlZxdUs4TUYzY0RmT0tF?=
 =?utf-8?B?UGw5bWJxclcyYllha1k4SkQ0ek9uMElZcVBmcUYvYVVNcE16MStZajE2VWZO?=
 =?utf-8?B?L0RjY21xZm1sQzhTQytBMldzbXAxck0zQlg1UVRtWW43NENoOXlXclpibUpr?=
 =?utf-8?B?Y2RZa3V3cFdQUDZoR3ZpM1hQYWFjMytLdzRPNExMSThqdkVBWW82RVZGK1Ix?=
 =?utf-8?B?TkhxOWJRN1RzQVRXZWcvaXlPK3RNSDQwWGNJTWRQL3Q4czRkTWJVL1JXMEtV?=
 =?utf-8?B?MUVPa0R2QVpmTlFUUExjbHB1S2ZSaTRQRWFGdVhCcFExLzNjdGRhUkpkMTBE?=
 =?utf-8?B?UldDQWN1WW16d3pSZWIrcis1Uzh5d3RDbWZFWERrdzdkS0RwcndWbmxxOWpy?=
 =?utf-8?B?Y1RpaGhTMWxmN2gybE9Yay9zc293UzhmVGg3TnlISXcyRlNSWVBFaWlHYzd2?=
 =?utf-8?B?b2tlL3VMNzFPZHJQV1lJWWttYjMvSit2QlNxMG1rK3p0N1lTbDdMSjBUQ1ZE?=
 =?utf-8?B?UzFTRExlRVFUZXEvVHRKSmZJYlo2TEg5akdnRjJaUmxJdVE0eGNqWmlLdmFK?=
 =?utf-8?B?WjlGYnBZMXJUbFNZYXE2VlIxa0tJVS94dTFHcEJxRXNBRTBWcnE5MEs2emNt?=
 =?utf-8?B?TFF6T012TG8zWFdwV0swZ0ZvZjFUS3hhNllpUUNsWlZDaU9sa1hlMHR6Umlm?=
 =?utf-8?B?dmdPazBVTUtKbksvc1kyRVUzYmR5VnJBeUVDVWFHcmpla0lHU3FOM3hzTnBU?=
 =?utf-8?B?dVNYT2plVlVPRzBNM2lleStEZHFidVpKUFQ4dElaTDY5Zld5QWttQnRYMmNH?=
 =?utf-8?B?Mkpva0pnbmIyNE1uZXB0dUpYcDBDNG9aekFxclB6TVhHVTIxQ2JXbUxveWFZ?=
 =?utf-8?B?K2VsbzZ2VTNSYzNSUDh1MDNGRHllUlBFWVllS3VJQzlkY1hpV1AweklKbG95?=
 =?utf-8?B?VFNjYjlyTnVzeWxwMGdpRXpRUU9jaHpkVU0xZmNKdENMUjhtL1pLVnBkTFVw?=
 =?utf-8?B?dXhIYUpYNFRPLytVcGY1T3FNam5tMTBQbmxXNWlBcEpuZGtabCtyUE1VVjhn?=
 =?utf-8?B?SzFkL3hIRm5NRHR3VXVMbTh0a3RLTWxmelJzVXc1R0daRzVFSzdUUjRkb3pQ?=
 =?utf-8?B?MWQ0d0UwUUVJTzFXN1dOR1J3TWVqUjNrQ05BL3V5MmpYckEyd1B4Q01nS0c1?=
 =?utf-8?B?Z2Fnd1RkQnFqTFhDaytFaWI3UjhwTXBCUHRqUU1MbVJhbjYxR3ZQV2VWaUlP?=
 =?utf-8?B?V1JkRitQVzJsSmxxRnVHUzIwZ2U5dlczNXkwWU1QcnVDenNUUjFBVnFjSm1U?=
 =?utf-8?B?RFQwL3dWb1V0UnV6cjJEZll5RnhYSEhPZ2lFNEdMOGhubDBJZncyT253b1ZP?=
 =?utf-8?B?ejlrSDNUTFd2Rk1vQnB1Y24yaGdmaFh4KzBHdW5nSytTREI5NzMybmU5aC93?=
 =?utf-8?B?NWw3N1Q5RTErQmlkSjBPc1AyYjh5SDNqbGcrNnBKdzlmamY1UEdBa2dtOVEv?=
 =?utf-8?B?S28zV0h0bU9nQzJQdEhObjNMNGduakw1Y3MzbDlYbzJITCsxUm5HeTZtQWpR?=
 =?utf-8?B?YStPZzJKZUtkdnA3S2NDeG1oNElpWTBWWmRaN2NFbmpRc1Jab0U2UFcwcTRs?=
 =?utf-8?B?T0w1Sm9SOCtSdHpsRU9ZMTdKY1cxaU92SWRGVEpRZDZyVGhLb0VOci9kS29q?=
 =?utf-8?B?NkxvV0dvR2tyZ3U1OFdQRC9PRXF5S3kyNkQ3QnNQS2hPSCtvN1ArdGg4dmg1?=
 =?utf-8?B?MHorYVErZTZBTmJJbDdSZW53M1YxeFhBZ3gwVXVPdmNiVnlzczk5d0Vwb2tG?=
 =?utf-8?B?WS92RDVYNStVa2VZdzhZTVZkcnd5WEVUOW53RXI2ekhmc21VUmpGb01scGs1?=
 =?utf-8?B?UHc0aEo5VktHbm1tUE1DUWVEWERod2RDQjNvVmZBZG10NnFPaHhXdnVsWTND?=
 =?utf-8?B?QXFmaG5mNlNMZzJuV3RwR1BtK3ZnREdZdG9Qc0NQci9IK0NKUmpoUXcxZWk2?=
 =?utf-8?B?VXNUcmdlbWpqZVlYV0UrQXJEVm8yMkk0MSs2eElCdUttUE9zc3ppaWZUaExs?=
 =?utf-8?B?VUM3a25mOVp4dHRaWlFKMUs5TktrWGlFeU9QQ1hNRGZyeGtXd3lyVEtRWlVp?=
 =?utf-8?Q?S7BWodoOf6255XF4aGwQzHU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1fa1f72-eb60-4d0c-2c92-08dad32c2044
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 23:39:30.0956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rdXix0+tsQFcBf9HsqeU4pTw1rVSM4yQa5vSA+jtzjyhqLcYTuyQQRmBdu31wn8xnxeeg4KXU10UB1lmwqJhhrbVJTO2o1Ac8CU+xZXv2Ac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5937
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for 32 bit OAG
 formats in MTL
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

On Wed, Nov 30, 2022 at 12:14:20PM -0800, Dixit, Ashutosh wrote:
>On Wed, 30 Nov 2022 12:00:57 -0800, Umesh Nerlige Ramappa wrote:
>>
>> On Tue, Nov 29, 2022 at 05:51:13PM -0800, Dixit, Ashutosh wrote:
>> > On Mon, 28 Nov 2022 17:21:46 -0800, Umesh Nerlige Ramappa wrote:
>> >>
>> >> +/*
>> >> + * Ref: 14010536224:
>> >> + * 0x20cc is repurposed on MTL, so use a separate array for MTL.
>> >
>> > Wondering if it was WAIT_FOR_RC6_EXIT (seen in gen12_oa_mux_regs) which
>> > moved elsewhere and if that needs to be added to the array below too?
>>
>> WAIT_FOR_RC6_EXIT (0x20cc) moved elsewhere so it should be "removed" from
>> mtl oa mux array.
>
>What I was saying was let's say WAIT_FOR_RC6_EXIT moved to 0xc0ffee so now
>should 0xc0ffee be added to mtl_oa_mux_regs?

oh, sorry, I misread that.

I looked for WAIT_FOR_RC6_EXIT in the bspec and did not find it defined 
for MTL, so it's dropped completely. If you could confirm, that would be 
great.

>
>>
>> >
>> >> + */
>> >> +static const struct i915_range mtl_oa_mux_regs[] = {
>> >> +	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
>> >> +	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
>> >> +	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
>> >> +	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>> >> +};
>> >> +
>> >>  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>> >>  {
>> >>	return reg_in_range_table(addr, gen7_oa_b_counters);
>> >> @@ -4349,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>> >>
>> >>  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>> >>  {
>> >> -	return reg_in_range_table(addr, gen12_oa_mux_regs);
>> >> +	if (IS_METEORLAKE(perf->i915))
>> >> +		return reg_in_range_table(addr, mtl_oa_mux_regs);
>> >> +	else
>> >> +		return reg_in_range_table(addr, gen12_oa_mux_regs);
>> >
>> > But otherwise this is:
>> >
>> > Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>
>> I will break them into separate patches though. If the diff is identical, I
>> will carry over your R-b on the split patches. Please let me know if that's
>> a concern.
>
>No I can quickly review again anyway.

got it, will not add the R-bs.

Thanks,
Umesh

>
>> > If you decide to split the patches, please add my R-b on all the split patches.
>
>Thanks.
>--
>Ashutosh
