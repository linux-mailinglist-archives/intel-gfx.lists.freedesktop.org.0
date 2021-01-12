Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701B42F354C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 17:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E042289EF7;
	Tue, 12 Jan 2021 16:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCBB489EF7
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 16:18:09 +0000 (UTC)
IronPort-SDR: SA/WXJ3lBG3PbbyzAi2z/Hpu/NTTFNHA4SePPuoi7fx0rRJns4fUF4LinfQoHapEYpqyPvuMjK
 +y0LHhQ949PQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="177289482"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="177289482"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 08:18:08 -0800
IronPort-SDR: zv4fXwlHXaS5ZgE3XtXTEnWWDZg53dHblvaMf7FgPQ0SMIuqyHKzQf1AODHLXXRvLWnavs7dLH
 FFSlEz0z5xiA==
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="381480224"
Received: from vbucoci-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 08:18:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210112020409.ev7hs4rngooeyorp@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com> <20210112020409.ev7hs4rngooeyorp@ldmartin-desk1>
Date: Tue, 12 Jan 2021 18:18:03 +0200
Message-ID: <87r1mqt9hg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Use TGL stepping info for
 applying WAs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Jan 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Jan 11, 2021 at 10:13:15PM +0200, Jani Nikula wrote:
>>On Fri, 08 Jan 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> in the end both sides will need that (even if it was a mistake to merge
> it in drm-intel-gt-next).  I got an ack from Rodrigo to actually
> cherry-pick the single patch we are missing so this can unblock both
> merging this patch (after rebasing) and you can continue your series.

cherry-picking the one patch is not enough. The -next branches are too
far apart to start applying ADL-S patches in either branch. Doing so
will lead to way too bad merge conflicts.

Which just means the cherry-pick won't help, as you'll need a topic
branch with a sensible baseline to merge the ADL-S support to both
branches. Now the merge-base is too far away.

>>My series also completely hides the arrays into a separate .c file,
>>because the externs with direct array access are turning into
>>nightmare. The ARRAY_SIZE() checks rely on the extern declaration and
>>the actual array definition to have the sizes in sync, but the compiler
>>does not check that. Really.
>
> not following what the ARRAY_SIZE is not checking. It actually is, since
> the declaration is explicitly telling the size of the array. If the
> definition had more items, you'd get a compilation error.

Mmmh, I tested this, but can't reproduce now. Never mind. *shrug*.

>>IDK, feels like this merging this series is going to be extra churn.
>
> I'm not against the refactor you're talking about, but this seems an
> improvement to unblock the ADL-S patches that are pending. The patches
> could also be split to remove this dependency, but I'm not sure it's
> worth it.

Please let's first get the branches back in sync, and then create a
topic branch for ADL-S, and merge it to both. Everything else will lead
to tears.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
