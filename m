Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F89C5F81C8
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Oct 2022 03:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 687E510E07E;
	Sat,  8 Oct 2022 01:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD7710E07E
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Oct 2022 01:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665191233; x=1696727233;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WQFhg7Ga59Q48MYzIMuBC6Rqrc6UKxjdSsxzmHp+Ey0=;
 b=NTEiBq994x6Aah4Y+lvmOFW8y4H7MJdDvKlcK6+S5N4yfI0dZqsp5l8T
 yoy+vkL7WsOBs4l6E5fOGedzyv0YEdgxGU8OR1Lb3UkBIQy0rdtJkUdaz
 KGhFIw3fhqAtdD1e1lK0x+B9hpnIYB43ZJYfv0xnKENpEfrrCjdl/mKq8
 7+k6iOhF3CdH7eP4NuOMTKdwVKfq2RsKk6Meqo+pn7ZfuM+fO54OLGQD3
 PUJKyDmNnsFFVHwnzc2it3H3xoAnq0uaRHEkzojNqmks4ug90VHpKaS5y
 YCv4aEfCTjAoCrI1z+XIVbeh97F6cEIqMNYmjIHdd5yQuvyTJV5+QdoMt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="287102662"
X-IronPort-AV: E=Sophos;i="5.95,168,1661842800"; d="scan'208";a="287102662"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 18:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="750737795"
X-IronPort-AV: E=Sophos;i="5.95,168,1661842800"; d="scan'208";a="750737795"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 07 Oct 2022 18:07:12 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 18:07:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 18:07:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 18:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fT+mNdZlMixZDAraclZKcKtrOfSupxYcsFKH/c0xfoB/BQniMXuFeF87Xio/0Mh8cx+HIt3YJbUg0yVbjVYNjD1U77WDaAksXSWY6vVtbhEyIHT6IpVKKC10lf6c8lFWfLVP6+aYgFgeA2Kz0vNojvIQGAI2P00T7Ct3XToy0QU+7gYUItATkJxjp4hOH2jmpfOOB/CV1c8IvMaWMAgjABfXTdqABBUfK9vjXPGqbYgx2wPsrb2c31CqAsz6EegkAP8+I+4wRK7IOXgorjJiwfbRzx2zEsOGsgKeA2jjgwviGsk7sNcGtnRcLlbPLTm4nmUfj2UjcXZmSBCWT/9q7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NSOFj0d1lpqMfccSNMoc+3IRxNNSJc1gtuk+hSC5IF0=;
 b=QN89LYINVcoLNaap9mPy90FDB3gQEJayXtioYT6eoiovMgVO81TvMR4cdn5g4SgMG24ksBJcsN/cZVCVeo90bdGIqEdeq7XLNWNAMcHj/Dli/NOKJErmt1JtCZ01byBZWmyv1WSfdKkLdkQvA3pboMnoLCRPqn4ymgBpLohSgd1wDoqBlTq9BTnMJhWfCoGa5GHSgZ7cvT8vqXMT2hg3GHTFapFxKR1tFQ2Zrqj3vKERpqPxwGlWYAyACJYaNXDm0aELBxGHAgYnpGxl6cPv0byneu9mphIV7jSyKGnnfOXi3BCrHfCITKxMQLVqz3NFV7/LdxqEBi742O4u/kd4pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB6686.namprd11.prod.outlook.com (2603:10b6:806:259::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Sat, 8 Oct
 2022 01:07:10 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d%7]) with mapi id 15.20.5676.032; Sat, 8 Oct 2022
 01:07:10 +0000
Date: Fri, 7 Oct 2022 18:06:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y0DNM6JiMNxY7Oby@unerlige-ril>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
 <20220923201154.283784-5-umesh.nerlige.ramappa@intel.com>
 <87y1u45rla.wl-ashutosh.dixit@intel.com>
 <Yzdir5tLSvx/VKET@unerlige-ril>
 <87leq0zcgf.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87leq0zcgf.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0092.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::7) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB6686:EE_
X-MS-Office365-Filtering-Correlation-Id: fc352f86-e252-461b-000b-08daa8c96d5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uMC+aTjQQwpga2k/UPoj8DpftkKP0v45bz+7a3IAszgbMHXYkdkh5kJoUXypMHsyaeAFJUAAU8uU5tIAJGdU3wdnfTX8KXNW87fYX0mpg9evs9gopBqCZzwh+E/wLqolznEuoE99nLZAMFceZsIMXkdwIPQpYKSzlgCyUcwT1tL9F3ODec9zqJumX2BzUuhXumRQcjTRNHH2Zwlh3lEOS+oaF7Hg5AEkYAFc9JMm7mBK81xn2e8YbHSvtur3FcXxSuja38lK4L6CnrwwW2QUpNgM8r+DyYysU3j6yRiN+qhbBaL7xYVJ8FTQ+nFkj/c7elfOJ/It3l2A1jT7IQOO8CgXZHaChDKLv2wZKpNz4SL4Q328cbIQNT56RYNPOVU58Dq6Dg0QX1Vto5UpHjOcyxKAALYp++WmcMGYgthOjIVa6Czl6cLVxsisBL/8T9zuJLm8tzFiNf5c+fP5dRnPkdq+iCLmih7hYL2rYjKtP21iLaCYIEOoKjxLdbKFa43vpoWA7UGVo1iT994XAAP1EiauYmNejnmGQt8YspAN5aTbt/Hxe20fIdHdfYR6jXOatdnLSEd4EGl4GG833vuscceH+aQYhn+MyN/HI4Ol8OorrkdhXTWR3zwxkL5uCXkE8qQaS1lJ+4ZTa1+ULot5q6gKDSUtaWc6wQj/ehejaZ0/9G64iMZKDEOrjdjveSLuMSuYv6RyP1m0q7dUCFJ1yQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(39860400002)(376002)(396003)(366004)(346002)(451199015)(478600001)(54906003)(6486002)(316002)(6636002)(41300700001)(66946007)(66476007)(66556008)(6862004)(26005)(2906002)(5660300002)(8936002)(6666004)(4326008)(8676002)(6506007)(186003)(6512007)(9686003)(83380400001)(33716001)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjBTNDBKS1ZNZGVhWll2ak9yMUZSa1RoaUk4aEEvdllzRUNBYmZBR3lVeGI4?=
 =?utf-8?B?UTNBNVNMckhFdEpTWjJucVptRXNNdmhVMmNjRHIxMHNqcGJMVitFbHFqRExm?=
 =?utf-8?B?bGNyd2JYKzltRkYxdi9yZFcrUnlVMFZGa0MweGxGaE1kTStMTnpTVEthNHA2?=
 =?utf-8?B?cFE0OGxMS3hXZlJoeTRBamRBa1dkMVE3RHhRY0V6UW9JdHNRekNRZnB4bEJu?=
 =?utf-8?B?RDhVY0VTd1pOeFQvYWVqMS92dkJPbjNaNkxqM0xjYlVRRkVQQmZGSXg0cVR1?=
 =?utf-8?B?VHE2MGFCYkZGSXpGc3pSczJmVDlTanFqRmY3YnRTQnVnMTEyZ1RNdEVxbDg3?=
 =?utf-8?B?bXBibVEvRkgwVjR3V0ZKcldQNjRmVU5QKzZTaENBSWx6SVdZODVjM25XWDg2?=
 =?utf-8?B?T1J5YndIdTQrSThBWUh0TlNuK2Yvb0FtaUdPaFhnQjVYTENyc0FRSmtDZDF3?=
 =?utf-8?B?RDRlMFJISmlBb01lc2wwVkZDU3NrbVNQY2M0Nmo3VlRvcHVIcXlicEZRVHgy?=
 =?utf-8?B?blB3Vm5aV1Yzb2wxQjluZFpMQU1ZV05udGhSMmdNT2tnaXhNV1E5YWVZbXB3?=
 =?utf-8?B?K0xRajJsUDcwZk5oVGJiUmE3TTYrRmVjV0x1cGU5UGNZVktOOTVPTEZLY0J1?=
 =?utf-8?B?SHp5SzU2bGVkRDkwL0NvUUFyR09ISGJvTWcvYzZOemRITmFra0xremEzakJD?=
 =?utf-8?B?ci9NZURTc3JNYnY2RVpRK2FWWi8yL1dXa1E2d1o1OFZ1TnJCVGRXWklGWTFl?=
 =?utf-8?B?bWFRbmhuNHpycXNlZGpDeUROWjhITTdNeEMwK2gwaW1wTklLYjM5YWpGWCt2?=
 =?utf-8?B?RG0xSWJsejJjTm9JcFpWYW1qc2ZxcjRLeFkzamozSjFuTkxZd3lEOHpId3hi?=
 =?utf-8?B?REkwbW1Id1M0YVE1bldWTlZBQWI1cCsxOVpjSnVEY28xd0ZmWnJqSlI0eDQ5?=
 =?utf-8?B?YzF2aFpBMHZLZXBuTmNqaERkMDJ3Zk9MTlZUTS9iTmowOUJhNFYvbHc2Sksv?=
 =?utf-8?B?NGpPZG5zaDkwVm9nbXZwejNFNUo5bDFGVEV0TzhNb0l4aUM3QVlaL0dqalNl?=
 =?utf-8?B?TVFHckJFTEE5aFVoWXEwRzlFUXVic1p0OWNhdklhczJDeEg4OW9CZ3BLWHEr?=
 =?utf-8?B?MFhoNFJCK1BuaUJBT3A3S280ZW9yZ0YvUTJ0dzVHWUtBYW85ZVJCUmdDaURL?=
 =?utf-8?B?bDNpWU90ZkRxL3hrYUFnMHNTOWRUYzVObXIzcHZyb3hCTm9xVGI1dFoxRDdI?=
 =?utf-8?B?V3NDWXhOdjFKUUUzWkZXUDRBT3BXdWg4WVppWnB3MmJDU0RheEwzNThmQ3BK?=
 =?utf-8?B?QktvaWtDZU4wbDhzZVBOM1ZFZFMreWV5YXVuS2NZK1Bvc0x3M2IrVmpad0Nm?=
 =?utf-8?B?UXh2ZWxFNExmWmxRVi9hN3RZRjNnb2VxQUFKZXZnM08xYWZRMlYrRXlHT3Zs?=
 =?utf-8?B?V2lKS0ZjR3JDbmJKNFBMaFFjbkE2SCtHUGZ2T0J4VEVYSUltUzhhTzlob2tz?=
 =?utf-8?B?YjZ6VWNJeHRqM2VDYVVaQVhMMVQ4R3paRFZvdGdqV0F2bGNTOGd0Q05iZUdn?=
 =?utf-8?B?NFZXbVB6am5iMXFOdXpPOFhWRWFuZDYwY0hkejVjaW1SK1p2N096Zk5zT1gz?=
 =?utf-8?B?dGUyQVB3by9lemJxaDVRTDNaRW5WT3IzT1ZFQTNJc1hCdUJISzZLcENScXps?=
 =?utf-8?B?RFpoa1NuQ2NBRm92YnROUXFSSWpxQzhkdklZUVkvc1dRaGtyS0xBV2MrTEo0?=
 =?utf-8?B?TE9raWdXYkhIY1o1aUQyb3l1emlSNUkvYWhCbkdiSWJ2WEV5M3ZOTnlENmpo?=
 =?utf-8?B?VjhmVWM1WGpQeVV4UHl5anpSakF0LzVlc0tScXBUUmZWSkp5NUtldjZpQjJi?=
 =?utf-8?B?WGp5MSs2LzRWWXp5UHJkY21YcWpPdTN1b25pSGV1WXNScHlmUkFYSnJHcDJQ?=
 =?utf-8?B?dXYyOEQxdzJIakcrSGlHK0t0VW9tRG5rUFlnYUI0R0R6R3FxaktpSm5qV2lp?=
 =?utf-8?B?bk9EZmMvaHJxNVR4b2F0UGlyTThFK2l1KzliK1lFQWJOMmxxbzNyaU9lVmps?=
 =?utf-8?B?b2dnUmIrRUpMRk1jVnptRHh2NStYUE9pMXp3NGtCTlcvNDdyYVd5eTh1QnNH?=
 =?utf-8?B?ckJHU1VqajRHVjhPdW5mekpHeE5FK3U2cjlmWTJ4eGFMRlVGVU5NNllLbnVS?=
 =?utf-8?Q?dk9uF12zGwA25Y4gQfRJhYg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc352f86-e252-461b-000b-08daa8c96d5f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2022 01:07:10.5369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aWkUv51ji70muOYOoLO0tw4rbX4s/7HjbNpsr284FCXmUXg7TTDTmL1AqTlwsijfDt8RJD4IG2H7Nb2xo0RSrbGp5xn/6WeoEXzLSioyLL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6686
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/i915/perf: Determine gen12 oa
 ctx offset at runtime
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

On Fri, Sep 30, 2022 at 04:09:36PM -0700, Dixit, Ashutosh wrote:
>On Fri, 30 Sep 2022 14:42:07 -0700, Umesh Nerlige Ramappa wrote:
>>
>> >> +static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)
>> >
>> > I have seen people complain about unnecessary double underscores in front
>> > of function names ;-)
>>
>> will remove/change to oa_*.
>>
>> >
>> >> +{
>> >> +	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
>> >> +	struct i915_perf *perf = &ce->engine->i915->perf;
>> >> +	u32 saved_offset = perf->ctx_oactxctrl_offset;
>> >> +	u32 offset;
>> >> +
>> >> +	/* Do this only once. Failure is stored as offset of U32_MAX */
>> >> +	if (saved_offset)
>> >> +		return 0;
>> >
>> > But if saved_offset is U32_MAX we should be returning -ENODEV?
>>
>> correct, the above if block should be:
>>
>> if (__valid_oactxctrl_offset(offset))
>>	return 0;
>>
>> if (saved_offset == U32_MAX)
>>	return -ENODEV;
>
>I would just do:
>
>	u32 offset = perf->ctx_oactxctrl_offset;
>
>	if (offset)
>		goto exit;
>
>	...
>exit:
>	return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>}
>
>>
>> >
>> >> +
>> >> +	offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
>> >> +	perf->ctx_oactxctrl_offset = offset;
>> >> +
>> >> +	drm_dbg(&ce->engine->i915->drm,
>> >> +		"%s oa ctx control at 0x%08x dword offset\n",
>> >> +		ce->engine->name, offset);
>> >> +
>> >> +	return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
>> >> +}
>> >> +
>> >> +static bool engine_supports_mi_query(struct intel_engine_cs *engine)
>> >> +{
>> >> +	return engine->class == RENDER_CLASS;
>> >> +}
>> >> +
>> >>  /**
>> >>   * oa_get_render_ctx_id - determine and hold ctx hw id
>> >>   * @stream: An i915-perf stream opened for OA metrics
>> >> @@ -1377,6 +1435,17 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>> >>	if (IS_ERR(ce))
>> >>		return PTR_ERR(ce);
>> >>
>> >> +	if (engine_supports_mi_query(stream->engine)) {
>> >> +		ret = __set_oa_ctx_ctrl_offset(ce);
>> >> +		if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {
>> >
>> > This is not a problem in SAMPLE_OA_REPORT case?
>>
>> SAMPLE_OA_REPORT is OAG use case.
>>
>> Actually, I did not know how to treat this condition. The current interface
>> will configure both OAR and OAG. If we have an error configuring OAR,
>> should we fail or let the OAG use case work?
>>
>> I am now leaning towards failing this unconditionally. Thoughts?
>
>Sorry I didn't follow. What does the oa_ctx_ctrl_offset in the context
>image do or control? Looks like oa_ctx_ctrl register controls the OA HW
>timer which dumps data into the OA buffer so should be programmed correctly
>for OAG (and possibly also for OAR).

It controls TIMER for OAG. I think this is a bug. I will post a separate 
patch for this since there is some inconsistency in how OAR vs OAG is 
handled in this code. In short:

- we need to either enable OAG always OR disable all reports into OAG 
   based on SAMPLE_OA/stream->periodic config
- oa_ctx_ctrl_offset should accordingly program the timer and 
   periodicity bits here.

>So maybe letting this fail
>unconditionally is correct? But I am not sure.

Agree on returning failure if ret is error.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
