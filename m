Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E2C6B5643
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B5710E04B;
	Sat, 11 Mar 2023 00:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2EF10E04B
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678493925; x=1710029925;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eFp48OjBmwc65eu/fQzg5bT6iQJYsK8cWcR/oHZPgH4=;
 b=nsAIuk3Ij79cnkQUWyyW59m+TKsGO5Va4DjNJE0N+izmOQ1nLaXBxJFK
 ydKbuZB3uMhgmXk4410nZP50FhdyTIFa0bZk+n3QteiKyzRnYh2wg3XUM
 VSuIIXCCT26tgQB5sILYM1KHWczXVrT4mnieP4/o7eEGkb0tv9y5/+nJC
 LVO73K0F0LvRkqslGoRz8wUmHJB9njPiv63TEDqJELUc0QtVp5anPhfqK
 YANci6VrgtyjVrQzNy8w791OZY5ILMkXyihCB2YG41I0XGMX2slinxtuP
 t7pt1i+aEVSrpRTW37hcR4PGaYwnJJ6/2dO2PmBs7dwcQS/635QEKMepr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="325213823"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="325213823"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 16:18:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="746930531"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="746930531"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 10 Mar 2023 16:18:44 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 16:18:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 16:18:44 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 16:18:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gvp8qIIO0I46oq1j9Rnah1G/ze4lZx5+TKzbh4oe3L+ngj+PrjBSZXDJrq6gFitBXMO5Y0iltbR784z+Lz+NJX57j9yjnnh37J0SyWO0FG8Mju2F4YgWRJLOl14Vg/YOl9SUPF3xs1Xs2ns81O7EarzS7KaXqkmVvNYJiXCVJkul4upkfedIQGuTwpfPxOncLV/vP15SEjnbgydvdSroXZiyKb0Zz8wlHej9P5zoRMNWJSlt82N5TS9lZxOFm8061+W1JZ2ga4trhDKVFqeD0tTK7NwG8jQFkp8erTkx5TlDCPApSwtYivx4UdtlERxuHC0+1T72Zfd0DSmGxDsppw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctonr9xPw6BhY1W7AXZIwApyev5cpLmnB1tVEES47Nw=;
 b=D/NcA2ICPQAnl+AWrX2ItCuIwctp6uf1LyqSyDqiYBZ3LC1tM506jJzIqoY9/RKVr/SdGkIVatde5Yky1PMP1IRksmqJMGAkodas0DSfZ0xsDZjEqva31DZAkDI9i7meLZ5pQYv6tHq7ZUAn8LNw6WQN+WYlDyGusPkD3qnDEtl+btFedP5jogYXgj1etUkcKM68RF3ufdE5ALnJI7hJxA26fgf3kFiepGcCz8DS1pUnw9OdCauALS4S35Mx/2EiL3u+uYgNoiUoGB6pVcg5MQY87zpVdH/ZZtRXUjkA3NaawkSVs1igJqS/iI2EeWj/jb1YrKwVEH8Ktc1AHKgzrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH8PR11MB6973.namprd11.prod.outlook.com (2603:10b6:510:226::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 00:18:42 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.019; Sat, 11 Mar 2023
 00:18:42 +0000
Date: Fri, 10 Mar 2023 16:18:30 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZAvI1jtFd0ElWVcm@orsosgc001.jf.intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
 <20230307201611.773103-10-umesh.nerlige.ramappa@intel.com>
 <87a60lmq9v.wl-ashutosh.dixit@intel.com>
 <ZAtdP7KDE5zOdc0k@orsosgc001.jf.intel.com>
 <87zg8kld8r.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87zg8kld8r.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0170.namprd05.prod.outlook.com
 (2603:10b6:a03:339::25) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH8PR11MB6973:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f823292-b3d8-4d56-4db9-08db21c62b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x+HIKP0Q+ymVzK+tYafue8gbniKZrBO+HaI7KMIDvF9ohr1oiklxLua5WLWS5LWd0+RigPTYSa9rdmcyZAi0nr6c+WJJPu7N7YLueHYQcJ0pN7ciX+OW3rQR9tN4JO3VOjiEOeEp3ME56ikVHjGXTQOXV7Sz/Fx15F0B2cpAwHzpDE23qno6tTV2rB9RLv6fmKlE8k8YiuJztdybQKK8fVoHjHFX6BgGUOKzxSSy/VNYRo+psyxTCzT7TBwjkLkirl7EjYxAZcjTl3JTO9HUn3nUEZJbQJ+KchYtd0dgYqe4t0L2Z5MmvLbwHC6KCcMeYOKpxVjYA8rh9gkChARanUTGBfavt54WooQH5PvZQX3zpamzsMH85ZTQfCRImsxB6a1dna9/aCUHkMWIMQ69detVaYpX9jkC0nTaj1ftR5qPlszbMFnJh6N9dGPJctEVtQJtQAxXfBAzPG/9NznuyqYMcWbfLzXbFekshup57Wt7h6AKs2487+BPjQV6IKNsQ1zI5lbuSYz/DP2TIUTv3GVlYqUews6wOXdiblKih0Yk6sC7f1iW/oD9DAxt8jzhQRBIE1eSG491P7MQIMBVtp+U5oza7jNVTzRBKo5MIQIjM+1Dq/YQ0KRAp3YEKZfkfex26yW5LjW4lRX71mzNtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199018)(8936002)(6862004)(5660300002)(66556008)(66476007)(66946007)(2906002)(4326008)(8676002)(478600001)(6636002)(316002)(66899018)(6666004)(6512007)(6486002)(26005)(6506007)(186003)(41300700001)(86362001)(82960400001)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OCt4T21pcmU5UUUxVGFZUlJhRWZjS0x5dHB6eEhTaWp0a1dnK09ENisxMDNI?=
 =?utf-8?B?bllHN3JocFBHSlpsbTlKT0JmQXNPWHpKbVc2YW9WdEdveTk4aFZtTVNVTmM4?=
 =?utf-8?B?K1ZkQWowcWpmam4ydTUvUWhJenBCU0FWZm1WNUdZMzVCRGlCYlhIVC9DczlZ?=
 =?utf-8?B?c2gvdU9ZYjA0OXU5QmFoeG5WaGFqN1R3eVZ1b3hHTnlJYittdjdpQ3hhcXNo?=
 =?utf-8?B?ZVBiRFdZRUNpcURaaDRWVzUxK2J6TVEzcGRuRm9VbmNoVTVrQXYzWnNGUXE0?=
 =?utf-8?B?QllHM0VNVTd2L295MXUvb3RNODJXRFpSK0xtcmdrS3Rld0M4dmhNWnZVZith?=
 =?utf-8?B?amw1TGdoS3pNL0o5WkJHb25KUjA0VGltdjJwcC9jc1VicWhpbHFQRVhvZE1Q?=
 =?utf-8?B?TVVIbTMrcVJqVXpxRUFGclRvRmtLOXdpMFpSem9MeDhQRSs2amtHc1RBUStk?=
 =?utf-8?B?ODZZUjZYR3BYaTdVdUIxUTVxaXpPVkRvQ0pmZ0U2YVFkaURpeDE5d1ZIdWFW?=
 =?utf-8?B?UllJNFRjUW44bmVjKys5cmNMN3RiakNKS3d4ekUxV1ZWZ1VucW9PV1czbkhG?=
 =?utf-8?B?OHhkMnhUbnJINGlyUi9vNDZPdy9LRTIvUGdJR2pYSVg3RVlrMUVVejJ6QjRq?=
 =?utf-8?B?azlJRVRhYzM2cUpzN1VZUGFUdGJIWEgxOWJyemtzdmI4M2FoSGs0bGNWVFZ4?=
 =?utf-8?B?dFVaaGdIdEJ0SjhOS09seVJJbnFtM0NqdFRvZzJHd0JTYnExS1RKOG1MT0pk?=
 =?utf-8?B?dURNVDBKQ0xYUVgvKzIvS2pzalBXSm40L2xHM3hXZkxiVks1VWxSUkNOamJH?=
 =?utf-8?B?cnZ1MHRXNmczdjU0Ui9CcjhnNUV2WlBLRDIzQ3RDcXIrZHpGcGlWNGY1aEIz?=
 =?utf-8?B?RG93bzRKQ0szMFB4ZWltUDRrY1lHdEZmdWdHeGlkckg0dUFWNytPWURLZmp4?=
 =?utf-8?B?bm13SFRXTlJxRXJjSGsvQkExeUdPU2IzS2grUzQ1cWlWWHNxWGl4ZzhLVzZQ?=
 =?utf-8?B?b1EwSEZxeFdndEZiSTBWeXpsdzBCa3Y2MXJ5UHNheDcyWWxMUWtnR3AxclZR?=
 =?utf-8?B?UHdiSXFQeEw1SFk3Wk1mUUFNeFRYU3BMYmIwY2tkaTA0Ujh3bE9vdDVBYTFX?=
 =?utf-8?B?WlBtY1ZnVFdKU2g0UE1odmU3ZTZIb1ljeTM4RklMVDB1RTgxWnMrTjVYdGNF?=
 =?utf-8?B?ckRLSEQ2MGpSV09ZVjhFd29YVURqbWhxV0RXS1dkK2xaTDFqYW5hdElQeHVB?=
 =?utf-8?B?OUk1VDFiQ1lIcWRoUDZVN2tNalkyZ1ZrWC9VNDl1QkQ3RjZ3WDZtZWMzVExP?=
 =?utf-8?B?eE5IYkt0MFZiYTdoRHQvRnp3aWt3VVNiYUdQK29hdlNSUXhXRkp6MzAzK1pv?=
 =?utf-8?B?WXJVWWRVNCtsMlFjcWVoNnFJRlU1Q2ZqN0daTDdZRzNlL2xvL0hKN1R4amxz?=
 =?utf-8?B?WEhObU1Oc21JaHB6VGU5Z3U2bDlxQkNNYW9iV1dlUWROMEFCUjExMHZHeWpQ?=
 =?utf-8?B?bWx2d3hYVUptVDUyVURqR3Nhay81eStPTHVLSEQ5WFZLNWlNWktvTlFpSHBQ?=
 =?utf-8?B?aVBpWVpzamQ0d3ZHWk1lVWlpRGk0MGxJQmUvSVNzRDVqVDQxWWRBWTJVSm04?=
 =?utf-8?B?UWY4ai85RVJOWFpENW04a1V1NytrcEQyTldoQTN3OE5VSFFGK0NWZEx4ZW5r?=
 =?utf-8?B?cGF1cXpSbXZIS0FRckZiMDh2OXN6ZDJCL3pzVW9qSDJWK1FzeEtrSFo5dk9v?=
 =?utf-8?B?VUgycDI1UlRKQWV2ZjVsYjlndkowQ2hBV1BoZjVJUURyeG9wSFBvOHNyUlBn?=
 =?utf-8?B?MTRBT0s1clloTjY3SjlXN1JCb2tvOUV6dGFuTzZZK09IaXF1b0xRVHBkQzFm?=
 =?utf-8?B?OFVKQSs3RE1JSVl1Y0t6VzlHRG95bFJkZTF4S2V3SGF0QVU3dG81elRCK3BV?=
 =?utf-8?B?bW1jK2lkWEpPTS93U1RXK2pZTzNncUlUVW1XTzNyRUxVaGpySUNVcU81SFo1?=
 =?utf-8?B?YUFHTmpSRzJMaDA0S3UvMUNlMDZRVTVLaTNabzUrdVdDc3dsN1NDa0dtSER1?=
 =?utf-8?B?M242RHV6amZkWDh2MjArOHNveGFqb09Bek9BSnRPdkFETmh0MVBlY0Z5WW5y?=
 =?utf-8?B?cSttUGVRdUI5SHJHZjl1WUdVT0d0eWxldDVJMmNUcnlQOXZ2dXhSRlBpTG9K?=
 =?utf-8?Q?BXTpv+3VmsrrSPG+m7J4ANo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f823292-b3d8-4d56-4db9-08db21c62b80
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 00:18:42.2158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Oic3R31xBBTOfA/93lL8E8dc00/TZLg+K1d1KfRusoBtu6YemMptOg3nX6Axzy4uolufbvsEifPjc+K8QgbUn5yzxRvgAYcUs/bR/kcKjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 9/9] drm/i915/perf: Add support for OA
 media units
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

On Fri, Mar 10, 2023 at 09:36:52AM -0800, Dixit, Ashutosh wrote:
>On Fri, 10 Mar 2023 08:39:27 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> On Thu, Mar 09, 2023 at 03:57:48PM -0800, Dixit, Ashutosh wrote:
>> > On Tue, 07 Mar 2023 12:16:11 -0800, Umesh Nerlige Ramappa wrote:
>> >>
>> >> -static int gen8_configure_context(struct i915_gem_context *ctx,
>> >> +static int gen8_configure_context(struct i915_perf_stream *stream,
>> >> +				  struct i915_gem_context *ctx,
>> >>				  struct flex *flex, unsigned int count)
>> >>  {
>> >>	struct i915_gem_engines_iter it;
>> >> @@ -2573,7 +2594,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
>> >>	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
>> >>		GEM_BUG_ON(ce == ce->engine->kernel_context);
>> >>
>> >> -		if (!engine_supports_oa(ce->engine))
>> >> +		if (!engine_supports_oa(ce->engine) ||
>> >> +		    ce->engine->class != stream->engine->class)
>> >>			continue;
>> >>
>> >>		/* Otherwise OA settings will be set upon first use */
>> >> @@ -2704,7 +2726,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>> >>
>> >>		spin_unlock(&i915->gem.contexts.lock);
>> >>
>> >> -		err = gen8_configure_context(ctx, regs, num_regs);
>> >> +		err = gen8_configure_context(stream, ctx, regs, num_regs);
>> >>		if (err) {
>> >>			i915_gem_context_put(ctx);
>> >>			return err;
>> >> @@ -2724,7 +2746,8 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>> >>	for_each_uabi_engine(engine, i915) {
>> >>		struct intel_context *ce = engine->kernel_context;
>> >>
>> >> -		if (!engine_supports_oa(ce->engine))
>> >> +		if (!engine_supports_oa(ce->engine) ||
>> >> +		    ce->engine->class != stream->engine->class)
>> >>			continue;
>> >>
>> >>		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
>> >> @@ -2749,6 +2772,9 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
>> >>		},
>> >>	};
>> >>
>> >> +	if (stream->engine->class != RENDER_CLASS)
>> >> +		return 0;
>> >> +
>> >>	return oa_configure_all_contexts(stream,
>> >>					 regs, ARRAY_SIZE(regs),
>> >>					 active);
>> >
>> > Can you please explain the above changes? Why are we checking for
>> > engine->class above? Should we be checking for both class and instance? Or
>> > all engines connected to an OA unit (multiple classes can be connected to
>> > an OA unit and be different from stream->engine->class, e.g. VDBOX and
>> > VEBOX)? oa_configure_all_contexts is also called from
>> > lrc_configure_all_contexts.

This check primarily blocks media engine use cases from entering 
oa_configure_all_contexts().

lrc_configure_all_contexts applies to pre-gen12 only. On pre-gen12, 
engine_supports_oa() should return true only for render. 

>>
>> Only render (and compute when we support it) have OA specific configuration
>> in the context image. Media engines do not have any context specific
>> configurations.
>
>Yes I remember you answered this previously too. My question still is why
>did we make the 2 instances of this change above:
>
>From the original code in drm-tip:
>
>		if (engine->class != RENDER_CLASS)
>			continue;
>
>To the final code (changed in two patches):
>
>		if (!engine_supports_oa(ce->engine) ||
>		    ce->engine->class != stream->engine->class)
>			continue;

I think some changes are a result of incrementally supporting compute 
and then media in OA.  Since we have not upstreamed the compute support, 
some lines of code remain.

With compute support the "if (engine->class != RENDER_CLASS)" changed to 
"if (!engine_supports_oa(ce->engine)). Later, OAM support brought the 
other condition that checks classes because this code is under 
for_each_uabi_engine(engine, i915). When we run this for an OA use case 
where user has passed rcs0 for ex, it will still iterate over the media 
engines. Since we now support media engines, we should skip them in this 
loop. 

The other question on whether this should be class specific or span 
multiple engines, I have to check that specifically for OAG. Ideally, 
the PWR_CLK_STATE should be configured for all engines that support it 
(render and compute where available), so the above check should be 

if (!engine_supports_oa(ce->engine) ||
     !engine_has_pwr_clk_state(ce->engine))

A jira will help track this and I can address that in a separate 
patch/series if it turns out to be an issue.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
