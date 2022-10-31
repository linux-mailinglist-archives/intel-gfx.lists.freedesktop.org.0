Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57A36132CC
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 10:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE5010E162;
	Mon, 31 Oct 2022 09:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BE910E162
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 09:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667208874; x=1698744874;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CYMBcIpgKxHEmrcVOcxIpaeZVaGASLLFQa9Fy7T89y4=;
 b=JgSMrL63fPXx6vNW7QORue/Wqy9Jsk0N1lU2KSWgXIYSXA47irkVAZ9i
 lk8HV/um580QFr5WbFjEq+YCtGhLJb4w/oHMXmzW/qaMhnRlXWpbhfuSq
 17MeUdk/+EuoJyRmhzviNn7Dh9FEOCf4tzQ48amneq4l/eqt5dV8JxM0w
 C8FvX6rt+O2XlhTqJiydXsUxyYDWBWcBvvi5dD1Fk8FtSlXEmeNzIdsFh
 IrWlTnl8NcYwhFtnCjjWMcebhmNGpvDErBBWxgo5nbz1FHm4Hf9y0XIk6
 jmyuplSk2RcwlaWSKz2JfUCsme1Vv4y+iiBMs5NlkHsFbSZndbI/eo8EY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="307581671"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="307581671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 02:34:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="611429931"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="611429931"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 31 Oct 2022 02:34:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 02:34:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 02:34:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 02:34:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VoHFpNH3w5nIUOBg0MIDGUD+tM6OoBTyJHCwKxb/sXsqt0FVHwOv0oV6f9t+4sP598BY+65avTZhomSEiTg5qb0ybtkTaYKAybUZYQDVkLmr/V8JasdAugPJTcL1UsBFQM4ev/1ZF3S7dmNgnfsiOOOaa4GR2l4NohZE8JFiPoLxSQRDFVUQI2+19zWDzzKpxcYV7QRId+cNZ0RwNmwmD6bGXV7L4t5jxvDmhM5Oi6+4URYQHeFGl6G9QjMNxJrOqWgRjgnv2UbPe/nQzeEB4YtyEfyolEzjJgvEspgl8ETt++Cf4qdLd1B1eDRAtsk1edSlUZIu+8BaSprVhjdLbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaDNHphS1l7zsEsXLicJKREgiLaMLaWgbm7Xqh9IUBQ=;
 b=ZUOl/ymagmTC4Mwx2P4b8jRMErJhjDPg7M9e9Jhyt8+lQhYO3anzVNlJ0cY1pitFgrIGdJAAr3Np9gj4B0Oe/zHmc6XaMG9yk9MASP6fwKPGTbFZ4X1ZWhaxLBKhVILiTkkMcth80GcAnITfyHMLXvQ7O5OE2HOhYGPyWjv/ieYNsayjTl7ILvSe8s5CQEofKL9/IGuJ66iV+DScyHEGwxkwdhRZaFARzgtVLKsQo8Rqh5NKCQ3tnEsl1OILRL9I/j4a/yclL/KgFkAlFJ2PwuLH0ZIq5ar/67L2R07lXtD4Qf3oHBlh/rMO/UOQJyL24DzU6UMvKnT7aJmlkn3OMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5378.namprd11.prod.outlook.com (2603:10b6:610:b9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 09:34:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d%4]) with mapi id 15.20.5769.015; Mon, 31 Oct 2022
 09:34:30 +0000
Date: Mon, 31 Oct 2022 05:34:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <Y1+WorQeeZQDwcOr@intel.com>
References: <20220923143125.5768-1-anshuman.gupta@intel.com>
 <20221021095525.788221-1-anshuman.gupta@intel.com>
 <ce8f70da-23c3-9218-895a-62baebdb6678@intel.com>
 <CY5PR11MB6211B29B3F482D8FD741F51C95379@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6211B29B3F482D8FD741F51C95379@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0P220CA0014.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5378:EE_
X-MS-Office365-Filtering-Correlation-Id: d55740ea-0a41-4c61-7cca-08dabb231c6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r/Z7+5dCwYhQfaJ3KtxmWnwBpFX+8uWCSTVXpn3SSfOvhDI+DGdu5N21be79ITRbOf1crXPeIwlZHiSwOUpiBpLuUoZYWuSSs5/vm87T8SqDEBwNB4snZ6ZqiG/UelFLBjBl2WBH6HRo3V3DophqehawMfAGqEVFqmhJrt+fuYTJ4QjuFW1vaq5FajdVguv+lTnPeoxo+TIRIfrptXR54V3eoyfc++SK9EgGKK0qiVi2vMksz1/iCqyqq+me7LlgHL1ZGN8MfaCVt1yaTCCwk3BGsX1W+fymByEJNkU1BDU/qkfYZanF+ajMpesAEMAypa1NOrddo4cCyx4ModL7p+x+3Kx+SO9HYU8NteNw5VkCq0586MB36M3xv2AbaDJ3FFm1RjZkdTksNdItt/LvyeRBThqGYLW8UDF45gB5fezl4uf4y34rdMeldRxQ0xvhq9WC+hlotatnzG8gRlnmSpmQ9Wa8wdm2XoMb1fNZE+Wy1RZO6qqj/50kujHAjuUThDb/GLfDKbFavEIvb4VkNEpIr5QkxH2ZQgFl2mtCoakLB9mJ8D16iTJnIn3NyVEypvvBM19HmMCbzGRfpRNHNFmyCcC7DfT+IZvkYex7sjV+Sa7z4OQUTZHEe3F5O9YZNr7ROToaltxnx8mK0g9kj9sAWMNa6Ybcp01tMZ44vjh6Qj8B4Q1WKL/QkvyWWupIlJJMHZocU56rI7uTtnhAea6YtQ3gDcy8GsU3Ieb2hzMqfhOuaB4EEL3v5qFaF5oH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(346002)(376002)(39860400002)(451199015)(44832011)(2616005)(186003)(8676002)(66556008)(66476007)(66946007)(4326008)(6636002)(54906003)(6666004)(37006003)(316002)(36756003)(6512007)(26005)(5660300002)(30864003)(86362001)(6862004)(53546011)(8936002)(6506007)(41300700001)(6486002)(83380400001)(478600001)(38100700002)(82960400001)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AfTyEUhzA7AWMDl+u2ZxqHlxIk1tqSpp1IMrbwBw/xcYieWly2UF7ZkaaMlT?=
 =?us-ascii?Q?og1Dnj1y4hOh6Xu6dawYkrPOl7EK+UuxyfUQorMnvyw7BOSvkQzqwz5ghWvD?=
 =?us-ascii?Q?9iYosma12o0N3gYoKTL5fPTKPWyIAk4WM6UKKozyJAYer7FQrsvldO30dZJW?=
 =?us-ascii?Q?KOoVR/m/TQZ1+rd7lrEr1vFKdQfmHfKc5UwmK+Y0N0wm+r/ozA7tJ1MbgWRi?=
 =?us-ascii?Q?yRhFinl20tsAawYddjZ2zgWDxku+OQfEDNuJfm6e/IdKiNHbpxVjmnRoYErF?=
 =?us-ascii?Q?RyPkuUpn0lyVvEDqpIcZPxhsmud9lkCLUVQCd45UEU6j35hcwls2VT0cefAY?=
 =?us-ascii?Q?x+yW/rRsiauzpQvo91H6aY663VNImfPpVr5FzpJ+KkBcnIbkslA0i3s+QpaG?=
 =?us-ascii?Q?XHnhPNHkZ8EFXtreKAdEGVfRRbaeHZW3/aq48mBWNrMzX9oHDm9vBp79IBzY?=
 =?us-ascii?Q?y9VzqSeWIL0w2u1pEoPD06kVlcNrzKQ0v4VklcxNlvQM7YpRXTKlMaRn2spC?=
 =?us-ascii?Q?azUSEAIsZ+jNgiZqtMMnKGaXKrXc9VzWCKYcTq41CgmeJqXCEyUdVKCN+j39?=
 =?us-ascii?Q?9JyDIawc9Dy4jdEniVthIoQEAnD5k1z/UCr8Op/1MzfaIzKzcmz1hH2qddOD?=
 =?us-ascii?Q?Z6/ajjg5/BRwIzV7i6MtbqOaCC30U64sYrAY2IJ4Q2p4ANDdwZqdfHgT5qKI?=
 =?us-ascii?Q?FQKI8Wr421z+K4ph+ZLcOqI7IoPp4LXGA1alpsfE+QhLJ2BggmbKwYA3e7YK?=
 =?us-ascii?Q?olki/jjX903ETTFMhxqffkLJakvAbbZdur/rdYME/RMjRMCy0PuHiUc7WT06?=
 =?us-ascii?Q?xtSrByQNA3KE54p/SXqyYOAHRYh4d283pNr3s9oqfECfqgpRlf6cRJu6M7+h?=
 =?us-ascii?Q?u4juUjdSvAlv7kTSNObSvCftoDjjMC37SokJjmGQlQN+ElUHVasms97Xintw?=
 =?us-ascii?Q?fHabfrziZgSkTu9+aahk7+JHmbyeWOwxeQAKvL4qyGSPZEpMripLktDOkNnB?=
 =?us-ascii?Q?lHb5N6VcWN0oxlU2J41o2x2jzNI/6Afh9+B8Yp0D1pLlsBjx/wk9QmI+7Ko/?=
 =?us-ascii?Q?bkVt46ScVi1RXnVj7E9WfmLFXmqVwxdzMKkXDgqw1WkpGa12C8idc4N4mcya?=
 =?us-ascii?Q?zhmIEsc2fubRNqYGq3CJk6LV+ZHjctrp8plqyq46H8FVcpykj7zqyXRBSpz9?=
 =?us-ascii?Q?IBddbpy3wAa8ThLMyoBWAfaMHNZSZJXI7UKFwlf8BFynRFZsFj0b8f+2B+5w?=
 =?us-ascii?Q?h8h6OBbUlbTCNAm2kyumdkxptOjm8dRqBe1gOLWH2VrZ1FtrsmpR2+Plq6So?=
 =?us-ascii?Q?08DbwExxrGF4pJXIWR/wfNC4ajDtUBS+8plJ5UOcwvYB6kTBXe7oP+sEr0qW?=
 =?us-ascii?Q?9vphzTmCle56E5GB7t9MAUCxiHc5AXULlO43zOEHK5b3fPWFOYlkXi8WCCUi?=
 =?us-ascii?Q?tdFvlppcbE03JzLJw8YM2mNfLLs5EVUCgPcOVO/hUS6FjjE0NVjwIxc6IGkf?=
 =?us-ascii?Q?MtA4/+h7c/VGijwixYDA99s0ja5jro697AI9CA8xqb9hjPnpJq7NWiR8qp14?=
 =?us-ascii?Q?ij/a98aeFhKHan5FidNgJuzWCLH/AbNQcFh9LzmJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d55740ea-0a41-4c61-7cca-08dabb231c6d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 09:34:30.5438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wmpiESCQGEYLcp7nMz5hVueAi/ZjxeqCrK0KFxevrzjRUNLj9ZrALaV96VFZuIvnEvVIPPY0DImAgIkSH4JUOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5378
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Encapsulate lmem rpm stuff
 in intel_runtime_pm
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 31, 2022 at 02:42:09AM -0400, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Auld, Matthew <matthew.auld@intel.com>
> > Sent: Monday, October 24, 2022 7:30 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: tvrtko.ursulin@linux.intel.com; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Subject: Re: [PATCH v2 1/2] drm/i915: Encapsulate lmem rpm stuff in
> > intel_runtime_pm
> > 
> > On 21/10/2022 10:55, Anshuman Gupta wrote:
> > > Runtime pm is not really per GT, therefore it make sense to move
> > > lmem_userfault_list, lmem_userfault_lock and userfault_wakeref from
> > > intel_gt to intel_runtime_pm structure, which is embedded to i915.
> > >
> > > No functional change.
> @rodrigo could you please provide the Ack on the patch.

not needed :)

I had seen the patch and it does make sense to me, but I have
not comment because it already had the rv-b from Matt.


Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> Thanks,
> Anshuman.
> > >
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gem/i915_gem_mman.c |  6 +++---
> > >   drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  2 +-
> > >   drivers/gpu/drm/i915/gem/i915_gem_ttm.c  |  8 ++++----
> > >   drivers/gpu/drm/i915/gt/intel_gt.c       |  3 ---
> > >   drivers/gpu/drm/i915/gt/intel_gt_types.h | 17 -----------------
> > >   drivers/gpu/drm/i915/i915_gem.c          |  4 +---
> > >   drivers/gpu/drm/i915/intel_runtime_pm.c  |  5 +++++
> > >   drivers/gpu/drm/i915/intel_runtime_pm.h  | 22
> > ++++++++++++++++++++++
> > >   8 files changed, 36 insertions(+), 31 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > index 73d9eda1d6b7..fd29a9053582 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> > > @@ -413,7 +413,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault
> > *vmf)
> > >   	vma->mmo = mmo;
> > >
> > >   	if (CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> > > -		intel_wakeref_auto(&to_gt(i915)->userfault_wakeref,
> > > +		intel_wakeref_auto(&i915->runtime_pm.userfault_wakeref,
> > >
> > >
> > msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> > );
> > >
> > >   	if (write) {
> > > @@ -589,9 +589,9 @@ void
> > i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
> > >   	spin_unlock(&obj->mmo.lock);
> > >
> > >   	if (obj->userfault_count) {
> > > -		mutex_lock(&to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_lock);
> > > +
> > > +mutex_lock(&to_i915(obj->base.dev)-
> > >runtime_pm.lmem_userfault_lock);
> > >   		list_del(&obj->userfault_link);
> > > -		mutex_unlock(&to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_lock);
> > > +
> > > +mutex_unlock(&to_i915(obj->base.dev)-
> > >runtime_pm.lmem_userfault_lock)
> > > +;
> > >   		obj->userfault_count = 0;
> > >   	}
> > >   }
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > > index e5bfb6be9f7a..0d812f4d787d 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > > @@ -27,7 +27,7 @@ void i915_gem_suspend(struct drm_i915_private
> > *i915)
> > >
> > >   	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
> > >
> > > -	intel_wakeref_auto(&to_gt(i915)->userfault_wakeref, 0);
> > > +	intel_wakeref_auto(&i915->runtime_pm.userfault_wakeref, 0);
> > >   	flush_workqueue(i915->wq);
> > >
> > >   	/*
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > index 84c91a4228a1..50c70796ca38 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > @@ -1101,13 +1101,13 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
> > *vmf)
> > >   	/* ttm_bo_vm_reserve() already has dma_resv_lock */
> > >   	if (ret == VM_FAULT_NOPAGE && wakeref && !obj-
> > >userfault_count) {
> > >   		obj->userfault_count = 1;
> > > -		mutex_lock(&to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_lock);
> > > -		list_add(&obj->userfault_link, &to_gt(to_i915(obj-
> > >base.dev))->lmem_userfault_list);
> > > -		mutex_unlock(&to_gt(to_i915(obj->base.dev))-
> > >lmem_userfault_lock);
> > > +		mutex_lock(&to_i915(obj->base.dev)-
> > >runtime_pm.lmem_userfault_lock);
> > > +		list_add(&obj->userfault_link, &to_i915(obj->base.dev)-
> > >runtime_pm.lmem_userfault_list);
> > > +
> > > +mutex_unlock(&to_i915(obj->base.dev)-
> > >runtime_pm.lmem_userfault_lock)
> > > +;
> > >   	}
> > >
> > >   	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> > > -		intel_wakeref_auto(&to_gt(to_i915(obj->base.dev))-
> > >userfault_wakeref,
> > > +
> > > +intel_wakeref_auto(&to_i915(obj->base.dev)-
> > >runtime_pm.userfault_wake
> > > +ref,
> > >
> > >
> > msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> > );
> > >
> > >   	i915_ttm_adjust_lru(obj);
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > index 27dbb9e4bd6c..0ad8118ccbee 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > @@ -40,8 +40,6 @@ void intel_gt_common_init_early(struct intel_gt *gt)
> > >   {
> > >   	spin_lock_init(gt->irq_lock);
> > >
> > > -	INIT_LIST_HEAD(&gt->lmem_userfault_list);
> > > -	mutex_init(&gt->lmem_userfault_lock);
> > >   	INIT_LIST_HEAD(&gt->closed_vma);
> > >   	spin_lock_init(&gt->closed_lock);
> > >
> > > @@ -859,7 +857,6 @@ static int intel_gt_tile_setup(struct intel_gt *gt,
> > phys_addr_t phys_addr)
> > >   	}
> > >
> > >   	intel_uncore_init_early(gt->uncore, gt);
> > > -	intel_wakeref_auto_init(&gt->userfault_wakeref, gt->uncore-
> > >rpm);
> > >
> > >   	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
> > >   	if (ret)
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > index 64aa2ba624fc..ff9251807f5c 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > @@ -144,20 +144,6 @@ struct intel_gt {
> > >   	struct intel_wakeref wakeref;
> > >   	atomic_t user_wakeref;
> > >
> > > -	/**
> > > -	 *  Protects access to lmem usefault list.
> > > -	 *  It is required, if we are outside of the runtime suspend path,
> > > -	 *  access to @lmem_userfault_list requires always first grabbing the
> > > -	 *  runtime pm, to ensure we can't race against runtime suspend.
> > > -	 *  Once we have that we also need to grab @lmem_userfault_lock,
> > > -	 *  at which point we have exclusive access.
> > > -	 *  The runtime suspend path is special since it doesn't really hold any
> > locks,
> > > -	 *  but instead has exclusive access by virtue of all other accesses
> > requiring
> > > -	 *  holding the runtime pm wakeref.
> > > -	 */
> > > -	struct mutex lmem_userfault_lock;
> > > -	struct list_head lmem_userfault_list;
> > > -
> > >   	struct list_head closed_vma;
> > >   	spinlock_t closed_lock; /* guards the list of closed_vma */
> > >
> > > @@ -173,9 +159,6 @@ struct intel_gt {
> > >   	 */
> > >   	intel_wakeref_t awake;
> > >
> > > -	/* Manual runtime pm autosuspend delay for user GGTT/lmem
> > mmaps */
> > > -	struct intel_wakeref_auto userfault_wakeref;
> > > -
> > >   	u32 clock_frequency;
> > >   	u32 clock_period_ns;
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_gem.c
> > > b/drivers/gpu/drm/i915/i915_gem.c index 55d605c0c55d..299f94a9fb87
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_gem.c
> > > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > @@ -843,7 +843,7 @@ void i915_gem_runtime_suspend(struct
> > drm_i915_private *i915)
> > >   		__i915_gem_object_release_mmap_gtt(obj);
> > >
> > >   	list_for_each_entry_safe(obj, on,
> > > -				 &to_gt(i915)->lmem_userfault_list,
> > userfault_link)
> > > +				 &i915->runtime_pm.lmem_userfault_list,
> > userfault_link)
> > >   		i915_gem_object_runtime_pm_release_mmap_offset(obj);
> > >
> > >   	/*
> > > @@ -1227,8 +1227,6 @@ void i915_gem_driver_remove(struct
> > drm_i915_private *dev_priv)
> > >   	struct intel_gt *gt;
> > >   	unsigned int i;
> > >
> > > -	intel_wakeref_auto_fini(&to_gt(dev_priv)->userfault_wakeref);
> > > -
> > >   	i915_gem_suspend_late(dev_priv);
> > >   	for_each_gt(gt, dev_priv, i)
> > >   		intel_gt_driver_remove(gt);
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > index 744cca507946..bb74d4975cc8 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > @@ -633,6 +633,8 @@ void intel_runtime_pm_driver_release(struct
> > intel_runtime_pm *rpm)
> > >   						     runtime_pm);
> > >   	int count = atomic_read(&rpm->wakeref_count);
> > >
> > > +	intel_wakeref_auto_fini(&rpm->userfault_wakeref);
> > > +
> > >   	drm_WARN(&i915->drm, count,
> > >   		 "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
> > >   		 intel_rpm_raw_wakeref_count(count),
> > > @@ -652,4 +654,7 @@ void intel_runtime_pm_init_early(struct
> > intel_runtime_pm *rpm)
> > >   	rpm->available = HAS_RUNTIME_PM(i915);
> > >
> > >   	init_intel_runtime_pm_wakeref(rpm);
> > > +	INIT_LIST_HEAD(&rpm->lmem_userfault_list);
> > > +	mutex_init(&rpm->lmem_userfault_lock);
> > > +	intel_wakeref_auto_init(&rpm->userfault_wakeref, rpm);
> > >   }
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > index d9160e3ff4af..d0c04af2a6f3 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > @@ -53,6 +53,28 @@ struct intel_runtime_pm {
> > >   	bool irqs_enabled;
> > >   	bool no_wakeref_tracking;
> > >
> > > +	/**
> > 
> > Nit: that's not properly formatted kernel-doc.
> > 
> > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> > 
> > > +	 *  Protects access to lmem usefault list.
> > > +	 *  It is required, if we are outside of the runtime suspend path,
> > > +	 *  access to @lmem_userfault_list requires always first grabbing the
> > > +	 *  runtime pm, to ensure we can't race against runtime suspend.
> > > +	 *  Once we have that we also need to grab @lmem_userfault_lock,
> > > +	 *  at which point we have exclusive access.
> > > +	 *  The runtime suspend path is special since it doesn't really hold any
> > locks,
> > > +	 *  but instead has exclusive access by virtue of all other accesses
> > requiring
> > > +	 *  holding the runtime pm wakeref.
> > > +	 */
> > > +	struct mutex lmem_userfault_lock;
> > > +
> > > +	/*
> > > +	 *  Keep list of userfaulted gem obj, which require to release their
> > > +	 *  mmap mappings at runtime suspend path.
> > > +	 */
> > > +	struct list_head lmem_userfault_list;
> > > +
> > > +	/* Manual runtime pm autosuspend delay for user GGTT/lmem
> > mmaps */
> > > +	struct intel_wakeref_auto userfault_wakeref;
> > > +
> > >   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > >   	/*
> > >   	 * To aide detection of wakeref leaks and general misuse, we
