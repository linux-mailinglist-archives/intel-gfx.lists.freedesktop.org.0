Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9061412E42
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 07:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4AF36E8F8;
	Tue, 21 Sep 2021 05:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746DB6E8F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 05:41:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="223333958"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="223333958"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 22:40:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="435768322"
Received: from twallyn-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.83.37])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 22:40:59 -0700
Date: Mon, 20 Sep 2021 22:40:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20210921054059.6uvunpy3o76izjj4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <20201027044618.719064-3-lucas.demarchi@intel.com>
 <160448371454.8986.12904696092648361290@jlahtine-mobl.ger.corp.intel.com>
 <20201105010422.l2mum5gep7dxva5f@ldmartin-desk1.jf.intel.com>
 <160456334665.5393.4671076622521791518@jlahtine-mobl.ger.corp.intel.com>
 <20210706234430.nm64jerbt3kkoeue@ldmartin-desk2>
 <20210907215621.ylgf3dwqpj6rtoxa@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210907215621.ylgf3dwqpj6rtoxa@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: remove some debug-only
 registers from MCHBAR
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 07, 2021 at 02:56:21PM -0700, Lucas De Marchi wrote:
>On Tue, Jul 06, 2021 at 04:44:30PM -0700, Lucas De Marchi wrote:
>>On Thu, Nov 05, 2020 at 10:02:27AM +0200, Joonas Lahtinen wrote:
>>>Quoting Lucas De Marchi (2020-11-05 03:04:22)
>>>>On Wed, Nov 04, 2020 at 11:55:15AM +0200, Joonas Lahtinen wrote:
>>>>>Quoting Lucas De Marchi (2020-10-27 06:46:18)
>>>>>>GT_PERF_STATUS and RP_STATE_LIMITS were added a long time ago in
>>>>>>commit 3b8d8d91d51c ("drm/i915: dynamic render p-state support for Sandy
>>>>>>Bridge").  Other than printing their values in debugfs we don't do
>>>>>>anything with them.  There's not much useful information in them. These
>>>>>>registers may change location in future platforms, but instead of adding
>>>>>>new locations, it's simpler to just remove them.
>>>>>
>>>>>This code seems to have been updated for Gen9LP, so that would indicate
>>>>>the debugging information is useful, right? The value is even decoded, not
>>>>>simply dumped as most registers. So I would be hesitant to drop it for
>>>>>not being useful.
>>>>
>>>>but just updating the register in itself for a new gen doesn't mean it's
>>>>actually useful... the commit message where this happened is pretty
>>>>vague: 350405623ff3 ("drm/i915: Update rps frequencies for BXT")
>>>>
>>>>My first reaction would be to do the same if the register had moved or
>>>>if it ceased to exist in a new platform. Talking with Matt Roper some
>>>>time ago we arrived to the conclusion that just printing these values is
>>>>not giving us much benefit and it could very well be accomplished by
>>>>intel_reg.
>>>>
>>>>So answering the question:  is it really useful as is? IMO, no.
>>>
>>>A quick discussion on #intel-gfx seems to indicate it was used for
>>>bug triaging in the past year. So that would indicate it is still
>>>useful to include.
>>
>>getting back to this as we are trying to upstream XeHP-SDV that doesn't
>>have access to the MCHBAR. So do you think we should just make it
>>conditional instead of removing?
>>
>>I'm still on the side that this additional code doesn't bring much value
>>and could be replaced by intel-reg.
>
>ping?
>
>>
>>>
>>>So let's not remove it.
>>>
>>>>>The second question is why we have a huge block of 1-to-1 duplicated
>>>>>code in there. Has there been an incorrect merge or some transition has
>>>>>been left mid-way?

the deduplication has now being merged together with fixing of the file
names: https://patchwork.freedesktop.org/series/94827/

Back to the previous question...  Does the silence here mean
there is no interest to block this anymore?

As noted by me and Matt Roper there is very little value in keeping
this. Even if it was used once in a year for bug triaging, it could very
well had used intel_reg - this is just adding to the maintenance
burden for new platforms. Who used it so I can talk to the person to
understand the gap?  Adding some more people in Cc who could possibly
know.

thanks
Lucas De Marchi

>>>>
>>>>not a bad merge, no. It seems to be to preserve the previous file
>>>>location since now it moved to be inside a gt dir. Long term I think
>>>>this is bad both because of the code duplication and because it's easy
>>>>to update one and forget the other.
>>>
>>>I started a discussion in the thread of the original patch which called
>>>to move code but left the old code in place too, effectively copying it.
>>>
>>>When this path was written and such code duplication noticed, would have
>>>been good to highlight or address the code duplication.
>>
>>yes, but it doesn't mean there will be an action regarding that, as can
>>be noticed since that duplication is still there today and this patch
>>applies cleanly :-/... and they had slightly different changes according
>>to
>>
>>	git log -L:frequency_show:drivers/gpu/drm/i915/gt/debugfs_gt_pm.c \
>>		-L:i915_frequency_info:drivers/gpu/drm/i915/i915_debugfs.c
>
>Just took a look for a potential deduplication fix there:
>https://patchwork.freedesktop.org/series/94455/
>
>Lucas De Marchi
