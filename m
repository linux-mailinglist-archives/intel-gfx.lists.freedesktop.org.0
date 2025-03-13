Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F417A5F096
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 11:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF2310E832;
	Thu, 13 Mar 2025 10:23:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SedEZlQU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0343310E062;
 Thu, 13 Mar 2025 10:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741861385; x=1773397385;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TA5gflvdpJHbyQbFUFwR3GgIsWRpwN8DSgUnmMOidQY=;
 b=SedEZlQUtm0bxrj6j8tEKUUcdq+43oV+QHWfQZmjVIY3cSVQbpcVfGd3
 +P5ezIxeYQP31ueu4cvxbSiponHBWgHX30jk2qE+2jLq2w9ILZaf8ub0L
 iJNkNPLewgUyAq3GE0ccy46BxGlrNg0NLjM/LuqDkqADQz9sdpaV0YpH6
 RJewG6uy9ECzbjXxC9HrhYXxYU5fkicR2d+AMBAkrrXXYu0XI+yjdDRNV
 25HWA1ds0+7gsw5K+zIN4pKMfJg72uOq8yC0k1Upi86GDRZoSJLVTZeKC
 EzUZlX7IDQOm5zgwwysmsMfE+qI2au+6b2BZhXEreobCyuHn8pSlifwKK g==;
X-CSE-ConnectionGUID: 4vZgcEwmTj6+1ilsHHhA2g==
X-CSE-MsgGUID: rpK7xmMyRBCRc8y+ewm8TA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="68324977"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="68324977"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 03:23:05 -0700
X-CSE-ConnectionGUID: fX0QWtFfTKytmodQpqVXUA==
X-CSE-MsgGUID: pancAsN5SXCrtHLefdNHxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="125984041"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 03:23:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "rk@dragonic.eu" <rk@dragonic.eu>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "daniel@fooishbar.org" <daniel@fooishbar.org>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
Date: Thu, 13 Mar 2025 12:22:59 +0200
Message-ID: <87ecz1dybg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 05 Mar 2025, "Knop, Ryszard" <ryszard.knop@intel.com> wrote:
> The workflow would look like this:
>
> - A drm-tip mirror would be set up on GitHub/fd.o GitLab, automatically
> pulling all changes from drm-tip upstream fd.o GitLab as a secondary
> source.
> - For each new series on lore.kernel.org a bridge would create a PR by
> taking the latest mirrored drm-tip source, then applying a new series
> with `b4 shazam`.
> - That PR would then go through the normal CI flow, with CI checks
> being reported on that PR, instead of sending all the reports to the
> mailing list.
> - On the mailing list, the bridge would send an ack that a series has
> been seen and where are its results. You would no longer receive
> multiple emails with KBs of logs in your email client, but everything
> would be available from PR checks (as status checks and links to full
> logs only, no trimming and "last 1000 lines only").
> - Mirrors, PRs and checks for public mailing lists would be public,
> much like on the current public Patchwork instance.
> - Logs behind links will be stored for a few months (3-6, depends on
> traffic and how the situation evolves). GitHub Checks themselves (check
> status, shortlogs and links) have a hard retention period of 400 days.
> - Not sure about PR retention: we need a mechanism to correctly
> identify merged series somehow, then to trim these from the list.
> Expected retention time?

There's one feature I like about FDO patchwork that I'd like to be able
to retain. You can find the patches and thus the test results via a
message-id like this:

https://patchwork.freedesktop.org/patch/msgid/<message-id>

I use that from my MUA 100x more often than the series URL sent by
patchwork:

https://patchwork.freedesktop.org/series/<id>/

So I'd like to have a way to get from the patch/cover-letter message-id
to the github/gitlab MR or where ever the resuls are.

We currently add Link: tags to commits pointing at patchwork. There's
already been requests to switch to use Lore links instead, and I think
we should probably do that.

Finally, on sunsetting patchwork, I think a redirector from:

https://patchwork.freedesktop.org/patch/msgid/<message-id>

to:

https://lore.kernel.org/r/<message-id>

would be a nice thing to do, considering how many patchwork links we
have in commit messages.


BR,
Jani.


-- 
Jani Nikula, Intel
