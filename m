Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AC76F0C32
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 20:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B1F10E396;
	Thu, 27 Apr 2023 18:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004AC10E396
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 18:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682621979; x=1714157979;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CjkVpfmsnl5g7UMYHz9fQ0d+LTRgMKtAXlPehA6glQk=;
 b=OgT1SY3SNCEl/KC4QLh0FT16iOuBkVwUtw4zAoX1QD0P4+GAGCvJDZZa
 0QqrCWu8PVhrk2mZCQItELvsVbv0tKMIt0yXH6sW3M/xFWS2WvgQL460R
 5BTTrGGl2MTVu54WuCROBbXsyfhONRy1iuJG0ge5OVqGvQzEPkLfNJh97
 LOHZaOWnKlpe5OdhUPrifoK8eRp7egKILMe4iMnCnfMhSq5Xcpj2Fy6Zd
 di19gOVEtnrFfUQLXSass17Nq857mAnJkCA1Aq3ABKM24W6hpMcX+Pe/6
 onGKd/NiWpgRaZtpmpcHG3ngz1xLnZ48ecakm1SuOcGEhURMuZoQ1utpB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="347560048"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="347560048"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 11:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="783886851"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="783886851"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Apr 2023 11:57:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 11:57:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 11:57:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 11:57:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxCBiVuFJaB/zcVgKu81K6DJmZ1HvTGN3FdbmbPME7QsGOMaaarcODmbaEKFWGxBmj8eu3lpkhtk1tUH1wDfEekCCkDNjZlKmq9nXW04xhMA3nupqPWXtC91fiPW6VBd4enQEqk7gYXIrOz/UorAkx2szIYhe2aYSncP/PLdXVZKfiH/EqaZ4YBt0ztn2qcgpLL5mR8YQXNbtnSqh0Susd0LT8d1vYRuvc1MChX0fTCscI9Crk0wq55PqWgzFiXQheo8eo9Fv632lJpml98T0WOd/gvGYqy9XZiS8seAsgZpKuwRca8NDMvxBH9HC9WyVNMxbPUchP+8MUxMm0VwbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ad4cinu31T0T3Cr2qG1Ei0PTOagN3qBIdqkR1q8B100=;
 b=eH8xxjacm/6JQ5tduUWfx8Y5gbDcsah45bLzpvhs4dqxpjrceGZ+9DzNP39l3H2GuXywHq1C6tab8/12xQJhy8rgtQn6ElVSr69QB2+7wJNgAa4LK44LwF/WUgpJS5ab7WDKx2hLlKV8Kmbl289jsA2t5I5qeCx/AS3CUhd5z4aNmcHmXzED/Ouvl6cBdkrl0CoRY4BPUaaG9tdW/Mx4XktdTrjuvvmMC/GKQAvYmQtARqBAmElw2f7enXvk08tIdXx3KI2vXBSJJMN3U8/WAESMMjOOCABquPUKO+nRU+dpPGcGmJi2JjqImIVFKsv2ZlygkgW1o4J7TmmAHCcLUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS0PR11MB7768.namprd11.prod.outlook.com (2603:10b6:8:138::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Thu, 27 Apr 2023 18:57:38 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69%5]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 18:57:37 +0000
Date: Thu, 27 Apr 2023 11:57:29 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZErFmcSoWG2Y6uXz@orsosgc001.jf.intel.com>
References: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
 <20230405001433.2654971-2-umesh.nerlige.ramappa@intel.com>
 <87h6t59nze.wl-ashutosh.dixit@intel.com>
 <ZEm9ryBi9pnfFJCO@orsosgc001.jf.intel.com>
 <87leieywoj.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87leieywoj.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR05CA0047.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::22) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS0PR11MB7768:EE_
X-MS-Office365-Filtering-Correlation-Id: 9965b398-66d7-4058-2506-08db47514482
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z9sS/TtCJdNEuA5tjPApRHep2tYShzMCAJN7c6foGB01KCltqZEGEmIMHT1ts2vZv383vo0xHHBEE7nN3XgUItgMNYsTBNfLMCeHn8oWAZEts28vEbBS7BBat6Fu0wS7DDwpL5tES2e/Oh//F5J/ilWxG9Ni/1xFx7cvZwyTsE9aNabsGdB+EPSz0oPr2pHUfhO7X5FObi9bJ5Brr1uh3hMMz3yZbeBQePpmL7NDMM9hBooeM2yKg9z4bpf+i4BZVjSFq4esFGqXOJ9Y/d/Ae5eRKBwmdW4o3884bXFQXoHTD+ZqWOMupYQ3VqJBb4+RPwwiW6GnjUMrPSzLetaYrecTz4QQ8Db2/Ax8LuTLLfv0iROV3jNlSvXfh7oi+cxgE9A/PW4o73ut8gCrinb7TQt6AV/AtTaiJy1LQI7nyG29ZwhsTYR/xzqNCEDb7nhl5CE/quQaVpI7KrGaKsNJ3pn7LiOtPVOyDvBYvEY5wLbMFtc/hJY6hxPWkjVr2KBtc/H4WG+ZISo2Usba8+yizA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199021)(316002)(4326008)(6636002)(66946007)(66556008)(66476007)(966005)(6666004)(6486002)(86362001)(478600001)(186003)(6512007)(6506007)(26005)(5660300002)(82960400001)(41300700001)(30864003)(2906002)(38100700002)(83380400001)(6862004)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFlHaUU5aFQrb2ZwemFTcmtCSkh4QXdlRWFNQnJub3BUd2dMYStVTGNrSzRk?=
 =?utf-8?B?SUlNNkRETzVmeWVvR3JRTEx5TWFqbU9NTWltSSswN3ZOYVBndW0yZmNUc0N1?=
 =?utf-8?B?YWZ0NTBITHFEemxaYTlSU3kxMnRVaFc3Y0VCYUN5ZnNkMnBRV3J5dlAyNVBH?=
 =?utf-8?B?Qkhoc2k5VUtYS25SQ0grNVBJQWdXMVNObFlCL0hzQU53dStZdURBdjQ5VUxh?=
 =?utf-8?B?THZwR2RDbkd6VUcvNGFwT1FDNG1jdjVvQzhvNDNhalJXU1RWS1dqQzZ3d2l0?=
 =?utf-8?B?TFRHbWZCYzRWa2FlcTFYbWtPeElhZ3IxbTRBN0dNU0swajQvQ0JXTTdIRWdy?=
 =?utf-8?B?a0VZQlQzaDBQRllHRzd2T0YwMVdia3NHbDlaRkJmRERoSjFPNmFUMnVKVE5i?=
 =?utf-8?B?U3dHS1k5WmNXSUFGSnptOWhjS1V4RG1aSVJBd2FSQyt5clZjSWQ2clRKdjJq?=
 =?utf-8?B?VGZYYXRha1kzYkYxS2lOa1crSjFsdk9RRWxIajlJWmRjaVVvLzRhVEgvOFdL?=
 =?utf-8?B?eU5wem9MbXkyNWFWN2Z0ZGZMZTUwSnpDcVdQQ1MvVUNkYnhJTzdIK3IzUVZz?=
 =?utf-8?B?NjFtb3JTQzNRZDlXR1kwQmNmdERNdXlUMVhiVDlmSm1sRjZoZDZrNUYyOTFJ?=
 =?utf-8?B?eHQ4VTR4SXoya1ZGSDM2UTNob2JYd2RoU295b3Z4MmNVbGRjanU3aWJJb0V4?=
 =?utf-8?B?dEErVlhhRmJ2c29MbFlGanlZTGVLNVFudzMrQnNmMjJlN3lWTWNYbGtEb1E2?=
 =?utf-8?B?WFdhT3dXSzVoS2hwa2lqZWNOY2l5K0ZlTTVVeFBQZkV3ZVhLRlFuMjRQclZ1?=
 =?utf-8?B?clk0Q2ZLZ3BuaVpYVHFIcmhUQ0hoNVJUeWljOFg3ZVRpd1VhVkwzek5PbjBE?=
 =?utf-8?B?RFVtTko0Q0VvNjM4dklqNVlLVTNxYnh0aXpKSkJoZUs4SGhFOWpoOUlab1Jv?=
 =?utf-8?B?emRiRW5ZZnRSMjNLa1UzdmRlQUVRTUo3blZKOGJFU0tjMnZKL0k2dkU2WU43?=
 =?utf-8?B?cFJBSWozbnRpSkpQbndKOFRSdzVEdG54bTU2aUthcHJvN0p0T0V4YmU3SWRT?=
 =?utf-8?B?MFFoVzk2RWR6ak5TbytBRWpkUWhVOGZ0ZWlqTGVXdEVQT3UwVERzSEU0MUc5?=
 =?utf-8?B?U3FuenlNZi9JV2RLWEJHR3kyRDVGT2x5VUN5a1BoMmJ1alU3YkhtZ1hZMnZw?=
 =?utf-8?B?TkdTQm5kNXd2VGVIYTVyTGQ1WW8vZjZ6UDNFZmhxZkcvbEdFejgyNDFoRnRt?=
 =?utf-8?B?Yy83TVI0QWxQWGZka1E2OEl5QUNORkRDd3RmcDdTMnhrcTVtcjVQOE9Nd1Rr?=
 =?utf-8?B?aGNJSjhRcEdJWnFseUVnL04yenRaYjIxNjFaY0czYU56ZkZyVkNKOURxZmZ3?=
 =?utf-8?B?TTZnL1oxOThKdjhXQUxrb2NTMkMwNXdZR1Y5c1kxWmg2UytBRFB2UGRNQzNI?=
 =?utf-8?B?WGwyL0gwMUZBMHFUZlVROXFxYkFNc0d3akQwWXFNcXg5c1N0Wm1rODEvVEhm?=
 =?utf-8?B?Q0ZzUlp5ejZ1QnBFckNEVXJNekxVVDV5Z0ovMVRUUXBHRTAyODh3ZEsycnd5?=
 =?utf-8?B?dDhSUktacUVCWTBXV1R4d1JpL2l2dUZIYWNLNm9KWWxRc0FsMUF6dlBKVFFK?=
 =?utf-8?B?ZU9nUkJVN0pSc2M3aUw1QU90TTdrRnJEZ2d3TnJRRzMvSnBGZFRILzYyVHJr?=
 =?utf-8?B?TVRoMkxHOUloS0lyanB1Y2R3R3JMQUQ4RGdkU0hkYk81MTRETnRkZHNRMFhv?=
 =?utf-8?B?V1d1K3lLUTJzQ1FyMVh1OHNuVHI1a2xHelBHcnFZYWpyS1p5eXJCR0ljeTk1?=
 =?utf-8?B?TnpzclVTUVY0K3R4NXhYUHZNNFU5REZST1NkaXRaSGU0RG5Tc3RWSTdoNmNl?=
 =?utf-8?B?Tm5OYUl6TThQbzAzdUlmcDVPTTJUb3JnZjg3Z3BuMWZRT2h5ei9CRzN1MUpy?=
 =?utf-8?B?WmsreWZwVGZJelJzd09iVXNQaU0xdGx3YWlNSEdGM0wvRFVKMWUreXhKMTEr?=
 =?utf-8?B?QXNPTHpieTh6Sy9KajhqU3JrTEdwOVJuSEdKbk5kV3d1ekRjMHlyYWVpczZs?=
 =?utf-8?B?V3lNdzdON2tQUzdlNlUxNUp5SHZtWFNxSThMUVl2dmZKQlY3QkRTN1grN21U?=
 =?utf-8?B?WDcycWhubVl3YitxMmhWZytFdVlOQWExN3greFMyVzJxOERpN3NicUdEdmRO?=
 =?utf-8?Q?Q2In+VErx1GpSCWp+cqhAMQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9965b398-66d7-4058-2506-08db47514482
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 18:57:37.2718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eyqEQwnC5Hw+f907X10M4iOAND38lgZ4sOwARoBQoCOHgxZRlBydbwIS32B5+ElqNYsgDpSWvOOOT12og18WV8ICBIbv4ySiaasKj1FEUpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7768
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/pmu: Add support for total context
 runtime for GuC back-end
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

On Wed, Apr 26, 2023 at 05:51:24PM -0700, Dixit, Ashutosh wrote:
>On Wed, 26 Apr 2023 17:11:27 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> On Mon, Apr 24, 2023 at 10:41:41AM -0700, Dixit, Ashutosh wrote:
>> > On Tue, 04 Apr 2023 17:14:32 -0700, Umesh Nerlige Ramappa wrote:
>> >
>> >> GPU accumulates the context runtime in a 32 bit counter - CTX_TIMESTAMP
>> >> in the context image. This value is saved/restored on context switches.
>> >> KMD accumulates these values into a 64 bit counter taking care of any
>> >> overflows as needed. This count provides the basis for client specific
>> >> busyness in the fdinfo interface.
>> >>
>> >> KMD accumulation happens just before the context is unpinned and when
>> >> context switches out. This works for execlist back-end since execlist
>> >> scheduling has visibility into context switches. With GuC mode, KMD does
>> >> not have visibility into context switches and this counter is
>> >> accumulated only when context is unpinned. Context is unpinned once the
>> >> context scheduling is successfully disabled. Disabling context
>> >> scheduling is an asynchronous operation.
>> >
>> > This means guc_context_unpin() is called asynchronously, correct? From
>> > guc_context_sched_disable()?
>>
>> correct
>> >
>> >> Also if a context is servicing frequent requests, scheduling may never be
>> >> disabled on it.
>> >>
>> >> For GuC mode, since updates to the context runtime may be delayed, add
>> >> hooks to update the context runtime in a worker thread as well as when
>> >> a user queries for it.
>> >>
>> >> Limitation:
>> >> - If a context is never switched out or runs for a long period of time,
>> >>   the runtime value of CTX_TIMESTAMP may never be updated, so the
>> >>   counter value may be unreliable. This patch does not support such
>> >>   cases. Such support must be available from the GuC FW and it is WIP.
>> >>
>> >> This patch is an extract from previous work authored by John/Umesh here -
>> >> https://patchwork.freedesktop.org/patch/496441/?series=105085&rev=4
>> >>
>> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> >> Co-developed-by: John Harrison <John.C.Harrison@Intel.com>
>> >> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++++--
>> >>  drivers/gpu/drm/i915/gt/intel_context.h       |  2 +-
>> >>  drivers/gpu/drm/i915/gt/intel_context_types.h |  5 +++
>> >>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 33 +++++++++++++++++++
>> >>  4 files changed, 49 insertions(+), 3 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> >> index 2aa63ec521b8..e01f222e9e42 100644
>> >> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> >> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> >> @@ -578,16 +578,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>> >>	child->parallel.parent = parent;
>> >>  }
>> >>
>> >> -u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>> >> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>> >>  {
>> >>	u64 total, active;
>> >>
>> >> +	if (ce->ops->update_stats)
>> >> +		ce->ops->update_stats(ce);
>> >> +
>> >>	total = ce->stats.runtime.total;
>> >>	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>> >>		total *= ce->engine->gt->clock_period_ns;
>> >>
>> >>	active = READ_ONCE(ce->stats.active);
>> >> -	if (active)
>> >> +	/*
>> >> +	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
>> >> +	 * already provides the total active time of the context,
>> >
>> > Where is this done in the GuC case? I looked but couldn't find it (at least
>> > in this version of the patch, it is there in the old version).
>>
>> In this case, the backend is not providing the total active time, I guess I
>> should drop this logic provided ce->stats.active is 0 for GuC mode.
>
>Yes, I think best to skip the active part in this patch since this is a
>temporary/inaccurate solution.
>
>>
>> >
>> >> +	 * so skip this calculation when this flag is set.
>> >> +	 */
>> >> +	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>> >>		active = intel_context_clock() - active;
>> >>
>> >>	return total + active;
>> >> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>> >> index 0a8d553da3f4..720809523e2d 100644
>> >> --- a/drivers/gpu/drm/i915/gt/intel_context.h
>> >> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
>> >> @@ -368,7 +368,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
>> >>	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>> >>  }
>> >>
>> >> -u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
>> >> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>> >>  u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>> >>
>> >>  static inline u64 intel_context_clock(void)
>> >> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> >> index e36670f2e626..58b0294d359d 100644
>> >> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>> >> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> >> @@ -38,6 +38,9 @@ struct intel_context_ops {
>> >>  #define COPS_RUNTIME_CYCLES_BIT 1
>> >>  #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>> >>
>> >> +#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>> >> +#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>> >> +
>> >>	int (*alloc)(struct intel_context *ce);
>> >>
>> >>	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>> >> @@ -58,6 +61,8 @@ struct intel_context_ops {
>> >>
>> >>	void (*sched_disable)(struct intel_context *ce);
>> >>
>> >> +	void (*update_stats)(struct intel_context *ce);
>> >> +
>> >>	void (*reset)(struct intel_context *ce);
>> >>	void (*destroy)(struct kref *kref);
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> >> index 88e881b100cf..8048a3e97a68 100644
>> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> >> @@ -1402,13 +1402,25 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>> >>	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> >>  }
>> >>
>> >> +static void guc_context_update_clks(struct intel_context *ce)
>> >> +{
>> >> +	struct intel_guc *guc = ce_to_guc(ce);
>> >> +	unsigned long flags;
>> >> +
>> >> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> >> +	lrc_update_runtime(ce);
>> >> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> >> +}
>> >> +
>> >>  static void guc_timestamp_ping(struct work_struct *wrk)
>> >>  {
>> >>	struct intel_guc *guc = container_of(wrk, typeof(*guc),
>> >>					     timestamp.work.work);
>> >>	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>> >>	struct intel_gt *gt = guc_to_gt(guc);
>> >> +	struct intel_context *ce;
>> >>	intel_wakeref_t wakeref;
>> >> +	unsigned long index;
>> >>	int srcu, ret;
>> >>
>> >>	/*
>> >> @@ -1424,6 +1436,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>> >>	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>> >>		__update_guc_busyness_stats(guc);
>> >
>> > How do we know the context images are pinned at this point which is needed
>> > for the code below? Where is the pinning happening?
>>
>> Ah, maybe this should just call - guc_context_update_stats()
>> >
>> >> +	/* adjust context stats for overflow */
>> >> +	xa_for_each(&guc->context_lookup, index, ce)
>> >> +		guc_context_update_clks(ce);
>> >
>> > Here are we saying that we need to do this because the context can get
>> > switched out (and context image saved) and back in multiple times without
>> > the context getting unpinned? Otherwise guc_context_unpin() would call
>> > lrc_update_runtime() and we wouldn't have to do this here.
>>
>> Mainly for 32 bit overflows. The busyness value obtained from the context
>> image is a 32 bit value and could wrap around. If we keep grabbing it
>> periodically and accumulate it in the 64 bit value in ce stats, we should
>> be good.
>
>But it will not help unless the busyness value in context image is being
>updated. Which will only happen if the context switches. So that is why I
>was saying this makes sense only if context switches are happening but not
>context unpins (which would anyway accumulate the values in
>lrc_update_runtime).

I think that's exactly the case here - the busyness value in the context 
image is being updated by the GPU when context switches out, but the 
context may be scheduled to run again by GuC without any notification to 
the KMD. Like you mention - "context switches are happening but not 
context unpins", so I think there is scope for overflow.

>
>
>>
>> >
>> >> +
>> >>	intel_gt_reset_unlock(gt, srcu);
>> >>
>> >>	guc_enable_busyness_worker(guc);
>> >> @@ -1505,6 +1521,17 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
>> >>	guc_enable_busyness_worker(guc);
>> >>  }
>> >>
>> >> +static void guc_context_update_stats(struct intel_context *ce)
>> >> +{
>> >> +	if (!intel_context_pin_if_active(ce)) {
>> >> +		WRITE_ONCE(ce->stats.active, 0);
>> >
>> > This is related to the question above about where is ce->stats.active being
>> > updated in GuC case. If it is not being updated then we wouldn't have to do
>> > this here, we could just initialize it to 0 once or it might already be
>> > initialized to 0 (if say ce->stats was kzalloc'd).
>>
>> Agree, will drop this.
>>
>> >
>> > /> +		return;
>> >> +	}
>> >> +
>> >> +	guc_context_update_clks(ce);
>> >> +	intel_context_unpin(ce);
>> >> +}
>> >> +
>> >>  static inline bool
>> >>  submission_disabled(struct intel_guc *guc)
>> >>  {
>> >> @@ -2774,6 +2801,7 @@ static void guc_context_unpin(struct intel_context *ce)
>> >>  {
>> >>	struct intel_guc *guc = ce_to_guc(ce);
>> >>
>> >> +	lrc_update_runtime(ce);
>> >
>> > If we call lrc_update_runtime from these 3 code paths (as is done in this
>> > patch), we would need to hold guc->timestamp.lock here. Is that happening
>> > (I don't see it) or we need to call guc_context_update_clks() here? I am
>> > assuming the context image is pinned here so pinning is not an issue.
>>
>> Maybe will just call guc_context_update_clks() here.
>
>If active is not there, it would be best if we call the same function from
>all 3 places (unless the lock is already taken somewhere). Basically
>something like:
>
>static void guc_context_update_stats(struct intel_context *ce)
>{
>	struct intel_guc *guc = ce_to_guc(ce);
>	unsigned long flags;
>
>	intel_context_pin(ce);
>	spin_lock_irqsave(&guc->timestamp.lock, flags);
>	lrc_update_runtime(ce);
>	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>	intel_context_unpin(ce);
>}

I think I would just do something like this:

s/guc_context_update_clks/__guc_context_update_stats/

 From guc_context_unpin(), I would call __guc_context_update_stats() and 
that would take care of locking before updating runtime stats. Also note 
that we don't want to call intel_context_pin/intel_context_pin_if_active 
from within guc_context_pin as I suspect that might recurse endlessly.  
(Ref: __intel_context_do_unpin)

 From guc_timestamp_ping(), I would just call guc_context_update_stats().  
This would take care of pinning and locking from the other 2 call 
locations. Note that this will be intel_context_pin_if_active() which is 
sufficient in these 2 cases. If the context was not pinned at these 2 
call locations, it just means that the stats were already updated in 
guc_context_unpin.

Thanks,
Umesh

>
>And call this from everywhere.
>
>Thanks.
>--
>Ashutosh
>
>
>> >
>> >>	unpin_guc_id(guc, ce);
>> >>	lrc_unpin(ce);
>> >>
>> >> @@ -3455,6 +3483,7 @@ static void remove_from_context(struct i915_request *rq)
>> >>  }
>> >>
>> >>  static const struct intel_context_ops guc_context_ops = {
>> >> +	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>> >>	.alloc = guc_context_alloc,
>> >>
>> >>	.close = guc_context_close,
>> >> @@ -3473,6 +3502,8 @@ static const struct intel_context_ops guc_context_ops = {
>> >>
>> >>	.sched_disable = guc_context_sched_disable,
>> >>
>> >> +	.update_stats = guc_context_update_stats,
>> >> +
>> >>	.reset = lrc_reset,
>> >>	.destroy = guc_context_destroy,
>> >>
>> >> @@ -3728,6 +3759,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>> >>  }
>> >>
>> >>  static const struct intel_context_ops virtual_guc_context_ops = {
>> >> +	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>> >>	.alloc = guc_virtual_context_alloc,
>> >>
>> >>	.close = guc_context_close,
>> >> @@ -3745,6 +3777,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>> >>	.exit = guc_virtual_context_exit,
>> >>
>> >>	.sched_disable = guc_context_sched_disable,
>> >> +	.update_stats = guc_context_update_stats,
>> >>
>> >>	.destroy = guc_context_destroy,
>> >>
>> >> --
>> >> 2.36.1
