Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC334711F1
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 06:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08AA10E7F0;
	Sat, 11 Dec 2021 05:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E7310E7F0
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Dec 2021 05:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639200648; x=1670736648;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qXfSoJkw3zWt7ISuVKCUx/UBN0pRtE4x2qleKl5qa7U=;
 b=TLtqtPbHF7V0vVhL1SjCbVjd9g2AcDsK70asqtsheOTF/+WSigC5Amfr
 01tYThgRCejkPaMY5zqZwUR9fVDndpj08uOe/AJyP/Cgky4lgYFGniP+F
 9uOzZk0YW7VAmCrQ7dRh59vs8Patbf+RKQQ2uPoeCepZ9W/Ce89KRYV7H
 CDckPP4mFUE7xuS1P1pB9urF8yQq2DN6Y8YHU0sEmsHDphOMQJvEUlCQx
 9BKCiY5TNjgxKKqDASh+yVw9f3Vo8nT58YI3LOCFruefLQqpLT6wQ4iNY
 cTdJBlgYBhylzsTD3MoGUZMBMngNoi316ARn/8IK0m/rDzUf6xmqlasK1 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="301894999"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="301894999"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 21:30:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="463960180"
Received: from bnail-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.70.96])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 21:30:48 -0800
Date: Fri, 10 Dec 2021 21:30:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20211211053048.y5vkycct5j6tvsui@ldmartin-desk2>
References: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
 <20211209172139.jze46pphfosafv62@ldmartin-desk2>
 <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
 <4bb349c0-5518-b93c-1925-59bb7e1dd08d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <4bb349c0-5518-b93c-1925-59bb7e1dd08d@intel.com>
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

On Fri, Dec 10, 2021 at 05:41:46PM -0800, John Harrison wrote:
>On 12/10/2021 17:22, Matt Roper wrote:
>>On Thu, Dec 09, 2021 at 09:21:39AM -0800, Lucas De Marchi wrote:
>>>On Fri, Dec 03, 2021 at 08:26:03PM +0530, ravitejax.goud.talla@intel.com wrote:
>>>>From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>>>>
>>>>Bspec page says "Reset: BUS", Accordingly moving w/a's:
>>>>Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
>>>>Which will resolve guc enabling error
>>>>
>>>>v2:
>>>>  - Previous patch rev2 was created by email client which caused the
>>>>    Build failure, This v2 is to resolve the previous broken series
>>>>
>>>>Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>>>>Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>>>It seems like this patch is needed to be able to load GuC in ICL:
>>>https://gitlab.freedesktop.org/drm/intel/-/issues/4067#note_1184951
>>>
>>>And that is failing on Linus' master branch as of
>>>2a987e65025e ("Merge tag 'perf-tools-fixes-for-v5.16-2021-12-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")
>>>and (at least) 5.15.*. Looking at the appropriate "Fixes" tag I found these commits:
>>>
>>>   1) 1cd21a7c5679 ("drm/i915: Add Wa_1407352427:icl,ehl") - original
>>>      commit adding the WA
>>>   2) 3551ff928744 ("drm/i915/gen11: Moving WAs to rcs_engine_wa_init()")
>>>      moving the WA to rcs_engine_wa_init()
>>>
>>>However (2) is on v5.7-rc1 and (1) is on v5.6-rc1 and according to the
>>>bug report GuC loading was working on 5.13. So I suspect the move
>>>to GuC 62.0.0 made the checks more strict, or there is another patch
>>This is correct.  Having "GT workarounds" on the engine list by accident
>>used to be harmless (because i915 [with execlist submission] and the guc
>>[with guc submission]) would simply re-apply the register setting more
>>often than it really needed to.  However the more recent GuC versions
>>have become more picky about the set of registers they're willing to
>Actually, I think the GuC was always picky but we haven't supported 
>GuC submission upstream for quite some time. There was very old 
>support (never enabled by default) in the VLV timescale. And at that 
>time, we were not using GuC scheduling anyway, so no save/restore 
>list. I think by ICL it had already been removed as broken. All you 
>could do was load the GuC in order to load the HuC. It is only 
>recently with the ADL-P/DG1 support that GuC submission has been 
>re-implemented and the save/restore list added in.

as I said in my other reply to Matt, it's not GuC sumbmission that got
broken though:  it's enable_guc=2.

>
>
>>save/restore for workarounds and will fail to load if they see a
>>register on the save/restore list that isn't something they think is
>>appropriate for an engine reset.
>>
>>GuC submission isn't officially supported on ICL; you can force it via
>>module parameter, which taints the kernel and takes you through untested
>>codepaths, so you do so at your own risk.  Given that, I don't think
>>there's any real need to worry about getting this backported to specific
>>stable kernels; having the workaround in the wrong place doesn't
>>actually harm anything on the official and default non-GuC mode.
>As above, even with GuC enabled, I still don't think it is a problem 
>for any kernel using a GuC version earlier than 62.0.0.

so that rules out 5.10 and the only stable we need this on is 5.15 which
is pretty easy and applies cleanly.

Lucas De Marchi
