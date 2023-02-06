Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE6368C454
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 18:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D594310E425;
	Mon,  6 Feb 2023 17:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3AE10E423
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 17:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675703676; x=1707239676;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=f+s2jk1bK/+F4nDY0g/Plo7cqB2bzcuRqyXgZIRChmA=;
 b=GEeyxFMxMPqokFtVDTDA3iOa1ek28Pzt2qxT5igJbRuEqsVu2nep5zMW
 8lvEKYBx/CMpgWA1G4oWTHN1ps88BBlPQyTmuUYGpN1QG9d3zTc6eTcSi
 54XokUWxyWn7P7BPK4IJEGsnwqhE2FfwXAL4FM/1GUjQBqo2611RXmr+e
 RlYg3ARtfaUaFx2zm/3knLZpuYRnls62Z0SvPYM6dkFu1Q7bndBWD4XKf
 EDirxXCz+2uGOdacxQD7Dbic0U4jzCcSKoNsgKBCIpeBA3C5FPK7iHmMO
 wzWExhxMoB8ATab/6AYeO23gjTejfTsfb4ifgWG4pSetky7M1U/xG5Sj6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309591812"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="309591812"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 09:14:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="775219577"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="775219577"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2023 09:14:35 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 09:14:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 09:14:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 6 Feb 2023 09:14:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 6 Feb 2023 09:14:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C21IXtWQw0mwRnzmm9ymPtn7852IU4M23X+/+f6vIbaZGd5epj9OKcCuHVR3jal4g1w5Qu9gFkjhDpJmes+TkPRm+pNynmYycIHKT1ws9Tl+KJB6Ost2Qf0Av7hSeFspIydUi2XJNOl1t+WGqGF29R73qX7RGt8ibnVNNuxLrfQAeTP3d3ofmeus78V1S0l85dvNV2yeLaJ9Wa3mtctGAxMeToRxTweBDp2eMSUV/7axve1fqYIOMmWgYfm1Akj/PWCf4VKM0ZMYLGtChtq1/zPdEXc6zvtObVWk37B1M73zzj1P8vkV76unRpPaMO0Jtk2YrClQjtKU+KLdl373yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z14nagVIRLLq3jbTFXVCVEAPObhU5KEVPg3NYmktuVk=;
 b=WeyH7CPwUIgpO+tB6tzaY3McYGih8nG9zViPOcU6KzTQYXVFL0ndnTjxg0YX8YVyLy37aNv72+Ih3gRGIsnDp2t8Cjrnss9CtcSulRrgBzL841hv0ewmIjjBhDb/UVl2VtURIb23ahXXyBsBDM1jS22SSYstpZgXATeNQybBEM9TvUR+0kvREpQ96nnT3C+sR93rSqDrmrisuy3wZgvRWIy0zQO9ysBqxZWtBYa0Wx0gapk647+hf5EP8HyMJpSqpewtJx/PI+SkZI0ZICSMEtkNZqwyLxmFcitazMVZ27ThTXkr8yWdDyG8YzZQYaDHQBYdkWedQwsUcXKVAIffJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SN7PR11MB7092.namprd11.prod.outlook.com (2603:10b6:806:29b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Mon, 6 Feb
 2023 17:14:32 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.034; Mon, 6 Feb 2023
 17:14:32 +0000
Date: Mon, 6 Feb 2023 14:14:26 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Mauro Carvalho Chehab
 <mauro.chehab@linux.intel.com>
Message-ID: <20230206171426.3iay67qj2ptkrszx@gjsousa-mobl2>
References: <20230121190853.18722-1-gustavo.sousa@intel.com>
 <Y9A0Dz4TtLB4a4Wn@intel.com>
 <9d0f7ab2-d6a0-094d-56fa-7ded3592fb66@linux.intel.com>
 <Y+EyEZA5VbcKSMjd@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y+EyEZA5VbcKSMjd@intel.com>
X-ClientProxiedBy: SJ0PR03CA0182.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::7) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SN7PR11MB7092:EE_
X-MS-Office365-Filtering-Correlation-Id: a8440ebc-32fd-41bd-7bd4-08db08659cbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0RdWqy5WI8wAmyXAflXpWRFh0RXj2spbA1i0n1uo4lImZ2wwwJkSI91Gbf9a6CSqjNz7vDssTypPxRFAtyCGMV0O75m1ZRXW5XrmGn+mcjm6AMzZN7mckgtfYIngY/W8z7/Km2xi6Vzbeoa8To1AQuS1utXB2pI2BAxAWOA8JjAb9Tr5CnrqqvoE2zgCsN4ICUJdFN7xPre4Hw7RS6q8kd4b0fD8pUC3TrrUM6gLNRzQYdSQrLUimUVqdGZt1LtG4qkn7a5vvc7ocPprG+3YOtk9UKVKRw1wi0HoCqi5rO9/cU9+RxNAG5vju8IGo1AielCeDj9HWDU+iqJAfjm/tRRJiWU/E+fJKJmpgV4+NNPOziaPAqBlwW8FBV4Xebs3rgt52U1Re/c9zobvOrIWL6t/hCk/u8zIiNQFz1OhI1RPNawTjK81+CKa5Y2xmPQspCNO5Lk9D+e3Es+sMHtGcNFb1g+a/7pfR7ed4m7c2seUOvh5zNK8u7qr3YzBUqiUpqyPIWaWEjl1LaxZlZmg8JeM1NIDzN7C8LrN6s9TJ8nHQmO9+yvOu5Zee4BokP8PAXNoNeBevD+aB4pw8hRGKIO3lbilI8pzEmxVz1+acdw8JsA4TLXnFbQ9MuAJnR+lmuShRzgUKEubAFWjvMo+wQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(39860400002)(366004)(346002)(396003)(376002)(136003)(451199018)(26005)(186003)(6506007)(53546011)(1076003)(478600001)(316002)(2906002)(33716001)(38100700002)(6666004)(6512007)(9686003)(86362001)(83380400001)(82960400001)(8676002)(4326008)(5660300002)(8936002)(66476007)(66946007)(66556008)(44832011)(6486002)(110136005)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rFmiFLslk0qeJbfCGgcNSs7hhuFze2PAoBTPUjXbBwZ3jG/Y+VwLTCAsE03L?=
 =?us-ascii?Q?W/S7monzyafgmBO+bqoarCV2S13df4wSUtGwtLvEk4mOa2bIzCc3EB2DwE/q?=
 =?us-ascii?Q?yeSfmnQUHl8Qd7JCcSd2kOM924z4uBUi29Ir6cYGjyK3bWjgqrKXcLAu+nsv?=
 =?us-ascii?Q?BZ/BnnjkEJzyHCbXph7TZR+bzEFYyGjQD1xpi2Ms4ewmT83N6ZRgRoPmn42G?=
 =?us-ascii?Q?0K43jqZ7+7MIiKBWbk0oZ1vCK6EzLbgoeXwa8fnBJY3qS3GkfEk3bllYXoqV?=
 =?us-ascii?Q?Q9UdHumw9JE1HnIKvtme++cGsC5tR5i6vq/UrdlByyz84Wooc2j+xg1kPKX+?=
 =?us-ascii?Q?nj0YYuCpBzwLuRkjI4Y8lf3GR19po7KnyA74XiiHsQo/au3Ik326eWBPijFG?=
 =?us-ascii?Q?WzUs3DEZgl1LWw/9qzzfjrEYqvg3UiHCecxznxch0/ZFlwKptfia7v+R1NeX?=
 =?us-ascii?Q?dG+ObS6XF+61vwau2Q6VBjoC2NFh2yZC37wFeeC7AxEMuA7wkwD9mcsg9SlQ?=
 =?us-ascii?Q?GUF4ouqlntbdy4v3SJDSuJ63UkUvLk5uQIvpCWl9B4X2TJuBw6kee1kF0RQf?=
 =?us-ascii?Q?3RiNIPJPxYi1zwaBsfKm7jBZVf04LdnumRjSVKi3ZEshbtIQ+chNvuvzCWwO?=
 =?us-ascii?Q?st42qvi5JRf9qZJCFr6mdY4LVScwWw8PEXPZ4eLGWbJDur1f7i3Yxf/u+iHM?=
 =?us-ascii?Q?jF5aC/0dytAxk3T+4VA4g4ePVCZw4j3+ab4ZHoBMMz/6nxI5/PfiP8OZA7UM?=
 =?us-ascii?Q?LURocUniNREU33YqN1pRxF8PZ3vSS5Y/uWINxknO3KA7MA2YItb6LKjP2N+k?=
 =?us-ascii?Q?I07cwV6o1IuizUlEwIDrT0N/7CXJ6+H7dsOWfryNrjExF9KKvC46+Ej9fP5E?=
 =?us-ascii?Q?WZN5/lOrCl3TVFgPd7CTLCCUKHS6IyWKp0uw1zN6Se5sPo4MSN0skEW3kucx?=
 =?us-ascii?Q?gh85mOcrAUbCK91nniRFXC/raI46dz2bYFMqUXvlD9iRdC6l8Sx/vcW9HxIZ?=
 =?us-ascii?Q?W0NTM+gapZF0pNFl57HKsCtq0G9E2nbqNNClqggjZ7q2E9A3gyIylpDz7V05?=
 =?us-ascii?Q?VNyBCH3EC/0AwnGrSxiQJRRvowMcev2Au8Gb7DcI9Jcg1dpdabelK5e1TE2J?=
 =?us-ascii?Q?T0L6gnT9cYArYASNUnfnSZgLufpFCawgGoCPMlnBRMwvIGT5Dg8EGXAzl/WR?=
 =?us-ascii?Q?zRiwPeH3JrK+xibebLgF6tplIG60H3tqu5/pMY9SsGzdIZ9ori7P1XkgNtWf?=
 =?us-ascii?Q?9XRKEQWonpyzgPwpTQ+/7+yF0CnNLEh+XshtjKhqFT5mrz7GYXhgVNg6IRcE?=
 =?us-ascii?Q?d4onDshPqF5/hOJVKLfcN5tsndVfw71l0UsXNdbo1IOw7bolOImDCMwu0ZTe?=
 =?us-ascii?Q?RZgvmvCo8dyHXj1gtv1Yo/BAqyPN/eUH01zVbzjF2fBcqHLICk3L9W/siMiE?=
 =?us-ascii?Q?9zURmBex0Mdt2cIz1hpomzS8ChAiTk5YGLwvbPcOpMBllpplbUQF94aDdxLQ?=
 =?us-ascii?Q?jjDW4gnGYMwUYqOxmtijJQe4urGF0Tm9Z7o6pO6NaPcPPl9j/3yV3FLI6WL1?=
 =?us-ascii?Q?6GjHvExWW/rTkKPHTTdD9rreGmA/jrskB4YvaCVwgVr3CBhdxit+KDln7m2f?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8440ebc-32fd-41bd-7bd4-08db08659cbf
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2023 17:14:32.1320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tyf1XRlbd8vShD9bZvOa3hgR/vWZvo+W33+6ujqejXBDCEgkRxlrXVXmdm+JFQmT9J41K1ynUCDXh+2q2Rlviw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7092
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix sphinx warnings for
 workarounds documentation
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

On Mon, Feb 06, 2023 at 12:00:01PM -0500, Rodrigo Vivi wrote:
> On Tue, Jan 31, 2023 at 02:03:01PM +0100, Mauro Carvalho Chehab wrote:
> > 
> > On 1/24/23 20:39, Rodrigo Vivi wrote:
> > > On Sat, Jan 21, 2023 at 04:08:53PM -0300, Gustavo Sousa wrote:
> > > > The wildchar ("*") used in the function name patterns in the
> > > > documentation was taken as a start of an "emphasis" inline markup. Wrap
> > > > the patterns with the inline literal markup and, for consistency, do the
> > > > same for the other function names mentioned.
> > > > 
> > > > Fixes: 0c3064cf33fb ("drm/i915/doc: Document where to implement register workarounds")
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> > > 
> > > just in case he sees some better alternative for the escaping the '*'
> > > 
> > > My fear is that this ``*_fn_name()`` could create invalid links in the doc...
> > 
> > 
> > Seems OK to me. ``foo`` is literal inline. It won't try to generate
> > cross-references.
> > 
> > 
> > Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> 
> Gustavo and Mauro, please accept my apologies here.
> I ended up pushing the patch from Bagas that had a escape \*
> instead of the `` wrapper.
> 
> For some unexcused reason I had missed Mauro's response here
> and forgot about this. I'm really sorry.
> 
> And the escape sounded more natural so I just pushed it immediately.

No worries! I'm glad the issue that I caused is fixed :-)

--
Gustavo Sousa

> 
> > 
> > 
> > > 
> > > 
> > > > ---
> > > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++----------
> > > >   1 file changed, 10 insertions(+), 10 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index 918a271447e2..e849035d8dc5 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -30,8 +30,8 @@
> > > >    *   creation to have a "primed golden context", i.e. a context image that
> > > >    *   already contains the changes needed to all the registers.
> > > >    *
> > > > - *   Context workarounds should be implemented in the *_ctx_workarounds_init()
> > > > - *   variants respective to the targeted platforms.
> > > > + *   Context workarounds should be implemented in the
> > > > + *   ``*_ctx_workarounds_init()`` variants respective to the targeted platforms.
> > > >    *
> > > >    * - Engine workarounds: the list of these WAs is applied whenever the specific
> > > >    *   engine is reset. It's also possible that a set of engine classes share a
> > > > @@ -46,16 +46,16 @@
> > > >    *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
> > > >    *
> > > >    *   Workarounds for registers specific to RCS and CCS should be implemented in
> > > > - *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
> > > > - *   registers belonging to BCS, VCS or VECS should be implemented in
> > > > - *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
> > > > - *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
> > > > - *   should be implemented in general_render_compute_wa_init().
> > > > + *   ``rcs_engine_wa_init()`` and ``ccs_engine_wa_init()``, respectively; those
> > > > + *   for registers belonging to BCS, VCS or VECS should be implemented in
> > > > + *   ``xcs_engine_wa_init()``. Workarounds for registers not belonging to a
> > > > + *   specific engine's MMIO range but that are part of of the common RCS/CCS
> > > > + *   reset domain should be implemented in ``general_render_compute_wa_init()``.
> > > >    *
> > > >    * - GT workarounds: the list of these WAs is applied whenever these registers
> > > >    *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
> > > >    *
> > > > - *   GT workarounds should be implemented in the *_gt_workarounds_init()
> > > > + *   GT workarounds should be implemented in the ``*_gt_workarounds_init()``
> > > >    *   variants respective to the targeted platforms.
> > > >    *
> > > >    * - Register whitelist: some workarounds need to be implemented in userspace,
> > > > @@ -64,8 +64,8 @@
> > > >    *   this is just a special case of a MMIO workaround (as we write the list of
> > > >    *   these to/be-whitelisted registers to some special HW registers).
> > > >    *
> > > > - *   Register whitelisting should be done in the *_whitelist_build() variants
> > > > - *   respective to the targeted platforms.
> > > > + *   Register whitelisting should be done in the ``*_whitelist_build()``
> > > > + *   variants respective to the targeted platforms.
> > > >    *
> > > >    * - Workaround batchbuffers: buffers that get executed automatically by the
> > > >    *   hardware on every HW context restore. These buffers are created and
> > > > -- 
> > > > 2.39.0
> > > > 
