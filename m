Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74633606F6C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 07:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5734710E5B6;
	Fri, 21 Oct 2022 05:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC3F10E5B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 05:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666330136; x=1697866136;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kpZIBN0pgcJudpmMcy6YKwyDhl7UWpQ67sEUmz6gGCI=;
 b=fmRZho6l1JB0fu2tbQ4CSNxIeVUo4bLe5rP55VcFdQL/PK6Qgd0NkTKI
 iK0ktqAviwigtovBfV4YMm8MgObF5ry+oOxtzvaBVi9LK+kL5FOLbH9Sr
 O30vpLUApMdldAN29CY7398UVws97mZ92YGa5zRULJTKDwFI7OXHKZ+Rk
 r/GyWUNypwDPwbVOcsG0Uyh5+qpsa8EP+blQICFbl12yl2lHiwHklrjAg
 mQd4auWe8sSAz9p2JQVqBAmH+X5OJk48u6hpKxmfYyC6CtBV1ClpCwDW2
 DtzkWo0rIDZHgAvjcPrq/fOinZJiCpCS82XivLMriNhYQJzdej77vpTFb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="290223595"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="290223595"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 22:28:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="772829833"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="772829833"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 20 Oct 2022 22:28:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 22:28:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 22:28:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 22:28:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 22:28:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZMSiHMAgREbIr/6QHHIuWGZ1HbbgZbZuSzUDSgl3pkkt9QiFlLTadxBVFzsNx3boEqryTRdL6y2838TsrKrhReEK/3hb9EVB9bolWPGQG+LYkQ+okKxwX241/yrC79gP9Qgx/zFctZ4SsLWH1f3MBv/pt7J4utkcGAwg6HbzAMVLxtgrGopPBJr/2i1EKhmZzfa8vlJZP8ZCEN0Oqp3zqOjj//lpZvkN9qbe6KJxjzEF5ut8L5cOvEbhF+/jvcP8I187ZY2dAlH0nGOD7P9SwiRmvcyP6emvv2C3EGF8o/KrACNQgZIVEElUKxkV+7yJSPKakNMZgEBc3gS0fLKnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Ez+chj8VnFu+RfbMK+8x9WFNrdeV5hMkFyq2O8vkDE=;
 b=IP247tr4Bx5sON21GWllJQdYlJNlj7fWeq5PX+ZvQYZ1E7EgmJwctniOAimFFCFjw5HaI3rdti4SAIwh626gK4QkK71yBbZQJFZE3MNL37GKl90ZMBXZ6aAPMigHHDz4iOClLF+9qPZygwMckIMEY05fxSf78cxep2r1z2cAG50t5uU8W13T/kjlXd9HB1Po4atd8Xn5N+vc9INTqJGZsNqv7jrJxu9bYZCsvUH5HTmSu7uSwZ0Rx6jG79nscSXOEUawZivc69aVigxsNvrSFHMcw4AXRRswpesGzz53ESPeBp8EOgJ7k7hXBXDRDfToyKdQGYXfPFT7OEoa46MNgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7338.namprd11.prod.outlook.com (2603:10b6:930:9e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Fri, 21 Oct
 2022 05:28:52 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 05:28:52 +0000
Date: Thu, 20 Oct 2022 22:28:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Summers, Stuart" <stuart.summers@intel.com>
Message-ID: <20221021052850.4ssa2xefapywpywl@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221019142145.111024-1-gustavo.sousa@intel.com>
 <980ba10f8230463b85f08887864dacb57a09ca2b.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <980ba10f8230463b85f08887864dacb57a09ca2b.camel@intel.com>
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7338:EE_
X-MS-Office365-Filtering-Correlation-Id: 27ffba39-39df-4c0d-ded5-08dab32523a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pj++P0dwZJ8HB58hcFN3gMQ72ncuMbcPBWrVR2FcvLLiaCVaBza/thPohfZ1er1iHmDjPGAlZkCoFAjFQIg5I0ARrsoBKkglyD9U0BCNoS+pxAbHBpUBWzfEkf+lfJa0BmCN770QD7VeEd4X/dPDUUgpj9wIAhzGqYy6beNcEcAmwb2yKi/kV2ETqSwll5HIB2u7UHsWDaE5u/10ZRfNQJMARBCG8g6vLmZLw/8cPGVOIXG7thSji6mMUkyLSHwJAGSxjq1oJQBOvhHEuh1FwuilDmMB+wLLtDD7GvbpIZvpkFo99X27kBUdliQ2XyZ18UUx6Mkj3LrQfEuC3lX+V09MsXdnDPRF/ABLxhmlIufTcdEB6K2pCHVamqvcvJSk56sF4z6yY5+HpreQ8SV86nXQAggNLmQ4thul9KqKHNmYvej6NvXYc6lZUheVQvsgjxON4Y2hkUv1Gh2eNePyRrtEsGNyRcIFpStd5iDqLpWEVIYB6cplV2XDkG2isLCxGjJLI6i7WsutjtQxyQ5dSZ40I8DBchwTAKYeULM86jXuLi++nme2QmYayL55xMtLmawaPkFXG9B5nLfrEphGsbJPrIukSed3lEx3pFVZlRIfn50wzr6sq5zwXfSZYOWTztbYjowNo+T7XrFbQ/hmU45fJThsHiWLtx1TjHhROht+zLh9oR64m0AFcdv/+IIDzl8IbyBu/ruG3OXv1IIZNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(136003)(346002)(396003)(451199015)(41300700001)(83380400001)(66556008)(8936002)(66476007)(4326008)(8676002)(6636002)(1076003)(66946007)(9686003)(86362001)(54906003)(2906002)(36756003)(26005)(4001150100001)(6862004)(186003)(5660300002)(316002)(6486002)(6506007)(478600001)(6512007)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PbI7jJ5lcu+/l+Cj/PV4Qna6pXr4STklunV4VnqO39ahNT/p77gYxjoXkYUX?=
 =?us-ascii?Q?bRJ5JqalRWYacLYf4mXfSsduS2cVxQ0TuHiC+PFY2jbntW3FyvFM/qnVU1/C?=
 =?us-ascii?Q?2lmZDpFAaQWhEtFOcwzqkj30eFbuVR+xC1hIee/Rb6BIVT6DemEwsoSVdD/A?=
 =?us-ascii?Q?VV//3eZjJBJukaO62510ngyMp2WCnwudyKdLqmCyRD1G05ljZCDx2bIXprK3?=
 =?us-ascii?Q?A1/sjwwzExOVvpaQiHBy3NxdFmFdLzPzXnJlGJl0zwu0K1HPp6e+9QwGZ8YH?=
 =?us-ascii?Q?rXAwqVE2nz6EitLaycw6wUcT78cpu+Vuli/6V1+zx5YxEUCfsUga9xsWtNdg?=
 =?us-ascii?Q?LP31QSynPZMmMZviWh5xqY28xNpQA809zRsPSjEowRTvnHiYNPIsR6E4MibI?=
 =?us-ascii?Q?7y+CZ6PwCOZMKHmvx9ElkpMmGFos3PntU1xn5en8pTUZPmm8AeQsbi+SLRH/?=
 =?us-ascii?Q?sE0+IsbcuNKt2PDfTKP1yI5lTVTxrLksT7SEW5tqhS3SeS/7kPHc6o3Lb8dL?=
 =?us-ascii?Q?9OJM2LtHOeMlqXFZYsJo1/GDBp5op4scWuxPsYQcsEsuNal6+7R85A15Oz4O?=
 =?us-ascii?Q?JS+oU5r2j4lGUIE7JdNdTI4YMANA9mrKyt7X+570UfmOI11IvgqSusAbZr1l?=
 =?us-ascii?Q?R4g/HMbNYQPvrf4vsCT2P0T6RcuDMVSJuv9kjvW0vyirG4Gi3H5KgVMAUIuG?=
 =?us-ascii?Q?AxXCrU2N4nNWnRikwaNTOYzDV7OzH2DmsA878Ka05GmEF555KnNcTXTOTe6i?=
 =?us-ascii?Q?0wh3+/kX+6Ye0J+SvtfCZqDgZ6e5xTxeshi+QVQKZV1dCTer5+pQX4G1EkhE?=
 =?us-ascii?Q?GLHchrXlbiPHgOneAx9jPn25++09Y8ra1ViQEdjld29mQmvtmiAae6qmTCaU?=
 =?us-ascii?Q?v3U1QzmpzCKthluvh3OrOn2xBAvJ5o05NemET9LgUC5ScsT97IJfoP4ge2Sz?=
 =?us-ascii?Q?mPQ2XYmJHxJXFfRIcBz+MlqHlIk97bRpc4K9tdvrpgTDPXxDulThN/mmtC4/?=
 =?us-ascii?Q?fRFGuInOjcwXcpysVrlkxu+52OGMy8BcoS4SOXOqe6u+Q/OgHA+dLyzx5Ojy?=
 =?us-ascii?Q?Vo1ujVZUHoWnBKJzAqSCBftcm96/y/xiB4aJk8dqg1mBMW92EEpuyAUqR7Ov?=
 =?us-ascii?Q?cBfKrgwpXv8lUK3uTkZCSYYlgRwLUE/66FDwc579YJTmHmh9juVNTwJfRMp8?=
 =?us-ascii?Q?Ria7rh66wV4A5NWC1HPMMZwOq8AbFNBZ8gw677n7PnGGcFnHMaQVZ1uDTwBt?=
 =?us-ascii?Q?YrHfyeyg2/2ciJPEVSRLY04iQVV9XqD793Q8vvOw8Os3JJSWEuS3Nh26gbY0?=
 =?us-ascii?Q?JifZuOG5yIJVb8aHY/t1o97+0AYf6bd0P9AZ2yO++mM1l3qB0/WEToBD+5kO?=
 =?us-ascii?Q?MZWrzoSIrDOfxbBmha6q9qEkc3SFl3Fbuobrd9MB+F6ku/JxS6EsdPDdpQwU?=
 =?us-ascii?Q?+BlShQE/K9uSp7DEj0qxua82P3o46hZT1CSgKxHVdip/JY7+1CZX6YGX5oSd?=
 =?us-ascii?Q?XzTubtWGG2NHnJj0XN9cYc8vecrBd5hTeHI0zUuV0E9jFkNH4Yz8FVF5bDtd?=
 =?us-ascii?Q?rTk94L48tlGOH/quEOOLvmRYbmQSfCdEeRLeCFWW6ukAKdZoss8U/P/GPj6y?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27ffba39-39df-4c0d-ded5-08dab32523a9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 05:28:52.1250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tsfSWvF4FSxcSmkFViuVYbbogsPdoz+xfhwvh8/24/sAoTOyPrCt+g3EH/oY006/U5o6OqlcPMQ0XtMHPU5TIW6hlpyrlQkpdYM100xVIBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelp: Add Wa_1806527549
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 21, 2022 at 04:03:20AM +0000, Stuart Summers wrote:
>On Wed, 2022-10-19 at 11:21 -0300, Gustavo Sousa wrote:
>> Workaround to be applied to platforms using XE_LP graphics.
>>
>> BSpec: 52890
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>>  2 files changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 36d95b79022c..23844ba7e824 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -443,6 +443,7 @@
>>  #define HIZ_CHICKEN				_MMIO(0x7018)
>>  #define   CHV_HZ_8X8_MODE_IN_1X			REG_BIT(15)
>>  #define   DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE	REG_BIT
>> (14)
>> +#define   HZ_DEPTH_TEST_LE_GE_OPT_DISABLE	REG_BIT(13)
>>  #define   BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT
>> (3)
>>
>>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 63e1e6becf34..5cdec699ae04 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -660,6 +660,8 @@ static void gen12_ctx_gt_tuning_init(struct
>> intel_engine_cs *engine,
>>  static void gen12_ctx_workarounds_init(struct intel_engine_cs
>> *engine,
>>  				       struct i915_wa_list *wal)
>>  {
>> +	struct drm_i915_private *i915 = engine->i915;
>> +
>>  	gen12_ctx_gt_tuning_init(engine, wal);
>>
>>  	/*
>> @@ -693,6 +695,11 @@ static void gen12_ctx_workarounds_init(struct
>> intel_engine_cs *engine,
>>  	       FF_MODE2_GS_TIMER_MASK,
>>  	       FF_MODE2_GS_TIMER_224,
>>  	       0, false);
>> +
>> +	if (!IS_DG1(i915))
>
>My reading of the spec here is that we should be applying this to DG1
>as well. Why are you removing it there?

for me DG1 is marked as "no impact"


>Also, it looks like this is conditional on a specific depth buffer, do
>we need to take that into account here?

it was agreed with mesa to do this unconditionally, so it can be done in
i915 rather than in mesa as it doesn't appear to have side effects.

Lucas De Marchi

>
>Thanks,
>Stuart
>
>> +		/* Wa_1806527549 */
>> +		wa_masked_en(wal, HIZ_CHICKEN,
>> HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
>> +
>>  }
>>
>>  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
