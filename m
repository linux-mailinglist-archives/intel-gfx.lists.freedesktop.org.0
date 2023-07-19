Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC22759983
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 17:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169CD10E4CB;
	Wed, 19 Jul 2023 15:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5654610E4CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 15:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689780180; x=1721316180;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JbYvDrsrf3gXmPrpA/4FqlKztRilKuFMpQ1uNa14Wcg=;
 b=HzuK2JsIkG1D3rbMIKGqZ2HFoL9nIdSuTZmjp3MsnQQobvZO77Zhhhtm
 819SRYXvVxhZEyuOPr1ZzTDBS6wGzhWf6D1i8v4kIKRZvss8dnHh22OEh
 aJppaki87sDdtBch3rSMogIyoPEhk78yxwr3ijYAowEROm+tVACnNV6oB
 jYwue4/OOZRPgsrDqbn2tdsOtklU5GY5auPxWWfrhLN0PQL7VN10/y++T
 2TSvw1oHo+R7K2nH35/PpHRe5MdtOCS6chKYQNnrggEbv3PpsWo+ZMcuw
 2kLvfHY3QnZtiM09DDTMS9EHgQ2EOK02Q0j1TeomO+8Ug2FOmxFK+i7zz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351361028"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="351361028"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 08:22:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="674340079"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="674340079"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 19 Jul 2023 08:22:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 08:22:58 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 08:22:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 08:22:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 08:22:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n8MFs4IWjirIhAKaFiGpake9sAil4XIU7K+cga64NWO6fuoSAh8m9WaN9TMT2WiFnz6q6juJRawaD4yff/hVfgcnS1mBmPHHAp3v2VrmAJhPhwhGxAlT0ssfEEApwKbh9t5UTu8xjN6yhKbvs7X/wonplK2Gr1qPl3M6xlDF42Mi+EbTMfNNLA117SNgTxhvO04wgQ3qco1tkDgwWnLKSCYl/6scra9qZ887H+FmteytoDZtHCDx37rOMMeS04IuDY1hBmpwXaZpE71SyRphqg1sPCslVIIOiH73xEM0OS/VuPq4bpWyKXI7K60nRsOVTt7egxSzzVhXA4iknUb1jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYnETp8rMq7DtIDdSIsbcRtDqjVz88Q89ZcVfv3T+Ck=;
 b=T2TEa68Amyd1/3pwTAPCMZ5B+P66CM6gekT1TlFMoKFq9JAurVVXT9vORpGglfG4By9lh2n939TaSMh+MDuHzV48SRBePqT4RvtVsm8dQCZiQrFu6zGK/bS4Xh0Bw6Gx6PSE4YiBp5mwJ4yavnjmnt6R/vzbi9JTDEFRwIzHyjL6P/p7bBr7QROnNQgJrdlQxZnysilGjNJX57g/zb/W6QCftj20bZJm7ZfbwQub82MenKM/UUk+nwX0fv3lcL5RbHUq8b7G6LsiefP8prRxfvv+h4z6To9BoY4CzMQnXF+eQ0qmHLnZI1XTSZlUxxepXMlO0W7EZzB/qR4J/TW11A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA0PR11MB4574.namprd11.prod.outlook.com (2603:10b6:806:71::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6609.24; Wed, 19 Jul 2023 15:22:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 15:22:50 +0000
Date: Wed, 19 Jul 2023 08:22:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230719152248.GN138014@mdroper-desk1.amr.corp.intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-18-matthew.d.roper@intel.com>
 <6648632e-0b4c-75ff-1b83-cd45b051cbb2@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6648632e-0b4c-75ff-1b83-cd45b051cbb2@linux.intel.com>
X-ClientProxiedBy: BYAPR07CA0076.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA0PR11MB4574:EE_
X-MS-Office365-Filtering-Correlation-Id: a92b167d-42f9-4cad-d095-08db886c03d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aa9situFpFTw0f3Ynp7C6M8UXDsQp6Dcpg0cQ7ciJgu/HRDBiaFPdsjlrnUfGH92TSROmcIR6vNtR2JYWT9qHwWCNY7z4VwQpdiPY4f0skYJw5X/zC/nqPm4CmiZ0sy+LrRI64KCHhmjsCxrxE2g8VGcmBZ1swQQtHa2R5oAciLzibw00kUnrcNUBsrmC6gJd8W6cOb6GFoABRvYEdSx3ywvFZU7EduW3qQmbqQosfKpmma6mxNHh6PKz9mlCYN+8u3xNB6pRollkWL4ebxik29tDRKokJveqmY+X1BZsJ3dVOmEzIiT0Jkb4NeXjTkC0POn7/NJ9aZsrGTol7SBdkCXRpKvADnLv0tzaX/cJiK9e9UjiEitztj+WoYSauPQcesXMnScGw4SEDbYZMmENoKtP98WWYIgctwyctMSBNRp1R8yMSuST6iqwL/J7ngfav7G4vaiGKlbFoQxZU0zeyCl/pNRJLwcFmPeevGRSvbgi04F5OUyGnI/wBuOadp5C4e+5LzVs1/RIEO5TuxnID3RW0So9nJawj1XiMMvY6MK9Ftt0nz0Rj3iNDR+fmDa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(136003)(366004)(376002)(451199021)(86362001)(478600001)(83380400001)(1076003)(38100700002)(186003)(41300700001)(26005)(33656002)(6916009)(316002)(53546011)(8936002)(8676002)(2906002)(4326008)(6512007)(66556008)(66946007)(6486002)(66476007)(6506007)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5LYKhGH88uciLxAj/JO2OHA0okNIa4CCG9bAYjHw+0Nq7frRjw9Z6aWomyKz?=
 =?us-ascii?Q?tJW9dRZGusGu7d1z8aOcmkUer3cqFkqsqqRpQy/ZsRy02B/qym9wha8Y4Q0A?=
 =?us-ascii?Q?7y0/7e3lylC9xpU1bXfCzuhN648NTj2oWPiQ90RPHYf+C6hoz4jqXRe4eHvw?=
 =?us-ascii?Q?/9dV0UzfwVsKoIBiF1NPdsWD7WtvRSx9rjUlBgAS+6Xn9kmS1esamqOmuoxy?=
 =?us-ascii?Q?COyqg0UlLuBnr29B5/HFQJEGq2uK9S+Q5zLB2gwiLcCEC/uUFTGp7J4Eh5/8?=
 =?us-ascii?Q?L1xp8Giw+FlQocDGWhZ0VMMX4SMB00TcVfXSYWe55zfTA364bmX39gyC3FbD?=
 =?us-ascii?Q?Hsm20oV5M6ra/dqlo6wsYnV0sChGH1o2h8daexZA/xfByCaWGmv0ogFWUxcY?=
 =?us-ascii?Q?Jj30o225lr4hj4Gk280+Kubw0JcPAKJfXzRk8jejrbF6LXueryuUWClsyqbF?=
 =?us-ascii?Q?qBKFwSCWZejOtHroDxT5FM9sMaRnAVtI8wI3ixmk8uwUscP11G+Yc63+hfGk?=
 =?us-ascii?Q?JCh1tyvLvqBoZBKGCbh571+eiVtJlKJtidvz/X3v6QXYdgPCvn0RzC+TB3sY?=
 =?us-ascii?Q?dzypvCgdoHQ4SR0A3/NdJPoP5Pa38O/VcGAmdVjpQ+hCYNdvRX6/K9tTqvOw?=
 =?us-ascii?Q?Sx31jRV9aCDYp4eUTdDZbAyiTCVHg5QoaCYHuIj/ehwdSBR+dUU1zkbw38IJ?=
 =?us-ascii?Q?JdCbs+qigwyzxIpu2SJD+OMYVBj/9vLcyu8KqhIc7I+R3+kz32vplT6VdRoI?=
 =?us-ascii?Q?jnrbbnHhLeiSnkeKlfdW9lZrHHeU/ETXzkHMNVk6RoEY3o301gUTwEWYLUAH?=
 =?us-ascii?Q?k+wF/CmYotESizV2h8ZcDZpFKsSPlRyyj1ewQmBVrrAE0SmW9DJPBb4s5/fu?=
 =?us-ascii?Q?kqD0Cc8iYspEJN6vOoJZzDZw75uLg3k2HdpkFM+wWuk37dTbBHTk03ybKmok?=
 =?us-ascii?Q?Q6ahqMIGHOP1kSBb3NYg9Z9fZZOnKrqEG7By6v1kBFzaRU4D15LdfpXg96lN?=
 =?us-ascii?Q?HmOSzwY9zaKjo64Z1uCffrnJ36bTXnOLBvSVPs8y+DlF3tBUhUN4NAjR7PwN?=
 =?us-ascii?Q?Zo3cLjoNA5Bkg5av4J2YVmCD0nD1ZhCLVNMvA82mrMMMxGJbtvHaHRVRVLxz?=
 =?us-ascii?Q?0wf6zhegQJMvebU6I/gXrHackHfqVYkxyYeZbsQf1ni894e2bscn2Jf9ic84?=
 =?us-ascii?Q?nyjMlBzEu6J0Sj4LbW8IO1rB0+MBLjmVlJlL0YGOW2YOp0JomwosYpJWDYuu?=
 =?us-ascii?Q?/cnazvqImXLqs1j3kqS3jI/Vx31VWhOtnMOJVYiEa3F3qdoZ0uygkSJDeIG3?=
 =?us-ascii?Q?nJVtv4wekT0enRjY3G/JsRpzHzxzSZ/BCEiaJSL6mCVlwfrlDaEAtOaiKUjK?=
 =?us-ascii?Q?A5qWNerlO6ON32yQsFEkI6hM76ETXKzKpVfTiemSHB+ggbqzVcxcEMkwjSFE?=
 =?us-ascii?Q?1uk8Vw41prm9XmJE2Y9lma4KCVOD+dpjHOyjrZZbmnwFoIDxJAf3e2YKhfuj?=
 =?us-ascii?Q?Eg7TFdL5IV1bXQavccxcP9RO696lEg0FYt3N8lLs2QL/RpJWm0TgPQivmShT?=
 =?us-ascii?Q?T5GtfZV8KycJFbAVEwpqTlnX4NHyLKbIchoIVWc5N5aG/VQ+3A62hqZnv1py?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a92b167d-42f9-4cad-d095-08db886c03d9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 15:22:50.7462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wcRAfdvVk2ycSxcoxaK8LSlcZRQtOTqpdcfXSBREHNmpJF1WiHypxkgJbrf8aLilLVrO1mtBejAbFXRIeobQXVd95rzoxvw6JGi3F1DdDIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915: Replace several IS_METEORLAKE
 with proper IP version checks
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

On Wed, Jul 19, 2023 at 08:57:15AM +0100, Tvrtko Ursulin wrote:
> 
> On 18/07/2023 23:28, Matt Roper wrote:
> > Many of the IS_METEORLAKE conditions throughout the driver are supposed
> > to be checks for Xe_LPG and/or Xe_LPM+ IP, not for the MTL platform
> > specifically.  Update those checks to ensure that the code will still
> > operate properly if/when these IP versions show up on future platforms.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_create.c | 4 ++--
> >   drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 4 ++--
> >   drivers/gpu/drm/i915/gt/intel_engine_pm.c  | 2 +-
> >   drivers/gpu/drm/i915/gt/intel_lrc.c        | 4 ++--
> >   drivers/gpu/drm/i915/gt/intel_mocs.c       | 2 +-
> >   drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
> >   drivers/gpu/drm/i915/gt/intel_rps.c        | 2 +-
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c     | 4 ++--
> >   drivers/gpu/drm/i915/i915_debugfs.c        | 2 +-
> >   drivers/gpu/drm/i915/i915_perf.c           | 8 +++++---
> >   10 files changed, 18 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > index d24c0ce8805c..19156ba4b9ef 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> > @@ -405,8 +405,8 @@ static int ext_set_pat(struct i915_user_extension __user *base, void *data)
> >   	BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=
> >   		     offsetofend(struct drm_i915_gem_create_ext_set_pat, rsvd));
> > -	/* Limiting the extension only to Meteor Lake */
> > -	if (!IS_METEORLAKE(i915))
> > +	/* Limiting the extension only to Xe_LPG and beyond */
> > +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70))
> >   		return -ENODEV;
> >   	if (copy_from_user(&ext, base, sizeof(ext)))
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > index 89fc8ea6bcfc..4b003925cc3e 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > @@ -470,9 +470,9 @@ enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> >   					  bool always_coherent)
> >   {
> >   	/*
> > -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> > +	 * Wa_22016122933: always return I915_MAP_WC for Xe_LPM+
> >   	 */
> > -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> > +	if (i915_gem_object_is_lmem(obj) || MEDIA_VER_FULL(i915) == IP_VER(13, 0))
> 
> The helper is global for the driver/device but this makes the response based
> on just one part of the driver which reads dodgy. There is another one in
> __lrc_alloc_state.
> 
> For instance, do these workarounds need to be applied to an object used from
> the render tile? Yes it also was before these change, but now it is not
> obvious to me if and how the ipver of the media tile affects the other tile.

The current driver implementation is a bit overkill and goes beyond
what's actually requested by the workaround.  There are only coherency
issues between the CPU and media, so if an object is only used on the
primary GT (which would be the case for a lot of stuff like GuC0 CTBs
and such), the workaround is not necessary.

The workaround database marks this one as relevant to Xe_LPM+ and _not_
relevant to Xe_LPG.  Also, the hardware team's description even
explicitly notes that this is only necessary for media and that the
primary GT is not impacted.

I pointed this out recently in one of the internal reviews for some of
this code, so I think there may be some optimizations to the
implementation of this workaround coming soon.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> >   		return I915_MAP_WC;
> >   	if (HAS_LLC(i915) || always_coherent)
> >   		return I915_MAP_WB;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index 21af0ec52223..24060278e7a2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > -	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
> > +	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {
> >   		intel_uncore_write(engine->gt->uncore,
> >   				   RC_PSMI_CTRL_GSCCS,
> >   				   _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE));
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 4fefa67d285f..a125c3284bab 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1095,10 +1095,10 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
> >   	if (IS_ERR(obj)) {
> >   		obj = i915_gem_object_create_shmem(engine->i915, context_size);
> >   		/*
> > -		 * Wa_22016122933: For MTL the shared memory needs to be mapped
> > +		 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
> >   		 * as WC on CPU side and UC (PAT index 2) on GPU side
> >   		 */
> > -		if (IS_METEORLAKE(engine->i915))
> > +		if (MEDIA_VER_FULL(engine->i915) == IP_VER(13, 0))
> >   			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
> >   	}
> >   	if (IS_ERR(obj))
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 2c014407225c..830ad2c10761 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -507,7 +507,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
> >   	memset(table, 0, sizeof(struct drm_i915_mocs_table));
> >   	table->unused_entries_index = I915_MOCS_PTE;
> > -	if (IS_METEORLAKE(i915)) {
> > +	if (GT_GRAPHICS_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
> >   		table->size = ARRAY_SIZE(mtl_mocs_table);
> >   		table->table = mtl_mocs_table;
> >   		table->n_entries = MTL_NUM_MOCS_ENTRIES;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index 403f0d9caadf..0714584dd83d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -705,7 +705,7 @@ static int __reset_guc(struct intel_gt *gt)
> >   static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t engine_mask)
> >   {
> > -	if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
> > +	if (MEDIA_VER_FULL(gt->i915) != IP_VER(13, 0) || !HAS_ENGINE(gt, GSC0))
> >   		return false;
> >   	if (!__HAS_ENGINE(engine_mask, GSC0))
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> > index e92e626d4994..89775328440e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> > @@ -1160,7 +1160,7 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
> >   {
> >   	struct drm_i915_private *i915 = rps_to_i915(rps);
> > -	if (IS_METEORLAKE(i915))
> > +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
> >   		return mtl_get_freq_caps(rps, caps);
> >   	else
> >   		return __gen6_rps_get_freq_caps(rps, caps);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 300b968e6de8..310d12dc7077 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -743,10 +743,10 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
> >   		return ERR_CAST(obj);
> >   	/*
> > -	 * Wa_22016122933: For MTL the shared memory needs to be mapped
> > +	 * Wa_22016122933: For Xe_LPM+ the shared memory needs to be mapped
> >   	 * as WC on CPU side and UC (PAT index 2) on GPU side
> >   	 */
> > -	if (IS_METEORLAKE(gt->i915))
> > +	if (MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0))
> >   		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
> >   	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > index 4de44cf1026d..0a0217271b76 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
> >   {
> >   	struct drm_i915_private *i915 = obj_to_i915(obj);
> > -	if (IS_METEORLAKE(i915)) {
> > +	if (GT_GRAPHICS_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
> >   		switch (obj->pat_index) {
> >   		case 0: return " WB";
> >   		case 1: return " WT";
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index ff95f2cdf2b0..cc9592d4de23 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -3227,11 +3227,13 @@ get_sseu_config(struct intel_sseu *out_sseu,
> >    */
> >   u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
> >   {
> > +	struct intel_gt *gt = to_gt(i915);
> > +
> >   	/*
> >   	 * Wa_18013179988:dg2
> > -	 * Wa_14015846243:mtl
> > +	 * Wa_14015846243:xelpg
> >   	 */
> > -	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
> > +	if (IS_DG2(i915) || GT_GRAPHICS_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
> >   		intel_wakeref_t wakeref;
> >   		u32 reg, shift;
> > @@ -4539,7 +4541,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >   static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >   {
> > -	if (IS_METEORLAKE(perf->i915))
> > +	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> >   		return reg_in_range_table(addr, mtl_oa_mux_regs);
> >   	else
> >   		return reg_in_range_table(addr, gen12_oa_mux_regs);

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
