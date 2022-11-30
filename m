Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C16AB63D112
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 09:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD1410E41B;
	Wed, 30 Nov 2022 08:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1056B10E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 08:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669798240; x=1701334240;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g7z4wAn56DRBtTNuWadgIAWWEf+aHZUofr+dzVSS22M=;
 b=PON7BOJERD7urBNdXrD80WCmAuW0UXbNGf+mtR+HpzFEXR0RcUBo/ZW7
 umrYrSCIfCckAFpdaklg8GTH7Lr0hy8D3rnbhwGCR282TpVReURc5yyaU
 i/goTIAjQvBWBGGHm9k+C2ircO0mUzUs58NuDEAqsalR9vEOM6QnBRlp5
 iK9HBy9qLOfbgknojdbI5LQgaJDKG8mfgfIFl0xXEp0iVjkjdLkrOSl7m
 BU5iuUfTWJwARhvvJdr5NdTDlGVSpuD+L8nkrMurRwJ1u6iapdl7t+0cq
 ZGDPy7tW3MGW36amJkpjmdrQMCJniNmBX6vgr0JfB59LU4FbXEqOUwIHQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="379621626"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="379621626"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:50:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="594587223"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="594587223"
Received: from mromao-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.224])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:50:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
In-Reply-To: <f7eeaed53842bdcae62e3fec9dc3fc879189afd5.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
 <Y4Z5ajHrt3hllvUZ@intel.com>
 <f7eeaed53842bdcae62e3fec9dc3fc879189afd5.camel@intel.com>
Date: Wed, 30 Nov 2022 10:50:34 +0200
Message-ID: <87lens3jxh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

On Wed, 30 Nov 2022, "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com> wrote:
> ++Nikula if he has suggestions on the bottom most comment.
>
> On Tue, 2022-11-29 at 16:28 -0500, Vivi, Rodrigo wrote:
>> On Mon, Nov 28, 2022 at 04:31:52PM -0800, Alan Previn wrote:
>> > Starting with MTL, there will be two GT-tiles, a render and media
>> > tile. PXP as a service for supporting workloads with protected
>> > contexts and protected buffers can be subscribed by process
>> > workloads on any tile. However, depending on the platform,
>> > only one of the tiles is used for control events pertaining to PXP
>> > operation (such as creating the arbitration session and session
>> > tear-down). In the case of MTL, this is the media-tile.
>>
>> Imho this patch shows that having the pxp under i915 instead of gt
>> is the right way to go.
>>
> Alan: yes, agreed.
>
>> but I have a few comments and doubts below...
>>
>> >
>> >
> Alan: [snip]
>
>> > @@ -138,31 +144,63 @@ static void pxp_init_full(struct intel_pxp *pxp)
>> >     destroy_vcs_context(pxp);
>> >  }
>> >
>> > -void intel_pxp_init(struct intel_pxp *pxp)
>> > +static struct intel_gt *pxp_get_kcr_owner_gt(struct drm_i915_private *i915)
>>
>> pxp_get_ctrl_gt or pxp_get_serving_gt sounds better in my opinion...
>> what's "owner"?
>>
> Alan: Sure- will change to pxp_get_ctrl_gt (as per the name in the header file).
>
>> >  {
>> > -   struct intel_gt *gt = pxp_to_gt(pxp);
>> > +   struct intel_gt *gt = NULL;
>> > +   int i = 0;
>> > +
>> > +   for_each_gt(gt, i915, i) {
>> > +           /* There can be only one GT that supports PXP */
>> > +           if (HAS_ENGINE(gt, GSC0))
>> > +                   return gt;
>> > +   }
>> >
>> >     /* we rely on the mei PXP module */
>> > -   if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>> > -           return;
>> > +   if (IS_ENABLED(CONFIG_INTEL_MEI_PXP))
>> > +           return &i915->gt0;
>> > +
>> > +   return NULL;
>> > +}
>> > +
>> > +int intel_pxp_init(struct intel_pxp **pxp_store_ptr)
>>
>> Please let's avoid the ** here and everywhere.
>>
> Alan: In order to to avoid causing the entire driver into a rebuild because of any change in the intel_pxp structure,
> the only way to accomplish that is to use a ptr in i915. But using a ptr means we allocate the memory at init time and
> free it at fini time and those 2 cases would require the ptr-to-ptr to ensure we get the correct store. The only way i
> can avoid the ** is be passing i915 as the param and then populating the ptr via i915->pxp. Would this work?

In general, one of two approaches should be used:

1) The caller takes care of storing/clearing the pointer:

struct intel_pxp *intel_pxp_init(void);
void intel_pxp_fini(struct intel_pxp *pxp);

2) The callee takes care of storing/clearing the pointer:

int intel_pxp_init(struct drm_i915_private *i915);
void intel_pxp_fini(struct drm_i915_private *i915);

Passing pointers to pointers is not as clean.

In this case, I'd choose 2) just because it's being called at the high
level, and it's pretty much in line with everything else.



BR,
Jani.


>
>> >
>> >
> Alan:[snip]
>
>> > @@ -12,12 +12,23 @@
>> >  #include <linux/workqueue.h>
>> >
>> >  struct intel_context;
>> > +struct intel_gt;
>> >  struct i915_pxp_component;
>> > +struct drm_i915_private;
>> >
>> >  /**
>> >   * struct intel_pxp - pxp state
>> >   */
>> >  struct intel_pxp {
>> > +   /** @i915: back poiner to i915*/
>> > +   struct drm_i915_private *i915;
>>
>> do you really need this pointer back here?
>> or using a container_of should be enough?
>>
> Alan: this is the same thing for above. We can use container_of if the caller passes the ptr-to-ptr ... if caller only
> passes the pxp ptr, it will be passing, by reference, an allocated address. The only way I can think of to avoid this
> is by dropping the ptr-to-ptr method and therefore pulling in the pxp type header into drm_i915_private header file -
> which is againts the direction we are trying to head towards. (cc-ing Nikula is he has some ideas on this)
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
