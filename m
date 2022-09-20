Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBA65BEC6A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 19:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020F110E745;
	Tue, 20 Sep 2022 17:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF1A10E739
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 17:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663696567; x=1695232567;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9+4x8O1953Cf8yhiJsd4311TO7dVsCgh8moO60OSCAY=;
 b=dT9zaiFEKtlaNTkvrPr8EanN0h4mcGjYyzmdXFVp74aO3UR50lNfSp1Y
 gU1L884NHn6YIjh3k34x+Jq/hdCKljadlDAKqM5l4oDsu+zZVun+SBaSM
 ZfdSMzyptWWIeosfiLB4pFw7i89H90YGYQBX4P73OZELJ7Od4v3SWEYJP
 MjtwYCS5EP1UwgbNtmq97oFLO3O7KH4gv5oP+bqVLFFiCoGEiNr7M2eeL
 Lsmd9onkI1FLnUU+i6kTxhOBtmuzgYyL0EQGfHWgx4tobjdq7L4WxQX9Q
 b7ugtg25S35JOZgunp+Qx/OeSMJ/fTmgRY1P62JU2yNUXOyT3O084K4Ar A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="299760527"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="299760527"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 10:56:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="649690361"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 20 Sep 2022 10:56:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 10:56:05 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 10:56:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 10:56:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 10:56:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yee2jiskMca7ucIFilpeih2zkYPRNnacbdjUSsN/MuA8dHt0jI51OJSLU0PPNgtG9iHjH2cCT0ii4KtvLMX/RtLbUPd25v8meuFKUbXk5FSbG+TKgO0FCnyDh9T+IvwJ89Z5Y8DaSesL0xRlrRXnbkBHRhq6yDk1nWSmXGGoVQiOE5fTK4M21UUIKnJcDGHJ9SZ5SOs/n/SygmLJOGLqpt084MQ8jVk7uWQObv+Qnxa2u1QhUq6xsL9xTyzfCSNL1IPsJ62D12Gh+Q19eT13W2rDHl5ruYor1q9fu59ZQvKrif5iqQroHG8masxqP3RyeKiRG2hQn4cTelA6wLuUWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GepwuZia7FkMPAHwYf/RilSgCb+W/d6TE7/ka0ANY5Q=;
 b=IyCdwPZxK2CPFSI432VVd8leTGAaVTL9fvCG0TNlalf0jXn84zhfCuq6cqqLgTKz9lNUnK7nEEc+D/WIMvhTfes9YZEoD+aXFA6+r3mJovhpD4Wnx1NX6q4oIUGcRpRLct+siYz+h7l6IpcAz9yPtV9OYH4J2YuDUn+TL2gVHIw8yeFmyks2dhao1oOUEAKz1uD9DL+KjmV6PrkoXtA0lCA0GCt8XySj+d3iwXZyWt3t35d0or9/SEJVLxqrw7VxBl7xziaf0GixyZJJV780J2ldsMRftA0b8NQIDXsJBh+x3qsLzxQNYSbSODL5uy2IqXd9ZSInU04wTH3Nw3vdQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB7360.namprd11.prod.outlook.com (2603:10b6:8:136::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 17:56:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7b64:871c:564d:91fa]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7b64:871c:564d:91fa%6]) with mapi id 15.20.5632.019; Tue, 20 Sep 2022
 17:56:02 +0000
Date: Tue, 20 Sep 2022 10:56:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20220920175601.d22uiwycs46zhkbf@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com>
 <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB7360:EE_
X-MS-Office365-Filtering-Correlation-Id: 70755f7f-58ec-4e3b-0fa9-08da9b316200
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N7GdnRSrqjp4n41v4MDclMVl4ZKnwW3w/d2IYYF09hQIaWohCVD9MVOCwj5pW6oiZme4NX91sZ4IT8YNyUWGKxJywXxNVysc77QG/Lhjts9Q30QsNI7T4L2XKa/nhIXUa1YsE6fx8bcHLbp3oAXeKoSOVQq80QnTSpwTg2j34u+NmgQB82A+e/kI203VtB8myfjHKlZ/xbiSZuAiWCLS7JYi5iS/kkoj2rdgCNv0FfqLiEHHPRAjfl6BEsMgKYhUjUtHzRP0Ccsar4oxvPoD0lnqEhc6lWiqgpzLWGqwdSKKTXwBoVdiHwslpluYq+DJV7biPl77L3MDRXF2oICxoHbtKIeB8aQy4ZgbUrbCxzJSOuJFGq4TVtgWbtu3JQlKiEDUH/71pMXt1O3//xcG0ppoDwirz+XBJ08PLAlS5ryC6EejEQuKJ9wNMcDNds759bz7P1mLAASMkS3zw5UF6FRE5lSiOz8UQCknPG70DYQGfmhI29shKV8twedGlWAor9DB5KLiamR5u5Y68UC8qJWkKuM0acVS89vbWDPcGCAo99f4NsPtSPEW+Kul+cgpwENMn3hFESnlcPQPFXZnuQYeyaUBDiEUpqAZ8yF/BE1idnUYP2657zJXGc5lMboe2RvLVfXv/bTEabq7t6KqH/4bECew5kG38GJBCPtJbzUEA7nuOdsfV6Zxg6be+UxcrB97BDL17hIz1mqkWYemAwqa/zLRN8VgT9d0yCOEcc9w8YYH3bZFQq0gc4npWFjE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(376002)(396003)(366004)(451199015)(9686003)(26005)(6512007)(6506007)(36756003)(1076003)(86362001)(5660300002)(6862004)(2906002)(186003)(66556008)(66476007)(4326008)(83380400001)(8676002)(66946007)(38100700002)(82960400001)(6636002)(8936002)(316002)(478600001)(6486002)(41300700001)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sq6orRpb36yC5/c+IrGwZZQjNS1J/8ghWVima4MLiWVgZBM3OIgnNwILZAjv?=
 =?us-ascii?Q?0UCRNWSXwwUNRzQ6EKbKn5r/DaO5Pz4gl7lUhBPqE0UZUr+/tbuvmBVRVoiM?=
 =?us-ascii?Q?240X+MJstRIKi7/vaIp8gUPYXxX1ZYPxKwFSSi71Xw+EfDVdx+Aq2Em6m/fr?=
 =?us-ascii?Q?HTYccdkMWGcJg9kqtDItInxzP+vJF5SLY1l7JL6HADzfk3+ihhb2jo38bYAp?=
 =?us-ascii?Q?XznNXl5L+az1avKcUUWDqF8fuXv+3O4MyU0ywi3+pCW/qWn344bp1kUXgJeX?=
 =?us-ascii?Q?Fj/BZtif+D7Ultt5+EovRxFxBVuffkNFyNaOdMZGwBdXC/+juf93Tjalkmrq?=
 =?us-ascii?Q?xCLzcPJKK/VfMmIgc4XJIFPh/6GuFpGEVs6AT/omzNyp/KyHgZeZuBZuxdbY?=
 =?us-ascii?Q?nhNaMUENKU3HBP9i4GW+JfY7BJJdjMTT3axvzy86/oGcrs4kVC4ef+QaDsgC?=
 =?us-ascii?Q?mKs/MKJQiltLfQsaRGrxjxo4I4wrs6m0DNuQH9Ye1yqI38Pguoyz79FiVK7X?=
 =?us-ascii?Q?1SqKBjfZfwBWWm3dXVyOmRel9I9FritjWoy/24blPoNW2izs5I8x4txZu2Qf?=
 =?us-ascii?Q?SXAwetLUkDsr85OENdFOsQj13HqQvCT11p2Pt9xezEuJwuaQWhwVLPYd6cEs?=
 =?us-ascii?Q?+3tObjlllLfujsKH/0EGbvPx348AKFPOwk+buZlM6mqNXQ6U9fLplIO37UgN?=
 =?us-ascii?Q?WW7qCHrGLjZP0uNXxF1/zCue7rvnTkPVNUer5EIUXBN8w0H1qfeE4UhrKNzk?=
 =?us-ascii?Q?mS5GlWoM90EW679+TQSZcuNEh95q6CP0UpCw7mH7tO+2aSb8gFtdIFWGzd/a?=
 =?us-ascii?Q?m5NNFG4N0YLidoGoJYWZIz2QPaepSL9AkdUebq7c91UbMv2UxFgbnOZ2GkIC?=
 =?us-ascii?Q?Xjk0nxPMxHkkSigLtzEhe52Vo/NwMwMa3/xXfMmomCiXKuqfx2dBvjQZEN6q?=
 =?us-ascii?Q?Rdm2t91rGpPD/+AcjACdiC526C276X3JotwOp+ZNotZYutDDQy/SNC350/Yo?=
 =?us-ascii?Q?BWHUisSXJP/LPfffisQB5CEleXxJ1uJ98NmMhLeL7MuV7X3tk1IPVn06DUfD?=
 =?us-ascii?Q?Em1unZwSOhk2SziM6y2YDAlT2iDyxoP0/SJbn2FTSunSLkfFUTtmotYY2lTB?=
 =?us-ascii?Q?iYX57x3QMS23AedIsLDyIdFh1t2GtcA+1JGLKcXwm0uihbBVMUflSeBqiLDC?=
 =?us-ascii?Q?7K0/RuaI7Wt5tPB1j4vtlWTRb4kLut6VX18hgC2OrSbSOOQiQqbNa1VNbmcN?=
 =?us-ascii?Q?zm6SfFyah+MxqHDXatHZrV5OLjj6IB8zCoKIhJrKZu8S7o2oh5qal68XMkzL?=
 =?us-ascii?Q?Ev9jeh1rYVTQa0mJ+5Sw1b5+TSgG3yJ+chw/eG6yuTHfjgC6BI9opJUAUCQ0?=
 =?us-ascii?Q?ZgKcetCL+52XDJJhnJCXNeWn1j6S6uIOH5YXqtaFoWMR/Ym7xNF/9eb5i2rW?=
 =?us-ascii?Q?C4JYBuHeucXi7de4HvP9TEgeIRz5judjc3Xn4Q9flcktqQEjnfwquIW/4pq8?=
 =?us-ascii?Q?R8Vm2QB8PBgm1KIIedbeIFnpLwTWo/eifkZBU4GVxf2PjAUuxrRT2XeA958f?=
 =?us-ascii?Q?K3ROQDXfZfn5nJUAoV6sDpYXMGkwkvlQs83o+Gh1ZqUWrLiSP64UfucATSjA?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70755f7f-58ec-4e3b-0fa9-08da9b316200
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 17:56:02.7938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l50AwztZcAG/W75YG4dq0nCkYfV9aRGD8wSJa7VhnsMuB1tPTOPf8XjL/iZs5F9DPJNdZ5fFra9ihdxjEiF6hk+e8OUxjjEUPUcQyrguZTQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Tue, Sep 20, 2022 at 02:04:33PM -0300, Gustavo Sousa wrote:
>Hi, Jani.
>
>On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
>> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > Make the code more readable, which will be more apparent as new
>> > platforms with different hotplug inversion needs are added.
>> >
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
>> >  1 file changed, 16 insertions(+), 9 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> > index de06f293e173..c53d21ae197f 100644
>> > --- a/drivers/gpu/drm/i915/i915_irq.c
>> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>> >  	spin_unlock_irq(&dev_priv->irq_lock);
>> >  }
>> >
>> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
>> > +{
>> > +	u32 invert_bits;
>> > +
>> > +	if (HAS_PCH_DG1(dev_priv))
>> > +		invert_bits = INVERT_DDIA_HPD |
>> > +			      INVERT_DDIB_HPD |
>> > +			      INVERT_DDIC_HPD |
>> > +			      INVERT_DDID_HPD;
>>
>> Nitpick, the indentation will be off compared to automated indentation.
>
>What do you mean by automated indentation?
>
>>
>> > +	else
>> > +		return;
>> > +
>> > +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
>> > +}
>> > +
>> >  static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>> >  			       enum hpd_pin pin)
>> >  {
>> > @@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>> >
>> >  static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> >  {
>> > -	u32 val;
>> > -
>> > -	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
>> > -	val |= (INVERT_DDIA_HPD |
>> > -		INVERT_DDIB_HPD |
>> > -		INVERT_DDIC_HPD |
>> > -		INVERT_DDID_HPD);
>> > -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
>> > -
>> > +	setup_hotplug_inversion(dev_priv);
>>
>> Since you're already in a platform specific function here, seems a bit
>> odd to call a new generic function that needs to have another if ladder
>> platform check. What are we gaining here? The end result is
>> de-duplicating just one line of intel_uncore_rmw(). I'm not convinced.
>
>It is true that the proposed refactor repeats a platform check, but the proposed
>refactor has its benefits. As more platforms with hotplug inversion needs are
>added (e.g. MTL), we will have a common place for the logic of hotplug
>inversion. That arguably makes the code more readable and makes future refactors
>easier when we need split a function that has become too complex due to platform
>checks.
>
>To make that last point clearer, I am quoting Lucas' (copied here as well)
>comment (which was what convinced me) from a discussion regarding the advantage
>of using such a helper:
>
>    that is what helpers are for, so you don't have to open code it in every
>    platform-fork of the function that needs it. See how the various
>    "Sequences to initialize display" are done in the driver... When we are
>    extending it to a future platform, if the change is small enough we just
>    add e few if/else in the same function. But it doesn't take too long for
>    those functions to become unreadable if there are several branches the
>    code path may take.  So then we "fork" the function for a new platform,
>    but reuse the helpers doing the individual steps.

the missing information here is that there are changes in the pipeline
for platforms that have different bits to be inverted, or none at
all, with a different register to program. Adding the if/else in this
function seems unrelated churn.

Another possibility would be to just let the caller handle the if/else
decision, passing the bits (and possibly register) to invert. The noise
in xxx_hpd_irq_setup() function may be avoid by

#define INVERT_DII_HPD		(INVERT_DDIA_HPD | INVERT_DDIB_HPD | INVERT_DDIC_HPD | INVERT_DDID_HPD)
#define XXX_INVERT_DII_HPD	(...)

Third possibility since the function is already very small is to just go
ahead and use another _setup() for the next platforms.

Lucas De Marchi
