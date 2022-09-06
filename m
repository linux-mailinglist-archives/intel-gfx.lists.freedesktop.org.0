Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 691325AF394
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 20:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87B310E736;
	Tue,  6 Sep 2022 18:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E9410E736
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 18:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662488967; x=1694024967;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QJJva5uTRFzQs39+CSlISIhcynlBMKle4iHE0VddRjg=;
 b=M9i5r2y5/Dg2yRA8/1mEliaNczVbVRB2wa5+E+JICCIube8aGyajx8sj
 mFdkbu0lDXx8ea0lOL1g2ZTPw8OgheCepfupVz5aa3U6vVShCOcVEUoGR
 O5AtzPKgMTl5s6a9y91Yy8M9FCUqxoswl8CROLHKZmgTDCV0/8S0CBP4S
 sfL0OubA1Tq0G4J2rqhm5J/XVc8OaGzibmc6rVoulwHr84hNQtXuDfAm5
 cXUFesPf85Dgqy/ySyuSDv2nLUtjcqFPFTAEaDJv1WVQtEXBMpxDTuptc
 znOrkkOZe2T2auxTk3kENaCbtmyG9aDkBZJFLknHkPwgFLCufB7VH97Uy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="360619353"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="360619353"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 11:29:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="942565792"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 06 Sep 2022 11:29:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 11:29:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 11:29:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 11:29:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6XNgjxZmxmEmH1K07xYs0s+v8WfHnmMzOddqgSTZUrawmAkrFEiI78/+EJiVRrmU0thsZSL2hcIPIaG1/qhYqHMh7FKaoo28MsOSroFc+ltoj7uFwMf2CWyCLKHMGsZTaovFFu60knnfqWHIKhtgfWvV/fQKnPSmx/ec2GPdQthPuNAaX/1XzgqVulLQeztYcZNoVgUZtAcLFN7ru64CblMy7g6QFPbcl+XwB2lvxOXY/tf0MAQBlWpSaMcgxRvTWALEZeh12QsiiJx+jZi3v50BvPviGwVDvwRb3NQ09WzOV9p0saYylGDScj4NXYxEvDFNyYNfdDN5sn15pVmQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7oNPw51y/0nJwhqNygrdYLQAyHqAns0a97ymzX0Ph/s=;
 b=DtcQqxTNZn7hydm7he1h98eudEl6T4QAEQXnQcZlF969iwV0ZVcz3uWEA7iU0Oy/jKDYEAHm51eMevcue1badL0j4ja22IKZTsPMlOediWp4Pg3npiCWKKxboCpbK/DkRBbzLc8z8L5aDPUnFBJ2gN9hX65ZYIyuWZiP7cbApAqV/U7vityv2BzbIGGZiOhY0jftQBn0KeHx+c8c8mIgJoPnPxM335n5nu9ugSWB5Ej/cEfiwW5AztjcUlYhrq9icpRyEgixrRaoPkCs5uigkoVBZ7SrtyZZbJdf2ZOX9IVY3vCs4P/lK2pJL+1ABKJAKO8m2rkqtpezAwS3iQu5Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MN2PR11MB4415.namprd11.prod.outlook.com (2603:10b6:208:192::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Tue, 6 Sep
 2022 18:29:23 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 18:29:23 +0000
Date: Tue, 6 Sep 2022 11:29:15 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YxeRe5W0Zf/TBGWw@unerlige-ril>
References: <20220831193355.838209-1-ashutosh.dixit@intel.com>
 <20220831193355.838209-2-ashutosh.dixit@intel.com>
 <Yw/kna1W/vrCiMmF@unerlige-ril>
 <87sflaodjp.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sflaodjp.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0123.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::8) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11e35f9d-e929-452f-98ab-08da9035b85f
X-MS-TrafficTypeDiagnostic: MN2PR11MB4415:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hfnYUo4AVVrKNRBs7ERV8R8F2elJsQNnPRbVUATjLH1b7+7B0Y6A23afPwgXHqeBbcU4HZVNtsXPoJFKD9v7bVqvgPiwMTWRDRDoNN4PaD/Lgxs0LlNrmVIjhg15djiwK837vzmjPTzJROyFvfmrZmtjAI2XXrOC91B+TORPmyp13aeTwwpBmEOvb2Glkouql2DLYQl2LGcoDqgQEswueemh2zw/65YzkJxaREPU1bPC7MBXgk0T0Jn8OyzpbPFqEkuuxNdbkgut7uYX56rwZD5tCrWYG6owKdT4y6bR2yZUxZzYmhjORWoVeWgygZkgK9mA4lMqKfUGjIa3HKzFIZMn55Wl/LFwbzVvOh1IGEdwG28PNeOtVl+ZC1+Xxeq78W4r9CoHMhIUCi5ndyjkHAOW1Z4bvNJPGVLRBACz2UiQg61Il0j30JPa07sekQL1dPaDzfJCP6AG78s8PNJiJ9jbv9R3mPpO5ClujGmZUc3IrSwG2AQNj130woCRKkVW6fRQHrKdC6b8diOPxcaSKBhOB374tvHJjXg9YdbiPKWivHfuynIWXIelp/FnduxHMnKp9Q2b0U0jxkI9t7yrzPbjc8M0PdPLlANsPu0xM5vpx8HSIRxyuolgnnJY1dSlOV5SPVQMzjYw2h0XACl352Y5kQZxihguYUEycs4kwQTPLhTmZav5FJI8C0O3yLOWrwcnPTo3TqBL8B5R7U9faA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(396003)(376002)(366004)(39860400002)(136003)(346002)(8676002)(6486002)(66476007)(83380400001)(66946007)(66556008)(4326008)(478600001)(6506007)(6666004)(26005)(107886003)(2906002)(6512007)(9686003)(5660300002)(6862004)(8936002)(186003)(86362001)(30864003)(41300700001)(33716001)(6636002)(38100700002)(316002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVBlRi9uU0VDc3pVaVIrbkQ5VEQ5R3VpWFNMNmhiNzE2Y3Nzbm5NdzlIaktr?=
 =?utf-8?B?T1h0S0p5QVN0WjZkOURKWHcxcXFnQjJ6aFAxTVhwaFV6V1dUOVduS1ppYkVv?=
 =?utf-8?B?L0tNeGxWMFR6VFhvbndYc0l2cGRJV1Q2RG1UMlNVU2YzRXVobVBTaytGUkMy?=
 =?utf-8?B?WUE3S1JzWlBCT0dwMnFMY1B4Sm5ON3V3SldaNEloVFQyZ0NTRlhIeE56Wm42?=
 =?utf-8?B?VlNaSkdaS1ovcGZlN0MzZWhrd0kyTEtjRmlrS0RBa0pqMHhscTFUQXFHOEtX?=
 =?utf-8?B?eGtoZ1RFWHBnRDU1bVlsVXQ2emVJMkxkaVNNMWpPNzEyZjhhRWgvN3ZPcFNE?=
 =?utf-8?B?dC9ySitSMWdoVWpzNU45U3FGRjBmeCtrVS9KY0JsZTdQL1ZZRkFjRmdDS1hQ?=
 =?utf-8?B?cFlPeTlxMk1ieXBjSkg2VlBYcTRRNmdrUVZtOVZudGJUc3NBSmYxYktGVGdJ?=
 =?utf-8?B?OGdPUTB6US8rWjM2RTNvMUFvTGRyQVhlUlk2eFZESFp1K1pnamIrdDZ2WWdn?=
 =?utf-8?B?eTFGYmx5cWIzQ2tNd0dmN0pEaU9iZ25hY3hleVFFVUVXTVN6ZnEzakVEams1?=
 =?utf-8?B?ZWc4ell5YXIvU1hSM3NsMTRnZXpjNVlUK3NYVWR6TEhPT3NvZlB5Yk5ONVlD?=
 =?utf-8?B?KzVONUlkMUZOejg0bU1weGlFUGVVai91Z2t4OHhHQ2hwWDU4THZZYjNEMDhs?=
 =?utf-8?B?eUNIZi90amszODZudzFpazJHQUI4YWYxZlAwZmNlcVhNamxyalFZRWVTaHYy?=
 =?utf-8?B?Ykdrd2g1S0FLREp1RWUwbi9ET2g2Y1lKaDBlRFBubkNwMktmeEJvNkdNd2Uy?=
 =?utf-8?B?VEt4VndpczI2QnlCcEtLRC8xSERET3p3UWlELzR4VFBQZmtjR2RsWWVSaFpx?=
 =?utf-8?B?blJLRS80REphMnMrYlRnWmhhYm0yMWNUYjRYVlV6MzFZOFlHK0Nyb2ZRN2F5?=
 =?utf-8?B?Q2hQb1A3RXFuVkNXUjVSMEo1N3N1S09KZXJGWTZnZEdtZ1dqNTkzZHYvTmZ6?=
 =?utf-8?B?cEJESkppU3ZvbjM0cEt6NkxyV0svZVFkUVFyZm52bWwzY0JhKzJhbnU0VWpq?=
 =?utf-8?B?azR4NDFucmlkbHY1YzQxNkh4ZG1odHhtTytkN082VHhqTE9OSHZKeTJkdW04?=
 =?utf-8?B?WVlzSUI2MGdNTEJleFhaQUdJTWNYRHNIZUVjOFZxdmsrSHNsaERtSFV1OVh5?=
 =?utf-8?B?aGxMY2p1SnlOOEc0dGhLZ2hwQVhKbHBNZXZQZG9hekRzS1VLc2k5MGdERG50?=
 =?utf-8?B?d2R1UXFQU3NzbnRraTdxbkhJc053Q2xMVVdaR0R6YVVkR3Y2WGtSc25uWXpN?=
 =?utf-8?B?d09RdUlTYTZvYUFXMzE2WlBZRmZHYUYveDVpbEl2NHloRHJmRVpoZ3VWY1B4?=
 =?utf-8?B?blhwR3pUdTJKWkFpNjJmaVVtRzl0a3ROYW0wczRob090UU9YVW5xUnRTditI?=
 =?utf-8?B?c2JHeDJRQWVnL01sek5DZ2VuVGVSVFIyb2RMRVRYUzlzMDB4dkFBaWdkTS9J?=
 =?utf-8?B?RjdNdExxc21ma0xMdDVMdy9NMDFCNUhvSlZNa295VGxmRUVVWVh5UVVGeTNO?=
 =?utf-8?B?cldKajVYTHhBSkFpWHNxcCtXdmppcXVoSExBaUlQak1pbXdxQXFQWFNrNEIr?=
 =?utf-8?B?blA2TVBXclJkaVpIRWU0NHRPc0xtb0tEZGx1azB4Zzd2UG5FQnQ1U0RSL01k?=
 =?utf-8?B?eE1TaGQ4K1UzM1RGS0pWampHL0EzTWw4WWtXWW5lTUhDRVdFUlRvaC9Ec09W?=
 =?utf-8?B?ZXc5TFc3MHh3bno3cks0VXYzV3IrdXIrOGFpWldnNjFWbU9EN01NYUNJbkIw?=
 =?utf-8?B?YS9kcWdsQ204VURUSytRWTFGa01Kc3U5aUl4bVlML0FVVFluVmc1L2Q5dXJM?=
 =?utf-8?B?NnNRNjV2ODRobGZKR2diL0hrTmVYK0lZMjI0cFlROEVHMzN3aUtEYk1ML05W?=
 =?utf-8?B?dkptNTNNVUZKSHIxK242UnI1RENISGtqM0U5RHRiNkJrYnlhUHdSd0tMRm5E?=
 =?utf-8?B?SXpHU0FpTGFJaDZlTWswdlJhL3ZlVkROREdnRjRhZUkxTjRxRjdTZ3dHSlFC?=
 =?utf-8?B?SWh3N1ZUQ2Z2OEJudUprSThhMFUyMWZmWXNjd2pGeW1Nd0JPMWh1cnA3N2tZ?=
 =?utf-8?B?cUtha00vQUorcjNzRkg2dHprajFkdG14aCtnc3c5dkUxM2Q3Vk53cE90cm53?=
 =?utf-8?Q?P+UlFYIbAvF6YEmpekUcu+Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11e35f9d-e929-452f-98ab-08da9035b85f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 18:29:23.0254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nlRiuvbDEfybkGWFm4P4yt+n+VEoNXgTdEABk96Z8ltkWPYLIvnGzYHL+43UOnUUpB3FilCYcxkzM86x1SLGMFRaAzvyHJzhTpA19limsvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4415
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] Fix per client busyness locking
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

On Thu, Sep 01, 2022 at 04:55:22PM -0700, Dixit, Ashutosh wrote:
>On Wed, 31 Aug 2022 15:45:49 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>I have updated my RFC patch based on your feedback so we can discuss again.
>
>> On Wed, Aug 31, 2022 at 12:33:55PM -0700, Ashutosh Dixit wrote:
>> > 1. Do all ce->stats updates and reads under guc->timestamp.lock
>>
>> Other than the question about READ_ONCE/WRITE_ONCE, I am not sure I
>> understand what's broken in the locking logic here. Can you please add some
>> description? thanks
>
>Basically ce->stats.runtime.total and ce->stats.active are tied together so
>should be accessed/updated atomically. Also just the update of
>ce->stats.runtime.total (via lrc_update_runtime()) can have multiple
>concurrent writers so even that has to be protected (since that update is
>not atomic).
>
>These was the reason for:
>* Introducing lrc_update_runtime_locked
>* Returning early from intel_context_get_total_runtime_ns otherwise we'll
>  need to introduce the same locking there
>* Enforcing locking in guc_context_update_stats (which was there in your
>  original patch too)
>
>(I think execlists code didn't have this issue because there
>lrc_update_runtime is called from a tasklet (which iirc is like a single
>thread/cpu). I am not sure how 'active' is updated in execlist mode so
>there may or may not be a problem in intel_context_get_total_runtime_ns).
>
>I have another question: what about that GPU vs. GuC race mentioned in the
>comment? What is the sequence of events there between GPU updating the
>timestamp in the context image vs. GuC setting engine_id to -1 (at least
>what is the sequence in which GPU and GuC supposed to do these updates
>though it may not matter to i915 due to scheduling delays)?

With GPU, KMD and GuC running concurrently, after a context is done, 
this is the sequence.

GPU) updates context image (total_runtime)
KMD) reads total_runtime.
KMD) sees engine_id is valid. KMD uses start_time from pphwsp to 
calculate active_time.
KMD) returns total_runtime + active_time (double accounted busyness!!)
GuC) gets ctxt switchout event and sets engine_id and start_time to ~0

This is not rare when running the IGT tests, so the total runtime is 
updated in the query only if engine_id is idle. continued below ...

>
>>
>> > 2. Pin context image before reading
>> > 3. Merge __guc_context_update_clks and guc_context_update_stats into a
>> >   single function
>> > 4. Call lrc_update_runtime() unconditionally in guc_context_update_stats
>> > 5. Seems no need to update ce->stats.active with this approach
>> >
>> > Some of the above steps may not be correct or complete but the idea is to
>> > discuss/improve the original patch.
>> >
>> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/gt/intel_context.c       |  2 +-
>> > drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
>> > .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 ++++++++++---------
>> > 3 files changed, 24 insertions(+), 21 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> > index e2d70a9fdac0..c004f676de27 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> > @@ -581,7 +581,7 @@ u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>> >	u64 total, active;
>> >
>> >	if (ce->ops->update_stats)
>> > -		ce->ops->update_stats(ce);
>> > +		return ce->ops->update_stats(ce);
>>
>> This is an improvement that we can add and eventually, we can make this a
>> GuC specific vfunc. Doing so may also remove the COPS_RUNTIME_ACTIVE_TOTAL
>> option that I added to GuC specific context ops.
>
>I went ahead and did this in v2 of the RFC patch.
>
>> >
>> >	total = ce->stats.runtime.total;
>> >	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> > index f7ff4c7d81c7..699435bfff99 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>> > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> > @@ -59,7 +59,7 @@ struct intel_context_ops {
>> >
>> >	void (*sched_disable)(struct intel_context *ce);
>> >
>> > -	void (*update_stats)(struct intel_context *ce);
>> > +	u64 (*update_stats)(struct intel_context *ce);
>> >
>> >	void (*reset)(struct intel_context *ce);
>> >	void (*destroy)(struct kref *kref);
>> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> > index bee8cf10f749..40d0edaf2e0a 100644
>> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> > @@ -1376,7 +1376,6 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>> >	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> > }
>> >
>> > -static void __guc_context_update_clks(struct intel_context *ce);
>> > static void guc_timestamp_ping(struct work_struct *wrk)
>> > {
>> >	struct intel_guc *guc = container_of(wrk, typeof(*guc),
>> > @@ -1401,7 +1400,8 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>> >
>> >	/* adjust context stats for overflow */
>> >	xa_for_each(&guc->context_lookup, index, ce)
>> > -		__guc_context_update_clks(ce);
>> > +		if (ce->ops->update_stats)
>> > +			ce->ops->update_stats(ce);
>>
>> context pinning logic needs to be separated for this (ping) path vs. the
>> query path - intel_context_get_total_runtime_ns().
>
>Done in v2 of RFC patch.
>
>> >
>> >	intel_gt_reset_unlock(gt, srcu);
>> >
>> > @@ -1476,17 +1476,21 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
>> >			 guc->timestamp.ping_delay);
>> > }
>> >
>> > -static void __guc_context_update_clks(struct intel_context *ce)
>> > +static u64 guc_context_update_stats(struct intel_context *ce)
>> > {
>> >	struct intel_guc *guc = ce_to_guc(ce);
>> >	struct intel_gt *gt = ce->engine->gt;
>> >	u32 *pphwsp, last_switch, engine_id;
>> > -	u64 start_gt_clk, active;
>> >	unsigned long flags;
>> > +	u64 total, active = 0;
>> >	ktime_t unused;
>> >
>> > +	intel_context_pin(ce);
>>
>> intel_context_pin can sleep and we are not allowed to sleep in this path -
>> intel_context_get_total_runtime_ns(), however we can sleep in the ping
>> worker path, so ideally we want to separate it out for the 2 paths.
>
>Do we know which intel_context_get_total_runtime_ns() call is not allowed
>to sleep? E.g. the code path from i915_drm_client_fdinfo() is allowed to
>sleep. As mentioned I have done this is v2 of RFC patch which I think is
>sufficient, but a more complicated scheme (which I think we can avoid for
>now) would be to pin in code paths when sleeping is allowed.
>

Hmm, maybe intel_context_get_total_runtime_ns can sleep, not sure why I 
was assuming that this falls in the perf_pmu path. This is now in the 
drm_fdinfo query path. + Tvrtko.

@Tvrtko, any idea if intel_context_get_total_runtime_ns path can sleep?

>> >	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> >
>> > +	lrc_update_runtime(ce);
>> > +	total = ce->stats.runtime.total;
>>
>> That would get called every second (default intel_gpu_top query internal)
>> for a long running workload. multiply that with all active contexts.
>>
>> For long running contexts and frequenct queries, calling this ^ when a
>> context is active does not add value. I would just call it in the else like
>> before.
>
>I have done this in v2 but are we certain that when a context is active
>it's ce->stats.runtime.total has been updated? Is it updated on each
>context save or only when scheduling is disabled (which would not happen if
>the context is active). That was the reason for my keeping it out of the
>else.

continued here ...

You are right, it's not updated until scheduling is disabled or a query 
falls in the else block. We can run into a case where the 
stats.runtime.total has not yet been updated because the context is 
switching in/out too frequently and the query always lands in the active 
block. In this case busyness values will accumulate the time between 
switch-out to switch-in and eventually drop when ce->stats.runtime.total 
is updated. This is an issue we need to resolve.

I think we should track the previous value of total_runtime. On a query, 
if total_runtime has changed, we should just return that (irrespective 
of whether engine is active or not. Active time should be part of the 
busyness calculations only if total_runtime has not changed (compared to 
previous sample).

>
>> > +
>> >	/*
>> >	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
>> >	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>> > @@ -1502,27 +1506,26 @@ static void __guc_context_update_clks(struct intel_context *ce)
>> >	guc_update_pm_timestamp(guc, &unused);
>> >
>> >	if (engine_id != 0xffffffff && last_switch) {
>> > -		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>> > -		__extend_last_switch(guc, &start_gt_clk, last_switch);
>> > -		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
>> > -		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>> > -		WRITE_ONCE(ce->stats.active, active);
>> > -	} else {
>> > -		lrc_update_runtime(ce);
>> > +		__extend_last_switch(guc, &ce->stats.runtime.start_gt_clk, last_switch);
>> > +		active = intel_gt_clock_interval_to_ns(gt,
>> > +			      guc->timestamp.gt_stamp - ce->stats.runtime.start_gt_clk);
>>
>> Makes sense. Earlier it was a rmw, now it's just a write to
>> ce->stats.runtime.start_gt_clk.
>
>It is still a rmw, just that it is not as explicitly seen in the code as
>was the case earlier.
>
>> >	}
>> >
>> >	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> > +	intel_context_unpin(ce);
>> > +
>> > +	return total + active;
>>
>> return ce->stats.runtime.total + active;
>>
>> and then drop the local copy of total by bringing back the else{}.
>
>Some changes here in v2, ce->stats.active had to be revived since we need
>to return previously computed value when we cannot pin.

Let's wait for Tvrtko's inputs. If this can sleep, I'd just use the 
original changes you had.

>
>> > }
>> >
>> > -static void guc_context_update_stats(struct intel_context *ce)
>> > +void lrc_update_runtime_locked(struct intel_context *ce)
>> > {
>> > -	if (!intel_context_pin_if_active(ce)) {
>> > -		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>> > -		WRITE_ONCE(ce->stats.active, 0);
>> > -		return;
>> > -	}
>> > +	struct intel_guc *guc = ce_to_guc(ce);
>> > +	unsigned long flags;
>> >
>> > -	__guc_context_update_clks(ce);
>> > +	intel_context_pin(ce);
>> > +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> > +	lrc_update_runtime(ce);
>> > +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> >	intel_context_unpin(ce);
>>
>> From where lrc_update_runtime_locked is being called, I would assume that
>> the context is already pinned (until unpin_guc_id is called).
>
>Fixed in v2.
>
>From the other email:
>
>> From your rfc patch, I like
>> - the idea of not touching ce->stats.active
>> - having the update_stats return u64
>> - not doing a rmw for start_gt_clk
>>
>> With those changes, we are only accessing total in ce->stats, so we don't
>> really need a lrc_update_runtime_locked.
>
>Strictly speaking, (as explained above) because the computation of
>ce->stats.runtime.total in lrc_update_runtime is not atomic and there are
>potentially multiple concurrent callers of lrc_update_runtime,
>lrc_update_runtime_locked is needed and I have retained it in v2.
>
>When you say we don't need it, you probably mean that because we are
>dealing with something like busyness, we can tolerate occasional errors in
>busyness if we don't have locking (and we can't verify busyness values
>anyway though I think they are expected to be monotonically
>increasing). But my question is why not keep it simple and retain the
>locking?

The locking you suggested earlier is fine. I think I assumed the 
ce->stats.runtime.total is being updated atomically, but I see your 
point.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
>
>> > }
>> >
>> > @@ -2780,7 +2783,7 @@ static void guc_context_unpin(struct intel_context *ce)
>> > {
>> >	struct intel_guc *guc = ce_to_guc(ce);
>> >
>> > -	lrc_update_runtime(ce);
>> > +	lrc_update_runtime_locked(ce);
>> >	unpin_guc_id(guc, ce);
>> >	lrc_unpin(ce);
>> >
>> > --
>> > 2.34.1
>> >
