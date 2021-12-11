Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8BE4711E9
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 06:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68FA910E7AA;
	Sat, 11 Dec 2021 05:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B8D10E7AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Dec 2021 05:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639200486; x=1670736486;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CrvxXgp4b88OWskC+GUByAV/CXDMAR7d1OU6ca758qY=;
 b=HME2IIAmJzjiHioa/mQtZBfLPCbREjF+6kOUITtzsIsaC41AsZbPi7D7
 aNyme9cJetmDFKWj4SV/KI6UExpmeOtX4f0wI2Rb3wybMulVp9RawI0fW
 dO+Fs6PKf48/smzk3OxT8OEvdaX9WN3mERNKyX0Typihm6JEpkauMpb/b
 eTfVJ7UX7+v6bLVB7VNeWOoNkLIc9P+FcW+ldl5iqAgGp9mb1q7eiycUb
 LkS0G7oilhIeUKXT5MpnC0ogRCvlI9Pbba0Wddh8vL2eTre1/CM/9AFL/
 TBLqQOo3pm0hl9BP7Bf5x+D0d+njW31JpROhtG/jTmb0veFq27eFB9QBH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="225372623"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="225372623"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 21:28:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="462789222"
Received: from bnail-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.70.96])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 21:28:05 -0800
Date: Fri, 10 Dec 2021 21:28:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20211211052805.n7mgfjlijet5v4c2@ldmartin-desk2>
References: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
 <20211209172139.jze46pphfosafv62@ldmartin-desk2>
 <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [v2] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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
Cc: ravitejax.goud.talla@intel.com, hariom.pandey@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 10, 2021 at 05:22:54PM -0800, Matt Roper wrote:
>On Thu, Dec 09, 2021 at 09:21:39AM -0800, Lucas De Marchi wrote:
>> On Fri, Dec 03, 2021 at 08:26:03PM +0530, ravitejax.goud.talla@intel.com wrote:
>> > From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>> >
>> > Bspec page says "Reset: BUS", Accordingly moving w/a's:
>> > Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
>> > Which will resolve guc enabling error
>> >
>> > v2:
>> >  - Previous patch rev2 was created by email client which caused the
>> >    Build failure, This v2 is to resolve the previous broken series
>> >
>> > Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>> > Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>>
>> It seems like this patch is needed to be able to load GuC in ICL:
>> https://gitlab.freedesktop.org/drm/intel/-/issues/4067#note_1184951
>>
>> And that is failing on Linus' master branch as of
>> 2a987e65025e ("Merge tag 'perf-tools-fixes-for-v5.16-2021-12-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")
>> and (at least) 5.15.*. Looking at the appropriate "Fixes" tag I found these commits:
>>
>>   1) 1cd21a7c5679 ("drm/i915: Add Wa_1407352427:icl,ehl") - original
>>      commit adding the WA
>>   2) 3551ff928744 ("drm/i915/gen11: Moving WAs to rcs_engine_wa_init()")
>>      moving the WA to rcs_engine_wa_init()
>>
>> However (2) is on v5.7-rc1 and (1) is on v5.6-rc1 and according to the
>> bug report GuC loading was working on 5.13. So I suspect the move
>> to GuC 62.0.0 made the checks more strict, or there is another patch
>
>This is correct.  Having "GT workarounds" on the engine list by accident
>used to be harmless (because i915 [with execlist submission] and the guc
>[with guc submission]) would simply re-apply the register setting more
>often than it really needed to.  However the more recent GuC versions
>have become more picky about the set of registers they're willing to
>save/restore for workarounds and will fail to load if they see a
>register on the save/restore list that isn't something they think is
>appropriate for an engine reset.
>
>GuC submission isn't officially supported on ICL; you can force it via
>module parameter, which taints the kernel and takes you through untested
>codepaths, so you do so at your own risk.  Given that, I don't think
>there's any real need to worry about getting this backported to specific
>stable kernels; having the workaround in the wrong place doesn't
>actually harm anything on the official and default non-GuC mode.

the discussion on gitlab sidetracked talking about GuC submission. This
is _not_ about GuC submission though:  it's enable_guc=2 so it's simply
being used to load HuC.

Given it's a trivial move of the WA to the _right_ place that allows
people to continue using HuC as they were, I strongly disagree with
that statement. Yes, people use the module parameters at their own risk,
but we do fix it when it makes sense.  If it was a pretty complex patch
we could decide to the other side of not porting it, but it's not the
case here.

Lucas De Marchi
